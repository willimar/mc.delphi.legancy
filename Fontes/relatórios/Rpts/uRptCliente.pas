unit uRptCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRpt, RLPreviewForm, RLHTMLFilter, RLFilters, RLDraftFilter,
  RLRichFilter, RLXLSFilter, RLPDFFilter, RLReport, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DatasourceMC;

type
  T_frmRptCliente = class(T_frmRpt)
    RLBand3: TRLBand;
    qryListaSintetica: TZQueryMC;
    qryListaSinteticaCODPESSOA: TIntegerField;
    qryListaSinteticaCODCLIENTE: TIntegerField;
    qryListaSinteticaNOME: TStringField;
    qryListaSinteticaEMAIL: TStringField;
    qryListaSinteticaCPFCNPJ: TStringField;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    dsrListaSintetica: TDatasourceMC;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLLabel7: TRLLabel;
    RLImage2: TRLImage;
    RLLabel8: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel9: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo6: TRLSystemInfo;
    RLBand6: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRptCliente: T_frmRptCliente;

implementation

uses uDM;

{$R *.dfm}

end.
