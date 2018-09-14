unit ZDbcDb2Utils;

interface
{$I ZDbc.inc}

uses
  Classes, SysUtils, ZSysUtils, ZDbcStatement, ZPlainDb2Driver, ZDbcIntfs,
  ZCompatibility, ZDbcCachedResultSet, ZDbcLogging, ZMessages, ZVariant;

const
  MAX_SQLVAR = 50;

type
 { Declare the SQL Object }
  TSqlVar = record
    Name:      string;
    Data:      PChar;
    DataType:  SmallInt;
    DataSize:  SmallInt;
    DataLen:   Integer;
    TypeCode:  SmallInt;
    ColType:   TZSQLType;
    Scale:     SmallInt;
  end;
  PSqlVar = ^TSqlVar;

  TSqlVars = record
    AllocNum:  SmallInt;
    ActualNum: SmallInt;
    Variables: array[0..0] of TSqlVar;
  end;
  PSqlVars = ^TSqlVars;

  { memory fynctions }
  function SqlVarsLength(Count: Integer): Integer;
  procedure AllocateSqlVars(var Value: PSqlVars);

  { error functions }
  function CheckDb2Error(PlainDriver: IZDb2PlainDriver; Handle: SQLHENV;
    Status: SQLRETURN; HandleType: Integer;  LoggingCategory:
    TZLoggingCategory = lcOther; SQL: string = ''): Boolean;

  { dbc functions }
  function GetCachedResultSet(SQL: string; Statement: IZStatement;
    NativeResultSet: IZResultSet): IZResultSet;
  function GetColumnType(DataType, DataSize, Scale: SmallInt): TZSQLType;
  function AllocSqlData(SqlVar: PSqlVar): Integer;
  procedure FreeSqlData(SqlVars: PSqlVars);


implementation

{**
  Count length of SqlVars variable
  @param a count elemnts
  @return an actual length
}
function SqlVarsLength(Count: Integer): Integer;
begin
  Result := SizeOf(TSqlVars) + Count * SizeOf(TSqlVar);
end;

procedure AllocateSqlVars(var Value: PSqlVars);
begin
  GetMem(Value, SqlVarsLength(MAX_SQLVAR));
  FillChar(Value^, SqlVarsLength(MAX_SQLVAR), 0);
  Value.AllocNum := MAX_SQLVAR;
end;


function CheckDb2Error(PlainDriver: IZDb2PlainDriver; Handle: SQLHANDLE;
  Status: SQLRETURN; HandleType: Integer; LoggingCategory:
  TZLoggingCategory = lcOther; SQL: string = ''): Boolean;
var
  Msg: String;
  SqlCode: Integer;
  SqlState: array[0..255] of Char;
  ErrorBuf: array[0..1024] of Char;
  I, ErrorBufLen: SmallInt;
begin
  Result := False;
  case Status of
    SQL_SUCCESS: Result := True;
    SQL_SUCCESS_WITH_INFO:
      begin
        Result := True;
        PlainDriver.SQLGetDiagRec(HandleType, Handle, 1, SqlState, @SqlCode,
          ErrorBuf, 255, @ErrorBufLen);
        Msg := MemPas(ErrorBuf, ErrorBufLen);
      end;
    SQL_NEED_DATA:
      begin
        Result := True;
        Msg := 'SQL_NEED_DATA';
      end;
    SQL_ERROR:
      begin
        I := 1;
        while (PlainDriver.SQLGetDiagRec(HandleType, Handle, I, SqlState, @SqlCode,
          ErrorBuf, 1024, @ErrorBufLen) = SQL_SUCCESS) do
        begin
          if Msg <> '' then Msg := Msg + #13;
          Msg := Msg + MemPas(ErrorBuf, ErrorBufLen);
          Inc(I);
        end;
      end;
    SQL_INVALID_HANDLE:
      Msg := 'SQL_INVALID_HANDLE';
    SQL_STILL_EXECUTING:
      Msg := 'SQL_STILL_EXECUTING';
  end;
  if not Result then
  begin
    DriverManager.LogError(LoggingCategory, PlainDriver.GetProtocol,
        Msg, Status, SQL);
    raise EZSQLException.CreateWithCode(Status,
        Format('SQL Error: %s. Error Code: %u. %s',
        [Msg, SqlCode, SQL]));
  end;
end;

{**
  Create CachedResultSet with using TZCachedResultSet and return it.
  @param SQL a sql query command
  @param Statement a zeos statement object
  @param NativeResultSet a native result set
  @return cached ResultSet
}
function GetCachedResultSet(SQL: string;
  Statement: IZStatement; NativeResultSet: IZResultSet): IZResultSet;
var
  CachedResultSet: TZCachedResultSet;
begin
  if (Statement.GetResultSetConcurrency <> rcReadOnly)
    or (Statement.GetResultSetType <> rtForwardOnly) then
  begin
    CachedResultSet := TZCachedResultSet.Create(NativeResultSet, SQL, nil);
