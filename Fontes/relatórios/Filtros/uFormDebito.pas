unit uFormDebito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPreReport, Buttons, ToolWin, ComCtrls, StdCtrls, ExtCtrls,
  LabelMC, Mask, DBCtrls, DBEditMC, DB, DatasourceMC, DBClient,
  ClientDataSetMC;

type
  T_frmFormDebito = class(T_frmPreReport)
    DBEditMC1: TDBEditMC;
    LabelMC1: TLabelMC;
    cdsFormat: TClientDataSetMC;
    dsrFormt: TDatasourceMC;
    cdsFormatValor: TFloatField;
    procedure bitImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsFormatValorValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmFormDebito: T_frmFormDebito;

implementation

uses uRptDebito;

{$R *.dfm}

procedure T_frmFormDebito.bitImprimirClick(Sender: TObject);
begin
  _frmRptDebito.qryTitular.Close;
  _frmRptDebito.qryTitular.ParamByName('VALOR').AsFloat := cdsFormatValor.AsFloat;
  _frmRptDebito.qryTitular.Open;
  rpt := _frmRptDebito.rpt;
  inherited;         
end;

procedure T_frmFormDebito.FormCreate(Sender: TObject);
begin
  inherited;
  if not Assigned(_frmRptDebito) then
    _frmRptDebito := T_frmRptDebito.Create(FormularioPai);
  cdsFormat.CreateDataSet;
  cdsFormat.Append;
  cdsFormatValor.AsFloat := 0;
end;

procedure T_frmFormDebito.cdsFormatValorValidate(Sender: TField);
begin
  inherited;
  if cdsFormatValor.AsString = '' then
    cdsFormatValor.AsFloat := 0;
end;

end.
