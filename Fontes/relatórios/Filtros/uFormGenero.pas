unit uFormGenero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPreReport, Buttons, ToolWin, ComCtrls, StdCtrls, ExtCtrls,
  LabelMC;

type
  T_frmFormGenero = class(T_frmPreReport)
    procedure FormCreate(Sender: TObject);
    procedure bitImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmFormGenero: T_frmFormGenero;

implementation

uses uRptGenero, uRpt;

{$R *.dfm}

procedure T_frmFormGenero.FormCreate(Sender: TObject);
begin
  inherited;
  if not Assigned(_frmRptGenero) then
    _frmRptGenero := T_frmRptGenero.Create(FormularioPai);
end;

procedure T_frmFormGenero.bitImprimirClick(Sender: TObject);
begin
  rpt := _frmRptGenero.rpt;
  _frmRptGenero.qryGenero.Close;
  _frmRptGenero.qryGenero.Open;
  inherited;
end;

procedure T_frmFormGenero.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //FreeAndNil(_frmRptGenero);
end;

end.
