unit uDBFunc;

interface

uses
  DB, Forms, HTTPApp, SvcMgr, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection,
  Variants, Classes, midas, DBClient, SysUtils, ZQueryMC, ZSqlProcessor;

  procedure Inserir(Tabela, Checar : Array of TZQuery; cCampos, cTabelas: Array of String);
  procedure Alterar(Tabela, Checar : Array of TZQuery; cCampos, cTabelas: Array of String);
  procedure Salvar(Tabela : Array of TZQuery; cCampo, cTabela : Array of String);
  procedure Cancelar(Tabela : Array of TZQuery);
  function Excluir(Tabela, Campos, Valor: Array of String; Sql: String) : boolean;
  function ExecutarSql(cSql: String): Boolean;
  function Codigo: Integer;
  procedure Filtrar(cSqlPadrao, cSqlCondicao : Array of String; Tabela : Array of TZQueryMC);
  procedure ExecutarFiltro(cSqlPadrao, cSqlCondicao : Array of String; Tabela : Array of TZReadOnlyQuery);
  procedure opentables(DataModule : TDataModule);
  function NumeroRegistro(Tabela, Campo, Condicao : String): Integer; overload;
  procedure Atualizar(Table: Array of TZQuery);
  procedure Atualiza(Table: Array of TZReadOnlyQuery);
  procedure SimplesLocate(CampoChavePai, CampoChaveFilha, CampoLocalizado,
    CampoRetorno: String; QueryPai, QueryFilha: TZQuery;
    Sender, ObjRetorno: TObject);
  procedure RetornarPesquisa(cSql: String; Campos: Array of String;
    Sender: Array of TObject);
  function LocalizarEntidade(Valor, cSql: String;
    LocalizarCampos, RetornarCampos: array of String;
    RetornarEmObjetos: Array of TObject): Boolean;
  procedure OpenZQuery(Form:TForm);
  procedure OpenClientDataSet(Form:TForm);

implementation

uses uToolFunc, uDM;

procedure Inserir(Tabela, Checar : Array of TZQuery; cCampos, cTabelas: Array of String);
var
  i : Word;
