unit uDependentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Provider, DB, DBClient,
  Mask, DBCtrls, DataSetProviderMC, ZQueryMC, ClientDataSetMC, DatasourceMC,
  DBEditMC, LabelMC, DBGridMC, DBRadioGroupMC, DBCheckBoxMC, PanelMC,
  CheckBoxMC, DBComboBoxMC, DBLookupComboBoxMC, ImgList, uCliente, ExtDlgs,
  SpeedButtonMC, DBImageMC;

type
  T_frmDependentes = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    Panel4: TPanel;
    Shape4: TShape;
    lblTitulo: TLabelMC;
    Panel2: TPanel;
    Shape2: TShape;
    Panel3: TPanel;
    Shape3: TShape;
    ToolBar1: TToolBar;
    bitInserir: TSpeedButton;
    bitAlterar: TSpeedButton;
    Panel5: TPanel;
    pcDados: TPageControl;
    tabGeral: TTabSheet;
    lblApelido: TLabelMC;
    lblRg: TLabelMC;
    lblDataNacimento: TLabelMC;
    lblNaturalidade: TLabelMC;
    LabelMC10: TLabelMC;
    LabelMC11: TLabelMC;
    bitCidade: TSpeedButton;
    txtApelido: TDBEditMC;
    txtRg: TDBEditMC;
    txtDataNacimento: TDBEditMC;
    cmbNaturalidade: TDBLookupComboBoxMC;
    cmbSexo: TDBComboBoxMC;
    cmbEstadoCivil: TDBComboBoxMC;
    txtDeficiente: TDBEditMC;
    chkDeficiente: TCheckBoxMC;
    PanelMC1: TPanelMC;
    LabelMC2: TLabelMC;
    LabelMC1: TLabelMC;
    lblNome: TLabelMC;
    txtCodigo: TDBEditMC;
    txtCPFCPJ: TDBEditMC;
    txtNome: TDBEditMC;
    DBCheckBoxMC1: TDBCheckBoxMC;
    LabelMC6: TLabelMC;
    txtProfissao: TDBEditMC;
    dbrEmail: TDBRadioGroupMC;
    tabEndereco: TTabSheet;
    LabelMC8: TLabelMC;
    LabelMC12: TLabelMC;
    LabelMC16: TLabelMC;
    LabelMC23: TLabelMC;
    LabelMC24: TLabelMC;
    LabelMC14: TLabelMC;
    SpeedButton1: TSpeedButton;
    txtEndereco: TDBEditMC;
    txtBairro: TDBEditMC;
    txtCEP: TDBEditMC;
    GroupBox1: TGroupBox;
    LabelMC17: TLabelMC;
    LabelMC18: TLabelMC;
    txtTelefone: TDBEditMC;
    txtRamal: TDBEditMC;
    txtEmail: TDBEditMC;
    txtSite: TDBEditMC;
    cmbCidade: TDBLookupComboBoxMC;
    DBEditMC1: TDBEditMC;
    LabelMC3: TLabelMC;
    ImageList1: TImageList;
    dsrCliDepend: TDatasourceMC;
    dsrPesDepend: TDatasourceMC;
    cdsPesDepend: TClientDataSetMC;
    cdsPesDependCODPESSOA: TIntegerField;
    cdsPesDependCODCIDRESID: TIntegerField;
    cdsPesDependCODUSUARIO: TIntegerField;
    cdsPesDependENDERECO: TStringField;
    cdsPesDependCOMPLEMENTO: TStringField;
    cdsPesDependBAIRRO: TStringField;
    cdsPesDependTEL: TStringField;
    cdsPesDependCEL: TStringField;
    cdsPesDependCEP: TStringField;
    cdsPesDependNOME: TStringField;
    cdsPesDependTIPOPESSOA: TStringField;
    cdsPesDependCPFCNPJ: TStringField;
    cdsPesDependEMAIL: TStringField;
    cdsPesDependWEB: TStringField;
    cdsPesDependDATACADASTRO: TDateField;
    cdsPesDependDATATUALIZACAO: TDateField;
    cdsPesDependRG: TStringField;
    cdsPesDependDATANASCIMENTO: TDateField;
    cdsPesDependSEXO: TStringField;
    cdsPesDependOBS: TBlobField;
    cdsPesDependTELRAMAL: TStringField;
    cdsPesDependCODCIDADENACIMENTO: TIntegerField;
    cdsPesDependDEFICIECIA: TStringField;
    cdsPesDependESTADOCIVIL: TIntegerField;
    dspPesDepend: TDataSetProviderMC;
    qryPesDepend: TZQueryMC;
    qryPesDependCODPESSOA: TIntegerField;
    qryPesDependCODCIDRESID: TIntegerField;
    qryPesDependCODUSUARIO: TIntegerField;
    qryPesDependENDERECO: TStringField;
    qryPesDependCOMPLEMENTO: TStringField;
    qryPesDependBAIRRO: TStringField;
    qryPesDependTEL: TStringField;
    qryPesDependCEL: TStringField;
    qryPesDependCEP: TStringField;
    qryPesDependNOME: TStringField;
    qryPesDependTIPOPESSOA: TStringField;
    qryPesDependCPFCNPJ: TStringField;
    qryPesDependEMAIL: TStringField;
    qryPesDependWEB: TStringField;
    qryPesDependDATACADASTRO: TDateField;
    qryPesDependDATATUALIZACAO: TDateField;
    qryPesDependRG: TStringField;
    qryPesDependDATANASCIMENTO: TDateField;
    qryPesDependSEXO: TStringField;
    qryPesDependOBS: TBlobField;
    qryPesDependTELRAMAL: TStringField;
    qryPesDependCODCIDADENACIMENTO: TIntegerField;
    qryPesDependDEFICIECIA: TStringField;
    qryPesDependESTADOCIVIL: TIntegerField;
    qryCliDepend: TZQueryMC;
    qryCliDependCODCLIENTE: TIntegerField;
    qryCliDependCODPESSOA: TIntegerField;
    qryCliDependAPELIDO: TStringField;
    qryCliDependCORE: TStringField;
    qryCliDependCONTATONOME: TStringField;
    qryCliDependCONTATORAMAL: TStringField;
    qryCliDependCONTATOENDERECO: TStringField;
    qryCliDependCONTATONBAIRRO: TStringField;
    qryCliDependCONTATOCOMPLEMENTO: TStringField;
    qryCliDependCONTATOCIDADEID: TIntegerField;
    qryCliDependCONTATOCEP: TStringField;
    qryCliDependCODGERCONTA: TIntegerField;
    qryCliDependCONTA: TStringField;
    qryCliDependFAVORECIDO: TStringField;
    qryCliDependPROPRIETARIO: TStringField;
    qryCliDependFIADOR: TStringField;
    qryCliDependFORNECEDOR: TStringField;
    qryCliDependFUNCIONARIO: TStringField;
    qryCliDependLOCADOR: TStringField;
    qryCliDependCOMPRADOR: TStringField;
    qryCliDependCONTATOTEL: TStringField;
    qryCliDependINTERESSADO: TStringField;
    qryCliDependTITULAR: TStringField;
    qryCliDependRECEBEEMAIL: TStringField;
    qryCliDependPROFISSAO: TStringField;
    qryCliDependCODTITULAR: TIntegerField;
    qryCliDependATIVO: TStringField;
    dspClieDepend: TDataSetProviderMC;
    cdsClieDepend: TClientDataSetMC;
    cdsClieDependCODCLIENTE: TIntegerField;
    cdsClieDependCODPESSOA: TIntegerField;
    cdsClieDependAPELIDO: TStringField;
    cdsClieDependCORE: TStringField;
    cdsClieDependCONTATONOME: TStringField;
    cdsClieDependCONTATORAMAL: TStringField;
    cdsClieDependCONTATOENDERECO: TStringField;
    cdsClieDependCONTATONBAIRRO: TStringField;
    cdsClieDependCONTATOCOMPLEMENTO: TStringField;
    cdsClieDependCONTATOCIDADEID: TIntegerField;
    cdsClieDependCONTATOCEP: TStringField;
    cdsClieDependCODGERCONTA: TIntegerField;
    cdsClieDependCONTA: TStringField;
    cdsClieDependFAVORECIDO: TStringField;
    cdsClieDependPROPRIETARIO: TStringField;
    cdsClieDependFIADOR: TStringField;
    cdsClieDependFORNECEDOR: TStringField;
    cdsClieDependFUNCIONARIO: TStringField;
    cdsClieDependLOCADOR: TStringField;
    cdsClieDependCOMPRADOR: TStringField;
    cdsClieDependCONTATOTEL: TStringField;
    cdsClieDependINTERESSADO: TStringField;
    cdsClieDependTITULAR: TStringField;
    cdsClieDependRECEBEEMAIL: TStringField;
    cdsClieDependPROFISSAO: TStringField;
    cdsClieDependCODTITULAR: TIntegerField;
    cdsClieDependATIVO: TStringField;
    LabelMC4: TLabelMC;
    PanelMC3: TPanelMC;
    dbiFoto: TDBImageMC;
    SpeedButtonMC1: TSpeedButtonMC;
    SpeedButtonMC2: TSpeedButtonMC;
    opdFoto: TOpenPictureDialog;
    qryPesDependFOTO: TBlobField;
    cdsPesDependFOTO: TBlobField;
    qryCliDependEMPRESA: TStringField;
    cdsClieDependEMPRESA: TStringField;
    qryCliDependVENDEDOR: TStringField;
    qryCliDependREPRESENTANTE: TStringField;
    qryCliDependTRANSPORTADOR: TStringField;
    cdsClieDependVENDEDOR: TStringField;
    cdsClieDependREPRESENTANTE: TStringField;
    cdsClieDependTRANSPORTADOR: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cdsPesDependAfterInsert(DataSet: TDataSet);
    procedure cdsClieDependAfterInsert(DataSet: TDataSet);
    procedure cdsPesDependBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure bitInserirClick(Sender: TObject);
    procedure bitAlterarClick(Sender: TObject);
    procedure cdsPesDependESTADOCIVILGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsPesDependESTADOCIVILSetText(Sender: TField;
      const Text: String);
    procedure cdsPesDependSEXOSetText(Sender: TField; const Text: String);
    procedure cdsPesDependSEXOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure bitCidadeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButtonMC1Click(Sender: TObject);
    procedure SpeedButtonMC2Click(Sender: TObject);
    procedure cdsPesDependAfterEdit(DataSet: TDataSet);
    procedure dsrCliDependDataChange(Sender: TObject; Field: TField);
    procedure cdsPesDependBeforeDelete(DataSet: TDataSet);
    procedure chkDeficienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPesDependBeforeInsert(DataSet: TDataSet);
    procedure cdsPesDependBeforeEdit(DataSet: TDataSet);
    procedure cdsPesDependAfterPost(DataSet: TDataSet);
  private
    FFORNECEDOR: string;
    FPROPRIETARIO: string;
    FFIADOR: string;
    FCOMPRADOR: string;
    FINTERESSADO: string;
    FLOCADOR: string;
    FFUNCIONARIO: string;
    FFormPai: T_frmCadGridCliente;
    CodPessoa: Integer;
    FFinalizando: boolean;
    FTRANSPORTADOR: string;
    FVENDEDOR: string;
    FREPRESENTANTE: string;
    { Private declarations }
  public
    { Public declarations }
    procedure DataChage(KeyValue: Integer);
    property PROPRIETARIO: string read FPROPRIETARIO write FPROPRIETARIO;
    property FIADOR: string read FFIADOR write FFIADOR;
    property FORNECEDOR: string read FFORNECEDOR write FFORNECEDOR;
    property FUNCIONARIO: string read FFUNCIONARIO write FFUNCIONARIO;
    property LOCADOR: string read FLOCADOR write FLOCADOR;
    property COMPRADOR: string read FCOMPRADOR write FCOMPRADOR;
    property INTERESSADO: string read FINTERESSADO write FINTERESSADO;
    property VENDEDOR: string read FVENDEDOR write FVENDEDOR;
    property REPRESENTANTE: string read FREPRESENTANTE write FREPRESENTANTE;
    property TRANSPORTADOR: string read FTRANSPORTADOR write FTRANSPORTADOR;
    property FormPai: T_frmCadGridCliente read FFormPai write FFormPai;
    property Finalizando: boolean read FFinalizando write FFinalizando;
    procedure PrepararGravar;
  end;

