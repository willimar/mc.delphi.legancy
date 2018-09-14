unit uPropriedade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, Mask, DBCtrls, DBEditMC, Spin,
  DBRichEditMC, DBCheckBoxMC, DBRadioGroupMC, DBLookupComboBoxMC, EditMC,
  LookupMC, DBComboBoxMC;

type
  T_frmCadGridPropriedade = class(T_frmCadGrid)
    qryGridCODPROPRIEDADE: TIntegerField;
    qryGridR_NOME: TStringField;
    qryGridB_NOME: TStringField;
    qryGridC_NOME: TStringField;
    qryGridCODUF: TStringField;
    qryGridP_NOME: TStringField;
    qryGridCPFCNPJ: TStringField;
    cdsGridCODPROPRIEDADE: TIntegerField;
    cdsGridR_NOME: TStringField;
    cdsGridB_NOME: TStringField;
    cdsGridC_NOME: TStringField;
    cdsGridCODUF: TStringField;
    cdsGridP_NOME: TStringField;
    cdsGridCPFCNPJ: TStringField;
    qryCadCODPROPRIEDADE: TIntegerField;
    qryCadCODRUA: TIntegerField;
    qryCadCODPROPRIETARIO: TIntegerField;
    qryCadDISPONIBILIDADE: TStringField;
    qryCadVALORTOTAL: TFloatField;
    qryCadVALORIPTU: TFloatField;
    qryCadVALORCONDOMINIO: TFloatField;
    qryCadVALORPRESTACAO: TFloatField;
    qryCadVALORPOUPANCA: TFloatField;
    qryCadVALORSALDODEVEDOR: TFloatField;
    qryCadPRESTACOESRESTANTES: TIntegerField;
    qryCadDORMSEMSUITE: TIntegerField;
    qryCadDORMCOMSUITE: TIntegerField;
    qryCadCLOSET: TIntegerField;
    qryCadBANHSOCIAL: TIntegerField;
    qryCadBANHSERVICO: TIntegerField;
    qryCadHIDROMASSAGEM: TIntegerField;
    qryCadDEPEMPREGADA: TIntegerField;
    qryCadLAVABO: TIntegerField;
    qryCadAMBLIVING: TIntegerField;
    qryCadSACADA: TIntegerField;
    qryCadVAGAGARAGEM: TIntegerField;
    qryCadPISO: TStringField;
    qryCadMOBILIADO: TStringField;
    qryCadDESCMOBILIA: TBlobField;
    qryCadSALAESTAR: TStringField;
    qryCadSALATV: TStringField;
    qryCadTERRACO: TStringField;
    qryCadCOPA: TStringField;
    qryCadCOZINHA: TStringField;
    qryCadPISCINA: TStringField;
    qryCadAREASERVICO: TStringField;
    qryCadTELEFONE: TStringField;
    qryCadINTERNETCABO: TStringField;
    qryCadTVCABO: TStringField;
    qryCadLAVANDERIA: TStringField;
    qryCadCHURRASQUEIRA: TStringField;
    qryCadSAUNA: TStringField;
    qryCadADEGA: TStringField;
    qryCadALARME: TStringField;
    qryCadARMARIO: TStringField;
    qryCadCANIL: TStringField;
    qryCadDESPENSA: TStringField;
    qryCadESCRITORIO: TStringField;
    qryCadGRADESJANELA: TStringField;
    qryCadINTERFONE: TStringField;
    qryCadJARDIM: TStringField;
    qryCadMESANINO: TStringField;
    qryCadSOTAO: TStringField;
    qryCadPORAO: TStringField;
    qryCadVARANDA: TStringField;
    qryCadFORRO: TStringField;
    qryCadCERCADO: TStringField;
    qryCadCASAFRENE: TStringField;
    qryCadCASAFUNDO: TStringField;
    qryCadCASALATERAL: TStringField;
    qryCadBANHEIRO: TStringField;
    qryCadELEVADOR: TStringField;
    qryCadGASCENTRAL: TStringField;
    qryCadSOBRELOJA: TStringField;
    qryCadQUITADO: TStringField;
    qryCadRUACALCADA: TStringField;
    qryCadSALAOFESTA: TStringField;
    qryCadTERREO: TStringField;
    qryCadVIGIANOTURNO: TStringField;
    qryCadDATAFUNDACAO: TDateField;
    qryCadSALANUMERO: TStringField;
    qryCadQTDSALA: TIntegerField;
    qryCadAREAPRIVATIVA: TFloatField;
    qryCadIMEDIACAO: TBlobField;
    qryCadAREATERRENO: TFloatField;
    qryCadAREAGALPAO: TFloatField;
    qryCadAREAFRENTE: TFloatField;
    qryCadAREALADODIREITO: TFloatField;
    qryCadAREALADOESQUERDO: TFloatField;
    qryCadAREAFUNDOS: TFloatField;
    qryCadAREATIPO: TStringField;
    qryCadGALPAOMATERIAL: TStringField;
    qryCadTERRENOTIPO: TStringField;
    qryCadANTENACOLETIVA: TStringField;
    qryCadANTENAPARABOLICA: TStringField;
    qryCadAPTOZELADOR: TStringField;
    qryCadCONDCHURRASQUEIRA: TStringField;
    qryCadESTACIONAMENTO: TStringField;
    qryCadPLAYGROUND: TStringField;
    qryCadCONDPISCINA: TStringField;
    qryCadPORTARIA: TStringField;
    qryCadQUADRAESPORTE: TStringField;
    qryCadSALAMUSCULACAO: TStringField;
    qryCadNUMERO: TStringField;
    qryCadAPTOBLOCO: TStringField;
    qryCadEDIFICIO: TStringField;
    qryCadCOMPLEMENTO: TStringField;
    qryProprietario: TZQueryMC;
    dsrProprietario: TDatasourceMC;
    qryCadANDAR: TStringField;
    qryCadAPTOANDAR: TStringField;
    qryCadBLOCO: TStringField;
    qryCadAPTOSCOND: TStringField;
    qryCadAREATOTAL: TFloatField;
    qryCadPAVIMENTOS: TStringField;
    qryCadCONDSAUNA: TStringField;
    qryCadBAR: TStringField;
    qryCadMATERIALGALPAO: TStringField;
    qryProprietarioC_CODCLIENTE: TIntegerField;
    qryProprietarioP_CPFCNPJ: TStringField;
    qryProprietarioP_NOME: TStringField;
    qryProprietarioC_APELIDO: TStringField;
    qryProprietarioP_RG: TStringField;
    qryProprietarioC_CORE: TStringField;
    qryProprietarioP_DATANASCIMENTO: TDateField;
    qryProprietarioN_NOME: TStringField;
    qryProprietarioN_CODUF: TStringField;
    qryProprietarioP_SEXO: TStringField;
    qryProprietarioP_ESTADOCIVIL: TIntegerField;
    qryProprietarioP_DEFICIECIA: TStringField;
    qryProprietarioP_ENDERECO: TStringField;
    qryProprietarioP_BAIRRO: TStringField;
    qryProprietarioP_COMPLEMENTO: TStringField;
    qryProprietarioE_NOME: TStringField;
    qryProprietarioE_CODUF: TStringField;
    qryProprietarioP_CEP: TStringField;
    qryProprietarioP_TEL: TStringField;
    qryProprietarioP_TELRAMAL: TStringField;
    qryProprietarioP_EMAIL: TStringField;
    qryProprietarioP_WEB: TStringField;
    qryUF: TZQueryMC;
    qryUFCODUF: TStringField;
    qryUFNOME: TStringField;
    dsrUF: TDatasourceMC;
    qryCidade: TZQueryMC;
    dsrCidade: TDatasourceMC;
    qryCidadeCODCIDADE: TIntegerField;
    qryCidadeCODUF: TStringField;
    qryCidadeNOME: TStringField;
    qryBairro: TZQueryMC;
    dsrBairro: TDatasourceMC;
    qryBairroCODBAIRRO: TIntegerField;
    qryBairroCODCIDADE: TIntegerField;
    qryBairroNOME: TStringField;
    qryRua: TZQueryMC;
    dsrRua: TDatasourceMC;
    qryRuaCODRUA: TIntegerField;
    qryRuaCODBAIRRO: TIntegerField;
    qryRuaNOME: TStringField;
    qryRuaCEP: TStringField;
    qryCadIMOVELTIPO: TStringField;
    procedure cmbUfExit(Sender: TObject);
    procedure cmbCidadeExit(Sender: TObject);
    procedure cmBairroExit(Sender: TObject);
    procedure qryCadNewRecord(DataSet: TDataSet);
    procedure cmbImovelChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsrCadDataChange(Sender: TObject; Field: TField);
    procedure bitInserirClick(Sender: TObject);
    procedure bitGravarClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qryCadIMOVELTIPOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryCadIMOVELTIPOSetText(Sender: TField; const Text: String);
    procedure bitExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridPropriedade: T_frmCadGridPropriedade;