//    CachedResultSet.SetResolver(TZAbstractCachedResultSet.Create(
//      Statement,  NativeResultSet.GetMetadata));
    CachedResultSet.SetConcurrency(Statement.GetResultSetConcurrency);
    Result := CachedResultSet;
  end else
    Result := NativeResultSet;
end;

{**
   Convert DB2 SQL DataType to ZSQLType
   @param a DB2 SQL DataType
   @return a ZSQLType;
}
function GetColumnType(DataType, DataSize, Scale: SmallInt): TZSQLType;
begin
  case DataType of
    SQL_CHAR, SQL_VARCHAR:
      begin
        if DataSize < 255 then
          Result := stString
        else
          Result := stAsciiStream;
      end;
    SQL_WCHAR, SQL_WVARCHAR:
      begin
        if DataSize < 255 then
          Result := stUnicodeString
        else
          Result := stUnicodeStream;
      end;
    SQL_BIGINT:
      Result := stLong;
    SQL_NUMERIC, SQL_DECIMAL:
      begin
        if (Scale = 0) then
          Result := stInteger
        else
          Result := stBigDecimal;
      end;
    SQL_SMALLINT:
      Result := stShort;
    SQL_INTEGER:
      Result := stInteger;
    SQL_FLOAT:
      Result := stDouble;
    SQL_REAL:
      Result := stFloat;
    SQL_DOUBLE:
      Result := stBigDecimal;
    SQL_DATETIME, SQL_TYPE_TIMESTAMP:
      Result := stTimestamp;
    SQL_TYPE_DATE:
      Result := stDate;
    SQL_TYPE_TIME:
      Result := stTime;
    SQL_LONGVARCHAR:
      Result := stAsciiStream;
    SQL_WLONGVARCHAR:
      Result := stUnicodeStream;
    SQL_CLOB, SQL_DBCLOB:
      Result := stBinaryStream;
    SQL_BLOB:
      Result := stBinaryStream;
    else
      Result := stUnknown;
  end;
end;

{**
   Allocate memory for sql param to get data by SQLBindCol
   @param a pointer to SqlVar structure
   @return a size of allocated memory;
}
function AllocSqlData(SqlVar: PSqlVar): Integer;
begin
  Result := 0;
  SqlVar.TypeCode := SqlVar.DataType;
  case SqlVar.ColType of
    stShort:
      begin
        SqlVar.TypeCode := SQL_SMALLINT;
        Result := SizeOf(SQLINTEGER);
      end;
    stInteger:
      begin
        SqlVar.TypeCode := SQL_INTEGER;
      Result := SizeOf(SQLINTEGER);
      end;
    stDouble:
      begin
        SqlVar.TypeCode := SQL_FLOAT;
        Result := SizeOf(SQLFLOAT);
      end;
    stFloat:
      begin
        SqlVar.TypeCode := SQL_REAL;
        Result := SizeOf(SQLREAL);
      end;
    stBigDecimal:
      begin
        SqlVar.TypeCode := SQL_DOUBLE;
        Result := SizeOf(SQLDOUBLE);
      end;
    stLong:
      begin
        SqlVar.TypeCode := SQL_BIGINT;
        Result := SizeOf(Int64);
      end;
    stDate:
      begin
        SqlVar.TypeCode := SQL_TYPE_DATE;
        Result := SQL_DATE_LEN;
      end;
    stTime:
      begin
        SqlVar.TypeCode := SQL_TYPE_TIME;
        Result := SQL_TIME_LEN;
      end;
    stTimestamp:
      begin
        SqlVar.TypeCode := SQL_TYPE_TIMESTAMP;
        Result := SQL_TIMESTAMP_LEN;
      end;
    stString:
      begin
        SqlVar.TypeCode := SQL_CHAR;
        Result := SqlVar.DataSize + 1;
      end;
    stAsciiStream, stUnicodeStream, stBinaryStream:
      begin
        case SqlVar.DataType of
          SQL_BLOB: SqlVar.TypeCode := SQL_BLOB_LOCATOR;
          SQL_CLOB: SqlVar.TypeCode := SQL_CLOB_LOCATOR;
          SQL_DBCLOB: SqlVar.TypeCode := SQL_DBCLOB_LOCATOR;
          else SqlVar.TypeCode := SQL_CHAR;
        end;
        if (SqlVar.DataType <> SQL_WLONGVARCHAR)
          and (SqlVar.DataType <> SQL_LONGVARCHAR) then
          Result := SizeOf(SQLINTEGER)
        else Result := SqlVar.DataSize + 1;
      end;
//    stUnknown:
  end;
  GetMem(SqlVar.Data, Result);
end;

{**
   Allocate memory for sql param to get data by SQLBindCol
   @param a pointer to SqlVar structure
   @return a size of allocated memory;
}
procedure FreeSqlData(SqlVars: PSqlVars);
var
  I: Integer;
  SqlVar: PSqlVar;
begin
  for I := 0 to SqlVars.ActualNum-1 do
  begin
    SqlVar := @SqlVars.Variables[I];
    FreeMem(SqlVar.Data);
    SqlVar.Data := nil;
  end;
end;

end.
