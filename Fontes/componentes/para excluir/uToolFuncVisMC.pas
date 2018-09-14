unit uToolFuncVisMC;

interface
  uses ZQueryMC, DB, ZConnection, DBComboBoxMC, DBRichEditMC, DBLookupComboBoxMC, EditMC;

  function ValidarCpf(CPF : String) : Boolean;
  function ValidarCnpj(CNPJ: string): boolean;
  procedure Filtrar(cSqlPadrao, cSqlCondicao : Array of String; Tabela : Array of TZQueryMC);
  function iif(Condicao : Boolean; Verdade, Mentira : Variant) : Variant;
  procedure SetObjText(Sender: TObject; Text: String);
  procedure RetornarPesquisa(cSql: String; Campos: Array of String;
    Sender: Array of TObject; Connection: TZConnection);

implementation

uses SysUtils;

function ValidarCpf(CPF : String) : Boolean;
var
  Digito1, Digito2: integer;
  Testar: String;
begin
  Testar := CPF;
  Testar := StringReplace(Testar, '.', '', [rfReplaceAll]);
  Testar := StringReplace(Testar, '-', '', [rfReplaceAll]);
  if (POS('/', Testar) <> 0) then exit;
  if (Length(Testar) <> 11) then
  begin
    Result := false;
    Exit;
  end;
  //Calcula o primeiro digito verificador do CPF
  Digito1 := StrToInt(Testar[9]) * 2 +
             StrToInt(Testar[8]) * 3 +
             StrToInt(Testar[7]) * 4 +
             StrToInt(Testar[6]) * 5 +
             StrToInt(Testar[5]) * 6 +
             StrToInt(Testar[4]) * 7 +
             StrToInt(Testar[3]) * 8 +
             StrToInt(Testar[2]) * 9 +
             StrToInt(Testar[1]) * 10;
  Digito1 := 11-(Digito1 mod 11);
  if Digito1 >= 10 then Digito1 := 0;
  //Calcula o segundo digito do CPF
  Digito2 := Digito1 * 2 +
             StrToInt(Testar[9]) * 3 +
             StrToInt(Testar[8]) * 4 +
             StrToInt(Testar[7]) * 5 +
             StrToInt(Testar[6]) * 6 +
             StrToInt(Testar[5]) * 7 +
             StrToInt(Testar[4]) * 8 +
             StrToInt(Testar[3]) * 9 +
             StrToInt(Testar[2]) * 10+
             StrToInt(Testar[1]) * 11;
  Digito2 := 11 - (Digito2 mod 11);
  if Digito2 >= 10 then Digito2 := 0;
  //verifica se o codigo verificador calculado é igula ao código verificador
  //digitado
  if (IntToStr(Digito1) + IntToStr(Digito2)) = (Testar[10] + Testar[11]) then
    Result := true
  else
    Result := false;
end;

function ValidarCnpj(CNPJ: string): boolean;
var
  Digito1, Digito2 : integer;
  Testar: String;
begin
  Testar := CNPJ;
  Testar := StringReplace(Testar, '.', '', [rfReplaceAll]);
  Testar := StringReplace(Testar, '-', '', [rfReplaceAll]);
  Testar := StringReplace(Testar, '/', '', [rfReplaceAll]);

  if (Length(Testar) <> 14) then
  begin
    Result := false;
    Exit;
  end;
  Digito1 := StrToInt(Testar[12]) * 2 +
             StrToInt(Testar[11]) * 3 +
             StrToInt(Testar[10]) * 4 +
             StrToInt(Testar[9]) * 5 +
             StrToInt(Testar[8]) * 6 +
             StrToInt(Testar[7]) * 7 +
             StrToInt(Testar[6]) * 8 +
             StrToInt(Testar[5]) * 9 +
             StrToInt(Testar[4]) * 2 +
             StrToInt(Testar[3]) * 3 +
             StrToInt(Testar[2]) * 4 +
             StrToInt(Testar[1]) * 5;
  Digito1 := 11 - (Digito1 mod 11);
  if Digito1 >= 10 then Digito1 := 0;
  Digito2 := Digito1 * 2 +
             StrToInt(Testar[12]) * 3 +
             StrToInt(Testar[11]) * 4 +
             StrToInt(Testar[10]) * 5 +
             StrToInt(Testar[9]) * 6 +
             StrToInt(Testar[8]) * 7 +
             StrToInt(Testar[7]) * 8 +
             StrToInt(Testar[6]) * 9 +
             StrToInt(Testar[5]) * 2 +
             StrToInt(Testar[4]) * 3 +
             StrToInt(Testar[3]) * 4 +
             StrToInt(Testar[2]) * 5 +
             StrToInt(Testar[1]) * 6;
  Digito2 := 11 - (Digito2 mod 11);
  if Digito2 >= 10 then Digito2 := 0;
  //ALERTA(IntToStr(Digito1) + IntToStr(Digito1));
  if (IntToStr(Digito1) + IntToStr(Digito2)) = (Testar[13] + Testar[14]) then
    Result := true
  else
    Result := false;
end;

procedure Filtrar(cSqlPadrao, cSqlCondicao : Array of String; Tabela : Array of TZQueryMC);
var
  i : Word;
  cSql, Executado : String;
begin
  for i := 0 to Length(Tabela)-1 do
  begin
    if {(Tabela[i].Active) and} (cSqlPadrao[i] <> '') then
      if not (Tabela[i].State in [dsEdit, dsInsert]) then
      begin
        if cSqlCondicao[i] <> '' then
          cSql := iif(Pos('WHERE', cSqlPadrao[i]) > 0, cSqlPadrao[i] +
                        ' AND ' + cSqlCondicao[i], cSqlPadrao[i] +
                        ' WHERE ' + cSqlCondicao[i])
        else
          cSql := cSqlPadrao[i];

        (*Tabela[i].Connection := DM.db;*)
        Tabela[i].Close;
        Tabela[i].SQL.Text := cSql;
        Tabela[i].ExecSQL;
        Tabela[i].Open;
        Executado := Executado + Tabela[i].Name + #13;
      end;
  end;
end;

function iif(Condicao : Boolean; Verdade, Mentira : Variant) : Variant;
begin
  if Condicao then
    Result := Verdade
  else
    Result := Mentira;
end;

{procedure SetObjText(Sender: TObject; Text: String);
begin
  if (Sender is TDBComboBoxMC) then
    (Sender as TDBComboBoxMC).Text := Text;

  if (Sender is TDBRichEditMC) then
    (Sender as TDBRichEditMC).Lines.Text := Text;

  if Sender is TDBLookupComboBoxMC then
    (Sender as TDBLookupComboBoxMC).KeyValue := Text;

  if Sender is TEditMC then
    (Sender as TEditMC).Text := Text;

  if Sender is TParam then
    TParam(Sender).Value := Text;
end;}

(*procedure RetornarPesquisa(cSql: String; Campos: Array of String;
  Sender: Array of TObject; Connection: TZConnection);
var
  Query: TZQueryMC;
  i: Word;
begin
  try
    Query := TZQueryMC.Create(nil);
    Query.Connection := Connection;
    Query.SQL.Text := cSql;
    Query.ExecSql;
    Query.Open;
    for i := 0 to Length(Campos) - 1 do
      SetObjText(Sender[i], Query.FieldByName(Campos[i]).AsString);
  finally
    FreeAndNil(Query);
  end;
end;*)

end.
