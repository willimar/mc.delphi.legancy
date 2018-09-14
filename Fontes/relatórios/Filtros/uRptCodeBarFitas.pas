unit uRptCodeBarFitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPreReport, Buttons, ToolWin, ComCtrls, StdCtrls, ExtCtrls,
  LabelMC, Mask, DBCtrls, DBEditMC, PanelMC, DuploGrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, DatasourceMC, EditMC;

type
  T_frmFormCodeBarFitas = class(T_frmPreReport)
    GroupBox1: TGroupBox;
    DBEditMC1: TDBEditMC;
    DBEditMC2: TDBEditMC;
    DBEditMC3: TDBEditMC;
    DBEditMC4: TDBEditMC;
    LabelMC1: TLabelMC;
    LabelMC2: TLabelMC;
    LabelMC3: TLabelMC;
    LabelMC4: TLabelMC;
    LabelMC5: TLabelMC;
    DBEditMC5: TDBEditMC;
    Filmes: TDuploGridMC;
    qryFilmes: TZQueryMC;
    qryFilmesNOME: TStringField;
    qryDestino: TZQueryMC;
    StringField1: TStringField;
    cdsConfig: TClientDataSetMC;
    cdsConfigEsq: TIntegerField;
    cdsConfigDir: TIntegerField;
    cdsConfigRodape: TIntegerField;
    cdsConfigTopo: TIntegerField;
    cdsConfigColunas: TIntegerField;
    dsrConfig: TDatasourceMC;
    qryFilmesCODFILME: TIntegerField;
    qryDestinoCODFILME: TIntegerField;
    txtFilme: TEditMC;
    procedure FormShow(Sender: TObject);
    procedure bitImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtFilmeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmFormCodeBarFitas: T_frmFormCodeBarFitas;

implementation

uses uRptCodeBarFita, uDM, uToolFunc;

{$R *.dfm}

procedure T_frmFormCodeBarFitas.FormShow(Sender: TObject);
begin
  inherited;
  if not Assigned(_frmRptCodeBarFita) then
    _frmRptCodeBarFita := T_frmRptCodeBarFita.Create(FormularioPai);
  Filmes.Open('');
  cdsConfig.FileName := ExtractFilePath(ParamStr(0)) + 'Config.mc';
  if FileExists(ExtractFilePath(ParamStr(0)) + 'Config.mc') then
    cdsConfig.Open
  else
    cdsConfig.CreateDataSet;
  cdsConfig.Edit;
end;

procedure T_frmFormCodeBarFitas.bitImprimirClick(Sender: TObject);
var
  Valores: string;
begin


  if not cdsConfigEsq.IsNull then
    _frmRptCodeBarFita.rpt.Margins.LeftMargin := cdsConfigEsq.AsInteger;
  if not cdsConfigDir.IsNull then
    _frmRptCodeBarFita.rpt.Margins.RightMargin := cdsConfigDir.AsInteger;
  if not cdsConfigTopo.IsNull then
    _frmRptCodeBarFita.rpt.Margins.TopMargin := cdsConfigTopo.AsInteger;
  if not cdsConfigRodape.IsNull then
    _frmRptCodeBarFita.rpt.Margins.BottomMargin := cdsConfigRodape.AsInteger;
  if not cdsConfigColunas.IsNull then
    _frmRptCodeBarFita.rlDetail.ColCount := cdsConfigColunas.AsInteger;

  Filmes.GridDestino.DataSource.DataSet.First;
  while not Filmes.GridDestino.DataSource.DataSet.Eof do begin
    Valores := Valores + iif(Valores = '', '', ', ') + Filmes.GridDestino.DataSource.DataSet.FieldByName('CODFILME').AsString;
    Filmes.GridDestino.DataSource.DataSet.Next;
  end;
  
  _frmRptCodeBarFita.qryCodigos.Close;
  _frmRptCodeBarFita.qryCodigos.SQL.Text := 'SELECT SUBCOD FROM TBFITA' +
    IIF(Valores <> '', ' WHERE CODFILME IN (' + Valores + ') ', ' ') + 'ORDER BY CODFILME, SUBCOD';
  _frmRptCodeBarFita.qryCodigos.Open;
  
  rpt := _frmRptCodeBarFita.rpt;
  inherited;
end;

procedure T_frmFormCodeBarFitas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsConfig.Post;
end;

procedure T_frmFormCodeBarFitas.txtFilmeChange(Sender: TObject);
begin
  inherited;
  Filmes.GridOrigem.DataSource.DataSet.Locate('NOME', txtFilme.text, [loPartialKey]);
end;

end.
