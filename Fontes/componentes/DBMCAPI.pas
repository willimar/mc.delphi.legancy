unit DBMCAPI;

interface

uses
  SysUtils, Classes, MCAPI, ZQueryMC, db, ZConnection;

type
  TDBMCAPI = class(TMCAPI)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Filtrar(cSqlPadrao, cSqlCondicao : Array of String;
      Tabela : Array of TZQueryMC);
    procedure RetornarPesquisa(cSql: String; Campos: Array of String;
      Sender: Array of TObject; Connection: TZConnection);
    procedure SetObjText(Sender: TObject; Text: String);
  published
    { Published declarations }
  end;

procedure Register;

implementation

uses DBCheckBoxMC, DBComboBoxMC, DBEditMC, DBGridMC, DBImageMC,
  DBListBoxMC, DBLookupComboBoxMC, DBLookupListBoxMC, DBRadioGroupMC,
  DBRichEditMC, DBTextMC, EditMC;

procedure Register;
begin
  RegisterComponents('MC DBVisuais', [TDBMCAPI]);
end;

{ TDBMCAPI }

procedure TDBMCAPI.Filtrar(cSqlPadrao, cSqlCondicao: array of String;
  Tabela: array of TZQueryMC);
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

procedure TDBMCAPI.RetornarPesquisa(cSql: String; Campos: array of String;
  Sender: array of TObject; Connection: TZConnection);
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
end;

procedure TDBMCAPI.SetObjText(Sender: TObject; Text: String);
begin
  if (Sender is TDBComboBoxMC) then
    (Sender as TDBComboBoxMC).Text := Text
  else if (Sender is TDBRichEditMC) then
    (Sender as TDBRichEditMC).Lines.Text := Text
  else if Sender is TDBLookupComboBoxMC then
    (Sender as TDBLookupComboBoxMC).KeyValue := Text
  else if Sender is TEditMC then
    (Sender as TEditMC).Text := Text
  else if Sender is TParam then
    TParam(Sender).Value := Text;
end;

end.
