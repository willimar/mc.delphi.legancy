unit uRptAniverssariantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRpt, RLPreviewForm, RLHTMLFilter, RLFilters, RLDraftFilter,
  RLRichFilter, RLXLSFilter, RLPDFFilter, RLReport, DB, DatasourceMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC;

type
  T_frmRptAniverssariantes = class(T_frmRpt)
    qryAniverssariantes: TZQueryMC;
    qryAniverssariantesCODCLIENTE: TIntegerField;
    qryAniverssariantesNOME: TStringField;
    qryAniverssariantesAPELIDO: TStringField;
    qryAniverssariantesTEL: TStringField;
    qryAniverssariantesCEL: TStringField;
    dsrAniverssariantes: TDatasourceMC;
    RLDetailGrid1: TRLDetailGrid;
    txtCodigo: TRLDBText;
    txtNome: TRLDBText;
    txtDataNacimento: TRLDBText;
    txtTel: TRLDBText;
    txtCel: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    qryAniverssariantesDATANASCIMENTO: TDateField;
    qryAniverssariantesTIPOPESSOA: TStringField;
    procedure txtNomeBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRptAniverssariantes: T_frmRptAniverssariantes;

implementation

uses uDM;

{$R *.dfm}

procedure T_frmRptAniverssariantes.txtNomeBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  inherited;
  if qryAniverssariantesTIPOPESSOA.AsString = 'J' then begin
    txtCodigo.Font.Color := clBlue;
    txtNome.Font.Color := clBlue;
    txtDataNacimento.Font.Color := clBlue;
    txtTel.Font.Color := clBlue;
    txtCel.Font.Color := clBlue;
  end
  else begin
    txtCodigo.Font.Color := clBlack;
    txtNome.Font.Color := clBlack;
    txtDataNacimento.Font.Color := clBlack;
    txtTel.Font.Color := clBlack;
    txtCel.Font.Color := clBlack;
  end;
end;

end.
