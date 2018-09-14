unit uCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, Mask, DBCtrls, DBEditMC,
  DBComboBoxMC, DBLookupComboBoxMC, DBCheckBoxMC, DBRichEditMC, CheckBoxMC,
  DBRadioGroupMC, EditMC, DBMemoMC, DBTextMC, fraCad, uFrameCadGrid,
  NavigatorMC, uFormCliente, DBImageMC, SpeedButtonMC, ExtDlgs;

type
  T_frmCadGridCliente = class(T_frmCadGrid)
    pgcDetalhes: TPageControl;
    tabGerais: TTabSheet;
    tabEndereco: TTabSheet;
    PanelMC1: TPanelMC;
    txtCodigo: TDBEditMC;
    LabelMC2: TLabelMC;
    txtCPFCPJ: TDBEditMC;
    LabelMC1: TLabelMC;
    txtNome: TDBEditMC;
    lblNome: TLabelMC;
    lblApelido: TLabelMC;
    txtApelido: TDBEditMC;
    lblRg: TLabelMC;
    txtRg: TDBEditMC;
    lblCore: TLabelMC;
    txtCore: TDBEditMC;
    lblDataNacimento: TLabelMC;
    txtDataNacimento: TDBEditMC;
    Bevel3: TBevel;
    cmbNaturalidade: TDBLookupComboBoxMC;
    lblNaturalidade: TLabelMC;
    cmbSexo: TDBComboBoxMC;
    LabelMC10: TLabelMC;
    cmbEstadoCivil: TDBComboBoxMC;
    LabelMC11: TLabelMC;
    txtDeficiente: TDBEditMC;
    bitCidade: TSpeedButton;
    DBEditMC9: TDBEditMC;
    txtEndereco: TDBEditMC;
    LabelMC8: TLabelMC;
    txtBairro: TDBEditMC;
    LabelMC12: TLabelMC;
    txtComplemento: TDBEditMC;
    LabelMC13: TLabelMC;
    txtCEP: TDBEditMC;
    LabelMC16: TLabelMC;
    GroupBox1: TGroupBox;
    txtTelefone: TDBEditMC;
    LabelMC17: TLabelMC;
    txtRamal: TDBEditMC;
    LabelMC18: TLabelMC;
    txtEmail: TDBEditMC;
    LabelMC23: TLabelMC;
    txtSite: TDBEditMC;
    LabelMC24: TLabelMC;
    LabelMC14: TLabelMC;
    cmbCidade: TDBLookupComboBoxMC;
    SpeedButton1: TSpeedButton;
    DBEditMC13: TDBEditMC;
    GroupBox2: TGroupBox;
    mObs: TDBRichEditMC;
    qryGridCODPESSOA: TIntegerField;
    qryGridNOME: TStringField;
    qryGridEMAIL: TStringField;
    cdsGridCODPESSOA: TIntegerField;
    cdsGridNOME: TStringField;
    cdsGridEMAIL: TStringField;
    qryCadCODPESSOA: TIntegerField;
    qryCadCODCIDRESID: TIntegerField;
    qryCadCODUSUARIO: TIntegerField;
    qryCadENDERECO: TStringField;
    qryCadCOMPLEMENTO: TStringField;
    qryCadBAIRRO: TStringField;
    qryCadTEL: TStringField;
    qryCadCEL: TStringField;
    qryCadCEP: TStringField;
    qryCadNOME: TStringField;
    qryCadTIPOPESSOA: TStringField;
    qryCadCPFCNPJ: TStringField;
    qryCadEMAIL: TStringField;
    qryCadWEB: TStringField;
    qryCadDATACADASTRO: TDateField;
    qryCadDATATUALIZACAO: TDateField;
    qryCadRG: TStringField;
    qryCadDATANASCIMENTO: TDateField;
    qryCadSEXO: TStringField;
    qryCadOBS: TBlobField;
    qryCliente: TZQueryMC;
    qryClienteCODPESSOA: TIntegerField;
    dsrCliente: TDatasourceMC;
    qryCadTELRAMAL: TStringField;
    qryCadCODCIDADENACIMENTO: TIntegerField;
    qryCadDEFICIECIA: TStringField;
    qryClienteAPELIDO: TStringField;
    qryClienteCORE: TStringField;
    chkDeficiente: TCheckBoxMC;
    qryCidade: TZQueryMC;
    qryCidadeCODCIDADE: TIntegerField;
    qryCidadeCODUF: TStringField;
    qryCidadeNOME: TStringField;
    dsrCidade: TDatasourceMC;
    qryCadUF: TStringField;
    qryCadUFResi: TStringField;
    qryCadESTADOCIVIL: TIntegerField;
    qryGridCPFCNPJ: TStringField;
    cdsGridCPFCNPJ: TStringField;
    tabProfissional: TTabSheet;
    tabComplementares: TTabSheet;
    DBEditMC16: TDBEditMC;
    LabelMC33: TLabelMC;
    DBEditMC17: TDBEditMC;
    LabelMC34: TLabelMC;
    DBLookupComboBoxMC4: TDBLookupComboBoxMC;
    LabelMC35: TLabelMC;
    LabelMC3: TLabelMC;
    LabelMC4: TLabelMC;
    LabelMC5: TLabelMC;
    LabelMC7: TLabelMC;
    SpeedButton2: TSpeedButton;
    txtEndContato: TDBEditMC;
    txtBairroContato: TDBEditMC;
    DBEditMC3: TDBEditMC;
    GroupBox3: TGroupBox;
    LabelMC28: TLabelMC;
    DBEditMC10: TDBEditMC;
    txtCiddeContato: TDBLookupComboBoxMC;
    DBEditMC11: TDBEditMC;
    txtComplementoContato: TDBEditMC;
    LabelMC29: TLabelMC;
    LabelMC21: TLabelMC;
    txtNomeContato: TDBEditMC;
    txtRamaContato: TDBEditMC;
    LabelMC20: TLabelMC;
    txtContato: TDBEditMC;
    LabelMC19: TLabelMC;
    qryClienteCONTATONOME: TStringField;
    qryClienteCONTATOTEL: TStringField;
    qryClienteCONTATORAMAL: TStringField;
    qryClienteCONTATOENDERECO: TStringField;
    qryClienteCONTATONBAIRRO: TStringField;
    qryClienteCONTATOCOMPLEMENTO: TStringField;
    qryClienteCONTATOCIDADEID: TIntegerField;
    qryClienteCONTATOCEP: TStringField;
    qryClienteCODGERCONTA: TIntegerField;
    qryClienteCONTA: TStringField;
    qryClienteFAVORECIDO: TStringField;
    qryClienteUF: TStringField;
    qryGerConta: TZQueryMC;
    qryGerContaCODGERCONTA: TIntegerField;
    qryGerContaNOME: TStringField;
    dsrGerConta: TDatasourceMC;
    SpeedButton3: TSpeedButton;
    qryClienteCODCLIENTE: TIntegerField;
    qryClientePROPRIETARIO: TStringField;
    qryClienteFIADOR: TStringField;
    qryClienteFORNECEDOR: TStringField;
    qryClienteFUNCIONARIO: TStringField;
    qryClienteLOCADOR: TStringField;
    qryClienteCOMPRADOR: TStringField;
    qryGridCODCLIENTE: TIntegerField;
    cdsGridCODCLIENTE: TIntegerField;
    qryClienteINTERESSADO: TStringField;
    qryClienteTITULAR: TStringField;
    qryClienteRECEBEEMAIL: TStringField;
    qryClientePROFISSAO: TStringField;
    tabListaDependente: TTabSheet;
    DBGridMC1: TDBGridMC;
    tabHistorico: TTabSheet;
    Label21: TLabelMC;
    Panel11: TPanel;
    Shape6: TShape;
    Label16: TLabelMC;
    DBText1: TDBTextMC;
    Label33: TLabelMC;
    DBText2: TDBTextMC;
    Label34: TLabelMC;
    Label35: TLabelMC;
    Label36: TLabelMC;
    Label37: TLabelMC;
    Label38: TLabelMC;
    DBText3: TDBTextMC;
    DBText4: TDBTextMC;
    DBText5: TDBTextMC;
    DBText6: TDBTextMC;
    DBMemo1: TDBMemoMC;
    edtBuscaHist: TEditMC;
    DBGridMC3: TDBGridMC;
    tabObs: TTabSheet;
    qryHistorico: TZQueryMC;
    dsrHistorico: TDatasourceMC;
    qryHistoricoTITULAR: TStringField;
    qryHistoricoFILME: TStringField;
    qryHistoricoSOCIO: TStringField;
    qryHistoricoDATASAIDA: TDateField;
    qryHistoricoDATAENTRADA: TDateField;
    qryHistoricoATRASO: TStringField;
    qryHistoricoMOTIVO: TStringField;
    qryHistoricoTROCA: TStringField;
    fraObservacao: TfraCadGrid;
    lblProfissao: TLabelMC;
    txtProfissao: TDBEditMC;
    dbrEmail: TDBRadioGroupMC;
    qryClienteCODTITULAR: TIntegerField;
    qryClienteATIVO: TStringField;
    DBCheckBoxMC1: TDBCheckBoxMC;
    PanelMC2: TPanelMC;
    nDependente: TNavigatorMC;
    qryCadFOTO: TBlobField;
    PanelMC3: TPanelMC;
    dbiFoto: TDBImageMC;
    opdFoto: TOpenPictureDialog;
    LabelMC6: TLabelMC;
    SpeedButtonMC2: TSpeedButtonMC;
    SpeedButtonMC1: TSpeedButtonMC;
    qryClienteEMPRESA: TStringField;
    cdsDe: TClientDataSetMC;
    cdsDeCODPESSOA: TIntegerField;
    cdsDeNOME: TStringField;
    cdsDeEMAIL: TStringField;
    cdsDeCPF: TStringField;
    dsrDe: TDatasourceMC;
    qryClienteVENDEDOR: TStringField;
    qryClienteREPRESENTANTE: TStringField;
    qryClienteTRANSPORTADOR: TStringField;
    LabelMC9: TLabelMC;
    procedure bitGravarClick(Sender: TObject);
    procedure chkDeficienteClick(Sender: TObject);
    procedure qryCadSEXOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryCadSEXOSetText(Sender: TField; const Text: String);
    procedure qryCadESTADOCIVILGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryCadESTADOCIVILSetText(Sender: TField; const Text: String);
    procedure bitInserirClick(Sender: TObject);
    procedure bitAlterarClick(Sender: TObject);
    procedure qryCadAfterInsert(DataSet: TDataSet);
    procedure qryCadBeforePost(DataSet: TDataSet);
    procedure txtCPFCPJExit(Sender: TObject);
    procedure bitCidadeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure tbsDetalhesShow(Sender: TObject);
    procedure qryClienteAfterInsert(DataSet: TDataSet);
    procedure dsrCadDataChange(Sender: TObject; Field: TField);
    procedure bitCancelarClick(Sender: TObject);
    procedure fraCadGrid1qryCadAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure tabObsShow(Sender: TObject);
    procedure fraObservacaocdsCadAfterInsert(DataSet: TDataSet);
    procedure tabListaDependenteShow(Sender: TObject);
    procedure tabHistoricoShow(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure bitImprimirClick(Sender: TObject);
    procedure SpeedButtonMC1Click(Sender: TObject);
    procedure SpeedButtonMC2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsrDeDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryClienteAfterEdit(DataSet: TDataSet);
    procedure edtBuscaHistChange(Sender: TObject);
    procedure bitExcluirClick(Sender: TObject);
  private
    F_frmFormCliente: T_frmFormCliente;
    { Private declarations }
    procedure ControlaLabel;
  public
    { Public declarations }
    property _frmFormCliente: T_frmFormCliente read F_frmFormCliente write F_frmFormCliente;
  end;

var
  _frmCadGridCliente: T_frmCadGridCliente;

implementation

uses uDM, uToolFunc, uDBFunc, uCidade, uErro, uPesquisa, Math,
  uDependentes, uExclusao;

{$R *.dfm}

procedure T_frmCadGridCliente.bitGravarClick(Sender: TObject);
begin
  if qryCadDATANASCIMENTO.AsDateTime > date then begin
    Alerta('Não é permitido informar data futura para a data de nacimento.');
    txtDataNacimento.SetFocus;
    txtDataNacimento.Color := clSkyBlue;
    exit;
  end;
  chkDeficienteClick(chkDeficiente);

  nDependente.Visible := false;
  inherited;
  _frmDependentes.PrepararGravar;

  if not (_frmDependentes.cdsPesDepend.State in [dsInactive]) then
    _frmDependentes.cdsPesDepend.ApplyUpdates(0);
    
  if not (_frmDependentes.cdsClieDepend.State in [dsInactive]) then
    _frmDependentes.cdsClieDepend.ApplyUpdates(0);

  fraObservacao.ApplyUpdate;
  fraObservacao.NavigatorMC.Visible := false;
  
  tabListaDependente.Tag := 0;
  tabObs.Tag := 0;
end;

procedure T_frmCadGridCliente.chkDeficienteClick(Sender: TObject);
begin
  inherited;
  if qryCad.State in [dsBrowse, dsInactive] then begin
    txtDeficiente.Color := $00E0F7FF;
    txtDeficiente.ReadOnly := true;
    txtDeficiente.TabStop := false;
    Exit;
  end;
  if chkDeficiente.Checked then begin
    txtDeficiente.Color := clWindow;
    txtDeficiente.ReadOnly := False;
    txtDeficiente.TabStop := true;
  end
  else begin
    txtDeficiente.Color := $00E0F7FF;
    txtDeficiente.ReadOnly := true;
    txtDeficiente.TabStop := false;
    qryCadDEFICIECIA.AsString := '';
  end;
end;

procedure T_frmCadGridCliente.qryCadSEXOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'M' then begin
    Text := 'Masculino'
  end
  else if Sender.AsString = 'F' then begin
    Text := 'Feminino'
  end;
end;

procedure T_frmCadGridCliente.qryCadSEXOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if Text = 'Masculino' then begin
    Sender.AsString := 'M';
  end
  else if Text = 'Feminino' then begin
    Sender.AsString := 'F';
  end
end;

procedure T_frmCadGridCliente.qryCadESTADOCIVILGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0: begin
       Text := 'Solteiro(a)';
    end;
    1: begin
      Text := 'Casado(a)';
    end;
    2: begin
      Text := 'Divorciado(a)';
    end;
    3: begin
      Text := 'Desquitado(a)';
    end;
    4: begin
      Text := 'Viúvo(a)';
    end;
  end;
  if Sender.AsString = '' then Text := '';
end;

procedure T_frmCadGridCliente.qryCadESTADOCIVILSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbEstadoCivil.ItemIndex;
end;

procedure T_frmCadGridCliente.bitInserirClick(Sender: TObject);
begin
  inherited;
  txtCPFCPJ.SetFocus;
  chkDeficienteClick(chkDeficiente);
  nDependente.Visible := true;
  fraObservacao.NavigatorMC.Visible := true;
  tabGerais.Show;
end;

procedure T_frmCadGridCliente.bitAlterarClick(Sender: TObject);
begin
  inherited;
  txtNome.SetFocus;
  chkDeficienteClick(chkDeficiente);
  nDependente.Visible := true;
  fraObservacao.NavigatorMC.Visible := true;
end;

procedure T_frmCadGridCliente.qryCadAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryCadTIPOPESSOA.AsString := 'F';
  qryCadDATACADASTRO.AsDateTime := date;
end;

procedure T_frmCadGridCliente.qryCadBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryCadDATATUALIZACAO.AsDateTime := date;
  qryCadCODUSUARIO.AsInteger := DM.SisControl.Usuario.Codigo;
end;

procedure T_frmCadGridCliente.txtCPFCPJExit(Sender: TObject);
var
  SqlTemp, Valor: String;
begin
  inherited;
  if qryCad.State in [dsBrowse, dsInactive] then
    Exit;
  ControlaLabel;
  if ValidarCpf(txtCPFCPJ.Text) then begin
    qryCadTIPOPESSOA.AsString := 'F';
  end
  else if ValidarCnpj(txtCPFCPJ.Text) and (Self.Name <> '_frmCadGridFuncionario') then begin
    qryCadDEFICIECIA.AsString := '';
    qryCadTIPOPESSOA.AsString := 'J';
  end;
  if NumeroRegistro('TBPESSOA', 'CPFCNPJ', 'CPFCNPJ=' + QuotedStr(txtCPFCPJ.Text)) > 0 then begin
    SqlTemp := SqlPadrao;
    Valor := txtCPFCPJ.Text;
    SqlPadrao := 
      'SELECT '                                              +
          'P.CODPESSOA, C.CODCLIENTE, NOME, EMAIL, CPFCNPJ ' +
      'FROM TBCLIENTE C, TBPESSOA P '                        +
      'WHERE C.CODPESSOA=P.CODPESSOA'                        ;
    bitCancelarClick(bitCancelar);
    cboCampo.ItemIndex := 2;
    edtTexto.Text := Valor;
    if qryGrid.IsEmpty then
      btnFiltroClick(btnFiltro);
    bitAlterarClick(bitAlterar);
    SqlPadrao := SqlTemp;
  end;
end;

procedure T_frmCadGridCliente.bitCidadeClick(Sender: TObject);
begin
  inherited;
  if not (qryCad.state in [dsBrowse]) then begin
    qryCadCODCIDADENACIMENTO.AsVariant := T_frmCadGridCidade.AbreJanela('CODCIDADE', Self);
  end;
end;

procedure T_frmCadGridCliente.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not (qryCad.state in [dsBrowse]) then
    qryCadCODCIDRESID.AsVariant := T_frmCadGridCidade.AbreJanela('CODCIDADE', Self);
end;

procedure T_frmCadGridCliente.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if not (qryCad.state in [dsBrowse]) then
    qryClienteCONTATOCIDADEID.AsVariant := T_frmCadGridCidade.AbreJanela('CODCIDADE', Self);
end;

procedure T_frmCadGridCliente.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if not (qryCad.state in [dsBrowse]) then
    qryClienteCODGERCONTA.AsVariant := T_frmPesquisa.AbrePesquisa('CODGERCONTA', 'Gerenciador de Conta', Self, qryGerConta, 10);
end;

procedure T_frmCadGridCliente.tbsDetalhesShow(Sender: TObject);
begin
  if qryCadDEFICIECIA.AsString = '' then begin
    chkDeficiente.Checked := false;
  end
  else begin
    chkDeficiente.Checked := true;
  end;
  chkDeficienteClick(chkDeficiente);
  if (pgcDetalhes.ActivePage = tabListaDependente) or (pgcDetalhes.ActivePage = tabObs) or (pgcDetalhes.ActivePage = tabHistorico) then begin
    pgcDetalhes.ActivePageIndex := 0;
  end;

  ControlaLabel;
end;

procedure T_frmCadGridCliente.qryClienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryClientePROPRIETARIO.AsString := 'Não';
  qryClienteFIADOR.AsString := 'Não';
  qryClienteFORNECEDOR.AsString := 'Não';
  qryClienteFUNCIONARIO.AsString := 'Não';
  qryClienteLOCADOR.AsString := 'Não';
  qryClienteCOMPRADOR.AsString := 'Não';
  qryClienteINTERESSADO.AsString := 'Não';
  qryClienteTITULAR.AsString := 'Sim';
  qryClienteATIVO.asString := 'Sim';
  qryClienteRECEBEEMAIL.AsString := 'Não';
  qryClienteEMPRESA.AsString := 'Não';
  qryClienteVENDEDOR.AsString := 'Não';
  qryClienteREPRESENTANTE.AsString := 'Não';
  qryClienteTRANSPORTADOR.AsString := 'Não';
end;

procedure T_frmCadGridCliente.dsrCadDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if qryCad.State in [dsEdit, dsInsert] then
    chkDeficiente.Enabled := true
  else begin
    tabListaDependente.Tag := 0;
    tabObs.Tag := 0;
    chkDeficiente.Enabled := false;
  end;
end;

procedure T_frmCadGridCliente.bitCancelarClick(Sender: TObject);
begin
  inherited;
  chkDeficienteClick(chkDeficiente);
  nDependente.Visible := false;

  if not (_frmDependentes.cdsPesDepend.State in [dsInactive]) then
    _frmDependentes.cdsPesDepend.CancelUpdates;
  if not (_frmDependentes.cdsClieDepend.State in [dsInactive]) then
    _frmDependentes.cdsClieDepend.CancelUpdates;

  tabListaDependente.Tag := 0;
  tabObs.Tag := 0;
  tabListaDependenteShow(tabListaDependente);
  //tabObsShow(tabObs);

  fraObservacao.NavigatorMC.Visible := false;
end;

procedure T_frmCadGridCliente.fraCadGrid1qryCadAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  fraObservacao.qryCad.FieldByName('DATAOBS').AsDateTime := date;
  fraObservacao.qryCad.FieldByName('CODPESSOA').AsInteger := qryCadCODPESSOA.AsInteger;
end;

procedure T_frmCadGridCliente.FormCreate(Sender: TObject);
begin
  inherited;
  Application.CreateForm(T_frmDependentes, _frmDependentes);
  _frmDependentes.FormPai := Self;
  tabComplementares.TabVisible := false;
end;

procedure T_frmCadGridCliente.tabObsShow(Sender: TObject);
begin
  inherited;
  if tabObs.Tag <> qryCadCODPESSOA.AsInteger then begin
    fraObservacao.KeyField := 'CODOBS';
    fraObservacao.Tabela := 'TBOBS';
    fraObservacao.ParamName := 'CODPESSOA';
    fraObservacao.Open(qryCadCODPESSOA.AsInteger);
    tabObs.Tag := qryCadCODPESSOA.AsInteger;
  end;
end;

procedure T_frmCadGridCliente.fraObservacaocdsCadAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  fraObservacao.cdsCadAfterInsert(DataSet);
  fraObservacao.cdsCad.FieldByName('CODPESSOA').AsInteger := qryCadCODPESSOA.AsInteger;
  fraObservacao.cdsCad.FieldByName('DATAOBS').AsDateTime := Date;
end;

procedure T_frmCadGridCliente.tabListaDependenteShow(Sender: TObject);
begin
  inherited;
  if tabListaDependente.Tag <> qryClienteCODCLIENTE.AsInteger then begin
    dsrDe.Enabled := false;
    _frmDependentes.DataChage(qryClienteCODCLIENTE.AsInteger);
    tabListaDependente.Tag := qryClienteCODCLIENTE.AsInteger;
    cdsDe.EmptyDataSet;
    _frmDependentes.cdsPesDepend.First;
    while not _frmDependentes.cdsPesDepend.Eof do begin
      cdsDe.Append;
      cdsDeCODPESSOA.AsInteger := _frmDependentes.cdsPesDependCODPESSOA.AsInteger;
      cdsDe.Post;
      _frmDependentes.cdsPesDepend.Next;
    end;
    cdsDe.First;
    dsrDe.Enabled := true;
  end;                   
end;

procedure T_frmCadGridCliente.tabHistoricoShow(Sender: TObject);
begin
  inherited;
  if tabHistorico.Tag <> qryClienteCODCLIENTE.AsInteger then begin
    tabHistorico.Tag := qryClienteCODCLIENTE.AsInteger;
    qryHistorico.Close;
    qryHistorico.ParamByName('CODFICHA').AsInteger :=
      iif(qryClienteCODTITULAR.AsString = '', qryClienteCODCLIENTE.AsInteger, qryClienteCODTITULAR.AsInteger);
    qryHistorico.Open;
  end;
end;

procedure T_frmCadGridCliente.ControlaLabel;
begin
  if ValidarCpf(txtCPFCPJ.Text) then begin
    lblDataNacimento.Caption := 'Data de nacimento';
    qryCadDATANASCIMENTO.DisplayLabel := 'Data de nacimento';
    lblNaturalidade.Caption := 'Naturalidade';
    qryCadCODCIDADENACIMENTO.DisplayLabel := 'Naturalidade';
    lblRg.Caption := 'RG';
    lblCore.Caption := 'Core';
    lblApelido.Caption := 'Apelido';
    qryClienteAPELIDO.DisplayLabel := 'Apelido';
    lblNome.Caption := 'Nome';
    qryCadNOME.DisplayLabel := 'Nome';
    cmbSexo.Enabled := true;
    cmbSexo.Requerido := true;
    cmbEstadoCivil.Enabled := true;
    cmbEstadoCivil.Requerido := true;
    chkDeficiente.Enabled := true;
    lblProfissao.Caption := 'Profissão';
    qryClientePROFISSAO.DisplayLabel := 'Profissão';
  end
  else if ValidarCnpj(txtCPFCPJ.Text) and (Self.Name <> '_frmCadGridFuncionario') then begin
    lblDataNacimento.Caption := 'Data de fundação';
    qryCadDATANASCIMENTO.DisplayLabel := 'Data de fundação';
    lblNaturalidade.Caption := 'Local da matriz';
    qryCadCODCIDADENACIMENTO.DisplayLabel := 'Local da matriz';
    lblRg.Caption := 'Inscrição Estadual';
    lblCore.Caption := 'Inscrição mnicipal';
    lblApelido.Caption := 'Nome fantasia';
    qryClienteAPELIDO.DisplayLabel := 'Nome fantasia';
    lblNome.Caption := 'Razão social';
    qryCadNOME.DisplayLabel := 'Razão social';
    cmbSexo.Enabled := false;
    cmbSexo.Requerido := false;
    cmbEstadoCivil.Enabled := false;
    cmbEstadoCivil.Requerido := false;
    chkDeficiente.Enabled := false;
    lblProfissao.Caption := 'Área de atuação';
    qryClientePROFISSAO.DisplayLabel := 'Área de atuação';
  end;
end;

procedure T_frmCadGridCliente.grdDblClick(Sender: TObject);
begin
  if (qryCad.State in [dsBrowse]) and (bitAlterar.Visible or bitInserir.Visible) then
    bitAlterarClick(bitAlterar);
end;

procedure T_frmCadGridCliente.bitImprimirClick(Sender: TObject);
begin
  inherited;
  _frmFormCliente := T_frmFormCliente.Abrir(Self, cdsGridCODPESSOA.AsInteger);
end;

procedure T_frmCadGridCliente.SpeedButtonMC1Click(Sender: TObject);
begin
  inherited;
  if qryCad.State in [dsEdit, dsInsert] then begin
    if opdFoto.Execute then begin
      dbiFoto.Picture.LoadFromFile(opdFoto.FileName);
    end;
  end;
end;

procedure T_frmCadGridCliente.SpeedButtonMC2Click(Sender: TObject);
begin
  inherited;
  if qryCad.State in [dsEdit, dsInsert] then begin
    dbiFoto.Field.Clear;
  end;
end;

procedure T_frmCadGridCliente.FormShow(Sender: TObject);
begin
  inherited;
  if cdsDe.State in [dsInactive] then
    cdsDe.CreateDataSet;
end;

procedure T_frmCadGridCliente.dsrDeDataChange(Sender: TObject;
  Field: TField);
begin
  (*inherited;*)
  if cdsDe.State in [dsbrowse] then begin
    if _frmDependentes.cdsPesDepend.State in [dsEdit, dsInsert] then
      _frmDependentes.cdsPesDepend.Cancel;
    if _frmDependentes.cdsClieDepend.State in [dsEdit, dsInsert] then
      _frmDependentes.cdsClieDepend.Cancel;
    _frmDependentes.cdsPesDepend.Locate('CODPESSOA', cdsDeCODPESSOA.AsInteger, []);
  end;
end;

procedure T_frmCadGridCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(_frmDependentes);
end;

procedure T_frmCadGridCliente.qryClienteAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if qryClientePROPRIETARIO.AsString = '' then
    qryClientePROPRIETARIO.AsString := 'Não';
  if qryClienteFIADOR.AsString = '' then
    qryClienteFIADOR.AsString := 'Não';
  if qryClienteFORNECEDOR.AsString = '' then
    qryClienteFORNECEDOR.AsString := 'Não';
  if qryClienteFUNCIONARIO.AsString = '' then
    qryClienteFUNCIONARIO.AsString := 'Não';
  if qryClienteLOCADOR.AsString = '' then
    qryClienteLOCADOR.AsString := 'Não';
  if qryClienteCOMPRADOR.AsString = '' then
    qryClienteCOMPRADOR.AsString := 'Não';
  if qryClienteINTERESSADO.AsString = '' then
    qryClienteINTERESSADO.AsString := 'Não';
  if qryClienteTITULAR.AsString = '' then
    qryClienteTITULAR.AsString := 'Sim';
  if qryClienteATIVO.AsString = '' then
    qryClienteATIVO.asString := 'Sim';
  if qryClienteRECEBEEMAIL.AsString = '' then
    qryClienteRECEBEEMAIL.AsString := 'Não';
  if qryClienteEMPRESA.AsString = '' then
    qryClienteEMPRESA.AsString := 'Não';
  if qryClienteVENDEDOR.AsString = '' then
    qryClienteVENDEDOR.AsString := 'Não';
  if qryClienteREPRESENTANTE.AsString = '' then
    qryClienteREPRESENTANTE.AsString := 'Não';
  if qryClienteTRANSPORTADOR.AsString = '' then
    qryClienteTRANSPORTADOR.AsString := 'Não';
end;

procedure T_frmCadGridCliente.edtBuscaHistChange(Sender: TObject);
begin
  inherited;
  qryHistorico.Locate('FILME', edtBuscaHist.Text, [loPartialKey]);
end;

procedure T_frmCadGridCliente.bitExcluirClick(Sender: TObject);
var
  Delecao: TExcluir;
begin
  try
    if Pergunta(Exclusao) then begin
      Delecao := TExcluir.Create(Self);
      Delecao.DB := DM.db;
      Delecao.Processor := DM.Processor;
      Delecao.DeleteCliente(cdsGridCODPESSOA.AsInteger, cdsGridCODCLIENTE.AsInteger);
      qryCad.Delete;
      cdsGrid.Refresh;
    end;
  finally
    FreeAndNil(Delecao);
  end;
end;

end.
