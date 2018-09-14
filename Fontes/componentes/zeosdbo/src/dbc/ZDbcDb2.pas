{*********************************************************}
{                                                         }
{                 Zeos Database Objects                   }
{         Interbase Database Connectivity Classes         }
{                                                         }
{    Copyright (c) 1999-2003 Zeos Development Group       }
{            Written by Sergey Merkuriev                  }
{                                                         }
{*********************************************************}

{*********************************************************}
{ License Agreement:                                      }
{                                                         }
{ This library is free software; you can redistribute     }
{ it and/or modify it under the terms of the GNU Lesser   }
{ General Public License as published by the Free         }
{ Software Foundation; either version 2.1 of the License, }
{ or (at your option) any later version.                  }
{                                                         }
{ This library is distributed in the hope that it will be }
{ useful, but WITHOUT ANY WARRANTY; without even the      }
{ implied warranty of MERCHANTABILITY or FITNESS FOR      }
{ A PARTICULAR PURPOSE.  See the GNU Lesser General       }
{ Public License for more details.                        }
{                                                         }
{ You should have received a copy of the GNU Lesser       }
{ General Public License along with this library; if not, }
{ write to the Free Software Foundation, Inc.,            }
{ 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA }
{                                                         }
{ The project web site is located on:                     }
{   http://www.sourceforge.net/projects/zeoslib.          }
{   http://www.zeoslib.sourceforge.net                    }
{                                                         }
{                                 Zeos Development Group. }
{*********************************************************}
unit ZDbcDb2;

interface

{$I ZDbc.inc}

uses
  ZCompatibility, Types, Classes, SysUtils, ZDbcUtils, ZDbcIntfs, ZDbcConnection,
  ZPlainDb2Driver, ZSysUtils, ZDbcInterbase6Utils, ZDbcLogging;

type
  {** Implements DB2 Database Driver. }
  TZDB2Driver = class(TZAbstractDriver)
  private
    FDb2: IZDb2PlainDriver;
  protected
    function GetPlainDriver(Url: string): IZDb2PlainDriver;
  public
    constructor Create;
    function Connect(Url: string; Info: TStrings): IZConnection; override;

    function GetSupportedProtocols: TStringDynArray; override;
    function GetMajorVersion: Integer; override;
    function GetMinorVersion: Integer; override;
  end;

  {** Represents a Interbase specific connection interface. }
  IZDb2Connection = interface (IZConnection)
    ['{F19F34F6-6873-4738-845D-AC634E1FF446}']
    function GetEnv: SQLHENV;
    function GetConnection: SQLHDBC;
    function GetPlainDriver: IZDb2PlainDriver;
  end;

  {** Implements Interbase6 Database Connection. }
  TZDb2Connection = class(TZAbstractConnection, IZDb2Connection)
  private
    FEnvHandle: SQLHENV;
    FConHandle: SQLHDBC;
    FPlainDriver: IZDb2PlainDriver;
  private
    procedure StartTransaction; virtual;
  public
    constructor Create(Driver: IZDriver; Url: string; PlainDriver: IZDb2PlainDriver;
      HostName: string; Port: Integer; Database: string;
      User: string; Password: string; Info: TStrings);
    destructor Destroy; override;

    function GetEnv: SQLHENV;
    function GetConnection: SQLHDBC;
    function GetPlainDriver: IZDb2PlainDriver;

    function CreateRegularStatement(Info: TStrings): IZStatement; override;
    function CreatePreparedStatement(SQL: string; Info: TStrings):
      IZPreparedStatement; override;
    function CreateCallableStatement(SQL: string; Info: TStrings):
      IZCallableStatement; override;

    procedure Commit; override;
    procedure Rollback; override;

    procedure Open; override;
    procedure Close; override;
  end;

var
  {** The common driver manager object. }
  Db2Driver: IZDriver;

implementation

uses ZPlainDb2, ZDbcDb2Metadata, ZDbcDb2Statement, ZDbcDb2Utils;

{ TZDB2Driver }

{**
  Attempts to make a database connection to the given URL.
  The driver should return "null" if it realizes it is the wrong kind
  of driver to connect to the given URL.  This will be common, as when
  the JDBC driver manager is asked to connect to a given URL it passes
  the URL to each loaded driver in turn.

  <P>The driver should raise a SQLException if it is the right
  driver to connect to the given URL, but has trouble connecting to
  the database.

  <P>The java.util.Properties argument can be used to passed arbitrary
  string tag/value pairs as connection arguments.
  Normally at least "user" and "password" properties should be
  included in the Properties.

  @param url the URL of the database to which to connect
  @param info a list of arbitrary string tag/value pairs as
    connection arguments. Normally at least a "user" and
    "password" property should be included.
  @return a <code>Connection</code> object that represents a
    connection to the URL
}
function TZDB2Driver.Connect(Url: string; Info: TStrings): IZConnection;
var
  TempInfo: TStrings;
  HostName, Database, UserName, Password: string;
  Port: Integer;
  PlainDriver: IZDb2PlainDriver;
begin
 TempInfo := TStringList.Create;
 try
   ResolveDatabaseUrl(Url, Info, HostName, Port, Database,
      UserName, Password, TempInfo);
   PlainDriver := GetPlainDriver(Url);
   Result := TZDb2Connection.Create(Self, Url, PlainDriver, HostName, Port,
     Database, UserName, Password, TempInfo);
 finally
   TempInfo.Free;
 end;
end;

{**
  Constructs this object with default properties.
}
constructor TZDB2Driver.Create;
begin
  FDb2 := TZDb2PlainDriver.Create;
end;

{**
  Gets the driver's major version number. Initially this should be 1.
  @return this driver's major version number
}
function TZDB2Driver.GetMajorVersion: Integer;
begin
  Result := 1;
end;

{**
  Gets the driver's minor version number. Initially this should be 0.
  @return this driver's minor version number
}
function TZDB2Driver.GetMinorVersion: Integer;
begin
  Result := 0;
end;

{**
  Gets plain driver for selected protocol.
  @param Url a database connection URL.
  @return a selected protocol.
}
function TZDB2Driver.GetPlainDriver(Url: string): IZDb2PlainDriver;
begin
  Result := FDb2;
  Result.Initialize;
end;

{**
  Get a name of the supported subprotocol.
  For example: mysql, oracle8 or postgresql72
}
function TZDB2Driver.GetSupportedProtocols: TStringDynArray;
begin
  SetLength(Result, 1);
  Result[0] := 'db2';
end;


{ TZDb2Connection }

{**
  Releases a Connection's database and JDBC resources
  immediately instead of waiting for
  them to be automatically released.

  <P><B>Note:</B> A Connection is automatically closed when it is
  garbage collected. Certain fatal errors also result in a closed
  Connection.
}
procedure TZDb2Connection.Close;
var
  Status: SQLRETURN;
begin
  if Closed then Exit;

  if AutoCommit then
    Commit
  else
    Rollback;
  
  Status := SqlDisconnect(FConHandle);
  CheckDb2Error(FPlainDriver, FConHandle, Status, SQL_HANDLE_DBC, lcConnect);

  SqlFreeHandle(SQL_HANDLE_DBC, FConHandle);
  FEnvHandle := 0;
  SqlFreeHandle(SQL_HANDLE_ENV, FEnvHandle);
  FEnvHandle := 0;

  DriverManager.LogMessage(lcDisconnect, FPlainDriver.GetProtocol,
    Format('CONNECT TO "%s" AS USER "%s"', [Database, User]));
  inherited Close;
end;

{**
   Commit current transaction
}
procedure TZDb2Connection.Commit;
var
  Status: Integer;
begin
  Status := SQLEndTran(SQL_HANDLE_DBC, FConHandle, SQL_COMMIT);
  CheckDb2Error(FPlainDriver, SQL_HANDLE_DBC, FConHandle, Status, lcTransaction);
  DriverManager.LogMessage(lcTransaction,
      FPlainDriver.GetProtocol, 'TRANSACTION COMMIT');
end;

{**
  Constructs this object and assignes the main properties.
  @param HostName a name of the host.
  @param Port a port number (0 for default port).
  @param Database a name pof the database.
  @param User a user name.
  @param Password a user password.
  @param Info a string list with extra connection parameters.
}
constructor TZDb2Connection.Create(Driver: IZDriver; Url: string;
  PlainDriver: IZDb2PlainDriver; HostName: string; Port: Integer;
  Database, User, Password: string; Info: TStrings);
var
  ClientCodePage: string;
begin
  { Prevents destroying object in delphi 4 }
  inherited Create(Driver, Url, HostName, Port, Database, User, Password, Info,
    TZDb2DatabaseMetadata.Create(Self, Url, Info));

  FPlainDriver := PlainDriver;

//  { Sets a default DB2 port }
//  if Self.Port = 0 then
//    Self.Port := 3050;

  ClientCodePage := Trim(Info.Values['codepage']);
end;

{**
  Creates a <code>CallableStatement</code> object for calling
  database stored procedures.
  The <code>CallableStatement</code> object provides
  methods for setting up its IN and OUT parameters, and
  methods for executing the call to a stored procedure.

  <P><B>Note:</B> This method is optimized for handling stored
  procedure call statements. Some drivers may send the call
  statement to the database when the method <code>prepareCall</code>
  is done; others
  may wait until the <code>CallableStatement</code> object
  is executed. This has no
  direct effect on users; however, it does affect which method
  throws certain SQLExceptions.

  Result sets created using the returned CallableStatement will have
  forward-only type and read-only concurrency, by default.

  @param sql a SQL statement that may contain one or more '?'
    parameter placeholders. Typically this  statement is a JDBC
    function call escape string.
  @param Info a statement parameters.
  @return a new CallableStatement object containing the
    pre-compiled SQL statement
}
function TZDb2Connection.CreateCallableStatement(SQL: string;
  Info: TStrings): IZCallableStatement;
begin
  if IsClosed then Open;
  Result := TZDb2CallableStatement.Create(Self, SQL, Info);
end;

{**
  Creates a <code>PreparedStatement</code> object for sending
  parameterized SQL statements to the database.

  A SQL statement with or without IN parameters can be
  pre-compiled and stored in a PreparedStatement object. This
  object can then be used to efficiently execute this statement
  multiple times.

  <P><B>Note:</B> This method is optimized for handling
  parametric SQL statements that benefit from precompilation. If
  the driver supports precompilation,
  the method <code>prepareStatement</code> will send
  the statement to the database for precompilation. Some drivers
  may not support precompilation. In this case, the statement may
  not be sent to the database until the <code>PreparedStatement</code> is
  executed.  This has no direct effect on users; however, it does
  affect which method throws certain SQLExceptions.

  Result sets created using the returned PreparedStatement will have
  forward-only type and read-only concurrency, by default.

  @param sql a SQL statement that may contain one or more '?' IN
    parameter placeholders
  @return a new PreparedStatement object containing the
    pre-compiled statement
}
function TZDb2Connection.CreatePreparedStatement(SQL: string;
  Info: TStrings): IZPreparedStatement;
begin
  if IsClosed then Open;
  Result := TZDb2PreparedStatement.Create(Self, SQL, Info);
end;

{**
  Creates a <code>Statement</code> object for sending
  SQL statements to the database.
  SQL statements without parameters are normally
  executed using Statement objects. If the same SQL statement
  is executed many times, it is more efficient to use a
  <code>PreparedStatement</code> object.
  <P>
  Result sets created using the returned <code>Statement</code>
  object will by default have forward-only type and read-only concurrency.

  @param Info a statement parameters.
  @return a new Statement object
}
function TZDb2Connection.CreateRegularStatement(
  Info: TStrings): IZStatement;
begin
  if IsClosed then Open;
  Result := TZDb2Statement.Create(Self, Info);
end;

{**
  Destroys this object and cleanups the memory.
}
destructor TZDb2Connection.Destroy;
begin
  inherited;
end;

{**
   Return connection database handle
   @return a connection handle
}
function TZDb2Connection.GetConnection: SQLHDBC;
begin
  Result := FConHandle;
end;

{**
   Return environmant database handle
   @return a environmant handle
}
function TZDb2Connection.GetEnv: SQLHENV;
begin
  Result := FEnvHandle;
end;

{**
   Return native interbase plain driver
   @return plain driver
}
function TZDb2Connection.GetPlainDriver: IZDb2PlainDriver;
begin
  Result := FPlainDriver;
end;

{**
  Opens a connection to database server with specified parameters.
}
procedure TZDb2Connection.Open;
var
  Status: SQLRETURN;
  ConnectionString: string;
begin
  if not Closed then Exit;
  FEnvHandle := 0;
  FConHandle := 0;
  try
    Status := FPlainDriver.SqlAllocHandle(SQL_HANDLE_ENV, SQL_NULL_HANDLE, @FEnvHandle);
    CheckDb2Error(FPlainDriver, FEnvHandle, Status, SQL_HANDLE_ENV, lcConnect);

{    Status := FPlainDriver.SQLSetEnvAttr(henv,
		     SQL_ATTR_ODBC_VERSION,
		     (void *)SQL_OV_ODBC3,
		     0);
  ENV_HANDLE_CHECK(henv, rc);}

    Status := FPlainDriver.SqlAllocHandle(SQL_HANDLE_DBC, FEnvHandle, @FConHandle);
    CheckDb2Error(FPlainDriver, FConHandle, Status, SQL_HANDLE_DBC, lcConnect);

    if HostName <> '' then
      ConnectionString := Database
    else
    begin
      if Port = 0 then
        ConnectionString := Format('%s@%s', [Database, HostName])
      else
        ConnectionString := Format('%s@%s:%d', [Database, HostName, Port]);
    end;

    Status := FPlainDriver.SQLConnect(SQL_HANDLE_DBC, PChar(ConnectionString),
      SQL_NTS,  PChar(User), SQL_NTS, PChar(Password), SQL_NTS);
    CheckDb2Error(FPlainDriver, FConHandle, Status, SQL_HANDLE_DBC, lcConnect);

    DriverManager.LogMessage(lcConnect, FPlainDriver.GetProtocol,
     Format('CONNECT TO "%s" AS USER "%s"', [Database, User]));

    StartTransaction;
  except
    on E: Exception do begin
      if FConHandle <> 0 then
        SqlFreeHandle(SQL_HANDLE_DBC, FConHandle);
      if FEnvHandle <> 0 then
        SqlFreeHandle(SQL_HANDLE_DBC, FEnvHandle);
      FConHandle := 0;
      FEnvHandle := 0;
      raise;
    end;
  end;

  inherited Open;
end;

{**
   Conver parameters list to Interbase6 parameter index and values
   and sore it in the list.
   <P><B>Note:</B>
   Parameter value sored in list as value.
   Interbase6 parameter index store as object link.
   @see #GenerateDPB
   @see #GenerateTPB
   @param the list of Interbase6 prepared parameters
}

{**
  Drops all changes made since the previous
  commit/rollback and releases any database locks currently held
  by this Connection. This method should be used only when auto-
  commit has been disabled.
  @see #setAutoCommit
}
procedure TZDb2Connection.Rollback;
var
  Status: Integer;
begin
  Status := SQLEndTran(SQL_HANDLE_DBC, FConHandle, SQL_COMMIT);
  CheckDb2Error(FPlainDriver, SQL_HANDLE_DBC, FConHandle, Status, lcTransaction);
  DriverManager.LogMessage(lcTransaction,
      FPlainDriver.GetProtocol, 'TRANSACTION ROLLBACK');
end;

{**
   Start interbase transaction
}
procedure TZDb2Connection.StartTransaction;
var
  Status: Integer;
begin
  if Not AutoCommit then
    Status := SqlSetConnectAttr(FConHandle, SQL_ATTR_AUTOCOMMIT,
      Pointer(SQL_AUTOCOMMIT_ON), SQL_NTS)
  else
    Status := SqlSetConnectAttr(FConHandle, SQL_ATTR_AUTOCOMMIT,
      Pointer(SQL_AUTOCOMMIT_OFF), SQL_NTS);
  CheckDb2Error(FPlainDriver, FConHandle, Status, SQL_HANDLE_DBC, lcConnect);

  case TransactIsolationLevel of
    tiReadCommitted:
      Status := FPlainDriver.SqlSetConnectAttr(FConHandle, SQL_ATTR_AUTOCOMMIT,
        Pointer(SQL_AUTOCOMMIT_ON), SQL_NTS);
    tiReadUncommitted:
      Status := FPlainDriver.SqlSetConnectAttr(FConHandle, SQL_ATTR_AUTOCOMMIT,
        Pointer(SQL_TXN_READ_UNCOMMITTED), SQL_NTS);
    tiRepeatableRead:
      Status := FPlainDriver.SqlSetConnectAttr(FConHandle, SQL_ATTR_AUTOCOMMIT,
        Pointer(SQL_TXN_REPEATABLE_READ), SQL_NTS);
    tiSerializable:
      Status := FPlainDriver.SqlSetConnectAttr(FConHandle, SQL_ATTR_AUTOCOMMIT,
        Pointer(SQL_TXN_SERIALIZABLE), SQL_NTS);
  else
  end;
  CheckDb2Error(FPlainDriver, FConHandle, Status, SQL_HANDLE_DBC, lcConnect);
end;

initialization
  Db2Driver := TZDb2Driver.Create;
  DriverManager.RegisterDriver(Db2Driver);

finalization
  if Assigned(DriverManager) then
    DriverManager.DeregisterDriver(Db2Driver);
  Db2Driver := nil;
end.
