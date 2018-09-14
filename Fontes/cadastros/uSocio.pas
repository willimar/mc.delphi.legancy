unit uSocio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCliente, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, StdCtrls, ComCtrls, DBCtrls, DBRichEditMC, CheckBoxMC,
  DBComboBoxMC, DBLookupComboBoxMC, Mask, DBEditMC, Grids, DBGrids,
  DBGridMC, Buttons, ToolWin, ExtCtrls, LabelMC, PanelMC, DBRadioGroupMC,
  EditMC, DBTextMC, DBMemoMC, fraCad, uFrameCadGrid, DBCheckBoxMC, NavigatorMC,
  ExtDlgs, DBImageMC, SpeedButtonMC;

type
  T_frmCadGridSocio = class(T_frmCadGridCliente)
    procedure qryClienteAfterInsert(DataSet: TDataSet);
    procedure qryClienteAfterEdit(DataSet: TDataSet);
    procedure bitImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridSocio: T_frmCadGridSocio;

implementation

{$R *.dfm}

procedure T_frmCadGridSocio.qryClienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryClienteLOCADOR.AsString := 'Sim';
end;

procedure T_frmCadGridSocio.qryClienteAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryClienteLOCADOR.AsString := 'Sim';
end;

procedure T_frmCadGridSocio.bitImprimirClick(Sender: TObject);
begin
  inherited;
  _frmFormCliente.SqlComplemento := '';
end;

end.