implementation

uses uDM, uToolFunc, uDBFunc, uPesquisa, uErro;

{$R *.dfm}

procedure T_frmCadGridPropriedade.cmbUfExit(Sender: TObject);
begin
  inherited;
  qryCidade.Close;
  qryCidade.ParamByName('CODUF').AsString := iif(cmbUf.KeyValue = null, '', cmbUf.KeyValue);
  qryCidade.Open;
end;

procedure T_frmCadGridPropriedade.cmbCidadeExit(Sender: TObject);
begin
  inherited;
  qryBairro.Close;
  qryBairro.ParamByName('CODCIDADE').AsInteger := iif(cmbCidade.KeyValue = null, 0, cmbCidade.KeyValue);
  qryBairro.Open;
end;

procedure T_frmCadGridPropriedade.cmBairroExit(Sender: TObject);
var
  Temp: String;
begin
  inherited;
  if cmBairro.KeyValue = null then
    Temp := '0'
  else
    temp := IntToStr(cmBairro.KeyValue);
  lupRua.SQL.Text := StringReplace('SELECT * FROM TBRUA WHERE CODBAIRRO=:CODBAIRRO', ':CODBAIRRO', Temp, [rfReplaceAll]);
  lupRua.DataChange(lupRua);
end;

procedure T_frmCadGridPropriedade.qryCadNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryCadDISPONIBILIDADE.AsString := 'V';
  qryCadVALORTOTAL.AsFloat := 0;
  qryCadVALORIPTU.AsFloat := 0;
  qryCadVALORCONDOMINIO.AsFloat := 0;
  qryCadVALORPRESTACAO.AsFloat := 0;
  qryCadVALORPOUPANCA.AsFloat := 0;
  qryCadVALORSALDODEVEDOR.AsFloat := 0;
  qryCadPRESTACOESRESTANTES.AsInteger := 0;
  qryCadIMOVELTIPO.AsString := 'A';
  qryCadDORMSEMSUITE.AsInteger := 0;
  qryCadDORMCOMSUITE.AsInteger := 0;
  qryCadCLOSET.AsInteger := 0;
  qryCadBANHSOCIAL.AsInteger := 0;
  qryCadBANHSERVICO.AsInteger := 0;
  qryCadHIDROMASSAGEM.AsInteger := 0;
  qryCadDEPEMPREGADA.AsInteger := 0;
  qryCadLAVABO.AsInteger := 0;
  qryCadAMBLIVING.AsInteger := 0;
  qryCadSACADA.AsInteger := 0;
  qryCadVAGAGARAGEM.AsInteger := 0;
  qryCadSALAESTAR.AsString := 'Não';
  qryCadSALATV.AsString := 'Não';
  qryCadTERRACO.AsString := 'Não';
  qryCadCOPA.AsString := 'Não';
  qryCadCOZINHA.AsString := 'Não';
  qryCadPISCINA.AsString := 'Não';
  qryCadAREASERVICO.AsString := 'Não';
  qryCadTELEFONE.AsString := 'Não';
  qryCadINTERNETCABO.AsString := 'Não';
  qryCadTVCABO.AsString := 'Não';
  qryCadLAVANDERIA.AsString := 'Não';
  qryCadCHURRASQUEIRA.AsString := 'Não';
  qryCadSAUNA.AsString := 'Não';
  qryCadMOBILIADO.AsString := 'Não';
  qryCadAREATIPO.AsString := 'R';
  qryCadANTENACOLETIVA.AsString := 'Não';
  qryCadANTENAPARABOLICA.AsString := 'Não';
  qryCadAPTOZELADOR.AsString := 'Não';
  qryCadCONDCHURRASQUEIRA.AsString := 'Não';
  qryCadELEVADOR.AsString := 'Não';
  qryCadESTACIONAMENTO.AsString := 'Não';
  qryCadGASCENTRAL.AsString := 'Não';
  qryCadJARDIM.AsString := 'Não';
  qryCadPLAYGROUND.AsString := 'Não';
  qryCadCONDPISCINA.AsString := 'Não';
  qryCadPORTARIA.AsString := 'Não';
  qryCadQUADRAESPORTE.AsString := 'Não';
  qryCadSALAMUSCULACAO.AsString := 'Não';
  qryCadSALAOFESTA.AsString := 'Não';
  qryCadCONDSAUNA.AsString := 'Não';
  qryCadVIGIANOTURNO.AsString := 'Não';
  qryCadADEGA.AsString := 'Não';
  qryCadALARME.AsString := 'Não';
  qryCadBAR.AsString := 'Não';
  qryCadARMARIO.AsString := 'Não';
  qryCadCANIL.AsString := 'Não';
  qryCadDESPENSA.AsString := 'Não';
  qryCadESCRITORIO.AsString := 'Não';
  qryCadGRADESJANELA.AsString := 'Não';
  qryCadINTERFONE.AsString := 'Não';
  qryCadMESANINO.AsString := 'Não';
  qryCadSOTAO.AsString := 'Não';
  qryCadPORAO.AsString := 'Não';
  qryCadVARANDA.AsString := 'Não';
  qryCadFORRO.AsString := 'L';
  qryCadCERCADO.AsString := 'G';
  qryCadCASAFRENE.AsString := 'Não';
  qryCadCASAFUNDO.AsString := 'Não';
  qryCadCASALATERAL.AsString := 'Não';
  qryCadBANHEIRO.AsString := 'Não';
  qryCadSOBRELOJA.AsString := 'Não';
  qryCadQUITADO.AsString := 'Não';
  qryCadRUACALCADA.AsString := 'Não';
  qryCadTERREO.AsString := 'Não';
  qryCadPORTARIA.AsString := 'Não';
  qryCadMATERIALGALPAO.AsString := 'A';
  qryCadTERRENOTIPO.AsString := 'P';