var
  _frmDependentes: T_frmDependentes;

implementation

uses uDM, uDBFunc, uToolFunc, Math, uPrincipal, uErro, uCidade;

{$R *.dfm}

procedure T_frmDependentes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then begin
    Key := #0;
    ModalResult := mrCancel;
  end;
  if Key = #13 then begin
    Key := #0;
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure T_frmDependentes.FormShow(Sender: TObject);
var
  i, J: word;
begin
  tabGeral.Show;
  Hint := DM.SisControl.ApplicationNome + ' - ' + Caption;
  lblTitulo.Hint := DM.SisControl.ApplicationNome + ' - ' + lblTitulo.Caption;
  Self.Hint := DM.SisControl.ApplicationNome;
  cmbNaturalidade.ListSource := FormPai.dsrCidade;
  cmbCidade.ListSource := FormPai.dsrCidade;
  chkDeficienteClick(chkDeficiente);
end;

procedure T_frmDependentes.cdsPesDependAfterInsert(DataSet: TDataSet);
begin
  cdsPesDependCODPESSOA.AsInteger := Codigo;
  cdsClieDepend.Append;
  cdsClieDependCODPESSOA.AsInteger := cdsPesDependCODPESSOA.AsInteger;
  cdsClieDependCODCLIENTE.AsInteger := Codigo;
  cdsClieDependCODTITULAR.AsInteger := FormPai.qryClienteCODCLIENTE.AsInteger;
  cdsPesDependTIPOPESSOA.AsString := 'F';
  cdsPesDependDATACADASTRO.AsDateTime := date;


  cdsPesDependCODCIDRESID.AsInteger := FFormPai.qryCadCODCIDRESID.AsInteger;
  cdsPesDependENDERECO.AsString := FFormPai.qryCadENDERECO.AsString;
  cdsPesDependCOMPLEMENTO.AsString := FFormPai.qryCadCOMPLEMENTO.AsString;
  cdsPesDependBAIRRO.AsString := FFormPai.qryCadBAIRRO.AsString;
  cdsPesDependTEL.AsString := FFormPai.qryCadTEL.AsString;
  cdsPesDependCEL.AsString := FFormPai.qryCadCEL.AsString;
  cdsPesDependCEP.AsString := FFormPai.qryCadCEP.AsString;
  cdsPesDependTELRAMAL.AsString := FFormPai.qryCadTELRAMAL.AsString;
  ShowModal;
