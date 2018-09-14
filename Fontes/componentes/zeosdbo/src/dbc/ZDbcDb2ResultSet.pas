unit ZDbcDb2ResultSet;

interface

{$I ZDbc.inc}

uses
  Classes, ZSysUtils, ZCollections, ZDbcIntfs, ZDbcResultSet, ZDbcDb2,
  ZClasses, ZCompatibility, ZDbcResultSetMetadata, ZMessages, ZDbcDb2Utils;

type
  {** Implements Db2 ResultSet. }
  TZDb2ResultSet = class(TZAbstractResultSet)
  private
    FDb2Connection: IZDb2Connection;
  protected
    procedure Open; override;
  public
    constructor Create(Statement: IZStatement; SQL: string; SqlVars: PSqlVars);
    destructor Destroy; override;

    procedure Close; override;

    function IsNull(ColumnIndex: Integer): Boolean; override;
    function GetString(ColumnIndex: Integer): string; override;
    function GetBoolean(ColumnIndex: Integer): Boolean; override;
    function GetByte(ColumnIndex: Integer): ShortInt; override;
    function GetShort(ColumnIndex: Integer): SmallInt; override;
    function GetInt(ColumnIndex: Integer): Integer; override;
    function GetLong(ColumnIndex: Integer): Int64; override;
    function GetFloat(ColumnIndex: Integer): Single; override;
    function GetDouble(ColumnIndex: Integer): Double; override;
    function GetBigDecimal(ColumnIndex: Integer): Extended; override;
    function GetBytes(ColumnIndex: Integer): TByteDynArray; override;
    function GetDate(ColumnIndex: Integer): TDateTime; override;
    function GetTime(ColumnIndex: Integer): TDateTime; override;
    function GetTimestamp(ColumnIndex: Integer): TDateTime; override;
    function GetBlob(ColumnIndex: Integer): IZBlob; override;

    function MoveAbsolute(Row: Integer): Boolean; override;
    function Next: Boolean; override;
  end;

implementation


{ TZDb2ResultSet }

{**
  Releases this <code>ResultSet</code> object's database and
  JDBC resources immediately instead of waiting for
  this to happen when it is automatically closed.

  <P><B>Note:</B> A <code>ResultSet</code> object
  is automatically closed by the
  <code>Statement</code> object that generated it when
  that <code>Statement</code> object is closed,
  re-executed, or is used to retrieve the next result from a
  sequence of multiple results. A <code>ResultSet</code> object
  is also automatically closed when it is garbage collected.
}
procedure TZDb2ResultSet.Close;
begin
(*  if FStmtHandle <> nil then
  begin
    { Free output allocated memory }
    FSqlData := nil;
    FParamsSqlData := nil;
    { Free allocate sql statement }
    FreeStatement(FIBConnection.GetPlainDriver, FStmtHandle);
  end;          *)
inherited Close;
end;

{**
  Constructs this object, assignes main properties and
  opens the record set.
  @param Statement a related SQL statement object.
  @param handle a Interbase6 database connect handle.
  @param the statement previously prepared
  @param the sql out data previously allocated
  @param the Interbase sql dialect
}
constructor TZDb2ResultSet.Create(Statement: IZStatement; SQL: string;
  SqlVars: PSqlVars);
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
  inherited Create(Statement, SQL, nil);

  FDb2Connection := Statement.GetConnection as IZDb2Connection;

//  ResultSetType := rtForwardOnly;
  ResultSetConcurrency := rcReadOnly;

  Open;
{$IFDEF VER125BELOW}
  finally
    FRefCount := OldRefCount;
  end;
{$ENDIF}
end;

{**
   Free memory and destriy component
}
destructor TZDb2ResultSet.Destroy;
begin
{  if not Closed then
    Close;
  inherited Destroy;}
end;

{**
   Return field value by it index
   @param the index column 0 first, 1 second ...
   @return the field value as variant type
}
{function TZDb2ResultSet.GetFieldValue(ColumnIndex: Integer): Variant;
begin
  CheckClosed;
  Result := FSqlData.GetValue(ColumnIndex);
end;}

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  a <code>java.sql.BigDecimal</code> in the Java programming language.

  @param columnIndex the first column is 1, the second is 2, ...
  @param scale the number of digits to the right of the decimal point
  @return the column value; if the value is SQL <code>NULL</code>, the
    value returned is <code>null</code>
}
function TZDb2ResultSet.GetBigDecimal(ColumnIndex: Integer): Extended;
begin
{  CheckClosed;
  CheckColumnConvertion(ColumnIndex, stBigDecimal);
  Result := FSqlData.GetBigDecimal(ColumnIndex - 1);
  LastWasNull := IsNull(ColumnIndex);}
