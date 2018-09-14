unit uPlanoPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, DBCtrls, DBRadioGroupMC, Mask,
  DBEditMC, DBCheckBoxMC, DBComboBoxMC, StringGridMC;

type
  T_frmCadGridPlanoPagamento = class(T_frmCadGrid)
    qryGridCODPLANOPAGAMENTO: TIntegerField;
    qryGridDESCRICAO: TStringField;
    qryGridREFERENCIA: TStringField;
    qryGridPAGAMENTOPRAZO: TStringField;
    qryGridPARCELAS: TIntegerField;
    qryGridPRAZOMES: TStringField;
    qryGridDESCONTO: TFloatField;
    qryGridVALORMINIMO: TFloatField;
    cdsGridCODPLANOPAGAMENTO: TIntegerField;
    cdsGridDESCRICAO: TStringField;
    cdsGridREFERENCIA: TStringField;
    cdsGridPAGAMENTOPRAZO: TStringField;
    cdsGridPARCELAS: TIntegerField;
    cdsGridPRAZOMES: TStringField;
    cdsGridDESCONTO: TFloatField;
    cdsGridVALORMINIMO: TFloatField;
    qryCadCODPLANOPAGAMENTO: TIntegerField;
    qryCadDESCRICAO: TStringField;
    qryCadREFERENCIA: TStringField;
    qryCadPAGAMENTOPRAZO: TStringField;
    qryCadPARCELAS: TIntegerField;
    qryCadPRAZOMES: TStringField;
    qryCadDESCONTO: TFloatField;
    qryCadVALORMINIMO: TFloatField;
    LabelMC1: TLabelMC;
    DBEditMC1: TDBEditMC;
    DBEditMC2: TDBEditMC;
    LabelMC2: TLabelMC;
    DBEditMC3: TDBEditMC;
    LabelMC3: TLabelMC;
    dbrFormaPag: TDBRadioGroupMC;
    dbrFormaPrazo: TDBRadioGroupMC;
    txtNumParcela: TDBEditMC;
    LabelMC4: TLabelMC;
    DBEditMC5: TDBEditMC;
    LabelMC5: TLabelMC;
    DBEditMC6: TDBEditMC;
    LabelMC6: TLabelMC;
    DBCheckBoxMC1: TDBCheckBoxMC;
    LabelMC7: TLabelMC;
    DBComboBoxMC1: TDBComboBoxMC;
    stgPrecos: TStringGridMC;
    sqlParcelas: TZQueryMC;
    sqlParcelasCODPLANOPAGAMENTO: TIntegerField;
    sqlParcelasORDEM: TIntegerField;
    sqlParcelasPERCENTUAL: TFloatField;
    procedure stgPrecosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure stgPrecosGetEditText(Sender: TObject; ACol,
      ARow: Integer; var Value: String);
    procedure stgPrecosSetEditText(Sender: TObject; ACol,
      ARow: Integer; const Value: String);
    procedure qryCadPARCELASValidate(Sender: TField);
    procedure txtNumParcelaChange(Sender: TObject);
    procedure dbrFormaPagChange(Sender: TObject);
    procedure tbsDetalhesShow(Sender: TObject);
    procedure qryCadNewRecord(DataSet: TDataSet);
    procedure bitGravarClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularTotal;
    procedure GravarParcelas;
  public
    { Public declarations }
  end;

var
  _frmCadGridPlanoPagamento: T_frmCadGridPlanoPagamento;

implementation

uses uToolFunc, uDBFunc, uDM;

{$R *.dfm}

procedure T_frmCadGridPlanoPagamento.stgPrecosDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  inherited;
  if stgPrecos.Cells[2, stgPrecos.RowCount - 1] = '' then
    CalcularTotal;
end;

procedure T_frmCadGridPlanoPagamento.stgPrecosGetEditText(
  Sender: TObject; ACol, ARow: Integer; var Value: String);
begin
  inherited;
  CalcularTotal;
end;

procedure T_frmCadGridPlanoPagamento.stgPrecosSetEditText(
  Sender: TObject; ACol, ARow: Integer; const Value: String);
begin
  inherited;
  CalcularTotal;
end;

procedure T_frmCadGridPlanoPagamento.qryCadPARCELASValidate(
  Sender: TField);
var
  i: integer;
