unit uGrupoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DB, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC;

type
  T_frmCadGridGrupoProduto = class(T_frmCadGrid2)
    qryGridCODGRUPO: TIntegerField;
    qryGridDESCRICAO: TStringField;
    cdsGridCODGRUPO: TIntegerField;
    cdsGridDESCRICAO: TStringField;
    qryCadCODGRUPO: TIntegerField;
    qryCadDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridGrupoProduto: T_frmCadGridGrupoProduto;

implementation

{$R *.dfm}

end.