end;

procedure T_frmDependentes.cdsClieDependAfterInsert(DataSet: TDataSet);
begin
  cdsClieDependPROPRIETARIO.AsString  := FPROPRIETARIO;
  cdsClieDependFIADOR.AsString        := FFIADOR;
  cdsClieDependFORNECEDOR.AsString    := FFORNECEDOR;
  cdsClieDependFUNCIONARIO.AsString   := FFUNCIONARIO;
  cdsClieDependLOCADOR.AsString       := FLOCADOR;
  cdsClieDependCOMPRADOR.AsString     := FCOMPRADOR;
  cdsClieDependINTERESSADO.AsString   := FINTERESSADO;
  cdsClieDependVENDEDOR.AsString      := FVENDEDOR;
  cdsClieDependREPRESENTANTE.AsString := FREPRESENTANTE;
  cdsClieDependTRANSPORTADOR.AsString := FTRANSPORTADOR;

  cdsClieDependEMPRESA.AsString := 'Não';
  cdsClieDependTITULAR.AsString := 'Não';
  cdsClieDependATIVO.asString := 'Sim';
  cdsClieDependRECEBEEMAIL.AsString := 'Não';
end;

procedure T_frmDependentes.cdsPesDependBeforePost(DataSet: TDataSet);
begin
  cdsPesDependDATATUALIZACAO.AsDateTime := date;
  cdsPesDependCODUSUARIO.AsInteger := DM.SisControl.Usuario.Codigo;