end;

procedure T_frmCadGridPropriedade.cmbImovelChange(Sender: TObject);
begin
  inherited;
  tabApartamento.TabVisible := false;
  tabCasa.TabVisible := false;
  tabSala.TabVisible := false;
  tabGalpao.TabVisible := false;
  pnlTipoImovel.Caption := cmbImovel.Text;
  case cmbImovel.ItemIndex of
    0, 1: begin
      tabApartamento.TabVisible := true;
    end;
    2: begin
      tabCasa.TabVisible := true;
    end;
    3, 4: begin
      tabSala.TabVisible := true;
    end;
    5, 6: begin
      tabGalpao.TabVisible := true;
    end;
  end;
end;

procedure T_frmCadGridPropriedade.FormShow(Sender: TObject);
begin
  inherited;
  pnlTipoImovel.Width := pagTipoImovel.Width + 10;
  pnlTipoImovel.Left := 0;
  pnlEsquerda.Left := -2;
  pnlDireita.Left := pagTipoImovel.Width - 5;
  pnlBotton.Top := pagTipoImovel.Height - 5;
  pnlBotton.Width := pagTipoImovel.Width + 10;
end;

procedure T_frmCadGridPropriedade.dsrCadDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (qryCadCODRUA.AsString <> '') and (qryCadCODRUA.AsString <> '0') then begin
    RetornarPesquisa('SELECT CODBAIRRO FROM TBRUA WHERE CODRUA=' + qryCadCODRUA.AsString, ['CODBAIRRO'], [cmBairro]);
    RetornarPesquisa('SELECT CODCIDADE FROM TBBAIRRO WHERE CODBAIRRO=' + IntToStr(cmBairro.KeyValue), ['CODCIDADE'], [cmbCidade]);
    RetornarPesquisa('SELECT CODUF FROM TBCIDADE WHERE CODCIDADE=' + IntToStr(cmbCidade.KeyValue), ['CODUF'], [cmbUf]);
    cmBairroExit(cmBairro);
    cmbCidadeExit(cmbCidade);
    cmbUfExit(cmbUf);
  end;
