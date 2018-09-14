unit ZDbcDb2Statement;

interface
{$I ZDbc.inc}

uses Classes, SysUtils, ZDbcIntfs, ZDbcStatement, ZDbcDb2,
  ZPlainDb2Driver, ZDbcDb2Utils, ZDbcDb2ResultSet, ZCompatibility,
  ZDbcLogging, ZVariant, ZMessages;

type

  {** Implements Generic Db2 Statement. }
  TZDb2Statement = class(TZAbstractStatement)
  private
    FDb2Connection: IZDb2Connection;
  public
    constructor Create(Connection: IZConnection; Info: TStrings);

    function ExecuteQuery(SQL: string): IZResultSet; override;
    function ExecuteUpdate(SQL: string): Integer; override;
    function Execute(SQL: string): Boolean; override;
  end;

  {** Implements Prepared SQL Statement. }
  TZDb2PreparedStatement = class(TZAbstractPreparedStatement)
  private
    FDb2Connection: IZDb2Connection;
  public
    constructor Create(Connection: IZConnection; SQL: string; Info: TStrings);

    function ExecuteQuery(SQL: string): IZResultSet; override;
    function ExecuteUpdate(SQL: string): Integer; override;
    function Execute(SQL: string): Boolean; override;

    function ExecuteQueryPrepared: IZResultSet; override;
    function ExecuteUpdatePrepared: Integer; override;
    function ExecutePrepared: Boolean; override;
  end;

  TZDb2CallableStatement = class(TZAbstractCallableStatement)
  private
    FDb2Connection: IZDb2Connection;
  protected
    procedure FetchOutParams(Value: Variant);
    function GetProcedureSql(SelectProc: boolean): string;
  public
    constructor Create(Connection: IZConnection; SQL: string; Info: TStrings);

    function ExecuteQuery(SQL: string): IZResultSet; override;
    function ExecuteUpdate(SQL: string): Integer; override;
    function Execute(SQL: string): Boolean; override;

    function ExecuteQueryPrepared: IZResultSet; override;
    function ExecuteUpdatePrepared: Integer; override;
    function ExecutePrepared: Boolean; override;
  end;

implementation

uses ZDbcCachedResultSet, ZSysUtils, ZDbcUtils;

{ TZDb2Statement }

{**
  Constructs this object and assignes the main properties.
  @param Connection a database connection object.
  @param Handle a connection handle pointer.
  @param Dialect a dialect Interbase SQL must be 1 or 2 or 3.
  @param Info a statement parameters.
}
constructor TZDb2Statement.Create(Connection: IZConnection;
  Info: TStrings);
{$IFDEF VER125BELOW}
var
  OldRefCount: Integer;
{$ENDIF}
begin
  { Prevents destroying object in delphi 4 }
{$IFDEF VER125BELOW}
  OldRefCount := FRefCount;
  FRefCount := 100;
  try
{$ENDIF}
  inherited Create(Connection, Info);

  FDb2Connection := Connection as IZDb2Connection;
  ResultSetType := rtScrollInsensitive;
{$IFDEF VER125BELOW}
  finally
    FRefCount := OldRefCount;
  end;
{$ENDIF}
end;

{**
  Destroys this object and cleanups the memory.
}
{**
  Executes an SQL statement that returns a single <code>ResultSet</code> object.
  @param sql typically this is a static SQL <code>SELECT</code> statement
  @return a <code>ResultSet</code> object that contains the data produced by the
    given query; never <code>null</code>
}
function TZDb2Statement.ExecuteQuery(SQL: string): IZResultSet;
var
  Status: Integer;
  Handle: SQLHSTMT;
  SqlVar: PSqlVar;
  OutSqlVars: PSqlVars;

  Len, I: integer;
  TempBuffer: array[0..255] of Char;
  TempBufferLen: SmallInt;