end;

procedure T_frmDependentes.FormCreate(Sender: TObject);
begin
  FFORNECEDOR    := 'Não';
  FPROPRIETARIO  := 'Não';
  FFIADOR        := 'Não';
  FCOMPRADOR     := 'Não';
  FINTERESSADO   := 'Não';
  FLOCADOR       := 'Não';
  FFUNCIONARIO   := 'Não';
  FVENDEDOR      := 'Não';
  FTRANSPORTADOR := 'Não';
  FREPRESENTANTE := 'Não';
  pcDados.ActivePage := tabGeral;
  CodPessoa := -9999;
end;

procedure T_frmDependentes.DataChage(KeyValue: Integer);
begin
  qryCliDepend.Close;
  cdsClieDepend.Close;
  qryPesDepend.Close;
  cdsPesDepend.Close;
  qryCliDepend.ParamByName('CODTITULAR').Value := KeyValue;
  qryPesDepend.ParamByName('CODIGO').Value := KeyValue;
  cdsClieDepend.Open;
  cdsPesDepend.Open;
end;

procedure T_frmDependentes.bitInserirClick(Sender: TObject);
begin
  txtCodigo.SetFocus;
  if not ValidarForm(Self) then exit;
  if cdsClieDepend.State in [dsInsert, dsEdit] then
    cdsClieDepend.Post;
  if cdsPesDepend.State in [dsInsert, dsEdit] then
    cdsPesDepend.Post;
  Close;
end;

procedure T_frmDependentes.bitAlterarClick(Sender: TObject);
begin
  Close;
end;

procedure T_frmDependentes.cdsPesDependESTADOCIVILGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
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

