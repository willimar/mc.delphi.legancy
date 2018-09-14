unit ZQueryMC;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Variants, ZSqlProcessor, ZConnection;

type

  TZQueryMC = class(TZQuery)
  private
    FTableName: String;
    FFieldKey: string;
    FConexao: TZConnection;
    FConexaoNova: TZConnection;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    Query: array of TZQueryMC;
    Campos: array of String;
    SqlFilha: array of string;

    constructor Create(AWoner:TComponent);override;
    procedure DoAfterInsert;override;
    procedure DoAfterEdit;override;
    procedure DoAfterPost;override;
    procedure DoAfterCancel;override;
    procedure DoBeforeOpen; override;
    procedure DoBeforeRefresh; override;
  published
    { Published declarations }
    property TableName: String read FTableName write FTableName;
    property FieldKey: string read FFieldKey write FFieldKey;
    property Conexao: TZConnection read FConexao write FConexao;
  end;


procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('MC Kernel', [TZQueryMC]);
end;

{ TZQueryMC }

constructor TZQueryMC.Create(AWoner: TComponent);
begin
  inherited Create(AWoner);
  RequestLive := true;
end;

procedure TZQueryMC.DoAfterCancel;
var
  i: word;
begin
  inherited;
  if length(Query) = 0 then exit;
  for i := 0 to pred(length(Query)) do
  begin
    Query[i].Cancel;
  end;
end;

procedure TZQueryMC.DoAfterEdit;
var
  i: word;
begin
  inherited;
  if length(Query) = 0 then exit;
  for i := 0 to pred(length(Query)) do
  begin
    Query[i].Edit;
    Query[i].FieldByName(Campos[i]).AsInteger := FieldByName(FieldKey).AsInteger;
  end;
end;

procedure TZQueryMC.DoAfterInsert;
  function Codigo: integer;
  var
    Ano, Mes, Dia, Hora, Minuto, Segundo, MSegundo: Word;
    Valor : string;
    Resultado: integer;
  begin
    DecodeTime(Time, Hora, Minuto, Segundo, MSegundo);
    Valor := FormatFloat('00', Hora) + FormatFloat('00', Minuto) + FormatFloat('00', Segundo) +
      FormatFloat('000', MSegundo);
    Result := Random(999999999 - StrToInt(Valor));
    if Result = 0 then
      Result := Codigo;
  end;
var
  Retorno: integer;
  i: integer;
begin
  try
    inherited;
    if FieldKey = '' then exit;
    Retorno := Codigo;
    {pegando o valor para a chave primaria}
    FieldByName(FieldKey).AsInteger := Retorno;
    {atribuindo o valor da chave primaria para a chave estrangeira da query filha}
    for i := 0 to pred(length(Query)) do
    begin
      if Query[i].State in [dsInsert] then
        Query[i].Cancel;
      Query[i].Append;
      Query[i].FieldByName(Campos[i]).AsInteger := FieldByName(FieldKey).AsInteger;
    end;
  finally

  end;
end;

procedure TZQueryMC.DoAfterPost;
var
  i: word;
begin
  inherited;
  if Length(Query) = 0 then exit;
  for i := 0 to pred(length(Query)) do
  begin
    if Query[i].State in [dsBrowse] then Query[i].Edit;
    Query[i].FieldByName(Campos[i]).AsInteger := FieldByName(FieldKey).AsInteger;
    Query[i].Post;
  end;
end;

procedure TZQueryMC.DoBeforeOpen;
begin
  inherited;
  try
    if Assigned(Conexao) then begin
      if not Assigned(FConexaoNova) then
        FConexaoNova := TZConnection.Create(Self)
      else
        FConexaoNova.Disconnect;
      FConexaoNova.HostName := Conexao.HostName;
      FConexaoNova.Protocol := Conexao.Protocol;
      FConexaoNova.Password := Conexao.Password;
      FConexaoNova.Database := Conexao.Database;
      FConexaoNova.User := Conexao.User;
      FConexaoNova.Connect;
      Connection := FConexaoNova;
    end;
  finally

  end;
end;

procedure TZQueryMC.DoBeforeRefresh;
begin
  FConexaoNova.Disconnect;
  FConexaoNova.Connect;
  Open;
  inherited;
end;

end.
