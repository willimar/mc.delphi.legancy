unit uRptFilme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRpt, RLPreviewForm, RLHTMLFilter, RLFilters, RLDraftFilter,
  RLRichFilter, RLXLSFilter, RLPDFFilter, RLReport, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DatasourceMC, RLRichText, Grids,
  DBGrids, DBGridMC;

type
  T_frmRptFilme = class(T_frmRpt)
    RLBand3: TRLBand;
    qryLista: TZQueryMC;
    qryListaCODFILME: TIntegerField;
    qryListaF_NOME: TStringField;
    qryListaP_NOME: TStringField;
    qryListaG_NOME: TStringField;
    qryListaQUANTIDADE: TIntegerField;
    qryListaESTANTE: TStringField;
    qryListaPRATELEIRA: TStringField;
    RLDBText1: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    dsrLista: TDatasourceMC;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    rptAnalitica: TRLReport;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    RLImage2: TRLImage;
    RLLabel4: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel5: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo6: TRLSystemInfo;
    RLBand6: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel14: TRLLabel;
    qryFilmesAnalitico: TZQueryMC;
    dsrFilmesSintetico: TDatasourceMC;
    qryFilmesAnaliticoFORNECEDOR: TStringField;
    qryFilmesAnaliticoPRECO: TStringField;
    qryFilmesAnaliticoGENERO: TStringField;
    qryFilmesAnaliticoFILME: TStringField;
    qryFilmesAnaliticoAUTOR: TStringField;
    qryFilmesAnaliticoDVD: TStringField;
    qryFilmesAnaliticoDATAAQU: TDateField;
    qryFilmesAnaliticoQUANTIDADE: TIntegerField;
    qryFilmesAnaliticoSINOPSE: TBlobField;
    qryFilmesAnaliticoESTANTE: TStringField;
    qryFilmesAnaliticoPRATELEIRA: TStringField;
    qryFilmesAnaliticoVALORCOMPRA: TFloatField;
    qryFilmesAnaliticoPARTICIP1: TStringField;
    qryFilmesAnaliticoPARTICIP2: TStringField;
    qryFilmesAnaliticoPARTICIP3: TStringField;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    qryFilmesAnaliticoVALOR: TFloatField;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLPanel1: TRLPanel;
    RLLabel23: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBRichText1: TRLDBRichText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRptFilme: T_frmRptFilme;

implementation

uses uDM;

{$R *.dfm}

end.
