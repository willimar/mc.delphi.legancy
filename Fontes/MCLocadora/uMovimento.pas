unit uMovimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, LabelMC, EditMC, Grids, DBGrids, DBGridMC,
  DBCtrls, uDadosFilme, Buttons, SpeedButtonMC, ComCtrls, DB, DateUtils,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DatasourceMC;

type
  T_frmMovimento = class(TForm)
    lblFechar: TLabelMC;
    txtSocio: TEditMC;
    LabelMC1: TLabelMC;
    grdCliente: TDBGridMC;
    Image1: TImage;
    Panel1: TPanel;
    Shape1: TShape;
    Nome: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    lblEmail: TDBText;
    lblWeb: TDBText;
    Label15: TLabel;
    FOTO: TDBImage;
    GroupBox1: TGroupBox;
    fraFilmes: TfraDadosFilme;
    btnAlugar: TSpeedButtonMC;
    btnDevolver: TSpeedButtonMC;
    btnAlterar: TSpeedButtonMC;
    btnTrocar: TSpeedButtonMC;
    StatusBar: TStatusBar;
    Timer: TTimer;
    qryCliente: TZQueryMC;
    qryClienteCODPESSOA: TIntegerField;
    qryClienteCODCLIENTE: TIntegerField;
    qryClienteENDERECO: TStringField;
    qryClienteCOMPLEMENTO: TStringField;
    qryClienteBAIRRO: TStringField;
    qryClienteTEL: TStringField;
    qryClienteCEL: TStringField;
    qryClienteCEP: TStringField;
    qryClienteP_NOME: TStringField;
    qryClienteTIPOPESSOA: TStringField;
    qryClienteCPFCNPJ: TStringField;
    qryClienteEMAIL: TStringField;
    qryClienteWEB: TStringField;
    qryClienteDATACADASTRO: TDateField;
    qryClienteRG: TStringField;
    qryClienteDATANASCIMENTO: TDateField;
    qryClienteSEXO: TStringField;
    qryClienteTELRAMAL: TStringField;
    qryClienteN_NOME: TStringField;
    qryClienteDEFICIECIA: TStringField;
    qryClienteESTADOCIVIL: TIntegerField;
    qryClienteAPELIDO: TStringField;
    qryClienteTITULAR: TStringField;
    qryClienteATIVO: TStringField;
    dsrCliente: TDatasourceMC;
    bitCidade: TSpeedButton;
    txtFilmes: TEditMC;
    LabelMC2: TLabelMC;
    SpeedButton1: TSpeedButton;
    qryAluguel: TZQueryMC;
    qryAluguelCODALUGUEL: TIntegerField;
    qryAluguelCODPESSOA: TIntegerField;
    qryAluguelRETIRADA: TDateField;
    qryAluguelENTREGA: TDateField;
    qryAluguelVALOR: TFloatField;
    qryAluguelPAGO: TFloatField;
    qryCaixa: TZQueryMC;
    qryCaixaCODCAIXA: TIntegerField;
    qryCaixaCODEMPRESA: TIntegerField;
    qryCaixaCODDESCRICAO: TIntegerField;
    qryCaixaVALOR: TFloatField;
    qryCaixaTIPO: TStringField;
    qryCaixaLANCAMENTO: TDateField;
    dsrAluguel: TDatasourceMC;
    qryClienteCID_NOME: TStringField;
    qryClienteCODUF: TStringField;
    qryClienteCODTITULAR: TIntegerField;
    qryAluguelValorDevido: TFloatField;
    qryDebito: TZQueryMC;
    dsrDebito: TDatasourceMC;
    qryDebitoCODDEBITO: TIntegerField;
    qryDebitoCODFICHA: TIntegerField;
    qryDebitoVALOR: TFloatField;
    qryDebitoVENCIMENTO: TDateField;
    qryClienteFOTO: TBlobField;
    DBGridMC1: TDBGridMC;
    btnFiltro: TSpeedButtonMC;
    btnFiltrarFilmes: TSpeedButtonMC;
    procedure FormCreate(Sender: TObject);
    procedure lblFecharClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure btnAlugarClick(Sender: TObject);
    procedure qryAluguelAfterInsert(DataSet: TDataSet);
    procedure qryAluguelCalcFields(DataSet: TDataSet);
    procedure btnDevolverClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnTrocarClick(Sender: TObject);
    procedure bitCidadeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFiltroClick(Sender: TObject);
    procedure btnFiltrarFilmesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure AbreJanela;
  end;

var
  _frmMovimento: T_frmMovimento;

implementation

uses uDM, uToolFunc, uDBFunc, uSaida, uEntrada, uTroca, uPesquisa,
  uRegistro;

{$R *.dfm}

procedure T_frmMovimento.FormCreate(Sender: TObject);
begin
  lblFechar.Left := Width - 25;
  Constraints.MaxHeight := 0;
  Constraints.MaxWidth := 0;
  qryCaixa.Open;
  setlength(grdCliente.FFieldCheckBox, 2);
  grdCliente.FFieldCheckBox[0] := qryClienteATIVO;
  grdCliente.FFieldCheckBox[1] := qryClienteTITULAR;
