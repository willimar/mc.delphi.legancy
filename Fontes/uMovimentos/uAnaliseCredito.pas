unit uAnaliseCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, Mask, DBCtrls, DBEditMC,
  DBCheckBoxMC, DBLookupComboBoxMC, DBTextMC, EditMC;

type
  T_frmCadGridAnaliseCredito = class(T_frmCadGrid)
    qryGridCODANALIZECREDITO: TIntegerField;
    qryGridCODCLIENTE: TIntegerField;
    qryGridCPFCNPJ: TStringField;
    qryGridNOME: TStringField;
    qryGridENDERECO: TStringField;
    qryGridBAIRRO: TStringField;
    qryGridCOMPLEMENTO: TStringField;
    qryGridCIDADE: TStringField;
    qryGridUF: TStringField;
    qryGridCEP: TStringField;
    qryGridTELCONTATO: TStringField;
    qryGridFAX: TStringField;
    qryGridVALORCOMPRA: TFloatField;
    qryGridNAOBLOQUEAR: TStringField;
    qryGridSTATUS: TStringField;
    qryGridLIMITE: TFloatField;
    qryGridABERTO: TFloatField;
    qryGridESTOURO: TFloatField;
    qryGridDATALANCAMENTO: TDateField;
    qryGridDATAATUALIZACAO: TDateField;
    qryGridCODUSUARIO: TIntegerField;
    qryGridCODPLANOPAGAMENTO: TIntegerField;
    qryGridPERCENTUALPARCELAUM: TFloatField;
    cdsGridCODANALIZECREDITO: TIntegerField;
    cdsGridCODCLIENTE: TIntegerField;
    cdsGridCPFCNPJ: TStringField;
    cdsGridNOME: TStringField;
    cdsGridENDERECO: TStringField;
    cdsGridBAIRRO: TStringField;
    cdsGridCOMPLEMENTO: TStringField;
    cdsGridCIDADE: TStringField;
    cdsGridUF: TStringField;
    cdsGridCEP: TStringField;
    cdsGridTELCONTATO: TStringField;
    cdsGridFAX: TStringField;
    cdsGridVALORCOMPRA: TFloatField;
    cdsGridNAOBLOQUEAR: TStringField;
    cdsGridSTATUS: TStringField;
    cdsGridLIMITE: TFloatField;
    cdsGridABERTO: TFloatField;
    cdsGridESTOURO: TFloatField;
    cdsGridDATALANCAMENTO: TDateField;
    cdsGridDATAATUALIZACAO: TDateField;
    cdsGridCODUSUARIO: TIntegerField;
    cdsGridCODPLANOPAGAMENTO: TIntegerField;
    cdsGridPERCENTUALPARCELAUM: TFloatField;
    qryCadCODANALIZECREDITO: TIntegerField;
    qryCadCODCLIENTE: TIntegerField;
    qryCadCPFCNPJ: TStringField;
    qryCadNOME: TStringField;
    qryCadENDERECO: TStringField;
    qryCadBAIRRO: TStringField;
    qryCadCOMPLEMENTO: TStringField;
    qryCadCIDADE: TStringField;
    qryCadUF: TStringField;
    qryCadCEP: TStringField;
    qryCadTELCONTATO: TStringField;
    qryCadFAX: TStringField;
    qryCadVALORCOMPRA: TFloatField;
    qryCadNAOBLOQUEAR: TStringField;
    qryCadSTATUS: TStringField;
    qryCadLIMITE: TFloatField;
    qryCadABERTO: TFloatField;
    qryCadESTOURO: TFloatField;
    qryCadDATALANCAMENTO: TDateField;
    qryCadDATAATUALIZACAO: TDateField;
    qryCadCODUSUARIO: TIntegerField;
    qryCadCODPLANOPAGAMENTO: TIntegerField;
    qryCadPERCENTUALPARCELAUM: TFloatField;
    PanelMC1: TPanelMC;
    LabelMC4: TLabelMC;
    txtCodigo: TDBEditMC;
    LabelMC1: TLabelMC;
    LabelMC2: TLabelMC;
    txtNome: TDBEditMC;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    LabelMC3: TLabelMC;
    LabelMC5: TLabelMC;
    LabelMC6: TLabelMC;
    txtCadastro: TDBEditMC;
    LabelMC7: TLabelMC;
    LabelMC8: TLabelMC;
    LabelMC9: TLabelMC;
    LabelMC10: TLabelMC;
    LabelMC11: TLabelMC;
    txtLimiteCredito: TDBEditMC;
    LabelMC12: TLabelMC;
    LabelMC13: TLabelMC;
    txtTelefone: TDBEditMC;
    LabelMC14: TLabelMC;
    txtFax: TDBEditMC;
    PanelMC2: TPanelMC;
    PanelMC3: TPanelMC;
    PanelMC4: TPanelMC;
    PanelMC5: TPanelMC;
    LabelMC15: TLabelMC;
    cboPlanoPagamento: TDBLookupComboBoxMC;
    bitCidade: TSpeedButton;
    chkNaoBloquear: TDBCheckBoxMC;
    LabelMC16: TLabelMC;
    txtValorCompra: TDBEditMC;
    DBTextMC1: TDBTextMC;
    txtValorLimite: TDBEditMC;
    LabelMC17: TLabelMC;
    txtValorAberto: TDBEditMC;
    LabelMC18: TLabelMC;
    txtEstouro: TDBEditMC;
    LabelMC19: TLabelMC;
    PanelMC6: TPanelMC;
    PanelMC7: TPanelMC;
    txtCPFCNPJ: TEditMC;
    txtApelido: TEditMC;
    txtRG: TEditMC;
    txtCidade: TEditMC;
    txtEstCivil: TEditMC;
    txtSexo: TEditMC;
    txtDeficiencia: TEditMC;
    txtNomeContato: TEditMC;
    SpeedButton1: TSpeedButton;
    txtUF: TEditMC;
    procedure txtCPFCNPJKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridAnaliseCredito: T_frmCadGridAnaliseCredito;