end;

procedure T_frmCadGridPropriedade.bitInserirClick(Sender: TObject);
begin
  inherited;
  cmBairro.KeyValue := null;
  cmbCidade.KeyValue := null;
  cmbUf.KeyValue := null;
  cmBairroExit(cmBairro);
  cmbCidadeExit(cmbCidade);
  cmbUfExit(cmbUf);
  cmbPessoa.Clear;
  lupRua.Clear;
end;

procedure T_frmCadGridPropriedade.bitGravarClick(Sender: TObject);
begin
  cmbPessoa.ValidarDado;
  lupRua.ValidarDado;
  inherited;         
end;

procedure T_frmCadGridPropriedade.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if not (qryCad.State in [dsEdit, dsInsert]) then exit;
  cmbUf.KeyValue := T_frmPesquisa.AbrePesquisa('CODUF', 'Pesquisa de UF', Self, qryUF, 10);
  cmbUfExit(cmbUf);
end;

procedure T_frmCadGridPropriedade.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if not (qryCad.State in [dsEdit, dsInsert]) then exit;
  cmbCidade.KeyValue := T_frmPesquisa.AbrePesquisa('CODCIDADE', 'Pesquisa de Cidade', Self, qryCidade, 10);
  cmbCidadeExit(cmbCidade);
