unit uDocumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DB, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC, MCAPI, PanelMC,
  FileStreamMC;

type
  T_frmCadGridDocumento = class(T_frmCadGrid2)
    qryCadCODDOCUMENTO: TIntegerField;
    qryCadDOCUMENTO: TBlobField;
    qryGridCODDOCUMENTO: TIntegerField;
    cdsGridCODDOCUMENTO: TIntegerField;
    qryGridNOME: TStringField;
    cdsGridNOME: TStringField;
    qryCadNOME: TStringField;
    FileStreamMC: TFileStreamMC;
    procedure bitGravarClick(Sender: TObject);
    procedure bitExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridDocumento: T_frmCadGridDocumento;

implementation

uses uToolFunc, uErro;

{$R *.dfm}

procedure T_frmCadGridDocumento.bitGravarClick(Sender: TObject);
begin
  FileStreamMC.ValidarDado;
  inherited; 
end;

procedure T_frmCadGridDocumento.bitExcluirClick(Sender: TObject);
begin
  inherited;
  if Pergunta(Exclusao) then
  begin
    qryCad.Delete;
    cdsGrid.Refresh;
  end;
end;

end.