begin
  Handle := 0;

  AllocateSqlVars(OutSqlVars);
  with FDb2Connection do
  begin
    Status := GetPlainDriver.SqlAllocHandle(SQL_HANDLE_STMT, FDb2Connection.GetConnection, @Handle);
    CheckDb2Error(GetPlainDriver, Handle, Status, SQL_HANDLE_STMT, lcConnect);

    //GetPlainDriver.SQLNumParams()
    //GetPlainDriver.SQLBindParameter()

    Status := GetPlainDriver.SQLExecDirect(Handle, PChar(Sql), Length(Sql));
    CheckDb2Error(GetPlainDriver, Handle, Status, SQL_HANDLE_STMT, lcConnect);

    GetPlainDriver.SQLNumResultCols(Handle, @OutSqlVars.ActualNum);
    if OutSqlVars.ActualNum > OutSqlVars.AllocNum then
    begin
      ReallocMem(OutSqlVars, SqlVarsLength(OutSqlVars.ActualNum));
      OutSqlVars.AllocNum := OutSqlVars.ActualNum;
    end;

    for I := 0 to OutSqlVars.ActualNum-1 do
    begin
      SqlVar := @OutSqlVars.Variables[I];
      SqlVar.Data := nil;
      SqlVar.DataSize := 0;

      Status := GetPlainDriver.SQLDescribeCol(Handle, I+1, TempBuffer, 255, @TempBufferLen,
      @SqlVar.DataType, @SqlVar.DataSize, @SqlVar.Scale, nil);
      SqlVar.Name := MemPas(TempBuffer, TempBufferLen);
      CheckDb2Error(GetPlainDriver, Handle, Status, SQL_HANDLE_STMT, lcConnect);

      SqlVar.ColType := GetColumnType(SqlVar.DataType, SqlVar.DataSize, SqlVar.Scale);

      Len := AllocSqlData(SqlVar);
      if Len > 0 then
      begin
        Status := GetPlainDriver.SQLBindCol(Handle, I+1, SqlVar.TypeCode, SqlVar.Data, Len,
          @SqlVar.DataLen);
        CheckDb2Error(GetPlainDriver, Handle, Status, SQL_HANDLE_STMT, lcConnect);
      end;
    end;
    Status := GetPlainDriver.SQLExecute(Handle);
    CheckDb2Error(GetPlainDriver, Handle, Status, SQL_HANDLE_STMT, lcConnect);

    Result := GetCachedResultSet(SQL, Self,
      TZDb2ResultSet.Create(Self, SQL, OutSqlVars));
{    for I := 0 to OutSqlVars.ActualNum-1 do
    begin
      SqlVar := @OutSqlVars.Variables[I];

      FreeMem(SqlVar.Data);
      SqlVar.Data := nil;
    end;

    GetPlainDriver.SqlFreeHandle(SQL_HANDLE_STMT, Handle);
    Handle := 0;}
  end;  
end;

{**
  Executes an SQL <code>INSERT</code>, <code>UPDATE</code> or
  <code>DELETE</code> statement. In addition,
  SQL statements that return nothing, such as SQL DDL statements,
  can be executed.

  @param sql an SQL <code>INSERT</code>, <code>UPDATE</code> or
    <code>DELETE</code> statement or an SQL statement that returns nothing
  @return either the row count for <code>INSERT</code>, <code>UPDATE</code>
    or <code>DELETE</code> statements, or 0 for SQL statements that return nothing
}
function TZDb2Statement.ExecuteUpdate(SQL: string): Integer;
{var
  StmtHandle: TISC_STMT_HANDLE;
  StatementType: TZIbSqlStatementType;}
begin
  Result := -1;
(*  StmtHandle := nil;
  with FIBConnection do
  begin
    try
      StatementType := ZDbcDb2Utils.PrepareStatement(GetPlainDriver,
        GetDBHandle, GetTrHandle, GetDialect, SQL, StmtHandle);

//      if StatementType in [stExecProc, stSelect, stSelectForUpdate] then
//        raise EZSQLException.Create(SStatementIsNotAllowed);

      GetPlainDriver.isc_dsql_execute2(@FStatusVector, GetTrHandle,
        @StmtHandle, GetDialect, nil, nil);
      CheckDb2Error(SQL);

      case StatementType of
        stCommit, stRollback, stUnknown: Result := -1;
        else begin
          Result := GetAffectedRows(GetPlainDriver, StmtHandle, StatementType);
          LastUpdateCount := Result;
        end;
      end;

      { Autocommit statement. }
      if Connection.GetAutoCommit then
        Connection.Commit;
      { Logging SQL Command }
      DriverManager.LogMessage(lcExecute, GetPlainDriver.GetProtocol, SQL);
    finally
      FreeStatement(GetPlainDriver, StmtHandle);
    end;
  end; *)
end;

