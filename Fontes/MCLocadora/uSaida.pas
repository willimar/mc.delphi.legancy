unit uSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, PanelMC, uDadosCliente, Buttons, fraCad, uFrameCadGrid,
  StdCtrls, Mask, DBCtrls, SpeedButtonMC, LabelMC, ComCtrls, ToolWin,
  Provider, DataSetProviderMC, DB, DBClient, ClientDataSetMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DatasourceMC,
  EditMC, Grids, DBGrids, DBGridMC, ImgList;

type
  T_frmSaida = class(TForm)
    PanelMC1: TPanelMC;
    PanelMC2: TPanelMC;
    fraDadosCliente1: TfraDadosCliente;
    PanelMC3: TPanelMC;
    PanelMC5: TPanelMC;
    Panel2: TPanel;
    Shape2: TShape;
    Label11: TLabel;
    DBText14: TDBText;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    txtSaida: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtDevolucao: TDBEdit;
    dbeValorPago: TDBEdit;
    lblFechar: TLabelMC;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    cdsItens: TClientDataSetMC;
    dspItens: TDataSetProviderMC;
    cdsItensCODITEMALUG: TIntegerField;
    cdsItensCODALUGUEL: TIntegerField;
    cdsItensVALOR: TFloatField;
    cdsItensDEVOLVE: TStringField;
    cdsItensCODFILME: TIntegerField;
    qryFilme1: TZQueryMC;
    cdsItensTotal: TAggregateField;
    dsrItens: TDatasourceMC;
    cdsItensFime: TStringField;
    txtCodigo: TEditMC;
    txtFilme: TEditMC;
    txtPreco: TEditMC;
    DBGridMC1: TDBGridMC;
    bitCidade: TSpeedButton;
    btnInserir: TSpeedButtonMC;
    btnExcluir: TSpeedButtonMC;
    qryItens: TZQueryMC;
    qryItensCODITEMALUG: TIntegerField;
    qryItensCODALUGUEL: TIntegerField;
    qryItensVALOR: TFloatField;
    qryItensDEVOLVE: TStringField;
    qryItensCODFILME: TIntegerField;
    ImageList1: TImageList;
    dspFilme: TDataSetProviderMC;
    qryFilme: TClientDataSetMC;
    qryFilmeSUBCOD: TStringField;
    qryFilmeCODFILME: TIntegerField;
    qryFilmeDISPONIVEL: TStringField;
    qryFilmeBARCODE: TStringField;
    qryFilme1SUBCOD: TStringField;
    qryFilme1CODFILME: TIntegerField;
    qryFilme1DISPONIVEL: TStringField;
    qryFilme1BARCODE: TStringField;
    qryFilme1FL_NOME: TStringField;
    qryFilme1PR_VALOR: TFloatField;
    qryFilmeFL_NOME: TStringField;
    qryFilmePR_VALOR: TFloatField;
    qryItensSUBCOD: TStringField;
    cdsItensSUBCOD: TStringField;
    qryLookupsFilmes: TZQueryMC;
    qryLookupsFilmesCODFILME: TIntegerField;
    qryLookupsFilmesNOME: TStringField;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure txtCodigoChange(Sender: TObject);
    procedure txtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure bitCidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsItensVALORChange(Sender: TField);
  private
    { Private declarations }
    cSqlAdicional: String;
  public
    { Public declarations }
  end;

var
  _frmSaida: T_frmSaida;

implementation

uses uMovimento, uToolFunc, uDBFunc, uDM, uRptTiket, uPesquisa;

{$R *.dfm}

procedure T_frmSaida.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure T_frmSaida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult = mrCancel then
    if Pergunta('Deseja cancelar esta locação?') then begin
      Cancelar([_frmMovimento.qryAluguel]);
      Action := caFree;
      _frmSaida := nil;
    end
    else begin
      Action := caNone;
    end;
end;

procedure T_frmSaida.FormShow(Sender: TObject);
begin
  qryItens.ParamByName('CODALUGUEL').Value := _frmMovimento.qryAluguelCODALUGUEL.AsInteger;
  cdsItens.Open;
  qryFilme1.Open;
  qryFilme.Open;
  qryFilme1.Filtered := false;
  qryFilme1.Filter := 'DISPONIVEL=''Sim''';
  qryFilme1.Filtered := true;
  qryFilme.Filtered := false;
  qryFilme.Filter := 'DISPONIVEL=''Sim''';
  qryFilme.Filtered := true;
  fraDadosCliente1.DataSource := _frmMovimento.dsrCliente;
  txtDevolucao.DataSource := _frmMovimento.dsrAluguel;
  dbeValorPago.DataSource := _frmMovimento.dsrAluguel;
  txtSaida.DataSource := _frmMovimento.dsrAluguel;
end;

