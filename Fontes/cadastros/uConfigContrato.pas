unit uConfigContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DB, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC, PanelMC,
  DuploGrid;

type
  T_frmConfigContrato = class(T_frmCadGrid2)
    DuploGridMC1: TDuploGridMC;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmConfigContrato: T_frmConfigContrato;

implementation

{$R *.dfm}

procedure T_frmConfigContrato.FormCreate(Sender: TObject);
begin
  (*inherited;*)

end;

procedure T_frmConfigContrato.FormShow(Sender: TObject);
begin
  (*inherited;*)

end;

end.
