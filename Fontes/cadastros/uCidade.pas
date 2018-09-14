unit uCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, DB, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, Mask, DBCtrls, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, DBLookupComboBoxMC, LabelMC, DBEditMC, DBGridMC;

type
  T_frmCadGridCidade = class(T_frmCadGrid2)
    qryGridCODUF: TStringField;
    qryGridNOME: TStringField;
    cdsGridCODUF: TStringField;
    cdsGridNOME: TStringField;
    qryCadCODUF: TStringField;
    qryCadNOME: TStringField;
    DBLookupComboBoxMC1: TDBLookupComboBoxMC;
    LabelMC1: TLabelMC;
    qryUF: TZQueryMC;
    qryUFCODUF: TStringField;
    qryUFNOME: TStringField;
    dsrUF: TDatasourceMC;
    qryGridCODCIDADE: TIntegerField;
    cdsGridCODCIDADE: TIntegerField;
    qryCadCODCIDADE: TIntegerField;
    procedure bitExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridCidade: T_frmCadGridCidade;

implementation

uses uDM, uErro, uToolFunc;

{$R *.dfm}

procedure T_frmCadGridCidade.bitExcluirClick(Sender: TObject);
begin
  if Pergunta(Exclusao) then
  begin
    qryCad.Delete;
    cdsGrid.Refresh;
  end;
end;

end.
