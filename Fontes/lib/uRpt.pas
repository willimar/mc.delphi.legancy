unit uRpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, ZAbstractRODataset, ZDataset, RLHTMLFilter,
  RLFilters, RLDraftFilter, RLRichFilter, RLXLSFilter, RLPDFFilter,
  RLPreviewForm;

type
  T_frmRpt = class(TForm)
    PDF: TRLPDFFilter;
    XLS: TRLXLSFilter;
    RTF: TRLRichFilter;
    TXT: TRLDraftFilter;
    HTML: TRLHTMLFilter;
    rpt: TRLReport;
    RLBand1: TRLBand;
    txtTitulo: TRLLabel;
    RLImage1: TRLImage;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLBand2: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRpt: T_frmRpt;

implementation

{$R *.dfm}

end.
