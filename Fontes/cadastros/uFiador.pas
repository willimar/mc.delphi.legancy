unit uFiador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCliente, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, StdCtrls, ComCtrls, DBCtrls, DBRichEditMC, CheckBoxMC,
  DBComboBoxMC, DBLookupComboBoxMC, Mask, DBEditMC, Grids, DBGrids,
  DBGridMC, Buttons, ToolWin, ExtCtrls, LabelMC, PanelMC;

type
  T_frmCadGridFiador = class(T_frmCadGridCliente)
    procedure qryClienteAfterInsert(DataSet: TDataSet);
    procedure qryClienteAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridFiador: T_frmCadGridFiador;

implementation

{$R *.dfm}

procedure T_frmCadGridFiador.qryClienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryClienteFIADOR.AsString := 'Sim';
end;

procedure T_frmCadGridFiador.qryClienteAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryClienteFIADOR.AsString := 'Sim';
end;

end.
