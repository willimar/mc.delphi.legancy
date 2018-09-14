unit uNomeDespesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DB, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC;

type
  T_frmCadGridNomeDespesa = class(T_frmCadGrid2)
    qryGridCODNOMEDESPESA: TIntegerField;
    qryGridNOME: TStringField;
    cdsGridCODNOMEDESPESA: TIntegerField;
    cdsGridNOME: TStringField;
    qryCadCODNOMEDESPESA: TIntegerField;
    qryCadNOME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridNomeDespesa: T_frmCadGridNomeDespesa;

implementation

uses uToolFunc, uErro;

{$R *.dfm}

end.
