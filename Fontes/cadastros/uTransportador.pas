unit uTransportador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCliente, ExtDlgs, DB, DatasourceMC, Provider,
  DataSetProviderMC, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZQueryMC, DBClient, ClientDataSetMC, DBCtrls, DBCheckBoxMC, fraCad,
  uFrameCadGrid, EditMC, DBMemoMC, DBTextMC, NavigatorMC, StdCtrls,
  ComCtrls, DBRichEditMC, DBImageMC, ExtCtrls, DBRadioGroupMC, CheckBoxMC,
  DBComboBoxMC, DBLookupComboBoxMC, Mask, DBEditMC, SpeedButtonMC, Grids,
  DBGrids, DBGridMC, Buttons, ToolWin, LabelMC, PanelMC;

type
  T_frmCadGridTransportador = class(T_frmCadGridCliente)
    tabVeiculo: TTabSheet;
    procedure qryClienteAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridTransportador: T_frmCadGridTransportador;

implementation

{$R *.dfm}

procedure T_frmCadGridTransportador.qryClienteAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  qryClienteTRANSPORTADOR.AsString := 'Sim';
end;

end.
