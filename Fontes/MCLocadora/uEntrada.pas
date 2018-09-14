unit uEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids,
  DBGridMC, uDadosCliente, LabelMC, PanelMC, DB, DatasourceMC, DBClient,
  ClientDataSetMC, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, Buttons, SpeedButtonMC, Mask,
  DBEditMC;

type
  T_frmEntrada = class(TForm)
    PanelMC1: TPanelMC;
    PanelMC2: TPanelMC;
    lblFechar: TLabelMC;
    PanelMC3: TPanelMC;
    dbgFitas: TDBGridMC;
    PanelMC5: TPanelMC;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel2: TPanel;
    Shape2: TShape;
    Label11: TLabel;
    lblValorLoc: TDBText;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    lblSaida: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblDevolucao: TDBText;
    lblValorPago: TDBText;
    lblValorDevido: TDBText;
    Label3: TLabel;
    qryFilme1: TZQueryMC;
    qryFilme1SUBCOD: TStringField;
    qryFilme1CODFILME: TIntegerField;
    qryFilme1DISPONIVEL: TStringField;
    qryFilme1BARCODE: TStringField;
    qryFilme1FL_NOME: TStringField;
    qryFilme1PR_VALOR: TFloatField;
    dspFilme: TDataSetProviderMC;
    qryFilme: TClientDataSetMC;
    qryFilmeSUBCOD: TStringField;
    qryFilmeCODFILME: TIntegerField;
    qryFilmeDISPONIVEL: TStringField;
    qryFilmeBARCODE: TStringField;
    qryFilmeFL_NOME: TStringField;
    qryFilmePR_VALOR: TFloatField;
    qryItens: TZQueryMC;
    qryItensCODITEMALUG: TIntegerField;
    qryItensCODALUGUEL: TIntegerField;
    qryItensSUBCOD: TStringField;
    qryItensVALOR: TFloatField;
    qryItensDEVOLVE: TStringField;
    qryItensCODFILME: TIntegerField;
    dspItens: TDataSetProviderMC;
    cdsItens: TClientDataSetMC;
    cdsItensCODITEMALUG: TIntegerField;
    cdsItensCODALUGUEL: TIntegerField;
    cdsItensSUBCOD: TStringField;
    cdsItensVALOR: TFloatField;
    cdsItensDEVOLVE: TStringField;
    cdsItensCODFILME: TIntegerField;
    cdsItensFime: TStringField;
    cdsItensTotal: TAggregateField;
    dsrItens: TDatasourceMC;
    fraDadosCliente1: TfraDadosCliente;
    Label6: TLabel;
    cdsValorPago: TClientDataSetMC;
    dsrValorPago: TDatasourceMC;
    cdsValorPagoValor: TFloatField;
    txtValor: TDBEditMC;
    qryHistorico: TZQueryMC;
    qryHistoricoCODHISTORICO: TIntegerField;
    qryHistoricoCODFICHA: TIntegerField;
    qryHistoricoCODFILME: TIntegerField;
    qryHistoricoDATASAIDA: TDateField;
    qryHistoricoDATAENTRADA: TDateField;
    qryHistoricoATRASO: TStringField;
    qryHistoricoCODSOCIO: TIntegerField;
    qryHistoricoQTD: TIntegerField;
    qryHistoricoTROCA: TStringField;
    qryHistoricoMOTIVO: TStringField;
    qryHistoricoVALOR: TFloatField;
    lblAnterio: TLabelMC;
    qryLookupsFilmes: TZQueryMC;
    qryLookupsFilmesCODFILME: TIntegerField;
    qryLookupsFilmesNOME: TStringField;
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure dbgFitasDblClick(Sender: TObject);
    procedure lblFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmEntrada: T_frmEntrada;

implementation

uses uMovimento, uToolFunc, uDM, uDBFunc;

{$R *.dfm}

procedure T_frmEntrada.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
  CaracterValido(Sender, Key, tvFloat)
end;

procedure T_frmEntrada.dbgFitasDblClick(Sender: TObject);
begin
  if dbgFitas.SelectedIndex = 2 then begin
    cdsItens.Edit;
    cdsItensDEVOLVE.AsString := iif(cdsItensDEVOLVE.AsString = 'Sim', 'Não', 'Sim');
    cdsItens.Post;
  end;
end;

procedure T_frmEntrada.lblFecharClick(Sender: TObject);
begin
  Close;
end;

procedure T_frmEntrada.FormCreate(Sender: TObject);
begin
  cdsValorPago.CreateDataSet;
  cdsValorPago.Append;
  cdsValorPagoValor.AsFloat := 0;
end;

procedure T_frmEntrada.ToolButton1Click(Sender: TObject);
var
  cSql: String;
