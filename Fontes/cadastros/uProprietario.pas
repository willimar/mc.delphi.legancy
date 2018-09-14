unit uProprietario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCliente, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, StdCtrls, ComCtrls, DBCtrls, DBRichEditMC, CheckBoxMC,
  DBComboBoxMC, DBLookupComboBoxMC, Mask, DBEditMC, Grids, DBGrids,
  DBGridMC, Buttons, ToolWin, ExtCtrls, LabelMC, PanelMC;

type
  T_frmCadGridProprietario = class(T_frmCadGridCliente)
    procedure qryClienteAfterInsert(DataSet: TDataSet);
    procedure qryClienteAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridProprietario: T_frmCadGridProprietario;

implementation

{$R *.dfm}

procedure T_frmCadGridProprietario.qryClienteAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  qryClientePROPRIETARIO.AsString := 'Sim';
end;

procedure T_frmCadGridProprietario.qryClienteAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryClientePROPRIETARIO.AsString := 'Sim';
end;

end.
