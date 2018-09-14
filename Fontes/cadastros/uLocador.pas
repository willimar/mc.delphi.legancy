unit uLocador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCliente, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, StdCtrls, ComCtrls, DBCtrls, DBRichEditMC, CheckBoxMC,
  DBComboBoxMC, DBLookupComboBoxMC, Mask, DBEditMC, Grids, DBGrids,
  DBGridMC, Buttons, ToolWin, ExtCtrls, LabelMC, PanelMC;

type
  T_frmCadGridLocador = class(T_frmCadGridCliente)
    procedure qryClienteAfterInsert(DataSet: TDataSet);
    procedure qryClienteAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridLocador: T_frmCadGridLocador;

implementation

{$R *.dfm}

procedure T_frmCadGridLocador.qryClienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryClienteLOCADOR.AsString := 'Sim';
end;

procedure T_frmCadGridLocador.qryClienteAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryClienteLOCADOR.AsString := 'Sim';
end;

end.
