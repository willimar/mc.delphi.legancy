unit uFormAniverssariante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPreReport, RLSaveDialog, RLPreviewForm, RLHTMLFilter,
  RLFilters, RLDraftFilter, RLRichFilter, RLXLSFilter, RLPDFFilter,
  RLReport, Buttons, ToolWin, ComCtrls, StdCtrls, ExtCtrls, LabelMC, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DatasourceMC,
  EditMC;

type
  T_FormAniversariante = class(T_frmPreReport)
    GroupBox1: TGroupBox;
    txtInicio: TEditMC;
    LabelMC1: TLabelMC;
    LabelMC2: TLabelMC;
    updInicio: TUpDown;
    txtFim: TEditMC;
    UpDown1: TUpDown;
    procedure bitImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _FormAniversariante: T_FormAniversariante;

implementation

uses uDM, uRptAniverssariantes, uRpt;

{$R *.dfm}

procedure T_FormAniversariante.bitImprimirClick(Sender: TObject);
begin
  _frmRptAniverssariantes.qryAniverssariantes.Close;
  _frmRptAniverssariantes.qryAniverssariantes.ParamByName('INICIO').AsInteger := StrToInt(txtInicio.Text);
  _frmRptAniverssariantes.qryAniverssariantes.ParamByName('FIM').AsInteger := StrToInt(txtFim.Text);
  _frmRptAniverssariantes.qryAniverssariantes.Open;
  rpt := _frmRptAniverssariantes.rpt;
  inherited;
end;

procedure T_FormAniversariante.FormCreate(Sender: TObject);
begin
  inherited;
  if not Assigned(_frmRptAniverssariantes) then
    _frmRptAniverssariantes := T_frmRptAniverssariantes.Create(FormularioPai);
end;

procedure T_FormAniversariante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //FreeAndNil(_frmRptAniverssariantes);
end;

end.