{**
  Executes an SQL statement that may return multiple results.
  Under some (uncommon) situations a single SQL statement may return
  multiple result sets and/or update counts.  Normally you can ignore
  this unless you are (1) executing a stored procedure that you know may
  return multiple results or (2) you are dynamically executing an
  unknown SQL string.  The  methods <code>execute</code>,
  <code>getMoreResults</code>, <code>getResultSet</code>,
  and <code>getUpdateCount</code> let you navigate through multiple results.

  The <code>execute</code> method executes an SQL statement and indicates the
  form of the first result.  You can then use the methods
  <code>getResultSet</code> or <code>getUpdateCount</code>
  to retrieve the result, and <code>getMoreResults</code> to
  move to any subsequent result(s).

  @param sql any SQL statement
  @return <code>true</code> if the next result is a <code>ResultSet</code> object;
  <code>false</code> if it is an update count or there are no more results
  @see #getResultSet
  @see #getUpdateCount
  @see #getMoreResults
}
function TZDb2Statement.Execute(SQL: string): Boolean;
{var
  Cursor: string;
  SQLData: IZResultSQLDA;
  StmtHandle: TISC_STMT_HANDLE;
  StatementType: TZIbSqlStatementType;}
begin
  Result := False;
(*  StmtHandle := nil;
  with FIBConnection do
  begin
    try
      Result := False;
      StatementType := ZDbcDb2Utils.PrepareStatement(GetPlainDriver, GetDBHandle, GetTrHandle,
        GetDialect, SQL, StmtHandle);

      { Check statement type }
//      if not (StatementType in [stExecProc]) then
//        raise EZSQLException.Create(SStatementIsNotAllowed);

      { Create Result SQLData if statement returns result }
      if StatementType in [stSelect, stSelectForUpdate] then
      begin
        SQLData := TZResultSQLDA.Create(GetPlainDriver, GetDBHandle, GetTrHandle);
        PrepareResultSqlData(GetPlainDriver, GetDBHandle, GetDialect,
          SQL, StmtHandle, SQLData);
      end;

      { Execute prepared statement }
      GetPlainDriver.isc_dsql_execute(@FStatusVector, GetTrHandle,
              @StmtHandle, GetDialect, nil);
      CheckDb2Error(Sql);
      { Set updated rows count }
      LastUpdateCount := GetAffectedRows(GetPlainDriver, StmtHandle, StatementType);

      case StatementType of
        stInsert, stDelete, stUpdate, stSelectForUpdate: Result := False;
      else
        Result := True;
      end;

      { Create ResultSet if possible else free Stateent Handle }
      if (StatementType in [stSelect, stSelectForUpdate, stExecProc])
        and (SQLData.GetFieldCount <> 0) then
      begin
        Cursor := RandomString(12);
        LastResultSet := GetCachedResultSet(SQL, Self,
          TZDb2ResultSet.Create(Self, SQL, StmtHandle, Cursor,
            SQLData, nil, FCachedBlob));
      end else  begin
        LastResultSet := nil;
        FreeStatement(GetPlainDriver, StmtHandle);
      end;

      { Autocommit statement. }
      if Connection.GetAutoCommit then
        Connection.Commit;
      { Logging SQL Command }
      DriverManager.LogMessage(lcExecute, GetPlainDriver.GetProtocol, SQL);
    except
      on E: Exception do begin
       FreeStatement(GetPlainDriver, StmtHandle);
       raise;
      end;
    end;
  end;*)
end;

{ TZDb2PreparedStatement }

{**
  Constructs this object and assignes the main properties.
  @param Connection a database connection object.
  @param Handle a connection handle pointer.
  @param Dialect a dialect Interbase SQL must be 1 or 2 or 3.
  @param Info a statement parameters.
}
constructor TZDb2PreparedStatement.Create(Connection: IZConnection;
  SQL: string; Info: TStrings);
{$IFDEF VER125BELOW}
var
  OldRefCount: Integer;
{$ENDIF}
begin
  { Prevents destroying object in delphi 4 }
{$IFDEF VER125BELOW}
  OldRefCount := FRefCount;
  FRefCount := 100;
  try
{$ENDIF}
  inherited Create(Connection, SQL, Info);

  FDb2Connection := Connection as IZDb2Connection;
  ResultSetType := rtScrollInsensitive;
{$IFDEF VER125BELOW}
  finally
    FRefCount := OldRefCount;
  end;
{$ENDIF}
end;