implementation

uses uDBFunc;

{$R *.dfm}

procedure T_frmCadGridAnaliseCredito.txtCPFCNPJKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
const
  cSql =
    'SELECT '                                                                                          +
       'APELIDO, RG, CID.NOME as cid1, CODUF, ESTADOCIVIL, SEXO, DEFICIECIA, LIMITECREDITO, CONTATONOME, '     +
       'TEL, CONTATOTEL, CONTATONOME, LIMITECREDITO, ENDERECO, BAIRRO, COMPLEMENTO, CID.NOME as cid2, CODUF, ' +
       'CEP '                                               +
    'FROM TBCLIENTE C '                                     +
    'LEFT JOIN TBPESSOA P ON P.CODPESSOA=C.CODPESSOA '      +
    'LEFT JOIN TBCIDADE CID ON CID.CODCIDADE=P.CODCIDRESID '+
    'WHERE TITULAR = ''Sim'' AND CPFCNPJ=';
begin
  inherited;
  if Key = 13 then begin
    RetornarPesquisa(cSql + QuotedStr(txtCPFCNPJ.Text), [
       'APELIDO', 'RG', 'cid1', 'CODUF', 'ESTADOCIVIL', 'SEXO', 'DEFICIECIA', 'LIMITECREDITO',
       'CONTATONOME', 'TEL', 'CONTATOTEL', 'LIMITECREDITO', 'ENDERECO', 'BAIRRO',
       'COMPLEMENTO', 'cid2', 'CODUF', 'CEP'],
      [txtApelido, txtRG, txtCidade, txtUF, txtEstCivil, txtSexo,
      txtDeficiencia, txtLimiteCredito, txtNomeContato, qryCadTELCONTATO, qryCadFAX, qryCadLIMITE,
      qryCadENDERECO, qryCadBAIRRO, qryCadCOMPLEMENTO, qryCadCIDADE, qryCadUF, qryCadCEP]);
  end;
end;

end.
