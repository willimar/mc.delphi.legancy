unit uGenero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, DB, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC;

type
  T_frmCadGridGenero = class(T_frmCadGrid2)
    qryGridCODGENERO: TIntegerField;
    qryGridNOME: TStringField;
    cdsGridCODGENERO: TIntegerField;
    cdsGridNOME: TStringField;
    qryCadCODGENERO: TIntegerField;
    qryCadNOME: TStringField;
    procedure bitImprimirClick(Sender: TObject);
    procedure bitExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridGenero: T_frmCadGridGenero;

implementation

uses uFormGenero, uToolFunc;

{$R *.dfm}

procedure T_frmCadGridGenero.bitImprimirClick(Sender: TObject);
begin
  inherited;
  T_frmFormGenero.AbreJanela(Self);
end;

procedure T_frmCadGridGenero.bitExcluirClick(Sender: TObject);
begin
  try
    inherited;
  except
    Alerta('Registro não pode ser excluído, provavelmente está em uso nos filmes.');
  end;
end;

end.