{**
  Executes an SQL statement that may return multiple results.
  Under some (uncommon) situations a single SQL statement may return
  multiple result sets and/or update counts.  Normally you can ignore
  this unless you are (1) executing a stored procedure that you know may
  return multiple results or (2) you are dynamically executing an
  unknown SQL string.  The  methods <code>execute</code>,
  <code>getMoreResults</code>, <code>getResultSet</code>,
  and <code>getUpdateCount</code> let you navigate through multiple results.

  The <code>execute</code> method executes an SQL statement and indicates the
  form of the first result.  You can then use the methods
  <code>getResultSet</code> or <code>getUpdateCount</code>
  to retrieve the result, and <code>getMoreResults</code> to
  move to any subsequent result(s).

  @param sql any SQL statement
  @return <code>true</code> if the next result is a <code>ResultSet</code> object;
  <code>false</code> if it is an update count or there are no more results
  @see #getResultSet
  @see #getUpdateCount
  @see #getMoreResults
}

function TZDb2PreparedStatement.Execute(SQL: string): Boolean;
begin
  Self.SQL := SQL;
  Result := ExecutePrepared;
end;

{**
  Executes any kind of SQL statement.
  Some prepared statements return multiple results; the <code>execute</code>
  method handles these complex statements as well as the simpler
  form of statements handled by the methods <code>executeQuery</code>
  and <code>executeUpdate</code>.
  @see Statement#execute
}
function TZDb2PreparedStatement.ExecutePrepared: Boolean;
{var
  Cursor: string;
  SQLData: IZResultSQLDA;
  StmtHandle: TISC_STMT_HANDLE;
  StatementType: TZIbSqlStatementType;}
begin
  Result := False;
(*
  StmtHandle := nil;
  with FIBConnection do
  begin
    try
      StatementType := ZDbcDb2Utils.PrepareStatement(GetPlainDriver,
        GetDBHandle, GetTrHandle, GetDialect, SQL, StmtHandle);

//      if not (StatementType in [stExecProc]) then
//        raise EZSQLException.Create(SStatementIsNotAllowed);

      if StatementType in [stSelect, stSelectForUpdate] then
      begin
        SQLData := TZResultSQLDA.Create(GetPlainDriver, GetDBHandle, GetTrHandle);
        PrepareResultSqlData(GetPlainDriver, GetDBHandle, GetDialect,
          SQL, StmtHandle, SQLData);
      end;

      PrepareParameters(GetPlainDriver, SQL, InParamValues, InParamTypes,
        InParamCount, GetDialect, StmtHandle, FParamSQLData);

      GetPlainDriver.isc_dsql_execute2(@FStatusVector, GetTrHandle, @StmtHandle,
            GetDialect, FParamSQLData.GetData, nil);
      CheckDb2Error(SQL);

      LastUpdateCount := GetAffectedRows(GetPlainDriver, StmtHandle, StatementType);

      case StatementType of
        stInsert, stDelete, stUpdate, stSelectForUpdate: Result := False;
      else
        Result := True;
      end;

      { Create ResultSet if possible else free Stateent Handle }
      if (StatementType in [stSelect, stSelectForUpdate, stExecProc])
        and (SQLData.GetFieldCount <> 0) then
      begin
        Cursor := RandomString(12);
        LastResultSet := GetCachedResultSet(SQL, Self,
          TZDb2ResultSet.Create(Self, SQL, StmtHandle, Cursor,
            SQLData, nil, FCachedBlob));
      end
      else begin
        LastResultSet := nil;
        FreeStatement(GetPlainDriver, StmtHandle);
      end;

      { Autocommit statement. }
      if Connection.GetAutoCommit then
        Connection.Commit;
      { Logging SQL Command }
      DriverManager.LogMessage(lcExecute, GetPlainDriver.GetProtocol, SQL);
    except
      on E: Exception do begin
       FreeStatement(GetPlainDriver, StmtHandle);
       raise;
      end;
    end;
  end; *)
end;

{**
  Executes an SQL statement that returns a single <code>ResultSet</code> object.
  @param sql typically this is a static SQL <code>SELECT</code> statement
  @return a <code>ResultSet</code> object that contains the data produced by the
    given query; never <code>null</code>
}
function TZDb2PreparedStatement.ExecuteQuery(SQL: string): IZResultSet;
begin
  Self.SQL := SQL;
  Result := ExecuteQueryPrepared;
end;

{**
  Executes the SQL query in this <code>PreparedStatement</code> object
  and returns the result set generated by the query.

  @return a <code>ResultSet</code> object that contains the data produced by the
    query; never <code>null</code>
}
function TZDb2PreparedStatement.ExecuteQueryPrepared: IZResultSet;
{var
  Cursor: string;
  SQLData: IZResultSQLDA;
  StmtHandle: TISC_STMT_HANDLE;
  StatementType: TZIbSqlStatementType;}
