unit uComprador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCliente, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, StdCtrls, ComCtrls, DBCtrls, DBRichEditMC, CheckBoxMC,
  DBComboBoxMC, DBLookupComboBoxMC, Mask, DBEditMC, Grids, DBGrids,
  DBGridMC, Buttons, ToolWin, ExtCtrls, LabelMC, PanelMC, ExtDlgs,
  DBCheckBoxMC, EditMC, DBMemoMC, DBTextMC, NavigatorMC, DBImageMC,
  DBRadioGroupMC, SpeedButtonMC;

type
  T_frmCadGridComprador = class(T_frmCadGridCliente)
    procedure qryClienteAfterInsert(DataSet: TDataSet);
    procedure qryClienteAfterEdit(DataSet: TDataSet);
    procedure bitExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridComprador: T_frmCadGridComprador;

implementation

uses uCadGrid, uToolFunc, uErro;

{$R *.dfm}

procedure T_frmCadGridComprador.qryClienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryClienteCOMPRADOR.AsString := 'Sim';
end;

procedure T_frmCadGridComprador.qryClienteAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryClienteCOMPRADOR.AsString := 'Sim';
end;

procedure T_frmCadGridComprador.bitExcluirClick(Sender: TObject);
begin
  inherited;
  if Pergunta(Exclusao) then
  begin
    qryCad.Delete;
    cdsGrid.Refresh;
  end;
end;

end.