begin
  txtValor.ValidarDado;
  dbgFitas.SetFocus;

  if cdsValorPagoValor.AsFloat > _frmMovimento.qryAluguelValorDevido.AsFloat then begin
    Alerta('O sistema não permite que o cliente possua credito.');
    exit;
  end;

  (*não é feito mais o esquema para compensar debito por aqui
  _frmMovimento.qryDebito.Edit;
  _frmMovimento.qryDebitoCODFICHA.AsInteger := iif(_frmMovimento.qryClienteCODTITULAR.AsString = '', _frmMovimento.qryClienteCODCLIENTE.AsInteger, _frmMovimento.qryClienteCODTITULAR.AsInteger);
  _frmMovimento.qryDebitoVALOR.AsFloat := _frmMovimento.qryDebitoVALOR.AsFloat - StrToFloat(edtValor.Text);
  DM.tbDebitoVencimento.AsDateTime := DM.tbAluguelEntrega.AsDateTime;
  Salvar([DM.tbDebito], ['CodDebito'], ['tbdebito']);*)
  if cdsValorPagoValor.AsFloat > 0 then begin
    _frmMovimento.qryCaixa.Append;
    _frmMovimento.qryCaixaCODEMPRESA.AsInteger := DM.SisControl.Empresa.Codigo;
    _frmMovimento.qryCaixaCODDESCRICAO.AsInteger := 2;
    _frmMovimento.qryCaixaVALOR.AsFloat := cdsValorPagoValor.AsFloat;
    _frmMovimento.qryCaixaTIPO.AsString := 'E';
    _frmMovimento.qryCaixaLANCAMENTO.AsDateTime := Date;
    _frmMovimento.qryCaixa.Post;
  end;

  cdsItens.First;
  While not cdsItens.Eof do
  begin
    if cdsItensDEVOLVE.AsString = 'Sim' then begin
      cSql := cSql + 'UPDATE tbfita SET Disponivel = ''Sim'' WHERE SubCod=' + QuotedStr(cdsItensSUBCOD.AsString) + ';';

      //filtra o historico atráz do filme assistido
      Filtrar(['SELECT * FROM tbhistorico '],
        ['CodFicha=' + iif(_frmMovimento.qryClienteCODTITULAR.AsString = '', _frmMovimento.qryClienteCODCLIENTE.AsString, _frmMovimento.qryClienteCODTITULAR.AsString) +
         ' AND CodFilme=' + cdsItensCODFILME.AsString],
        [qryHistorico]);
      if qryHistorico.IsEmpty then
      begin
        qryHistorico.Append;
        if _frmMovimento.qryAluguelENTREGA.AsDateTime < Date then
          qryHistoricoATRASO.AsString := 'Sim'
        else
          qryHistoricoATRASO.AsString := 'Não';

        qryHistoricoCODFICHA.AsInteger := iif(_frmMovimento.qryClienteCODTITULAR.AsString = '', _frmMovimento.qryClienteCODCLIENTE.AsInteger, _frmMovimento.qryClienteCODTITULAR.AsInteger);
        qryHistoricoCODFILME.AsInteger := cdsItensCODFILME.AsInteger;
        qryHistoricoDATASAIDA.AsDateTime := _frmMovimento.qryAluguelRETIRADA.AsDateTime;
        qryHistoricoCODSOCIO.AsInteger := _frmMovimento.qryClienteCODPESSOA.AsInteger;
        qryHistoricoQTD.AsInteger := 0;
        qryHistoricoTROCA.AsString := 'Não';
        qryHistoricoVALOR.AsFloat := cdsItensVALOR.AsFloat;
        qryHistoricoDATAENTRADA.AsDateTime := date;
        qryHistorico.Post;
      end;
      cdsItens.Delete;
    end
    else
      cdsItens.Next;
  end;
  cdsItens.ApplyUpdates(0);
  if cdsItens.IsEmpty then begin
     if _frmMovimento.qryAluguelValorDevido.AsFloat > cdsValorPagoValor.AsFloat then begin
      if _frmMovimento.qryDebito.IsEmpty then
        _frmMovimento.qryDebito.Append
      else
        _frmMovimento.qryDebito.Edit;

      _frmMovimento.qryDebitoCODFICHA.AsInteger := iif(_frmMovimento.qryClienteCODTITULAR.AsString = '', _frmMovimento.qryClienteCODCLIENTE.AsInteger, _frmMovimento.qryClienteCODTITULAR.AsInteger);
      _frmMovimento.qryDebitoVALOR.AsFloat := _frmMovimento.qryDebitoVALOR.AsFloat + (_frmMovimento.qryAluguelValorDevido.AsFloat - cdsValorPagoValor.AsFloat);
      _frmMovimento.qryDebitoVENCIMENTO.AsDateTime := Date;
      _frmMovimento.qryDebito.Post;
    end;
    _frmMovimento.qryAluguel.Delete;
  end;
  ExecutarSql(cSql);
  ModalResult := mrOk;
end;

procedure T_frmEntrada.ToolButton2Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure T_frmEntrada.FormDestroy(Sender: TObject);
begin
  Self := nil;
end;

procedure T_frmEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModalResult = mrCancel then
    if Pergunta('Deseja cancelar esta operação?') then begin
      Cancelar([_frmMovimento.qryAluguel]);
      Action := caFree;
    end
    else begin
      Action := caNone;
    end;
end;

procedure T_frmEntrada.FormShow(Sender: TObject);
begin
  fraDadosCliente1.DataSource := _frmMovimento.dsrCliente;
  lblDevolucao.DataSource := _frmMovimento.dsrAluguel;
  lblValorLoc.DataSource := _frmMovimento.dsrAluguel;
  lblValorPago.DataSource := _frmMovimento.dsrAluguel;
  lblValorDevido.DataSource := _frmMovimento.dsrAluguel;
  lblSaida.DataSource := _frmMovimento.dsrAluguel;
  RetornarPesquisa('SELECT VALOR FROM TBDEBITO WHERE CODFICHA=' +
    _frmMovimento.qryClienteCODCLIENTE.AsString + ' OR CODFICHA=' +
    IIF(_frmMovimento.qryClienteCODTITULAR.IsNull, '0', _frmMovimento.qryClienteCODTITULAR.AsString)
    , ['VALOR'], [lblAnterio]);
  if lblAnterio.Caption <> '' then begin
    lblAnterio.Caption := FormatFloat('R$ #,###,##0.00', StrToFloat(lblAnterio.Caption));
  end;
end;

end.