begin
(*  StmtHandle := nil;
  with FIBConnection do
  begin
    SQLData := TZResultSQLDA.Create(GetPlainDriver, GetDBHandle, GetTrHandle);
    try
      StatementType := ZDbcDb2Utils.PrepareStatement(GetPlainDriver,
        GetDBHandle, GetTrHandle, GetDialect, SQL, StmtHandle);

//      if not(StatementType in [stSelect, stSelectForUpdate]) then
//        raise EZSQLException.Create(SStatementIsNotAllowed);

      PrepareResultSqlData(GetPlainDriver, GetDBHandle, GetDialect,
        SQL, StmtHandle, SQLData);
      PrepareParameters(GetPlainDriver, SQL, InParamValues, InParamTypes,
        InParamCount, GetDialect, StmtHandle, FParamSQLData);

      GetPlainDriver.isc_dsql_execute2(@FStatusVector, GetTrHandle, @StmtHandle,
        GetDialect, FParamSQLData.GetData, nil);
      CheckDb2Error(SQL);

      if FCursorName = '' then
        Cursor := RandomString(12)
      else
        Cursor := FCursorName;

      GetPlainDriver.isc_dsql_set_cursor_name(@FStatusVector,
        @StmtHandle, PChar(Cursor), 0);
      CheckDb2Error(SQL);

      Result := GetCachedResultSet(SQL, Self,
        TZDb2ResultSet.Create(Self, SQL, StmtHandle, Cursor, SQLData, nil, FCachedBlob));
      LastResultSet := Result;
      { Logging SQL Command }
      DriverManager.LogMessage(lcExecute, GetPlainDriver.GetProtocol, SQL);
    except
      on E: Exception do begin
        FreeStatement(GetPlainDriver, StmtHandle);
        raise;
      end;
    end;
  end; *)
end;

{**
  Executes an SQL <code>INSERT</code>, <code>UPDATE</code> or
  <code>DELETE</code> statement. In addition,
  SQL statements that return nothing, such as SQL DDL statements,
  can be executed.

  @param sql an SQL <code>INSERT</code>, <code>UPDATE</code> or
    <code>DELETE</code> statement or an SQL statement that returns nothing
  @return either the row count for <code>INSERT</code>, <code>UPDATE</code>
    or <code>DELETE</code> statements, or 0 for SQL statements that return nothing
}
function TZDb2PreparedStatement.ExecuteUpdate(SQL: string): Integer;
begin
  Self.SQL := SQL;
  Result := ExecuteUpdatePrepared;
end;

{**
  Executes the SQL INSERT, UPDATE or DELETE statement
  in this <code>PreparedStatement</code> object.
  In addition,
  SQL statements that return nothing, such as SQL DDL statements,
  can be executed.

  @return either the row count for INSERT, UPDATE or DELETE statements;
  or 0 for SQL statements that return nothing
}
{$HINTS OFF}
function TZDb2PreparedStatement.ExecuteUpdatePrepared: Integer;
{var
  StmtHandle: TISC_STMT_HANDLE;
  StatementType: TZIbSqlStatementType;}
begin
  Result := -1;
(*
  StmtHandle := nil;

  with FIBConnection do
  begin
    try
      StatementType := ZDbcDb2Utils.PrepareStatement(GetPlainDriver, GetDBHandle,
        GetTrHandle, GetDialect, SQL, StmtHandle);

//      if StatementType in [stExecProc, stSelect, stSelectForUpdate] then
//        raise EZSQLException.Create(SStatementIsNotAllowed);

      PrepareParameters(GetPlainDriver, SQL, InParamValues, InParamTypes,
        InParamCount, GetDialect, StmtHandle, FParamSQLData);

      GetPlainDriver.isc_dsql_execute(@FStatusVector, GetTrHandle,
        @StmtHandle, GetDialect, FParamSQLData.GetData);
      CheckDb2Error(SQL);

      Result := GetAffectedRows(GetPlainDriver, StmtHandle, StatementType);
      LastUpdateCount := Result;

      case StatementType of
        stCommit, stRollback, stUnknown: Result := -1;
      end;

      { Autocommit statement. }
      if Connection.GetAutoCommit then
        Connection.Commit;
      { Logging SQL Command }
      DriverManager.LogMessage(lcExecute, GetPlainDriver.GetProtocol, SQL);
    finally
      FreeStatement(GetPlainDriver, StmtHandle);
    end;
  end;*)
end;


