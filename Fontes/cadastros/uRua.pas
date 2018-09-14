unit uRua;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DB, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC,
  DBLookupComboBoxMC;

type
  T_frmCadGridRua = class(T_frmCadGrid2)
    qryGridR_CODRUA: TIntegerField;
    qryGridR_NOME: TStringField;
    qryGridR_CEP: TStringField;
    qryGridB_NOME: TStringField;
    cdsGridR_CODRUA: TIntegerField;
    cdsGridR_NOME: TStringField;
    cdsGridR_CEP: TStringField;
    cdsGridB_NOME: TStringField;
    LabelMC1: TLabelMC;
    cmbBairro: TDBLookupComboBoxMC;
    bitCidade: TSpeedButton;
    qryCadCODRUA: TIntegerField;
    qryCadCODBAIRRO: TIntegerField;
    qryCadNOME: TStringField;
    qryCadCEP: TStringField;
    qryBairro: TZQueryMC;
    qryBairroCODBAIRRO: TIntegerField;
    qryBairroNOME: TStringField;
    dsrBairro: TDatasourceMC;
    procedure bitInserirClick(Sender: TObject);
    procedure bitCidadeClick(Sender: TObject);
    procedure cmbBairroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bitExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridRua: T_frmCadGridRua;

implementation

uses uBairro, uDM, uToolFunc, uErro;

{$R *.dfm}

procedure T_frmCadGridRua.bitInserirClick(Sender: TObject);
begin
  inherited;
  qryCadCODBAIRRO.AsInteger := cmbBairro.KeyValue;
end;

procedure T_frmCadGridRua.bitCidadeClick(Sender: TObject);
begin
  inherited;
  cmbBairro.KeyValue := T_frmCadGridBairro.AbreJanela('B_CODBAIRRO', Self)
end;

procedure T_frmCadGridRua.cmbBairroClick(Sender: TObject);
begin
  inherited;
  qryGrid.ParamByName('CODBAIRRO').AsInteger := cmbBairro.KeyValue;
  cdsGrid.Refresh;
end;

procedure T_frmCadGridRua.FormShow(Sender: TObject);
begin
  inherited;
  cmbBairro.KeyValue := qryBairroCODBAIRRO.AsInteger;
end;

procedure T_frmCadGridRua.bitExcluirClick(Sender: TObject);
begin
  inherited;
  if Pergunta(Exclusao) then
  begin
    qryCad.Delete;
    cdsGrid.Refresh;
  end;
end;

end.