begin
  if Checar[0] <> nil then
  for i := 0 to Length(Checar)-1 do
  begin
    if Checar[i].State in [dsInsert, dsEdit] then
    begin
      if Alerta('Existem trabalhos não salvos. Para salva-los clique em OK', true) then
        Salvar(Checar, cCampos, cTabelas)
      else
      begin
        Alerta('Não é possivel Inserir o novo registro.', false);
        Break;
      end;
    end;
  end;
  for i := 0 to Length(Tabela)-1 do
  begin
    if not (Tabela[i].State in [dsEdit, dsInsert]) then
      Tabela[i].Append
    else
    begin
      Alerta('Não é possivel Inserir o novo registro.' + #13 + 'Erro Código 0001', false);
    end;
  end;
end;

procedure Alterar(Tabela, Checar : Array of TZQuery; cCampos, cTabelas: Array of String);
var
  i : Word;
begin
  if Checar[0] <> nil then
  for i := 0 to Length(Checar) - 1 do
  begin
    if Checar[i].State in [dsInsert, dsEdit] then
    begin
      if Alerta('Existem trabalhos não salvos. Para salva-los clique em OK', true) then
        Salvar(Checar, cCampos, cTabelas)
      else
      begin
        Alerta('Não é possivel Alterar o registro.', false);
        Break;
      end;
    end;
  end;
  for i := 0 to Length(Tabela) - 1 do
  begin
    if not (Tabela[i].State in [dsEdit, dsInsert]) then
      Tabela[i].Edit
    else
    begin
      Erro('Não é possivel Alterar o registro.' + #13 + 'Erro Código 0001', false);
    end;
  end;
end;

procedure Salvar(Tabela : Array of TZQuery; cCampo, cTabela : Array of String);
var
  i, j : Word;
begin
  for i := 0 to Length(Tabela) do
  begin
    if (Tabela[i].State in [dsEdit, dsInsert]) then
    begin
      if (cCampo[i] <> '') AND (Tabela[i].State in [dsInsert]) then
      begin
        j := Codigo;
        if Tabela[i].FieldByName(cCampo[i]).Text = '' then
          Tabela[i].FieldByName(cCampo[i]).Value := j
        else
        begin
          if NumeroRegistro(cTabela[i], cCampo[i],
          Tabela[i].FieldByName(cCampo[i]).Text) > 0 then
          begin
            if Alerta('Ocódigo ' + Tabela[i].FieldByName(cCampo[i]).Text +
              ' já se encontra cadastrado no sistema. O código sujerido pelo' +
              'sistema é ' + IntToStr(j) + ' gostaria de usá-lo?', true) then
              Tabela[i].FieldByName(cCampo[i]).Value := j
            else
              Abort;
          end;
        end;
      end;
      Tabela[i].Post;
    end;
  end;
end;

procedure Cancelar(Tabela : Array of TZQuery);
var
  i : Word;
begin
  for i := 0 to Length(Tabela)-1 do
  begin
    if (Tabela[i].State in [dsEdit, dsInsert]) then
    begin
      Tabela[i].Close;
      Tabela[i].Open;
    end;
  end;
end;
//fazer semelhante a meta tabela1;tabela2;tabela3
function Excluir(Tabela, Campos, Valor: Array of String; Sql: String) : boolean;
begin
  if Pergunta('Deseja excluir o registro selecionado?') then
    Alerta('procedure em construção.', false);
end;

function ExecutarSql(cSql: String): Boolean;
var
  Processo: TZSQLProcessor;
begin
  try
    Processo := TZSQLProcessor.Create(nil);
    Processo.Connection := DM.db;
    Processo.Script.Text := cSql;
    Processo.Execute;
  finally
    FreeAndNil(Processo);
  end;
end;

function Codigo : Integer;
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

procedure Filtrar(cSqlPadrao, cSqlCondicao : Array of String; Tabela : Array of TZQueryMC);
var
  i : Word;
  cSql : String;
begin
  for i := 0 to Length(Tabela)-1 do
  begin
    if (cSqlPadrao[i] <> '') then
      if not (Tabela[i].State in [dsEdit, dsInsert]) then
      begin
        if cSqlCondicao[i] <> '' then
          cSql := iif(Pos('WHERE', cSqlPadrao[i]) > 0, cSqlPadrao[i] +
                        ' AND ' + cSqlCondicao[i], cSqlPadrao[i] +
                        ' WHERE ' + cSqlCondicao[i])
        else
          cSql := cSqlPadrao[i];

        Tabela[i].Conexao := DM.db;
        Tabela[i].Close;
        Tabela[i].SQL.Text := cSql;
        Tabela[i].Open;
      end;
  end;
end;

procedure ExecutarFiltro(cSqlPadrao, cSqlCondicao : Array of String; Tabela : Array of TZReadOnlyQuery);
var
  i : Word;
  cSql : String;
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
        Tabela[i].SQL.Text := cSql;
        Tabela[i].Open;
      end;
  end;
end;

procedure opentables(DataModule : TDataModule);
var
  i : Integer;
begin
  for i := 0 to Pred(DataModule.ComponentCount) do
    if DataModule.Components[i] is TZQuery then
      (DataModule.Components[i] as TZQuery).Open;
end;

function NumeroRegistro(Tabela, Campo, Condicao : String): Integer;
var
  qryApoio: TZQueryMC;
begin
  try
    qryApoio := TZQueryMC.Create(nil);
    qryApoio.Conexao := DM.db;
    qryApoio.SQL.Text := 'SELECT COUNT(' + Campo + ') "Cod" FROM ' + Tabela +
      iif(Condicao <> '', ' WHERE ' + Condicao, '');
    qryApoio.Open;
    Result := qryApoio.FieldValues['Cod'];
  finally
    qryApoio.Close;
    FreeAndNil(qryApoio);
  end;
end;

procedure Atualizar(Table: Array of TZQuery);
var
  i: Word;
begin
  for i := 0 to Length(Table) - 1 do
  begin
    Table[i].Close;
    Table[i].Open;
  end;
end;

procedure Atualiza(Table: Array of TZReadOnlyQuery);
var
  i: Word;
begin
  for i := 0 to Length(Table) - 1 do
  begin
    Table[i].Close;
    Table[i].Open;
  end;
end;

procedure SimplesLocate(CampoChavePai, CampoChaveFilha, CampoLocalizado,
  CampoRetorno: String; QueryPai, QueryFilha: TZQuery;
  Sender, ObjRetorno: TObject);
begin
  if TRIM(GetObjText(Sender)) = '' then
  begin
    QueryPai.FieldByName(CampoChavePai).Text := '';
    SetObjText(Sender, '');
    Exit;
  end;
  if QueryFilha.Locate(CampoLocalizado, GetObjText(Sender), [loCaseInsensitive]) then
  begin
    QueryPai.FieldByName(CampoChavePai).Value := QueryFilha.FieldValues[CampoChaveFilha];
    SetObjText(ObjRetorno, QueryFilha.FieldValues[CampoRetorno]);
  end
  else
  begin
    QueryPai.FieldByName(CampoChavePai).Text := '';
    SetObjText(ObjRetorno, '');
  end;
end;

procedure RetornarPesquisa(cSql: String; Campos: Array of String;
  Sender: Array of TObject);
var
  Query: TZQueryMC;
  i: Word;
begin
  Query := TZQueryMC.Create(Application);
  Query.Conexao := DM.db;
  Query.SQL.Text := cSql;
  Query.Open;
  for i := 0 to Length(Campos) - 1 do
    SetObjText(Sender[i], Query.FieldByName(Campos[i]).AsString);
end;

function LocalizarEntidade(Valor, cSql: String;
  LocalizarCampos, RetornarCampos: array of String;
  RetornarEmObjetos: Array of TObject): Boolean;
var
  i, j: Word;
  ClientDataSet: TZQueryMC;
begin
  try
    //verificando se o valor passado está vazio
    if Valor = '' then
      begin
        for j := 0 to Length(RetornarEmObjetos) - 1 do
          SetObjText(RetornarEmObjetos[j], '');
        Result := false;
        Exit;
      end
    else
      //verificando se as arrays de retorno tem o mesmo tamanho
      if Length(RetornarCampos) <> Length(RetornarEmObjetos) then
      begin
        Result := false;
        raise Exception.Create('O tamanho das arrays de campos a retonar e objetos onde retornará são diferentes.');
      end;

    //criando um clientdataset para trabalhar
    ClientDataSet := TZQueryMC.Create(nil);
    ClientDataSet.Conexao := DM.db;

    //fazendo um for para localizar em cada campo
    i := 0;
    for i := 0 to Length(LocalizarCampos) - 1 do
    begin
      Filtrar([cSql], [LocalizarCampos[i] + '=' + QuotedStr(Valor)], [ClientDataSet]);
      if ClientDataSet.RecordCount > 0 then
        begin
          //retornando os valores para os edits informados
          for j := 0 to Length(RetornarCampos) - 1 do
          begin
            SetObjText(RetornarEmObjetos[j], ClientDataSet.FieldByName(RetornarCampos[j]).AsString);
          end;

          Result := true;
          Break; //é usado o break pois ele retornará o primeiro registro encontrado
        end
      else
        begin
          {esta estapa foi comentada pois está esvaziando o edit sem motivos visiveis
          for j := 0 to Length(RetornarEmObjetos) - 1 do
            SetObjText(RetornarEmObjetos[i], '0');}
          Result := false;
          Continue;
        end;
    end;
  finally
    //FreeAndNil(ClientDataSet);
  end;
end;

procedure OpenZQuery(Form:TForm);
var
  i: Integer;
begin
  for i := 0 to pred(Form.ComponentCount) do
  begin
    Form.Update;
    if Form.Components[i] is TZQuery then
      if (Form.Components[i] as TZQuery).Sql.Text <> '' then
        (Form.Components[i] as TZQuery).Open
    else
      if Form.Components[i] is TZReadOnlyQuery then
        if (Form.Components[i] as TZReadOnlyQuery).Sql.Text <> '' then
          (Form.Components[i] as TZReadOnlyQuery).Open;
  end;
end;

procedure OpenClientDataSet(Form:TForm);
var
  i: Integer;
begin
  for i := 0 to pred(Form.ComponentCount) do
  begin
    Form.Update;
    if Form.Components[i] is TClientDataSet then
      if (Form.Components[i] as TClientDataSet).ProviderName <> '' then
        (Form.Components[i] as TClientDataSet).Open;
  end;
end;

end.
