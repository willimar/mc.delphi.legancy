unit uProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, DBCtrls, Mask, DBEditMC,
  DBLookupComboBoxMC, DBRichEditMC, EditMC, DBTextMC, DBRadioGroupMC,
  DBComboBoxMC, DuploGrid;

type
  T_frmCadGridProduto = class(T_frmCadGrid)
    PageControl2: TPageControl;
    tbsGerais: TTabSheet;
    panEnd: TPanelMC;
    Bevel6: TBevel;
    GroupBox1: TGroupBox;
    Label9: TLabelMC;
    Label11: TLabelMC;
    dbevaloMinimo: TDBEditMC;
    dbeValorMaximo: TDBEditMC;
    GroupBox2: TGroupBox;
    Label3: TLabelMC;
    Label5: TLabelMC;
    dbeValorCusto: TDBEditMC;
    dbeValorVenda: TDBEditMC;
    Panel6: TPanelMC;
    Panel7: TPanelMC;
    dadosfiscais: TGroupBox;
    Label16: TLabelMC;
    Label6: TLabelMC;
    dblTribNF: TDBLookupComboBoxMC;
    DBEdit2: TDBEditMC;
    pnlDoc: TPanelMC;
    Bevel4: TBevel;
    lbGrupoEmpresa: TLabelMC;
    Label8: TLabelMC;
    dblGrupoProduto: TDBLookupComboBoxMC;
    dblSubGrupoProduto: TDBLookupComboBoxMC;
    Panel14: TPanelMC;
    DBCheckBox1: TDBCheckBox;
    pnlDados: TPanelMC;
    lbCodigo: TLabelMC;
    lbNome: TLabelMC;
    Bevel3: TBevel;
    lbApelido: TLabelMC;
    Label15: TLabelMC;
    dbCodigo: TDBEditMC;
    dbeCodBarra: TDBEditMC;
    dbeRazSocial: TDBEditMC;
    dbeReferencia: TDBEditMC;
    Panel11: TPanelMC;
    Bevel7: TBevel;
    embalagem: TGroupBox;
    Label7: TLabelMC;
    Label10: TLabelMC;
    Label12: TLabelMC;
    Label13: TLabelMC;
    Label17: TLabelMC;
    Label20: TLabelMC;
    cboUnidade: TDBComboBoxMC;
    dbeLocalizacao: TDBEditMC;
    dbeQtdEmb: TDBEditMC;
    dbePesoBrut: TDBEditMC;
    dbePesoLiquido: TDBEditMC;
    DBEdit1: TDBEditMC;
    tbsEstoque: TTabSheet;
    Panel9: TPanelMC;
    edtRazSoc: TEditMC;
    Panel10: TPanelMC;
    DBText2: TDBTextMC;
    DBText1: TDBTextMC;
    Bevel5: TBevel;
    tbsFornecdores: TTabSheet;
    Panel12: TPanelMC;
    Panel20: TPanelMC;
    Panel21: TPanelMC;
    tbsSugestaoPreco: TTabSheet;
    impostos: TGroupBox;
    Label30: TLabelMC;
    Label31: TLabelMC;
    Label32: TLabelMC;
    Label33: TLabelMC;
    Label34: TLabelMC;
    Label35: TLabelMC;
    Label36: TLabelMC;
    dbeIcms: TDBEditMC;
    dbePis: TDBEditMC;
    dbeConfins: TDBEditMC;
    dbeIpi: TDBEditMC;
    dbeSimples: TDBEditMC;
    edtIcms: TEditMC;
    edtPis: TEditMC;
    edtConfins: TEditMC;
    edtIpi: TEditMC;
    edtSimples: TEditMC;
    comercializacao: TGroupBox;
    Label37: TLabelMC;
    Label38: TLabelMC;
    Label39: TLabelMC;
    Label40: TLabelMC;
    Label42: TLabelMC;
    Label43: TLabelMC;
    dbeMarketing: TDBEditMC;
    dbeComissao: TDBEditMC;
    dbeFreteCompra: TDBEditMC;
    dbeFreteVenda: TDBEditMC;
    edtMarketing: TEditMC;
    edtFreteVenda: TEditMC;
    edtFreteCompra: TEditMC;
    edtComissao: TEditMC;
    valorimpostos: TGroupBox;
    Label41: TLabelMC;
    Label44: TLabelMC;
    Label45: TLabelMC;
    Label47: TLabelMC;
    Label48: TLabelMC;
    Label49: TLabelMC;
    Bevel8: TBevel;
    dbeFixo: TDBEditMC;
    dbeVariavel: TDBEditMC;
    dbeFinanceiro: TDBEditMC;
    dbeLucro: TDBEditMC;
    edtFixo: TEditMC;
    edtFinanceiro: TEditMC;
    edtVariavel: TEditMC;
    edtLucro: TEditMC;
    titulos: TPanelMC;
    Label46: TLabelMC;
    Label50: TLabelMC;
    Label51: TLabelMC;
    Label52: TLabelMC;
    Label53: TLabelMC;
    Label54: TLabelMC;
    Label55: TLabelMC;
    Label56: TLabelMC;
    Label57: TLabelMC;
    Label58: TLabelMC;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    avista: TPanelMC;
    Label59: TLabelMC;
    Bevel18: TBevel;
    Bevel19: TBevel;
    Bevel20: TBevel;
    Bevel21: TBevel;
    Bevel22: TBevel;
    Bevel23: TBevel;
    DBEdit45: TDBEditMC;
    DBEdit50: TDBEditMC;
    DBEdit52: TDBEditMC;
    DBEdit53: TDBEditMC;
    DBEdit54: TDBEditMC;
    DBEdit55: TDBEditMC;
    aprazo: TPanelMC;
    Label60: TLabelMC;
    Bevel24: TBevel;
    Bevel25: TBevel;
    Bevel26: TBevel;
    Bevel27: TBevel;
    Bevel28: TBevel;
    Bevel29: TBevel;
    DBEdit56: TDBEditMC;
    DBEdit57: TDBEditMC;
    DBEdit58: TDBEditMC;
    DBEdit59: TDBEditMC;
    DBEdit60: TDBEditMC;
    DBEdit61: TDBEditMC;
    rodape: TPanelMC;
    Label61: TLabelMC;
    Label62: TLabelMC;
    Label63: TLabelMC;
    Label64: TLabelMC;
    Bevel30: TBevel;
    DBEdit62: TDBEditMC;
    DBEdit63: TDBEditMC;
    DBEdit64: TDBEditMC;
    DBEdit65: TDBEditMC;
    tbsGiroAnual: TTabSheet;
    StringGrid1: TStringGrid;
    Panel13: TPanelMC;
    Label65: TLabelMC;
    Label66: TLabelMC;
    Label67: TLabelMC;
    Label68: TLabelMC;
    Label69: TLabelMC;
    Label70: TLabelMC;
    Label71: TLabelMC;
    Label72: TLabelMC;
    Label73: TLabelMC;
    Label74: TLabelMC;
    Label75: TLabelMC;
    Label76: TLabelMC;
    Bevel31: TBevel;
    Bevel32: TBevel;
    Bevel33: TBevel;
    Bevel34: TBevel;
    Bevel35: TBevel;
    Bevel36: TBevel;
    Bevel37: TBevel;
    Bevel38: TBevel;
    Bevel39: TBevel;
    Bevel40: TBevel;
    Bevel41: TBevel;
    Bevel42: TBevel;
    Bevel43: TBevel;
    Label77: TLabelMC;
    tbsDadoMovimento: TTabSheet;
    GroupBox15: TGroupBox;
    StringGrid4: TStringGrid;
    GroupBox14: TGroupBox;
    StringGrid3: TStringGrid;
    GroupBox13: TGroupBox;
    StringGrid2: TStringGrid;
    tbsSugestaoCompra: TTabSheet;
    GroupBox16: TGroupBox;
    StringGrid5: TStringGrid;
    GroupBox17: TGroupBox;
    Label78: TLabelMC;
    Label79: TLabelMC;
    Label80: TLabelMC;
    DBEdit66: TDBEditMC;
    DBEdit67: TDBEditMC;
    DBEdit68: TDBEditMC;
    GroupBox18: TGroupBox;
    Label81: TLabelMC;
    Label82: TLabelMC;
    Label83: TLabelMC;
    DBEdit69: TDBEditMC;
    DBEdit70: TDBEditMC;
    DBEdit71: TDBEditMC;
    GroupBox19: TGroupBox;
    Label84: TLabelMC;
    Label85: TLabelMC;
    Label86: TLabelMC;
    DBEdit72: TDBEditMC;
    DBEdit73: TDBEditMC;
    DBEdit74: TDBEditMC;
    GroupBox20: TGroupBox;
    Label87: TLabelMC;
    Label88: TLabelMC;
    Label89: TLabelMC;
    DBEdit75: TDBEditMC;
    DBEdit76: TDBEditMC;
    DBEdit77: TDBEditMC;
    GroupBox21: TGroupBox;
    Label90: TLabelMC;
    Label91: TLabelMC;
    Label92: TLabelMC;
    DBEdit78: TDBEditMC;
    DBEdit79: TDBEditMC;
    DBEdit80: TDBEditMC;
    GroupBox22: TGroupBox;
    Label93: TLabelMC;
    Label94: TLabelMC;
    Label95: TLabelMC;
    DBEdit81: TDBEditMC;
    DBEdit82: TDBEditMC;
    DBEdit83: TDBEditMC;
    GroupBox23: TGroupBox;
    Label96: TLabelMC;
    Label97: TLabelMC;
    Label98: TLabelMC;
    DBEdit84: TDBEditMC;
    DBEdit85: TDBEditMC;
    DBEdit86: TDBEditMC;
    GroupBox24: TGroupBox;
    Label99: TLabelMC;
    Label100: TLabelMC;
    Label101: TLabelMC;
    DBEdit87: TDBEditMC;
    DBEdit88: TDBEditMC;
    DBEdit89: TDBEditMC;
    DBRichEditMC1: TDBRichEditMC;
    DBGridMC1: TDBGridMC;
    bitCidade: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    qryGridCODPRODUTO: TIntegerField;
    qryGridCODGRUPO: TIntegerField;
    qryGridCODSUBGRUPO: TIntegerField;
    qryGridDESCRICAO: TStringField;
    qryGridREFERENCIA: TStringField;
    qryGridCODBARRA: TStringField;
    qryGridESTOQUEMINIMO: TIntegerField;
    qryGridESTOQUEMAXIMO: TIntegerField;
    qryGridVALORCUSTO: TFloatField;
    qryGridVALORVENDA: TFloatField;
    qryGridTIPOPRODUTO: TIntegerField;
    qryGridDATACADASTRO: TDateField;
    qryGridDATATUALIZACAO: TDateField;
    qryGridOBS: TBlobField;
    qryGridSTATUS: TStringField;
    qryGridUNIDADEMEDIDA: TStringField;
    qryGridQTDEMBALAGEM: TIntegerField;
    qryGridPESOUNIDADE: TFloatField;
    qryGridPESOLIQUIDO: TFloatField;
    qryGridPESOBRUTO: TFloatField;
    qryGridLOCALIZACAO: TStringField;
    qryGridCODTRIBUTACAONOTAFISCAL: TIntegerField;
    qryGridIPI: TFloatField;
    qryGridGP_DESCRICAO: TStringField;
    qryGridSG_DESCRICAO: TStringField;
    cdsGridCODPRODUTO: TIntegerField;
    cdsGridCODGRUPO: TIntegerField;
    cdsGridCODSUBGRUPO: TIntegerField;
    cdsGridDESCRICAO: TStringField;
    cdsGridREFERENCIA: TStringField;
    cdsGridCODBARRA: TStringField;
    cdsGridESTOQUEMINIMO: TIntegerField;
    cdsGridESTOQUEMAXIMO: TIntegerField;
    cdsGridVALORCUSTO: TFloatField;
    cdsGridVALORVENDA: TFloatField;
    cdsGridTIPOPRODUTO: TIntegerField;
    cdsGridDATACADASTRO: TDateField;
    cdsGridDATATUALIZACAO: TDateField;
    cdsGridOBS: TBlobField;
    cdsGridSTATUS: TStringField;
    cdsGridUNIDADEMEDIDA: TStringField;
    cdsGridQTDEMBALAGEM: TIntegerField;
    cdsGridPESOUNIDADE: TFloatField;
    cdsGridPESOLIQUIDO: TFloatField;
    cdsGridPESOBRUTO: TFloatField;
    cdsGridLOCALIZACAO: TStringField;
    cdsGridCODTRIBUTACAONOTAFISCAL: TIntegerField;
    cdsGridIPI: TFloatField;
    cdsGridGP_DESCRICAO: TStringField;
    cdsGridSG_DESCRICAO: TStringField;
    DBRadioGroupMC1: TDBRadioGroupMC;
    qryCadCODPRODUTO: TIntegerField;
    qryCadCODGRUPO: TIntegerField;
    qryCadCODSUBGRUPO: TIntegerField;
    qryCadDESCRICAO: TStringField;
    qryCadREFERENCIA: TStringField;
    qryCadCODBARRA: TStringField;
    qryCadESTOQUEMINIMO: TIntegerField;
    qryCadESTOQUEMAXIMO: TIntegerField;
    qryCadVALORCUSTO: TFloatField;
    qryCadVALORVENDA: TFloatField;
    qryCadTIPOPRODUTO: TIntegerField;
    qryCadDATACADASTRO: TDateField;
    qryCadDATATUALIZACAO: TDateField;
    qryCadOBS: TBlobField;
    qryCadSTATUS: TStringField;
    qryCadUNIDADEMEDIDA: TStringField;
    qryCadQTDEMBALAGEM: TIntegerField;
    qryCadPESOUNIDADE: TFloatField;
    qryCadPESOLIQUIDO: TFloatField;
    qryCadPESOBRUTO: TFloatField;
    qryCadLOCALIZACAO: TStringField;
    qryCadCODTRIBUTACAONOTAFISCAL: TIntegerField;
    qryCadIPI: TFloatField;
    sqlGrupoProduto: TZQueryMC;
    srcGrupoProduto: TDatasourceMC;
    sqlGrupoProdutoCODGRUPO: TIntegerField;
    sqlGrupoProdutoDESCRICAO: TStringField;
    sqlSubGrupo: TZQueryMC;
    StringField1: TStringField;
    SRCsUBgRUPO: TDatasourceMC;
    sqlSubGrupoCODSUBGRUPO: TIntegerField;
    sqlFornecedoresOrigem: TZQueryMC;
    dbgFornecedor: TDuploGridMC;
    sqlFornecedoresOrigemNOME: TStringField;
    sqlFornecedoresDestino: TZQueryMC;
    sqlFornecedoresDestinoCODFORNECEDOR: TIntegerField;
    sqlFornecedoresDestinoCODPRODUTO: TIntegerField;
    sqlFornecedoresDestinoNOME: TStringField;
    sqlLookupFornecedor: TZQueryMC;
    sqlFornecedoresOrigemCODPRODUTO: TIntegerField;
    sqlFornecedoresOrigemCODFORNECEDOR: TIntegerField;
    sqlLookupFornecedorCODFORNECEDOR: TIntegerField;
    sqlLookupFornecedorNOME: TStringField;
    pbCodBarra: TPaintBox;
    sqlTribNF: TZQueryMC;
    sqlTribNFCODTRIBUTACAONOTAFISCAL: TIntegerField;
    sqlTribNFDESCRICAO: TStringField;
    dsrTribNF: TDatasourceMC;
    procedure FormCreate(Sender: TObject);
    procedure qryCadNewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bitCidadeClick(Sender: TObject);
    procedure pbCodBarraPaint(Sender: TObject);
    procedure bitAlterarClick(Sender: TObject);
    procedure bitInserirClick(Sender: TObject);
    procedure tbsDetalhesShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qryCadAfterPost(DataSet: TDataSet);
    procedure dbeCodBarraExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridProduto: T_frmCadGridProduto;