{ TZDb2CallableStatement }

{**
  Constructs this object and assignes the main properties.
  @param Connection a database connection object.
  @param Handle a connection handle pointer.
  @param Dialect a dialect Interbase SQL must be 1 or 2 or 3.
  @param Info a statement parameters.
}
constructor TZDb2CallableStatement.Create(Connection: IZConnection;
  SQL: string; Info: TStrings);
{$IFDEF VER125BELOW}
var
  OldRefCount: Integer;
{$ENDIF}
begin
  { Prevents destroying object in delphi 4 }
{$IFDEF VER125BELOW}
  OldRefCount := FRefCount;
  FRefCount := 100;
  try
{$ENDIF}
  inherited Create(Connection, SQL, Info);

  FDb2Connection := Connection as IZDb2Connection;
  ResultSetType := rtScrollInsensitive;
{$IFDEF VER125BELOW}
  finally
    FRefCount := OldRefCount;
  end;
{$ENDIF}
end;

{**
  Executes an SQL statement that may return multiple results.
  Under some (uncommon) situations a single SQL statement may return
  multiple result sets and/or update counts.  Normally you can ignore
  this unless you are (1) executing a stored procedure that you know may
  return multiple results or (2) you are dynamically executing an
  unknown SQL string.  The  methods <code>execute</code>,
  <code>getMoreResults</code>, <code>getResultSet</code>,
  and <code>getUpdateCount</code> let you navigate through multiple results.

  The <code>execute</code> method executes an SQL statement and indicates the
  form of the first result.  You can then use the methods
  <code>getResultSet</code> or <code>getUpdateCount</code>
  to retrieve the result, and <code>getMoreResults</code> to
  move to any subsequent result(s).

  @param sql any SQL statement
  @return <code>true</code> if the next result is a <code>ResultSet</code> object;
  <code>false</code> if it is an update count or there are no more results
  @see #getResultSet
  @see #getUpdateCount
  @see #getMoreResults
}

function TZDb2CallableStatement.Execute(SQL: string): Boolean;
begin
  Self.SQL := SQL;
  Result := ExecutePrepared;
end;

{**
  Executes any kind of SQL statement.
  Some prepared statements return multiple results; the <code>execute</code>
  method handles these complex statements as well as the simpler
  form of statements handled by the methods <code>executeQuery</code>
  and <code>executeUpdate</code>.
  @see Statement#execute
}
function TZDb2CallableStatement.ExecutePrepared: Boolean;
{var
  Cursor, ProcSql: string;
  SQLData: IZResultSQLDA;
  ParamSQLData: IZParamsSQLDA;
  StmtHandle: TISC_STMT_HANDLE;
  StatementType: TZIbSqlStatementType;}
begin
  Result := False;
(*
  StmtHandle := nil;
  with FIBConnection do
  begin
    ProcSql := GetProcedureSql(False);
    SQLData := TZResultSQLDA.Create(GetPlainDriver, GetDBHandle, GetTrHandle);
    try
      { Prepare statement }
      StatementType := ZDbcDb2Utils.PrepareStatement(GetPlainDriver, GetDBHandle, GetTrHandle,
        GetDialect, ProcSql, StmtHandle);
      PrepareResultSqlData(GetPlainDriver, GetDBHandle, GetDialect,
        SQL, StmtHandle, SQLData);
      PrepareParameters(GetPlainDriver, ProcSql, InParamValues, InParamTypes,
        InParamCount, GetDialect, StmtHandle, FParamSQLData);

      GetPlainDriver.isc_dsql_execute2(@FStatusVector, GetTrHandle, @StmtHandle,
            GetDialect, ParamSQLData.GetData, SQLData.GetData);
      CheckDb2Error(SQL);

      LastUpdateCount := GetAffectedRows(GetPlainDriver, StmtHandle, StatementType);

      case StatementType of
        stInsert, stDelete, stUpdate, stSelectForUpdate: Result := False;
      else
        Result := True;
      end;

      { Create ResultSet if possible else free Stateent Handle, ResultSQlData and
        ParamSqlData }
      if StatementType in [stSelect, stSelectForUpdate] then
      begin
        Cursor := RandomString(12);
        LastResultSet := GetCachedResultSet(SQL, Self,
          TZDb2ResultSet.Create(Self, SQL, StmtHandle, Cursor,
            SQLData, nil, FCachedBlob));
      end else begin
        { Fetch data and fill Output params }
        FetchOutParams(SQLData);
        FreeStatement(GetPlainDriver, StmtHandle);
        LastResultSet := nil;
      end;

      { Autocommit statement. }
      if Connection.GetAutoCommit then
        Connection.Commit;
      { Logging SQL Command }
      DriverManager.LogMessage(lcExecute, GetPlainDriver.GetProtocol, SQL);
    except
      on E: Exception do begin
       FreeStatement(GetPlainDriver, StmtHandle);
       raise;
      end;
    end;
  end; *)
