unit uInteressado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCliente, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, StdCtrls, ComCtrls, DBCtrls, DBRichEditMC, CheckBoxMC,
  DBComboBoxMC, DBLookupComboBoxMC, Mask, DBEditMC, Grids, DBGrids,
  DBGridMC, Buttons, ToolWin, ExtCtrls, LabelMC, PanelMC;

type
  T_frmCadGridInteressado = class(T_frmCadGridCliente)
    procedure qryClienteAfterInsert(DataSet: TDataSet);
    procedure qryClienteAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridInteressado: T_frmCadGridInteressado;

implementation

{$R *.dfm}

procedure T_frmCadGridInteressado.qryClienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryClienteINTERESSADO.AsString := 'Sim';
end;

procedure T_frmCadGridInteressado.qryClienteAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryClienteINTERESSADO.AsString := 'Sim';
end;

end.