end;

procedure T_frmMovimento.lblFecharClick(Sender: TObject);
begin
  Close;
end;

procedure T_frmMovimento.FormResize(Sender: TObject);
begin
  if btnAlugar.Left > 69 then begin
    btnAlugar.Left := btnAlugar.Left - 130;
    btnDevolver.Left := btnDevolver.Left - 130;
    btnAlterar.Left := btnAlterar.Left - 130;
    btnTrocar.Left := btnTrocar.Left - 130;
  end;
end;

procedure T_frmMovimento.TimerTimer(Sender: TObject);
begin
  StatusBar.Panels[0].Text := TimeToStr(Time);
  StatusBar.Panels[1].Text := FormatDateTime('dddd - dd "de", MMMM "de" yyyy', Date);

end;

procedure T_frmMovimento.btnAlugarClick(Sender: TObject);
begin
  if not ValidarCadastro and (NumeroRegistro('TBALUGUEL', '*', '') > 10) then begin
    Alerta('Sistema não registrado, operação negada.');
    abort;
  end;
  if qryCliente.RecordCount = 0 then
  begin
    Alerta('Nenhum cliente selecionado.');
    exit;
  end;
  if qryClienteAtivo.AsString = 'Não' then
  begin
    Alerta('Não é possivel fazer a locação, pois o cliente está bloqueado. Para desbloquear o cliente vá até o cadastro de clientes.');
    Exit;
  end;

  Filtrar(['SELECT * FROM TBALUGUEL'], ['CODPESSOA=' + qryClienteCODPESSOA.AsString], [ qryAluguel]);
  if not qryAluguel.IsEmpty then
  begin
    Alerta('Já existe uma locação aberta para este cliente. Para alugar mais filmes clique em Alterar.', false);
    Exit;
  end;
  Application.CreateForm(T_frmSaida, _frmSaida);
  qryAluguel.Append;
  qryAluguel.FieldValues['Retirada'] := date;
  qryAluguel.FieldValues['Entrega'] := IncDay(date, 1);
  qryAluguel.FieldValues['Pago'] := 0;
  _frmSaida.ShowModal;
end;

procedure T_frmMovimento.qryAluguelAfterInsert(DataSet: TDataSet);
begin
  qryAluguelRETIRADA.AsDateTime := date;
  qryAluguelENTREGA.AsDateTime := IncDay(date);
  qryAluguelVALOR.AsFloat := 0;
  qryAluguelPAGO.AsFloat := 0;
end;

procedure T_frmMovimento.qryAluguelCalcFields(DataSet: TDataSet);
begin
  qryAluguelValorDevido.AsFloat := qryAluguelVALOR.AsFloat - qryAluguelPAGO.AsFloat;
end;

procedure T_frmMovimento.btnDevolverClick(Sender: TObject);
begin
  if qryCliente.IsEmpty then begin
    Alerta('Nenhum cliente selecionado.');
    exit;
  end;

  Filtrar(['SELECT * FROM TBALUGUEL'], ['CODPESSOA=' + qryClienteCODPESSOA.AsString], [qryAluguel]);
  if qryAluguel.IsEmpty then begin
    Alerta('Não há locações para este sócio.');
    Exit;
  end;

  Application.CreateForm(T_frmEntrada, _frmEntrada);
  Filtrar(['SELECT * FROM TBITEMALUGUEL'], ['CodAluguel=' + qryAluguelCodAluguel.Text],[_frmEntrada.qryItens]);
  _frmEntrada.cdsItens.Open;
  Filtrar(['SELECT * FROM TBDEBITO'], ['CodFicha=' + iif(qryClienteCODTITULAR.AsString = '',
    qryClienteCODCLIENTE.AsString, qryClienteCODTITULAR.AsString)], [qryDebito]);
  _frmEntrada.ShowModal;
end;

procedure T_frmMovimento.btnAlterarClick(Sender: TObject);
begin
  if qryCliente.IsEmpty then begin
    Alerta('Nenhum cliente selecionado.');
    exit;
  end;

  Filtrar(['SELECT * FROM TBALUGUEL'], ['CODPESSOA=' + qryClienteCODPESSOA.AsString], [qryAluguel]);
  if qryAluguel.IsEmpty then begin
    Alerta('Não há locações para este sócio.');
    Exit;
  end;

  if qryClienteAtivo.AsString = 'Não' then
  begin
    Alerta('Não é possivel fazer a locação, pois o cliente está bloqueado. Para desbloquear o cliente vá até o cadastro de clientes.');
    Exit;
  end;

  Application.CreateForm(T_frmSaida, _frmSaida);
  qryAluguel.Edit;
  _frmSaida.qryItens.ParamByName('CODALUGUEL').AsInteger := qryAluguelCODALUGUEL.AsInteger;
  _frmSaida.cdsItens.Open;
  _frmSaida.ShowModal;
end;

