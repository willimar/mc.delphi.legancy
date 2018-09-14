unit uSubGrupoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DB, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC;

type
  T_frmCadGridSubGrupoProduto = class(T_frmCadGrid2)
    qryGridCODSUBGRUPO: TIntegerField;
    qryGridDESCRICAO: TStringField;
    cdsGridCODSUBGRUPO: TIntegerField;
    cdsGridDESCRICAO: TStringField;
    qryCadCODSUBGRUPO: TIntegerField;
    qryCadDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridSubGrupoProduto: T_frmCadGridSubGrupoProduto;

implementation

{$R *.dfm}

end.