end;

{**
  Returns the value of the designated column in the current row
  of this <code>ResultSet</code> object as a <code>Blob</code> object
  in the Java programming language.

  @param ColumnIndex the first column is 1, the second is 2, ...
  @return a <code>Blob</code> object representing the SQL <code>BLOB</code> value in
    the specified column
}
function TZDb2ResultSet.GetBlob(ColumnIndex: Integer): IZBlob;
{var
  Size: Integer;
  Buffer: Pointer;
  BlobId: TISC_QUAD;}
begin
{  Result := nil;
  CheckClosed;
  CheckBlobColumn(ColumnIndex);

  LastWasNull := IsNull(ColumnIndex);
  if LastWasNull then Exit;

  if FCachedBlob then
  begin
    try
      BlobId := FSqlData.GetQuad(ColumnIndex - 1);
      with FIBConnection do
        ReadBlobBufer(GetPlainDriver, GetDBHandle, GetTrHandle,
          BlobId, Size, Buffer);
      Result := TZAbstractBlob.CreateWithData(Buffer, Size);
    finally
      FreeMem(Buffer, Size);
    end;
  end
  else begin
    BlobId := FSqlData.GetQuad(ColumnIndex - 1);
    Result := TZInterbase6Blob.Create(FIBConnection, BlobId);
  end;   }
end;

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  a <code>boolean</code> in the Java programming language.

  @param columnIndex the first column is 1, the second is 2, ...
  @return the column value; if the value is SQL <code>NULL</code>, the
    value returned is <code>false</code>
}
function TZDb2ResultSet.GetBoolean(ColumnIndex: Integer): Boolean;
begin
{  CheckClosed;
  CheckColumnConvertion(ColumnIndex, stBoolean);
  Result := FSqlData.GetBoolean(ColumnIndex - 1);
  LastWasNull := IsNull(ColumnIndex);}
end;

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  a <code>byte</code> in the Java programming language.

  @param columnIndex the first column is 1, the second is 2, ...
  @return the column value; if the value is SQL <code>NULL</code>, the
    value returned is <code>0</code>
}
function TZDb2ResultSet.GetByte(ColumnIndex: Integer): ShortInt;
begin
 { CheckClosed;
  CheckColumnConvertion(ColumnIndex, stByte);
  Result := FSqlData.GetByte(ColumnIndex - 1);
  LastWasNull := IsNull(ColumnIndex);}
end;

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  a <code>byte</code> array in the Java programming language.
  The bytes represent the raw values returned by the driver.

  @param columnIndex the first column is 1, the second is 2, ...
  @return the column value; if the value is SQL <code>NULL</code>, the
    value returned is <code>null</code>
}
function TZDb2ResultSet.GetBytes(
  ColumnIndex: Integer): TByteDynArray;
begin
 { CheckClosed;
  CheckColumnConvertion(ColumnIndex, stBytes);
  Result := FSqlData.GetBytes(ColumnIndex - 1);
  LastWasNull := IsNull(ColumnIndex);}
end;

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  a <code>java.sql.Date</code> object in the Java programming language.

  @param columnIndex the first column is 1, the second is 2, ...
  @return the column value; if the value is SQL <code>NULL</code>, the
    value returned is <code>null</code>
}
function TZDb2ResultSet.GetDate(ColumnIndex: Integer): TDateTime;
begin
{  CheckClosed;
  CheckColumnConvertion(ColumnIndex, stDate);
  Result := FSqlData.GetDate(ColumnIndex - 1);
  LastWasNull := IsNull(ColumnIndex);}
end;

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  a <code>double</code> in the Java programming language.

  @param columnIndex the first column is 1, the second is 2, ...
  @return the column value; if the value is SQL <code>NULL</code>, the
    value returned is <code>0</code>
}
function TZDb2ResultSet.GetDouble(ColumnIndex: Integer): Double;
begin
{  CheckClosed;
  CheckColumnConvertion(ColumnIndex, stDouble);
  Result := FSqlData.GetDouble(ColumnIndex - 1);
  LastWasNull := IsNull(ColumnIndex);}
