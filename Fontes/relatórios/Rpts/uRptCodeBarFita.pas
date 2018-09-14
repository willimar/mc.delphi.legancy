unit uRptCodeBarFita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRpt, RLPreviewForm, RLHTMLFilter, RLFilters, RLDraftFilter,
  RLRichFilter, RLXLSFilter, RLPDFFilter, RLReport, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DatasourceMC;

type
  T_frmRptCodeBarFita = class(T_frmRpt)
    rlDetail: TRLDetailGrid;
    RLDBText1: TRLDBText;
    rliBarras: TRLImage;
    qryCodigos: TZQueryMC;
    qryCodigosSUBCOD: TStringField;
    dsrCodigos: TDatasourceMC;
    procedure RLDBText1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRptCodeBarFita: T_frmRptCodeBarFita;

implementation

uses uDM, uToolFunc;

{$R *.dfm}

procedure T_frmRptCodeBarFita.RLDBText1BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  rliBarras.Picture.Bitmap := TBitmap.Create;
  rliBarras.Picture.Bitmap.Height := 73;
  rliBarras.Picture.Bitmap.Width := 96;

  DM.SisControl.ValorConvX := GetDeviceCaps(Canvas.Handle, LogPixelsX);
  DM.SisControl.ValorConvY := GetDeviceCaps(Canvas.Handle, LogPixelsY);
  if qryCodigosSUBCOD.AsString <> '' then begin
    Ean13(rliBarras.Picture.Bitmap.Canvas, qryCodigosSUBCOD.AsString, 0, 0, 15);
  end;
end;

end.
