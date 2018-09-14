unit uFormPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPreReport, Buttons, ToolWin, ComCtrls, StdCtrls, ExtCtrls,
  LabelMC;

type
  T_frmFormPreco = class(T_frmPreReport)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bitImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmFormPreco: T_frmFormPreco;

implementation

uses uRptPreco;

{$R *.dfm}

procedure T_frmFormPreco.FormCreate(Sender: TObject);
begin
  inherited;
  _frmRptPreco := T_frmRptPreco.Create(FormularioPai);
end;

procedure T_frmFormPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //FreeAndNil(_frmRptPreco);
end;

procedure T_frmFormPreco.bitImprimirClick(Sender: TObject);
begin
  _frmRptPreco.qryPreco.Close;
  _frmRptPreco.qryPreco.Open;
  rpt := _frmRptPreco.rpt;
  inherited;
end;

end.