end;

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  a <code>float</code> in the Java programming language.

  @param columnIndex the first column is 1, the second is 2, ...
  @return the column value; if the value is SQL <code>NULL</code>, the
    value returned is <code>0</code>
}
function TZDb2ResultSet.GetFloat(ColumnIndex: Integer): Single;
begin
{  CheckClosed;
  CheckColumnConvertion(ColumnIndex, stFloat);
  Result := FSqlData.GetFloat(ColumnIndex - 1);
  LastWasNull := IsNull(ColumnIndex);}
end;

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  an <code>int</code> in the Java programming language.

  @param columnIndex the first column is 1, the second is 2, ...
  @return the column value; if the value is SQL <code>NULL</code>, the
    value returned is <code>0</code>
}
function TZDb2ResultSet.GetInt(ColumnIndex: Integer): Integer;
begin
{  CheckClosed;
  CheckColumnConvertion(ColumnIndex, stInteger);
  Result := FSqlData.GetInt(ColumnIndex - 1);
  LastWasNull := IsNull(ColumnIndex);}
end;

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  a <code>long</code> in the Java programming language.

  @param columnIndex the first column is 1, the second is 2, ...
  @return the column value; if the value is SQL <code>NULL</code>, the
    value returned is <code>0</code>
}
function TZDb2ResultSet.GetLong(ColumnIndex: Integer): Int64;
begin
{  CheckClosed;
  CheckColumnConvertion(ColumnIndex, stLong);
  Result := FSqlData.GetLong(ColumnIndex - 1);
  LastWasNull := IsNull(ColumnIndex);}
end;

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  a <code>short</code> in the Java programming language.

  @param columnIndex the first column is 1, the second is 2, ...
  @return the column value; if the value is SQL <code>NULL</code>, the
    value returned is <code>0</code>
}
function TZDb2ResultSet.GetShort(ColumnIndex: Integer): SmallInt;
begin
{  CheckClosed;
  CheckColumnConvertion(ColumnIndex, stShort);
  Result := FSqlData.GetShort(ColumnIndex - 1);
  LastWasNull := IsNull(ColumnIndex);}
end;

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  a <code>String</code> in the Java programming language.

  @param columnIndex the first column is 1, the second is 2, ...
  @return the column value; if the value is SQL <code>NULL</code>, the
    value returned is <code>null</code>
}
function TZDb2ResultSet.GetString(ColumnIndex: Integer): string;
begin
{  CheckClosed;
  CheckColumnConvertion(ColumnIndex, stString);
  LastWasNull := IsNull(ColumnIndex);
  Result := FSqlData.GetString(ColumnIndex - 1);}
end;

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  a <code>java.sql.Time</code> object in the Java programming language.

  @param columnIndex the first column is 1, the second is 2, ...
  @return the column value; if the value is SQL <code>NULL</code>, the
    value returned is <code>null</code>
}
function TZDb2ResultSet.GetTime(ColumnIndex: Integer): TDateTime;
begin
{  CheckClosed;
  CheckColumnConvertion(ColumnIndex, stTime);
  Result := FSqlData.GetTime(ColumnIndex - 1);
  LastWasNull := IsNull(ColumnIndex);}
end;

{**
  Gets the value of the designated column in the current row
  of this <code>ResultSet</code> object as
  a <code>java.sql.Timestamp</code> object in the Java programming language.

  @param columnIndex the first column is 1, the second is 2, ...
  @return the column value; if the value is SQL <code>NULL</code>, the
  value returned is <code>null</code>
  @exception SQLException if a database access error occurs
}
function TZDb2ResultSet.GetTimestamp(ColumnIndex: Integer): TDateTime;
begin
{  CheckClosed;
  CheckColumnConvertion(ColumnIndex, stTimestamp);
  Result := FSqlData.GetTimestamp(ColumnIndex - 1);
  LastWasNull := IsNull(ColumnIndex);}
end;

