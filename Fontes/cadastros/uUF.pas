unit uUF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, DB, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC;

type
  T_frmCadGridUF = class(T_frmCadGrid2)
    qryGridCODUF: TStringField;
    qryGridNOME: TStringField;
    cdsGridCODUF: TStringField;
    cdsGridNOME: TStringField;
    qryCadCODUF: TStringField;
    qryCadNOME: TStringField;
    procedure bitExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridUF: T_frmCadGridUF;

implementation

uses uToolFunc, uErro;

{$R *.dfm}

procedure T_frmCadGridUF.bitExcluirClick(Sender: TObject);
begin
  inherited;
  if Pergunta(Exclusao) then
  begin
    qryCad.Delete;
    cdsGrid.Refresh;
  end;
end;

end.
