unit uBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DB, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC;

type
  T_frmCadGridBanco = class(T_frmCadGrid2)
    qryGridCODBANCO: TStringField;
    qryGridNOME: TStringField;
    cdsGridCODBANCO: TStringField;
    cdsGridNOME: TStringField;
    qryCadCODBANCO: TStringField;
    qryCadNOME: TStringField;
    procedure bitExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridBanco: T_frmCadGridBanco;

implementation

uses uToolFunc, uErro;

{$R *.dfm}

procedure T_frmCadGridBanco.bitExcluirClick(Sender: TObject);
begin
  inherited;
  if Pergunta(Exclusao) then
  begin
    qryCad.Delete;
    cdsGrid.Refresh;
  end;
end;

end.