procedure T_frmMovimento.btnTrocarClick(Sender: TObject);
begin
  if qryCliente.IsEmpty then begin
    Alerta('Nenhum cliente selecionado.');
    exit;
  end;

  Filtrar(['SELECT * FROM TBALUGUEL'], ['CODPESSOA=' + qryClienteCODPESSOA.AsString], [ qryAluguel]);
  if qryAluguel.IsEmpty then begin
    Alerta('Não há locações para este sócio.');
    Exit;
  end;

  Application.CreateForm(T_frmTroca, _frmTroca);
  Filtrar(['SELECT * FROM TBITEMALUGUEL'], ['CodAluguel=' + qryAluguelCODALUGUEL.AsString],
    [_frmTroca.qryItens]);
  _frmTroca.ShowModal;
end;

class procedure T_frmMovimento.AbreJanela;
begin
  if (DM.qryInterfaceSOMENTELEITURA.AsString = 'Não') and
     (DM.qryInterfaceINSERIR.AsString = 'Não') and
     (DM.qryInterfaceALTERAR.AsString = 'Não') and
     (DM.qryInterfaceIMPRIMIR.AsString = 'Não') and
     (DM.qryInterfaceEXCLUIR.AsString = 'Não') then begin
    Alerta('O usuário ' + QuotedStr(DM.SisControl.Usuario.Usuario) + ' não possui permissão suficiente para acessar esta parte do programa.');
    Exit;
  end;
  Application.CreateForm(T_frmMovimento, _frmMovimento);
  _frmMovimento.ShowModal;
end;

procedure T_frmMovimento.bitCidadeClick(Sender: TObject);
begin
  dsrCliente.Enabled := false;
  txtSocio.Clear;
  btnFiltroClick(nil);          
  txtSocio.Text := T_frmPesquisa.AbrePesquisa('P_NOME', 'Pesquisa de sócios', Self, qryCliente, 10);
  dsrCliente.Enabled := true;
  btnFiltroClick(nil);
end;

procedure T_frmMovimento.SpeedButton1Click(Sender: TObject);
begin
  fraFilmes.dsrFilmes.Enabled := false;
  txtFilmes.Clear;
  btnFiltrarFilmesClick(nil);
  txtFilmes.Text := T_frmPesquisa.AbrePesquisa('FL_NOME', 'Pesquisa de filmes', Self, fraFilmes.qryFilme);
  fraFilmes.dsrFilmes.Enabled := true;
  btnFiltrarFilmesClick(nil);
end;

procedure T_frmMovimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

procedure T_frmMovimento.btnFiltroClick(Sender: TObject);
const
  cSqlPadrao =
    'SELECT '                                                                                                                         +
        'P.CODPESSOA, C.CODCLIENTE, ENDERECO, COMPLEMENTO, BAIRRO, TEL, CEL, CEP, P.NOME AS P_NOME, TIPOPESSOA, CPFCNPJ, EMAIL, WEB, '+
        'DATACADASTRO, RG, DATANASCIMENTO, SEXO, TELRAMAL, N.NOME AS N_NOME, DEFICIECIA, ESTADOCIVIL, APELIDO, TITULAR, '             +
        'ATIVO, CID.NOME AS CID_NOME, CID.CODUF, C.CODTITULAR, FOTO '       +
    'FROM TBPESSOA P, TBCLIENTE C, TBCIDADE N, TBCIDADE CID '               +
    'WHERE C.CODPESSOA=P.CODPESSOA AND N.CODCIDADE=P.CODCIDADENACIMENTO '   +
    'AND CID.CODCIDADE=CODCIDRESID AND C.EMPRESA=''Não'' AND CODCLIENTE<>1 '+
    'AND ATIVO=''Sim''';


begin
  Filtrar([cSqlPadrao], ['P.NOME LIKE ' + QuotedStr('%' + txtSocio.Text + '%')], [qryCliente]);
end;

procedure T_frmMovimento.btnFiltrarFilmesClick(Sender: TObject);
const
  cSqlPadrao =
    'SELECT '                                                                                                                 +
        'FL.CODFILME AS FL_CODFILME, FL.NOME AS FL_NOME, FT.SUBCOD AS FT_SUBCOD, FT.BARCODE AS FT_BARCODE, '                  +
        'FL.AUTOR AS FL_AUTOR, FT.DISPONIVEL AS FT_DISPONIVEL, FL.QUANTIDADE AS FL_QUANTIDADE, P.NOME AS P_NOME, '            +
        'PR.VALOR AS PR_VALOR, FL.VALORCOMPRA AS FL_VALORCOMPRA '                                                             +
    'FROM TBFILME FL, TBFITA FT, TBCLIENTE C, TBPRECO PR, TBPESSOA P '                                                        +
    'WHERE FL.CODFILME=FT.CODFILME AND C.CODCLIENTE=FL.CODFORNECEDOR AND PR.CODPRECO=FL.CODPRECO AND C.CODPESSOA=P.CODPESSOA '+
    'AND FT.DISPONIVEL=''Sim''';
begin
  Filtrar([cSqlPadrao], ['FL.NOME LIKE ' + QuotedStr('%' + txtFilmes.Text + '%')], [fraFilmes.qryFilme]);
end;

end.