implementation

uses uGrupoProduto, uDM, uSubGrupoProduto, uToolFunc, uPesquisa;

{$R *.dfm}

procedure T_frmCadGridProduto.FormCreate(Sender: TObject);
begin
  inherited;
  tbsGiroAnual.TabVisible := false;
  tbsDadoMovimento.TabVisible := false;
  tbsSugestaoCompra.TabVisible := false;
  tbsSugestaoPreco.TabVisible := false;
end;

procedure T_frmCadGridProduto.qryCadNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryCadTIPOPRODUTO.AsInteger := 0;
  qryCadSTATUS.AsString := 'Sim';
  qryCadESTOQUEMINIMO.AsInteger := 0;
  qryCadESTOQUEMAXIMO.AsInteger := 0;
  qryCadVALORCUSTO.AsFloat := 0;
  qryCadVALORVENDA.AsFloat := 0;
  qryCadQTDEMBALAGEM.AsInteger := 0;
  qryCadPESOUNIDADE.AsFloat := 0;
  qryCadPESOLIQUIDO.AsFloat := 0;
  qryCadPESOBRUTO.AsFloat := 0;
  qryCadIPI.AsFloat := 0;
end;

procedure T_frmCadGridProduto.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not (qryCad.State in [dsInactive, dsBrowse]) then
    qryCadCODGRUPO.AsVariant := T_frmCadGridGrupoProduto.AbreJanela('CODGRUPO', self, sqlGrupoProduto);
