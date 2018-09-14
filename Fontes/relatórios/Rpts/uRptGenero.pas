unit uRptGenero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRpt, RLPreviewForm, RLHTMLFilter, RLFilters, RLDraftFilter,
  RLRichFilter, RLXLSFilter, RLPDFFilter, RLReport, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DatasourceMC;

type
  T_frmRptGenero = class(T_frmRpt)
    RLBand3: TRLBand;
    qryGenero: TZQueryMC;
    qryGeneroCODGENERO: TIntegerField;
    qryGeneroNOME: TStringField;
    RLDBText1: TRLDBText;
    dsrGenero: TDatasourceMC;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRptGenero: T_frmRptGenero;

implementation

uses uDM;

{$R *.dfm}

end.
