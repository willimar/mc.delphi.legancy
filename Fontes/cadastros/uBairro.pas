unit uBairro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, DB, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC,
  DBLookupComboBoxMC;

type
  T_frmCadGridBairro = class(T_frmCadGrid2)
    qryGridB_CODBAIRRO: TIntegerField;
    qryGridB_NOME: TStringField;
    qryGridC_NOME: TStringField;
    cdsGridB_CODBAIRRO: TIntegerField;
    cdsGridB_NOME: TStringField;
    cdsGridC_NOME: TStringField;
    qryCadCODBAIRRO: TIntegerField;
    qryCadCODCIDADE: TIntegerField;
    qryCadNOME: TStringField;
    DBLookupComboBoxMC1: TDBLookupComboBoxMC;
    bitCidade: TSpeedButton;
    LabelMC1: TLabelMC;
    qryCidade: TZQueryMC;
    qryCidadeCODCIDADE: TIntegerField;
    qryCidadeNOME: TStringField;
    dsrCidade: TDatasourceMC;
    procedure bitCidadeClick(Sender: TObject);
    procedure bitExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridBairro: T_frmCadGridBairro;

implementation

uses uCidade, uDM, uToolFunc, uErro;

{$R *.dfm}

procedure T_frmCadGridBairro.bitCidadeClick(Sender: TObject);
begin
  inherited;
  qryCadCODCIDADE.AsInteger := T_frmCadGridCidade.AbreJanela('CODCIDADE', self);
end;

procedure T_frmCadGridBairro.bitExcluirClick(Sender: TObject);
begin
  inherited;
  if Pergunta(Exclusao) then
  begin
    qryCad.Delete;
    cdsGrid.Refresh;
  end;
end;

end.
