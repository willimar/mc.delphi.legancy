unit uAgencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, DBCtrls, DBLookupComboBoxMC, Mask,
  DBEditMC;

type
  T_frmCadGridAgencia = class(T_frmCadGrid)
    qryGridA_CODAGENCIA: TStringField;
    qryGridA_NOME: TStringField;
    qryGridA_NOMECONTATO: TStringField;
    qryGridB_NOME: TStringField;
    cdsGridA_CODAGENCIA: TStringField;
    cdsGridA_NOME: TStringField;
    cdsGridA_NOMECONTATO: TStringField;
    cdsGridB_NOME: TStringField;
    qryGridA_TEL: TStringField;
    cdsGridA_TEL: TStringField;
    qryCadCODAGENCIA: TStringField;
    qryCadCODBANCO: TStringField;
    qryCadNOMECONTATO: TStringField;
    qryCadNOME: TStringField;
    qryCadRUA: TStringField;
    qryCadBAIRRO: TStringField;
    qryCadCODCIDADE: TIntegerField;
    qryCadCEP: TStringField;
    qryCadTEL: TStringField;
    LabelMC1: TLabelMC;
    DBEditMC1: TDBEditMC;
    DBLookupComboBoxMC1: TDBLookupComboBoxMC;
    LabelMC2: TLabelMC;
    DBEditMC2: TDBEditMC;
    LabelMC3: TLabelMC;
    LabelMC4: TLabelMC;
    DBEditMC3: TDBEditMC;
    LabelMC5: TLabelMC;
    DBEditMC4: TDBEditMC;
    LabelMC6: TLabelMC;
    DBEditMC5: TDBEditMC;
    LabelMC7: TLabelMC;
    DBEditMC6: TDBEditMC;
    LabelMC8: TLabelMC;
    DBLookupComboBoxMC2: TDBLookupComboBoxMC;
    LabelMC9: TLabelMC;
    DBEditMC7: TDBEditMC;
    bitCidade: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    qryBanco: TZQueryMC;
    qryBancoCODBANCO: TStringField;
    qryBancoNOME: TStringField;
    srcBanco: TDatasourceMC;
    DBEditMC8: TDBEditMC;
    qryCidade: TZQueryMC;
    qryCidadeCODCIDADE: TIntegerField;
    qryCidadeNOME: TStringField;
    qryCidadeCODUF: TStringField;
    dsrCidade: TDatasourceMC;
    qryCadUF: TStringField;
    procedure bitCidadeClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure bitGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridAgencia: T_frmCadGridAgencia;

implementation

uses uBanco, uCidade, uDM, uToolFunc, uErro;

{$R *.dfm}

procedure T_frmCadGridAgencia.bitCidadeClick(Sender: TObject);
begin
  inherited;
  if qryCad.State in [dsBrowse, dsInactive] then exit;
  qryCadCODBANCO.AsString := T_frmCadGridBanco.AbreJanela('CODBANCO', Self);
end;

procedure T_frmCadGridAgencia.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if qryCad.State in [dsBrowse, dsInactive] then exit;
  qryCadCODCIDADE.AsInteger := T_frmCadGridCidade.AbreJanela('CODCIDADE', Self);
end;

procedure T_frmCadGridAgencia.bitGravarClick(Sender: TObject);
begin
  inherited;
  if Pergunta(Exclusao) then
  begin
    qryCad.Delete;
    cdsGrid.Refresh;
  end;
end;

end.