end;

{**
  Executes an SQL statement that returns a single <code>ResultSet</code> object.
  @param sql typically this is a static SQL <code>SELECT</code> statement
  @return a <code>ResultSet</code> object that contains the data produced by the
    given query; never <code>null</code>
}
function TZDb2CallableStatement.ExecuteQuery(
  SQL: string): IZResultSet;
begin
  Self.SQL := SQL;
  Result := ExecuteQueryPrepared;
end;

{**
  Executes the SQL query in this <code>PreparedStatement</code> object
  and returns the result set generated by the query.

  @return a <code>ResultSet</code> object that contains the data produced by the
    query; never <code>null</code>
}
function TZDb2CallableStatement.ExecuteQueryPrepared: IZResultSet;
{var
  Cursor: string;
  ProcSql: string;
  SQLData: IZResultSQLDA;
  StmtHandle: TISC_STMT_HANDLE;
  StatementType: TZIbSqlStatementType;}
begin
(*  StmtHandle := nil;

  with FIBConnection do
  begin
    ProcSql := GetProcedureSql(True);
    SQLData := TZResultSQLDA.Create(GetPlainDriver, GetDBHandle, GetTrHandle);
    try
      StatementType := ZDbcDb2Utils.PrepareStatement(GetPlainDriver,
        GetDBHandle, GetTrHandle, GetDialect, ProcSql, StmtHandle);

//      if not(StatementType in [stSelect, stSelectForUpdate]) then
//        raise EZSQLException.Create(SStatementIsNotAllowed);

      PrepareResultSqlData(GetPlainDriver, GetDBHandle, GetDialect,
        SQL, StmtHandle, SQLData);
      PrepareParameters(GetPlainDriver, ProcSql, InParamValues, InParamTypes,
        InParamCount, GetDialect, StmtHandle, FParamSQLData);

      GetPlainDriver.isc_dsql_execute2(@FStatusVector, GetTrHandle, @StmtHandle,
        GetDialect, FParamSQLData.GetData, nil);
      CheckDb2Error(ProcSql);

      if FCursorName = '' then
        Cursor := RandomString(12)
      else
        Cursor := FCursorName;

      GetPlainDriver.isc_dsql_set_cursor_name(@FStatusVector,
        @StmtHandle, PChar(Cursor), 0);
      CheckDb2Error(ProcSql);

      Result := GetCachedResultSet(ProcSql, Self,
        TZDb2ResultSet.Create(Self, ProcSql, StmtHandle, Cursor, SQLData, nil, FCachedBlob));
      { Logging SQL Command }
      DriverManager.LogMessage(lcExecute, GetPlainDriver.GetProtocol, SQL);
    except
      on E: Exception do begin
        FreeStatement(GetPlainDriver, StmtHandle);
        raise;
      end;
    end;
  end; *)
end;

{**
  Executes an SQL <code>INSERT</code>, <code>UPDATE</code> or
  <code>DELETE</code> statement. In addition,
  SQL statements that return nothing, such as SQL DDL statements,
  can be executed.

  @param sql an SQL <code>INSERT</code>, <code>UPDATE</code> or
    <code>DELETE</code> statement or an SQL statement that returns nothing
  @return either the row count for <code>INSERT</code>, <code>UPDATE</code>
    or <code>DELETE</code> statements, or 0 for SQL statements that return nothing
}
function TZDb2CallableStatement.ExecuteUpdate(SQL: string): Integer;
begin
  Self.SQL := SQL;
  Result := ExecuteUpdatePrepared;
end;

{**
  Executes the SQL INSERT, UPDATE or DELETE statement
  in this <code>PreparedStatement</code> object.
  In addition,
  SQL statements that return nothing, such as SQL DDL statements,
  can be executed.

  @return either the row count for INSERT, UPDATE or DELETE statements;
  or 0 for SQL statements that return nothing
}
function TZDb2CallableStatement.ExecuteUpdatePrepared: Integer;
{var
  ProcSql: string;
  SQLData: IZResultSQLDA;
  StmtHandle: TISC_STMT_HANDLE;
  StatementType: TZIbSqlStatementType;}
