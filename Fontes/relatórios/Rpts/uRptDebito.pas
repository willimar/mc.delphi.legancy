unit uRptDebito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRpt, RLPreviewForm, RLHTMLFilter, RLFilters, RLDraftFilter,
  RLRichFilter, RLXLSFilter, RLPDFFilter, RLReport, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DatasourceMC;

type
  T_frmRptDebito = class(T_frmRpt)
    RLBand3: TRLBand;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand5: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel10: TRLLabel;
    qryTitular: TZQueryMC;
    qryTitularCODCLIENTE: TIntegerField;
    qryTitularNOME: TStringField;
    qryTitularENDERECO: TStringField;
    qryTitularBAIRRO: TStringField;
    qryTitularNOME_1: TStringField;
    qryTitularCODUF: TStringField;
    qryTitularCOMPLEMENTO: TStringField;
    qryTitularCEP: TStringField;
    qryTitularTEL: TStringField;
    qryTitularCEL: TStringField;
    qryTitularRG: TStringField;
    qryTitularCPFCNPJ: TStringField;
    qryTitularEMAIL: TStringField;
    qryTitularDATACADASTRO: TDateField;
    qryTitularDATANASCIMENTO: TDateField;
    qryTitularSEXO: TStringField;
    qryTitularVALOR: TFloatField;
    dsrTitular: TDatasourceMC;
    qryLocacao: TZQueryMC;
    dsrLocacao: TDatasourceMC;
    qryLocacaoNOME: TStringField;
    qryLocacaoRETIRADA: TDateField;
    qryLocacaoENTREGA: TDateField;
    qryLocacaoVALOR: TFloatField;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    procedure qryTitularAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRptDebito: T_frmRptDebito;

implementation

uses uDM;

{$R *.dfm}

procedure T_frmRptDebito.qryTitularAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryLocacao.Close;
  qryLocacao.ParamByName('CODCLIENTE').AsInteger := qryTitularCODCLIENTE.AsInteger;
  qryLocacao.Open;
end;

end.
