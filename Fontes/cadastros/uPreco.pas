unit uPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, DB, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC;

type
  T_frmCadGridPreco = class(T_frmCadGrid2)
    qryGridCODPRECO: TIntegerField;
    qryGridNOME: TStringField;
    qryGridVALOR: TFloatField;
    cdsGridCODPRECO: TIntegerField;
    cdsGridNOME: TStringField;
    cdsGridVALOR: TFloatField;
    DBEditMC1: TDBEditMC;
    LabelMC1: TLabelMC;
    qryCadCODPRECO: TIntegerField;
    qryCadNOME: TStringField;
    qryCadVALOR: TFloatField;
    procedure bitImprimirClick(Sender: TObject);
    procedure bitExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridPreco: T_frmCadGridPreco;

implementation

uses uFormPreco, uToolFunc;

{$R *.dfm}

procedure T_frmCadGridPreco.bitImprimirClick(Sender: TObject);
begin
  inherited;
  T_frmFormPreco.AbreJanela(Self);
end;

procedure T_frmCadGridPreco.bitExcluirClick(Sender: TObject);
begin
  try
    inherited;
  except
    Alerta('Registro não pode ser excluído, provavelmente está em uso nos filmes.');
  end;
end;

end.