{**
  Indicates if the value of the designated column in the current row
  of this <code>ResultSet</code> object is Null.

  @param columnIndex the first column is 1, the second is 2, ...
  @return if the value is SQL <code>NULL</code>, the
    value returned is <code>true</code>. <code>false</code> otherwise.
}
function TZDb2ResultSet.IsNull(ColumnIndex: Integer): Boolean;
begin
{  CheckClosed;
  Result := FSqlData.IsNull(ColumnIndex - 1);}
end;

{**
  Moves the cursor to the given row number in
  this <code>ResultSet</code> object.

  <p>If the row number is positive, the cursor moves to
  the given row number with respect to the
  beginning of the result set.  The first row is row 1, the second
  is row 2, and so on.

  <p>If the given row number is negative, the cursor moves to
  an absolute row position with respect to
  the end of the result set.  For example, calling the method
  <code>absolute(-1)</code> positions the
  cursor on the last row; calling the method <code>absolute(-2)</code>
  moves the cursor to the next-to-last row, and so on.

  <p>An attempt to position the cursor beyond the first/last row in
  the result set leaves the cursor before the first row or after
  the last row.

  <p><B>Note:</B> Calling <code>absolute(1)</code> is the same
  as calling <code>first()</code>. Calling <code>absolute(-1)</code>
  is the same as calling <code>last()</code>.

  @return <code>true</code> if the cursor is on the result set;
    <code>false</code> otherwise
}
function TZDb2ResultSet.MoveAbsolute(Row: Integer): Boolean;
begin
{  Result := False;
  RaiseForwardOnlyException;}
end;

{**
  Moves the cursor down one row from its current position.
  A <code>ResultSet</code> cursor is initially positioned
  before the first row; the first call to the method
  <code>next</code> makes the first row the current row; the
  second call makes the second row the current row, and so on.

  <P>If an input stream is open for the current row, a call
  to the method <code>next</code> will
  implicitly close it. A <code>ResultSet</code> object's
  warning chain is cleared when a new row is read.

  @return <code>true</code> if the new current row is valid;
    <code>false</code> if there are no more rows
}
function TZDb2ResultSet.Next: Boolean;
//var
//  StatusVector: TARRAY_ISC_STATUS;
begin
(*  { Checks for maximum row. }
  Result := False;
  if (MaxRows > 0) and (LastRowNo >= MaxRows) then
    Exit;

  { Fetch row. }
  if (ResultSetType = rtForwardOnly) and (FFetchStat = 0) then
  begin
    with FIBConnection do
    begin
      FFetchStat := GetPlainDriver.isc_dsql_fetch(@StatusVector,
        @FStmtHandle, GetDialect, FSqlData.GetData);
      CheckInterbase6Error(GetPlainDriver, StatusVector);
    end;

    if FFetchStat = 0 then
    begin
      RowNo := RowNo + 1;
      LastRowNo := RowNo;
      Result := True;
    end;
  end;  *)
end;

{**
  Opens this recordset.
}
procedure TZDb2ResultSet.Open;
{var
  I: Integer;
  FieldSqlType: TZSQLType;
  ColumnInfo: TZColumnInfo;}
begin
(*  if not Assigned(FStmtHandle) then
    raise EZSQLException.Create(SCanNotRetrieveResultSetData);

  ColumnsInfo.Clear;
  {$RANGECHECKS OFF}
  for I := 0 to FSqlData.GetFieldCount - 1 do
  begin
    ColumnInfo := TZColumnInfo.Create;
    with ColumnInfo, FSqlData  do
    begin
      FieldSqlType := GetFieldSqlType(I);
      ColumnName := GetFieldSqlName(I);
      TableName := GetFieldRelationName(I);
      ColumnLabel := GetFieldAliasName(I);
      ColumnType := FieldSqlType;

      case FieldSqlType of
        stString,
        stUnicodeString: Precision := GetFieldLength(I);
      end;

      ReadOnly := (GetFieldRelationName(I) = '') or (GetFieldSqlName(I) = '')
        or (GetFieldSqlName(I) = 'RDB$DB_KEY')
        or (FieldSqlType = ZDbcIntfs.stUnknown);

      if IsNullable(I) then
        Nullable := ntNullable
      else Nullable := ntNoNulls;

      Scale := GetFieldScale(I);
      AutoIncrement := False;
      //Signed := False;
      //CaseSensitive := True;
    end;
    ColumnsInfo.Add(ColumnInfo);
  end;
  inherited Open; *)
end;

end.
