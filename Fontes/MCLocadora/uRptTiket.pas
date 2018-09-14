unit uRptTiket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZQueryMC, DatasourceMC, Grids, DBGrids, DBGridMC, RLFilters,
  RLDraftFilter, RLPrintDialog, Printers;

type
  T_frmTiket = class(TForm)
    rptTiket: TRLReport;
    RLBand1: TRLBand;
    qryTiket: TZQueryMC;
    qryTiketSOCIO: TStringField;
    qryTiketRETIRADA: TDateField;
    qryTiketENTREGA: TDateField;
    qryTiketSUBCOD: TStringField;
    qryTiketFILME: TStringField;
    qryTiketVALORFILME: TFloatField;
    qryTiketTOTAL: TFloatField;
    qryTiketPAGO: TFloatField;
    RLBand3: TRLBand;
    dsrTiket: TDatasourceMC;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    txtEmpresa: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    txtTelefone: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    txtTotal: TRLLabel;
    txtPago: TRLLabel;
    txtDevido: TRLLabel;
    Filtro: TRLDraftFilter;
    procedure rptTiketBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure Iprimir(ID: Integer);
  end;

var
  _frmTiket: T_frmTiket;

implementation

uses uDM, uToolFunc;

{$R *.dfm}

class procedure T_frmTiket.Iprimir(ID: Integer);
begin
  try
    //if not PrinterIsOnLine(0) and not PrinterIsOnLine(1) then
    //  exit;

    _frmTiket := Self.Create(nil);
    _frmTiket.qryTiket.Close;
    _frmTiket.qryTiket.ParamByName('CODALUGUEL').Value := ID;
    _frmTiket.qryTiket.Open;
    _frmTiket.rptTiket.DefaultFilter := _frmTiket.Filtro;
    _frmTiket.rptTiket.Print;
  finally
    FreeAndNil(_frmTiket);
  end;
end;

procedure T_frmTiket.rptTiketBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  txtEmpresa.Caption := DM.SisControl.Empresa.Empresa;
  txtTelefone.Caption := DM.SisControl.Empresa.Telefone;
  txtTotal.Caption := FormatFloat('R$ #,##0.00', qryTiketTOTAL.AsFloat);
  txtPago.Caption := FormatFloat('R$ #,##0.00', qryTiketPAGO.AsFloat);
  txtDevido.Caption := FormatFloat('R$ #,##0.00', qryTiketTOTAL.AsFloat - qryTiketPAGO.AsFloat);
end;

end.