end;

procedure T_frmCadGridPropriedade.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if not (qryCad.State in [dsEdit, dsInsert]) then exit;
  cmBairro.KeyValue := T_frmPesquisa.AbrePesquisa('CODBAIRRO', 'Pesquisa de Bairro', Self, qryBairro, 10);
  cmBairroExit(cmBairro);
end;

procedure T_frmCadGridPropriedade.qryCadIMOVELTIPOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'A' then begin
    Text := 'Apartamento';
  end
  else if Sender.AsString = 'K' then begin
    Text := 'Kitinet';
  end
  else if Sender.AsString = 'C' then begin
    Text := 'Casa';
  end
  else if Sender.AsString = 'S' then begin
    Text := 'Sala';
  end
  else if Sender.AsString = 'L' then begin
    Text := 'Loja';
  end
  else if Sender.AsString = 'G' then begin
    Text := 'Galpão';
  end
  else if Sender.AsString = 'T' then begin
    Text := 'Terreno';
  end;
end;

procedure T_frmCadGridPropriedade.qryCadIMOVELTIPOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  case cmbImovel.ItemIndex of
    0: Sender.AsString := 'A';
    1: Sender.AsString := 'K';
    2: Sender.AsString := 'C';
    3: Sender.AsString := 'S';
    4: Sender.AsString := 'L';
    5: Sender.AsString := 'G';
    6: Sender.AsString := 'T';
  end;
end;

procedure T_frmCadGridPropriedade.bitExcluirClick(Sender: TObject);
begin
  inherited;
  if Pergunta(Exclusao) then
  begin
    qryCad.Delete;
    cdsGrid.Refresh;
  end;
end;

end.
