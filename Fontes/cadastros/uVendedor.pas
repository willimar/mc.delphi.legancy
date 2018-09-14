unit uVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFuncionario, ExtDlgs, DB, DatasourceMC, Provider,
  DataSetProviderMC, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZQueryMC, DBClient, ClientDataSetMC, DuploGrid, DBCtrls, DBCheckBoxMC,
  fraCad, uFrameCadGrid, EditMC, DBMemoMC, DBTextMC, NavigatorMC, StdCtrls,
  ComCtrls, DBRichEditMC, DBImageMC, ExtCtrls, DBRadioGroupMC, CheckBoxMC,
  DBComboBoxMC, DBLookupComboBoxMC, Mask, DBEditMC, SpeedButtonMC, Grids,
  DBGrids, DBGridMC, Buttons, ToolWin, LabelMC, PanelMC;

type
  T_frmCadGridVendedor = class(T_frmCadGridFuncionario)
    chkRepresentante: TDBCheckBoxMC;
    procedure qryClienteAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridVendedor: T_frmCadGridVendedor;

implementation

uses uCliente;

{$R *.dfm}

procedure T_frmCadGridVendedor.qryClienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryClienteVENDEDOR.AsString := 'Sim';
end;

end.