end;

procedure T_frmCadGridProduto.FormShow(Sender: TObject);
begin
  inherited;
  sqlGrupoProduto.Open;
  sqlSubGrupo.Open;
end;

procedure T_frmCadGridProduto.bitCidadeClick(Sender: TObject);
begin
  inherited;
  if not (qryCad.State in [dsInactive, dsBrowse]) then
    qryCadCODSUBGRUPO.AsVariant := T_frmCadGridSubGrupoProduto.AbreJanela('CODSUBGRUPO', self, sqlSubGrupo);
end;

procedure T_frmCadGridProduto.pbCodBarraPaint(Sender: TObject);
begin
  inherited;
  DM.SisControl.ValorConvX := GetDeviceCaps(Canvas.Handle, LogPixelsX);
  DM.SisControl.ValorConvY := GetDeviceCaps(Canvas.Handle, LogPixelsY);
  if dbeCodBarra.Text <> '' then begin
    Ean13(pbCodBarra.Canvas, dbeCodBarra.Text, 0, 0, 15);
  end;
end;

procedure T_frmCadGridProduto.bitAlterarClick(Sender: TObject);
begin
  inherited;
  tbsGerais.Show;
  dbeCodBarra.SetFocus;
end;

procedure T_frmCadGridProduto.bitInserirClick(Sender: TObject);
begin
  inherited;
  tbsGerais.Show;
  dbeCodBarra.SetFocus;
end;

procedure T_frmCadGridProduto.tbsDetalhesShow(Sender: TObject);
begin
  inherited;
  if qryCadCODPRODUTO.AsInteger <> tbsDetalhes.tag then begin
    tbsDetalhes.tag := qryCadCODPRODUTO.AsInteger;
    dbgFornecedor.Open(qryCadCODPRODUTO.AsInteger);
  end;
end;

procedure T_frmCadGridProduto.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if not (qryCad.State in [dsInactive, dsBrowse]) then
    qryCadCODTRIBUTACAONOTAFISCAL.AsVariant := T_frmPesquisa.AbrePesquisa('CODTRIBUTACAONOTAFISCAL',
      'Pesquisa de tributação de nota fiscal', self, sqlTribNF, 10);
end;

procedure T_frmCadGridProduto.qryCadAfterPost(DataSet: TDataSet);
begin
  inherited;
  dbgFornecedor.ApplyUpdates(qryCadCODPRODUTO.AsInteger);
end;

procedure T_frmCadGridProduto.dbeCodBarraExit(Sender: TObject);
begin
  inherited;
  pbCodBarraPaint(pbCodBarra);
end;

end.
