unit uFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCliente, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, StdCtrls, ComCtrls, DBCtrls, DBRichEditMC, CheckBoxMC,
  DBComboBoxMC, DBLookupComboBoxMC, Mask, DBEditMC, Grids, DBGrids,
  DBGridMC, Buttons, ToolWin, ExtCtrls, LabelMC, PanelMC, DBCheckBoxMC,
  fraCad, uFrameCadGrid, EditMC, DBMemoMC, DBTextMC, NavigatorMC,
  DBRadioGroupMC, ExtDlgs, DBImageMC, SpeedButtonMC;

type
  T_frmCadGridForncedor = class(T_frmCadGridCliente)
    procedure qryClienteAfterInsert(DataSet: TDataSet);
    procedure qryClienteAfterEdit(DataSet: TDataSet);
    procedure bitImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridForncedor: T_frmCadGridForncedor;

implementation

{$R *.dfm}

procedure T_frmCadGridForncedor.qryClienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryClienteFORNECEDOR.AsString := 'Sim';
end;

procedure T_frmCadGridForncedor.qryClienteAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryClienteFORNECEDOR.AsString := 'Sim';
end;

procedure T_frmCadGridForncedor.bitImprimirClick(Sender: TObject);
begin
  inherited;
  _frmFormCliente.SqlComplemento := ' AND FORNECEDOR=''Sim''';
end;

end.
