unit uExclusao;

interface

uses db, ZQueryMC, ZConnection, ZSqlProcessor;

type
  TOrientacao = (oCliente, oSocio, oEmpresa);
  TExcluir = Class(TObject)

  private
    FDB: TZConnection;
    FProcessor: TZSqlProcessor;
  private

  public
    constructor Create(Awoner: TObject);
    procedure DeleteCliente(CODPESSOA, CODCLIENTE: Integer);
    procedure DeleteFilme(CODFILME: Integer);
  published
    property DB: TZConnection read FDB write FDB;
    property Processor: TZSqlProcessor read FProcessor write FProcessor;
end;

implementation

uses SysUtils, uToolFunc;

{ TExcluir }

constructor TExcluir.Create(Awoner: TObject);
begin
  inherited Create;
end;

procedure TExcluir.DeleteCliente(CODPESSOA, CODCLIENTE: Integer);
const
  {PARA EXCLUSÃO EM CASCATA}
  CONST_HISTORICO = 'DELETE FROM TBHISTORICO WHERE CODFICHA=:CODCLIENTE';
  CONST_OBS = 'DELETE FROM TBOBS WHERE CODPESSOA=:CODPESSOA';   
  CONST_GRUPOUSUARIO = 'DELETE FROM TBUSUARIOGRUPO WHERE CODUSUARIO= (SELECT CODUSUARIO FROM TBUSUARIO WHERE CODPESSOA=:CODPESSOA)';
  CONST_USUARIO = 'DELETE FROM TBUSUARIO WHERE CODPESSOA=:CODPESSOA';
  CONST_CLIENTE = 'DELETE FROM TBCLIENTE WHERE CODPESSOA=:CODPESSOA';
  CONST_RESERVA = 'DELETE FROM TBRESERVA WHERE CODPESSOA=:CODPESSOA';
  CONST_DEBITO = 'DELETE FROM TBDEBITO WHERE CODFICHA=:CODCLIENTE';
  CONST_QRY_EXCLUIR: array [0 .. 6] of string = (CONST_HISTORICO, CONST_OBS, CONST_GRUPOUSUARIO, CONST_USUARIO, CONST_DEBITO, CONST_RESERVA, CONST_CLIENTE);

  {PARA FAZER A VALIDAÇÃO}
  CONST_ALUGUEL = 'SELECT COUNT(*) FROM TBALUGUEL WHERE CODPESSOA=:CODPESSOA';
  CONST_FILMES = 'SELECT COUNT(*) FROM TBFILME WHERE CODFORNECEDOR=:CODCLIENTE';
  CONST_QRY_VALIDAR: array [0 .. 1] of string = (CONST_ALUGUEL, CONST_FILMES);

  {MENSAGENS DE VALIDACAO}
  CONST_ALUGUEL_MSG = 'Existe aluguel ativo para este cliente que por isso não será excluído.';
  CONST_FILME_MSG = 'Este é um fornecedor em uso e não pode ser excluído.';
  CONST_QRY_MSG_VALIDACAO: array [0 .. 1] of string = (CONST_ALUGUEL_MSG, CONST_FILME_MSG);

  {DEPENDENTES PARA SER EXCLUIDOS TAMBÉM}
  CONST_DEPENDENTES = 'SELECT CODPESSOA, CODCLIENTE FROM TBCLIENTE WHERE CODTITULAR=:CODCLIENTE';
var
  Query: TZQueryMC;
  i: integer;
  Exclusao: string;

  function MontarSQL(SQL: string): string;
  begin
    MontarSQL := iif(pos(':CODCLIENTE', sql) > 0, Substituir(':CODCLIENTE', IntToStr(CODCLIENTE), SQL),
      Substituir(':CODPESSOA', IntToStr(CODPESSOA), SQL));
  end;
begin
  try
    Query := TZQueryMC.Create(nil);
    Query.Connection := DB;
    Query.SQL.Text := MontarSQL(CONST_DEPENDENTES);
     Query.Open;

    while not Query.Eof do begin
      DeleteCliente(Query.FieldByName('CODPESSOA').AsInteger, Query.FieldByName('CODCLIENTE').AsInteger);
      Query.Next;
    end;

    for i := 0 to pred(length(CONST_QRY_VALIDAR)) do begin
      Query.Close;
      Query.SQL.Text := MontarSQL(CONST_QRY_VALIDAR[i]);
      Query.Open;
      if Query.Fields[0].AsInteger > 0 then begin
        Alerta(CONST_QRY_MSG_VALIDACAO[i]);
        Abort;
      end;
    end;

    for i := 0 to pred(length(CONST_QRY_EXCLUIR)) do begin
      Exclusao := Exclusao + iif(Exclusao = '', '', ';') + MontarSQL(CONST_QRY_EXCLUIR[i]);
    end;
    Processor.Script.Text := Exclusao;
    Processor.Execute;
  finally
    FreeAndNil(Query);
  end;
end;

procedure TExcluir.DeleteFilme(CODFILME: Integer);
const
  {PARA EXCLUSÃO EM CASCATA}
  CONST_FITAS = 'DELETE FROM TBFITA WHERE CODFILME=:CODFILME';
  CONST_RESERVAR = 'DELETE FROM TBRESERVA WHERE SUBCOD IN (SELECT SUBCOD FROM TBFITA WHERE CODFILME=:CODFILME)';
  CONST_HGISTORICO = 'DELETE FROM TBHISTORICO WHERE CODFILME=:CODFILME';
  CONST_QRY_EXCLUIR: array [0 .. 2] of string = (CONST_FITAS, CONST_RESERVAR, CONST_HGISTORICO);

  {PARA FAZER A VALIDAÇÃO}
  CONST_ITENSALUGUEL = 'SELECT COUNT(*) FROM TBITEMALUGUEL WHERE CODFILME=:CODFILME';
  CONST_QRY_VALIDAR: array [0 .. 0] of string = (CONST_ITENSALUGUEL);

  {MENSAGENS DE VALIDACAO}
  CONST_ALUGUEL_MSG = 'Existe aluguel ativo para este filme que por isso não será excluído.';
  CONST_QRY_MSG_VALIDACAO: array [0 .. 0] of string = (CONST_ALUGUEL_MSG);
var
  Query: TZQueryMC;
  i: integer;
  Exclusao: string;

  function MontarSQL(SQL: string): string;
  begin
    MontarSQL := iif(pos(':CODFILME', sql) > 0, Substituir(':CODFILME', IntToStr(CODFILME), SQL),
      Substituir(':CODFILME1', IntToStr(0), SQL));
  end;
begin
  try
    Query := TZQueryMC.Create(nil);
    Query.Connection := DB;

    for i := 0 to pred(length(CONST_QRY_VALIDAR)) do begin
      Query.Close;
      Query.SQL.Text := MontarSQL(CONST_QRY_VALIDAR[i]);
      Query.Open;
      if Query.Fields[0].AsInteger > 0 then begin
        Alerta(CONST_QRY_MSG_VALIDACAO[i]);
        Abort;
      end;
    end;

    for i := 0 to pred(length(CONST_QRY_EXCLUIR)) do begin
      Exclusao := Exclusao + iif(Exclusao = '', '', ';') + MontarSQL(CONST_QRY_EXCLUIR[i]);
    end;
    Processor.Script.Text := Exclusao;
    Processor.Execute;
  finally
    FreeAndNil(Query);
  end;
end;

end.