begin
  Result := -1;
(*
  StmtHandle := nil;

  with FIBConnection do
  begin
    ProcSql := GetProcedureSql(False);
    SQLData := TZResultSQLDA.Create(GetPlainDriver, GetDBHandle, GetTrHandle);
    try
      StatementType := ZDbcDb2Utils.PrepareStatement(GetPlainDriver,
        GetDBHandle, GetTrHandle, GetDialect, ProcSql, StmtHandle);

//      if not (StatementType in [stSelect, stSelectForUpdate]) then
//        raise EZSQLException.Create(SStatementIsNotAllowed);

      PrepareResultSqlData(GetPlainDriver, GetDBHandle, GetDialect,
        SQL, StmtHandle, SQLData);
      PrepareParameters(GetPlainDriver, ProcSql, InParamValues, InParamTypes,
        InParamCount, GetDialect, StmtHandle, FParamSQLData);

      GetPlainDriver.isc_dsql_execute2(@FStatusVector, GetTrHandle, @StmtHandle,
        GetDialect, FParamSQLData.GetData, SQLData.GetData);
      CheckDb2Error(ProcSql);

      Result := GetAffectedRows(GetPlainDriver, StmtHandle, StatementType);
      LastUpdateCount := Result;
      { Fetch data and fill Output params }
      FetchOutParams(SQLData);
      { Logging SQL Command }
      DriverManager.LogMessage(lcExecute, GetPlainDriver.GetProtocol, SQL);
    except
      FreeStatement(GetPlainDriver, StmtHandle);
    end;
  end; *)
end;

{**
  Set output parameters values from IZResultSQLDA.
  @param Value a IZResultSQLDA object.
}
procedure TZDb2CallableStatement.FetchOutParams(
  Value: Variant);
{var
  I: Integer;
  Temp: TZVariant;}
begin
{  for I := 0 to Value.GetFieldCount -1 do
  begin
    if Value.IsNull(I) then
      DefVarManager.SetNull(Temp)
    else
      case Value.GetFieldSqlType(I) of
      stBoolean:
        DefVarManager.SetAsBoolean(Temp, Value.GetBoolean(I));
      stByte:
        DefVarManager.SetAsInteger(Temp, Value.GetByte(I));
      stShort:
        DefVarManager.SetAsInteger(Temp, Value.GetShort(I));
      stInteger:
        DefVarManager.SetAsInteger(Temp, Value.GetInt(I));
      stLong:
        DefVarManager.SetAsInteger(Temp, Value.GetLong(I));
      stFloat:
        DefVarManager.SetAsFloat(Temp, Value.GetFloat(I));
      stDouble:
        DefVarManager.SetAsFloat(Temp, Value.GetDouble(I));
      stBigDecimal:
        DefVarManager.SetAsFloat(Temp, Value.GetBigDecimal(I));
      stString:
        DefVarManager.SetAsString(Temp, Value.GetString(I));
      stUnicodeString:
//        DefVarManager.SetAsUnicodeString(Temp, Value.GetUnicodeString(I));
        DefVarManager.SetAsUnicodeString(Temp, Value.GetString(I));
      stDate:
        DefVarManager.SetAsDateTime(Temp, Value.GetDate(I));
      stTime:
        DefVarManager.SetAsDateTime(Temp, Value.GetTime(I));
      stTimestamp:
        DefVarManager.SetAsDateTime(Temp, Value.GetTimestamp(I));
    end;
    OutParamValues[I] := Temp;
  end;}
end;

{**
   Create sql string for calling stored procedure.
   @param SelectProc indicate use <b>EXECUTE PROCEDURE</b> or
    <b>SELECT</b> staement
   @return a Stored Procedure SQL string 
}
function TZDb2CallableStatement.GetProcedureSql(
  SelectProc: boolean): string;

{  function GenerateParamsStr(Count: integer): string;
  var
    I: integer;
  begin
    for I := 0 to Count - 1 do
    begin
      if Result <> '' then
        Result := Result + ',';
      Result := Result + '?';
    end;
  end;

var
  InParams: string;}
begin
 { InParams := GenerateParamsStr(High(InParamValues) + 1);
  if InParams <> '' then
    InParams := '(' + InParams + ')';

  if SelectProc then
    Result := 'SELECT * FROM ' + SQL + InParams
  else
    Result := 'EXECUTE PROCEDURE ' + SQL + InParams;}
end;

end.
