unit uRptPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRpt, RLPreviewForm, RLHTMLFilter, RLFilters, RLDraftFilter,
  RLRichFilter, RLXLSFilter, RLPDFFilter, RLReport, DB, DatasourceMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC;

type
  T_frmRptPreco = class(T_frmRpt)
    qryPreco: TZQueryMC;
    dsrPreco: TDatasourceMC;
    qryPrecoCODPRECO: TIntegerField;
    qryPrecoNOME: TStringField;
    qryPrecoVALOR: TFloatField;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRptPreco: T_frmRptPreco;

implementation

uses uDM;

{$R *.dfm}

end.