procedure T_frmSaida.btnInserirClick(Sender: TObject);
  //verifica se o filme foi reservado
  function Reservado: boolean;
  var
    qryApoio: TZQueryMC;
  begin
    qryApoio := TZQueryMC.Create(Self);
    qryApoio.Conexao := DM.db;
    try
      Filtrar(['SELECT CODPESSOA, CODCLIENTE, Reserva FROM TBRESERVA'], ['SUBCOD=' + QuotedStr(qryFilmeSUBCOD.AsString)], [qryApoio]);
      if (_frmMovimento.qryClienteCODPESSOA.AsInteger <> qryApoio.FieldByName('CodPessoa').AsInteger) and
         (qryApoio.FieldByName('Reserva').AsDateTime = Date) and
         (qryApoio.FieldByName('CODCLIENTE').AsInteger <> _frmMovimento.qryClienteCODCLIENTE.AsInteger) then begin
        //verifica se a configuração trava os filmes reservados
        if not DM.SisControl.TravarReservado then begin
        //se reservado pergunta se gostaria de alugar mesmo assim
          if not Alerta('Este filme está reservado. Para aluga-lo clique em ''Sim''.', true) then begin
            Result := true;
            exit;
          end;
        end
        else begin
          //para trava em cofiguração somente exibe o aviso
          Alerta('Este filme está reservado.', false);
          Result := true;
          exit;
        end;
      end;
    finally
      FreeAndNil(qryApoio);
    end;
    Result := false;
  end;
  function Assistido: boolean;
  var
    qryApoio: TZQueryMC;
  const
    Historico =
      'SELECT '                                                   +
         'P.NOME, Troca, Motivo '                                                +
      'FROM TBHISTORICO H, TBCLIENTE C, TBPESSOA P '              +
      'WHERE H.CODSOCIO=C.CODPESSOA AND C.CODPESSOA=P.CODPESSOA ';
  begin
    qryApoio := TZQueryMC.Create(Self);
    qryApoio.Conexao := DM.db;
    try
      Result := true;
      //se estiver sido assistido o filme alguma vez exibe o aviso
      //com o nome de quem alugou e se é titular ou dependente
      Filtrar([Historico], ['CODFILME=' + qryFilmeCODFILME.AsString +
        ' AND CODFICHA=' + iif(_frmMovimento.qryClienteCODTITULAR.AsString = '',
        _frmMovimento.qryClienteCODCLIENTE.AsString, _frmMovimento.qryClienteCODTITULAR.AsString)], [qryApoio]);
      if not qryApoio.IsEmpty then
        if Alerta('O filme ' + txtFilme.Text + ' já foi alugado pelo sócio ' +
          qryApoio.FieldByName('NOME').AsString + '. Gostaria de locá-lo novamente?', true) then
          Result := true
        else
          Result := false;

      //verifico se hoive uma troca desta fita ou filme
      // e vaiso
      if qryApoio.FieldByName('Troca').AsString = 'Sim' then
        if not Informacao('Este filme foi trocado.' + #13 + 'Motivo:' + #13 +
                   qryApoio.FieldByName('Motivo').AsString + #13 + 'Locar ainda assim?', true) then begin
          Result := false
        end
        else
          Result := true;
    finally
      FreeAndNil(qryApoio);
    end;
  end;
var
  BarCode, SubCod: boolean;
begin
  txtCodigo.SetFocus;
  if txtFilme.Text = '' then begin
    Alerta('Informe o filme.');
    Exit;
  end;
  qryFilme.Filtered := false;
  qryFilme.Filter := 'DISPONIVEL=''Sim''';
  qryFilme.Filtered := true;
  BarCode := qryFilme.Locate('BARCODE', txtCodigo.Text, [loCaseInsensitive]);
  SubCod := qryFilme.Locate('SUBCOD', txtCodigo.Text, [loCaseInsensitive]);

  if (BarCode or SubCod) then begin
    //verifica se o filme está na prateleira
    if qryFilmeDISPONIVEL.AsString <> 'Sim' then begin
      Alerta('Filme não está disponível.', false);
      exit;
    end;

    if Reservado then
      Exit;

    if not Assistido then
      Exit;
    cdsItens.InsertRecord([0, 0, txtCodigo.Text, StrToFloat(txtPreco.Text), 'Sim', qryFilmeCODFILME.asInteger]);
    qryFilme.Edit;
    qryFilmeDISPONIVEL.AsString := 'Não';
    qryFilme.Post;
    txtCodigo.Text := '';
  end
  else
    Alerta('Filme já locado.', false);
end;

procedure T_frmSaida.txtCodigoChange(Sender: TObject);
var
  AchouBarCode, AchouSubCod: Boolean;
begin
  AchouBarCode := qryFilme.Locate('BARCODE', txtCodigo.Text, [loCaseInsensitive]);
  AchouSubCod := qryFilme.Locate('SUBCOD', txtCodigo.Text, [loCaseInsensitive]);

  if AchouBarCode or AchouSubCod then begin
    txtFilme.Text := qryFilmeFL_NOME.AsString;
    txtPreco.Text := FormatFloat('0.00', qryFilmePR_VALOR.AsFloat);
  end
  else begin
    txtFilme.Text := '';
    txtPreco.Text := '';
  end;
end;

procedure T_frmSaida.txtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    Key := #0;
    btnInserirClick(btnInserir);
  end;
end;

procedure T_frmSaida.btnExcluirClick(Sender: TObject);
begin
  try
    if Pergunta('Retirar o filme da lista?') then begin 
      if qryFilme.state in [dsEdit, dsInsert] then begin
        qryFilme.Cancel;
        qryFilme.CancelUpdates;
      end;
      qryFilme.Filtered := false;
      qryFilme.Filter := 'DISPONIVEL=''Não''';
      qryFilme.Filtered := true;
      qryFilme.Locate('CODFILME', cdsItensCODFILME.AsInteger, [LOcASEiNSENSITIVE]);
      qryFilme.Edit;
      qryFilmeDISPONIVEL.AsString := 'Sim';
      qryFilme.Post;
      cSqlAdicional := cSqlAdicional + 'UPDATE TBFITA SET DISPONIVEL=''Sim'' WHERE SUBCOD=''' + cdsItensSUBCOD.AsString + ''';';
      cdsItens.Delete;
    end;
  finally
    qryFilme.Filtered := false;
    qryFilme.Filter := 'DISPONIVEL=''Sim''';
    qryFilme.Filtered := true;
  end;
end;

procedure T_frmSaida.ToolButton1Click(Sender: TObject);
var
  cSql : string;
  vCodigo: integer;
  Valor: Real;
begin
  txtCodigo.SetFocus;
  if _frmMovimento.qryAluguelPAGO.AsFloat > cdsItensTotal.Value then begin
    Alerta('O sistema não permite que o sócio tenha crédito.');
    Exit;
  end;
  if cdsItens.IsEmpty then begin
    Alerta('Selecione um filme para locação');
    Exit;
  end;
  dsrItens.Enabled := false;
  vCodigo := Codigo;
  Valor := 0;
  try
    cdsItens.IndexFieldNames := 'CODFILME';
    cdsItens.First;
    while not cdsItens.Eof do begin
      cdsItens.Edit;
      cdsItensCODITEMALUG.AsInteger := vCodigo;
      cdsItensCODALUGUEL.AsInteger := _frmMovimento.qryAluguelCODALUGUEL.AsInteger;
      cdsItens.Post;
      cSql := cSql + 'UPDATE TBFITA SET DISPONIVEL=''Não'' WHERE SUBCOD=''' + cdsItensSUBCOD.AsString + ''';';
      Valor := Valor + cdsItensVALOR.AsFloat;
      cdsItens.Next;
      inc(vCodigo);
    end;
    _frmMovimento.qryAluguelCODPESSOA.AsInteger := _frmMovimento.qryClienteCODPESSOA.AsInteger;
    _frmMovimento.qryAluguelVALOR.AsFloat := Valor;
    _frmMovimento.qryAluguel.Post;
    cdsItens.ApplyUpdates(0);
    ExecutarSql(cSql + cSqlAdicional);
    if _frmMovimento.qryAluguelPAGO.AsFloat > 0 then begin
      _frmMovimento.qryCaixa.Append;
      _frmMovimento.qryCaixaCODEMPRESA.AsInteger := DM.SisControl.Empresa.Codigo;
      _frmMovimento.qryCaixaCODDESCRICAO.AsInteger := 3;
      _frmMovimento.qryCaixaVALOR.AsFloat := _frmMovimento.qryAluguelPAGO.AsFloat;
      _frmMovimento.qryCaixaTIPO.AsString := 'E';
      _frmMovimento.qryCaixaLANCAMENTO.AsDateTime := Date;
      _frmMovimento.qryCaixa.Post;
    end;
    T_frmTiket.Iprimir(_frmMovimento.qryAluguelCODALUGUEL.AsInteger);
  finally
    dsrItens.Enabled := true;
  end;
  ModalResult := mrOk;
end;

procedure T_frmSaida.bitCidadeClick(Sender: TObject);
const
  CONST_QUERY_FILME =
    'SELECT FT.*, FL.NOME AS FL_NOME, PR.VALOR AS PR_VALOR FROM TBFITA FT, TBFILME FL, TBPRECO PR '+
    'WHERE FT.CODFILME=FL.CODFILME AND PR.CODPRECO=FL.CODPRECO';
begin
  txtCodigo.Text := T_frmPesquisa.AbrePesquisa('SUBCOD', 'Pesquisa de filmes', Self, qryFilme1, 10);
  qryFilme1.Close;
  qryFilme1.SQL.Text := CONST_QUERY_FILME;
  qryFilme1.Open;
end;

procedure T_frmSaida.FormCreate(Sender: TObject);
begin
  cSqlAdicional := '';
end;

procedure T_frmSaida.FormDestroy(Sender: TObject);
begin
  Self := nil;
end;

procedure T_frmSaida.cdsItensVALORChange(Sender: TField);
begin
  if (cdsItens.State in [dsEdit]) then
    cdsItens.Post;
end;

end.