procedure T_frmDependentes.cdsPesDependESTADOCIVILSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsInteger := cmbEstadoCivil.ItemIndex;
end;

procedure T_frmDependentes.cdsPesDependSEXOSetText(Sender: TField;
  const Text: String);
begin
  if Text = 'Masculino' then begin
    Sender.AsString := 'M';
  end
  else if Text = 'Feminino' then begin
    Sender.AsString := 'F';
  end
end;

procedure T_frmDependentes.cdsPesDependSEXOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = 'M' then begin
    Text := 'Masculino'
  end
  else if Sender.AsString = 'F' then begin
    Text := 'Feminino'
  end;
end;

procedure T_frmDependentes.bitCidadeClick(Sender: TObject);
begin
  if not (cdsClieDepend.state in [dsBrowse]) then
    cdsPesDependCODCIDADENACIMENTO.AsVariant := T_frmCadGridCidade.AbreJanela('CODCIDADE', Self);
end;

procedure T_frmDependentes.SpeedButton1Click(Sender: TObject);
begin
  if not (cdsClieDepend.state in [dsBrowse]) then
    cdsPesDependCODCIDRESID.AsVariant := T_frmCadGridCidade.AbreJanela('CODCIDADE', Self);
end;

procedure T_frmDependentes.SpeedButtonMC1Click(Sender: TObject);
begin
  if cdsPesDepend.State in [dsEdit, dsInsert] then begin
    if opdFoto.Execute then begin
      dbiFoto.Picture.LoadFromFile(opdFoto.FileName);
    end;
  end;
end;

procedure T_frmDependentes.SpeedButtonMC2Click(Sender: TObject);
begin
  if cdsPesDepend.State in [dsEdit, dsInsert] then begin
    dbiFoto.Field.Clear;
  end;
end;

procedure T_frmDependentes.cdsPesDependAfterEdit(DataSet: TDataSet);
begin
  if not Finalizando then begin
    cdsClieDepend.Locate('CODPESSOA', cdsPesDependCODPESSOA.AsInteger, []);
    cdsClieDepend.Edit;
    ShowModal;
  end;
end;

procedure T_frmDependentes.dsrCliDependDataChange(Sender: TObject;
  Field: TField);
begin
  if cdsPesDepend.State in [dsBrowse] then
    cdsPesDepend.Locate('CODPESSOA', cdsClieDependCODPESSOA.AsInteger, [loCaseInsensitive]);
end;

procedure T_frmDependentes.cdsPesDependBeforeDelete(DataSet: TDataSet);
begin
  FormPai.cdsDe.Locate('CODPESSOA', cdsPesDependCODPESSOA.AsInteger, []);
  FormPai.cdsDe.Delete;
  cdsClieDepend.Locate('CODPESSOA', cdsPesDependCODPESSOA.AsInteger, []);
  cdsClieDepend.Delete;
  Abort;
end;

procedure T_frmDependentes.PrepararGravar;
var
  Flag, FlagCliente: integer;
begin
  cdsPesDepend.First;
  Finalizando := true;
  dsrPesDepend.Enabled := false;
  cdsPesDepend.IndexFieldNames := '';
  dsrPesDepend.Enabled := true;
  Finalizando := false;
end;

procedure T_frmDependentes.chkDeficienteClick(Sender: TObject);
begin
  if cdsPesDepend.State in [dsBrowse, dsInactive] then begin
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
    cdsPesDependDEFICIECIA.AsString := '';
  end;
end;

procedure T_frmDependentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModalResult = mrCancel then begin
    cdsPesDepend.Cancel;
    cdsClieDepend.Cancel;
  end;
end;

procedure T_frmDependentes.cdsPesDependBeforeInsert(DataSet: TDataSet);
begin
  FFormPai.cdsDe.Append;
end;

procedure T_frmDependentes.cdsPesDependBeforeEdit(DataSet: TDataSet);
begin
  FFormPai.cdsDe.Edit;
end;

procedure T_frmDependentes.cdsPesDependAfterPost(DataSet: TDataSet);
begin
  FFormPai.cdsDeCODPESSOA.AsInteger := cdsPesDependCODPESSOA.AsInteger;
  FFormPai.cdsDeNOME.AsString := cdsPesDependNOME.AsString;
  FFormPai.cdsDeEMAIL.AsString := cdsPesDependEMAIL.AsString;
  FFormPai.cdsDeCPF.AsString := cdsPesDependCPFCNPJ.AsString;
  FFormPai.cdsDe.Post;
end;

end.