begin
  MontarStringGrid(stgPrecos, 2, 3, 2, 1, 16, [13, 80, 150], [' ', 'Parcela', 'Percentual']);
  stgPrecos.Cells[1, stgPrecos.RowCount - 1] := '';
  stgPrecos.Cells[2, stgPrecos.RowCount - 1] := '';
  Filtrar(['SELECT * FROM tbparcela'], ['CodPlanoPagamento=' + iif(qryCadCODPLANOPAGAMENTO.Text = '', '0', qryCadCODPLANOPAGAMENTO.Text)],
    [sqlParcelas]);
  while not sqlParcelas.Eof do
  begin
    InserirRegistroStringGrid(stgPrecos, [' ', sqlParcelasOrdem.Text, sqlParcelasPercentual.Text], stgPrecos.Row);
    InserirLinhaStringGrid(stgPrecos, stgPrecos.Row);
    stgPrecos.Row := stgPrecos.Row + 1;
    sqlParcelas.Next;
  end;
  for i := sqlParcelas.RecordCount to pred(qryCadParcelas.AsInteger) do
  begin
    InserirLinhaStringGrid(stgPrecos, STG_FINAL);
    InserirRegistroStringGrid(stgPrecos, [' ', IntToStr(i + 1), FormatFloat('0.000', 100/qryCadParcelas.AsInteger)], stgPrecos.RowCount - 2);
  end;
  stgPrecos.Cells[1, stgPrecos.RowCount - 1] := '';
  stgPrecos.Cells[2, stgPrecos.RowCount - 1] := '';
  CalcularTotal;
end;

procedure T_frmCadGridPlanoPagamento.CalcularTotal;
var
  Total: Real;
  i : integer;
begin
  if qryCad.State in [dsInactive] then exit;

  if qryCadPARCELAS.AsInteger > 0 then begin

      for i := 1 to pred(stgPrecos.RowCount -1) do
        stgPrecos.Cells[2, i] := FormatFloat('0.000', 100/qryCadParcelas.Value);
    Coluna_Total_StringGrid(stgPrecos, 2, Total);
    stgPrecos.Cells[1, stgPrecos.RowCount - 1] := 'Total';
    stgPrecos.Cells[2, stgPrecos.RowCount - 1] := FormatFloat('0.000', Total -
      StrToFloat(iif(stgPrecos.Cells[2, stgPrecos.RowCount - 1]<>'', stgPrecos.Cells[2, stgPrecos.RowCount - 1], '0')));
  end;
end;

procedure T_frmCadGridPlanoPagamento.txtNumParcelaChange(Sender: TObject);
begin
  inherited;
  qryCadParcelasValidate(qryCadPARCELAS);
end;

procedure T_frmCadGridPlanoPagamento.dbrFormaPagChange(
  Sender: TObject);
begin
  inherited;
  if qryCad.State in [dsInactive] then exit;
  if dbrFormaPag.ItemIndex = 1 then
  begin
    dbrFormaPrazo.Enabled := true;
    txtNumParcela.Color := clWindow;
    txtNumParcela.ReadOnly := false;
    txtNumParcela.TabStop := true;
    if not(qryCad.state in [dsBrowse, dsInactive]) then
      if qryCadParcelas.Value = 0 then
        qryCadParcelas.Value := 2;
  end
  else
  begin
    dbrFormaPrazo.Enabled := false;
    txtNumParcela.Color := $00E0F7FF;
    txtNumParcela.ReadOnly := true;
    txtNumParcela.TabStop := false;
    if not(qryCad.state in [dsBrowse, dsInactive]) then
      qryCadParcelas.Value := 0;
  end;
end;

procedure T_frmCadGridPlanoPagamento.tbsDetalhesShow(Sender: TObject);
begin
  inherited;
  qryCadParcelasValidate(qryCadParcelas);
  dbrFormaPagChange(dbrFormaPag);
end;

procedure T_frmCadGridPlanoPagamento.qryCadNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryCadPAGAMENTOPRAZO.AsString := 'Não';
  qryCadPRAZOMES.AsString := 'Não';
  qryCadPARCELAS.AsInteger := 0;
  qryCadDESCONTO.AsInteger := 0;
  qryCadVALORMINIMO.AsInteger := 0;
end;

procedure T_frmCadGridPlanoPagamento.GravarParcelas;
var
  i: integer;
  cSql, Delete: String;
begin
  for i := 1 to pred(stgPrecos.RowCount - 1) do
  begin
    if NumeroRegistro('tbparcela', 'CodPlanoPagamento', 'CodPlanoPagamento=' +
      qryCadCODPLANOPAGAMENTO.AsString + 'AND Ordem=' + IntToStr(i)) = 0 then
    begin
      cSql := cSql                                               +
        'INSERT INTO tbparcela '                                 +
          '(CodPlanoPagamento, Ordem, Percentual) '              +
        'VALUES '                                                +
          '(' + qryCadCodPlanoPagamento.Text + ','     +
          IntToStr(i) + ',' + Substituir(',', '.', stgPrecos.Cells[2, i]) + ');';
    end
    else
    begin
      cSql := cSql                                                         +
        'UPDATE tbparcela SET '                                            +
          'Percentual = ' + Substituir(',', '.', stgPrecos.Cells[2, i]) +
        ' WHERE '                                                          +
          'CodPlanoPagamento = ' + qryCadCodPlanoPagamento.Text + ' AND Ordem = ' + IntToStr(i) + ';';
    end;
  end;
  ExecutarSql(cSql);
end;

procedure T_frmCadGridPlanoPagamento.bitGravarClick(Sender: TObject);
begin
  inherited;
  GravarParcelas;
end;

end.
