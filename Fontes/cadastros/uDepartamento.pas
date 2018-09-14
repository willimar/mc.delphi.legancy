unit uDepartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, DBCtrls, DBLookupComboBoxMC,
  DBCheckBoxMC, Mask, DBEditMC, uCadStringGrid, StringGridMC, EditMC;

type
  T_frmCadGridDepartamento = class(T_frmCadStringGrid)
    qryGridCODDEPARTAMENTO: TIntegerField;
    qryGridDESCRICAO: TStringField;
    qryGridCODIGO: TStringField;
    qryGridGRAU1: TStringField;
    qryGridGRAU2: TStringField;
    qryGridGRAU3: TStringField;
    cdsGridCODDEPARTAMENTO: TIntegerField;
    cdsGridDESCRICAO: TStringField;
    cdsGridCODIGO: TStringField;
    cdsGridGRAU1: TStringField;
    cdsGridGRAU2: TStringField;
    cdsGridGRAU3: TStringField;
    qryCadCODDEPARTAMENTO: TIntegerField;
    qryCadDESCRICAO: TStringField;
    qryCadCODEMPRESA: TIntegerField;
    qryCadCODCONTACONTABILCRED: TIntegerField;
    qryCadCODCONTACONTABILDEB: TIntegerField;
    qryCadCODCENTCUSTO: TIntegerField;
    qryCadGRAU1: TStringField;
    qryCadGRAU2: TStringField;
    qryCadGRAU3: TStringField;
    PanelMC1: TPanelMC;
    LabelMC2: TLabelMC;
    lblNome: TLabelMC;
    txtRedutor: TDBEditMC;
    txtDescricao: TDBEditMC;
    PanelMC2: TPanelMC;
    cmbNaturalidade: TDBLookupComboBoxMC;
    lblNaturalidade: TLabelMC;
    bitCidade: TSpeedButton;
    LabelMC1: TLabelMC;
    SpeedButton1: TSpeedButton;
    DBLookupComboBoxMC1: TDBLookupComboBoxMC;
    LabelMC3: TLabelMC;
    SpeedButton2: TSpeedButton;
    DBLookupComboBoxMC2: TDBLookupComboBoxMC;
    LabelMC4: TLabelMC;
    sqlEmpresa: TZQueryMC;
    sqlEmpresaCODCLIENTE: TIntegerField;
    sqlEmpresaAPELIDO: TStringField;
    sqlEmpresaNOME: TStringField;
    sqlEmpresaCPFCNPJ: TStringField;
    DBLookupComboBoxMC3: TDBLookupComboBoxMC;
    LabelMC5: TLabelMC;
    SpeedButton3: TSpeedButton;
    dsrEmpresa: TDatasourceMC;
    sqlOperFinanc: TZQueryMC;
    dsrOperFinanc: TDatasourceMC;
    sqlOperFinancCODOPERACAOFINANCEIRA: TIntegerField;
    sqlOperFinancDESCRICAO: TStringField;
    sqlCentroCusto: TZQueryMC;
    sqlCentroCustoCODCENTROCUSTO: TIntegerField;
    sqlCentroCustoDESCRICAO: TStringField;
    dsrCentroCusto: TDatasourceMC;
    txtCodigo: TEditMC;
    sqlCentroCustoCODIGO: TStringField;
    sqlOperFinancCODIGO: TStringField;
    procedure txtCodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsrCadStateChange(Sender: TObject);
    procedure qryCadBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bitGravarClick(Sender: TObject);
    procedure dsrGridDataChange(Sender: TObject; Field: TField);
    procedure bitCidadeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure MontarGrid;
  public
    { Public declarations }
  end;

var
  _frmCadGridDepartamento: T_frmCadGridDepartamento;
const
  cSqlDepartamento = 'SELECT * FROM TBDEPARTAMENTO';
implementation

uses uDM, uToolFunc, uDBFunc, uPesquisa;

{$R *.dfm}

{ T_frmCadGridDepartamento }

procedure T_frmCadGridDepartamento.MontarGrid;
var
  cdsGrau1, cdsGrau2, cdsGrau3: TZQueryMC;
begin
  cdsGrau1 := TZQueryMC.Create(Self);
  cdsGrau2 := TZQueryMC.Create(Self);
  cdsGrau3 := TZQueryMC.Create(Self);
  cdsGrau1.Connection := DM.db;
  cdsGrau2.Connection := DM.db;
  cdsGrau3.Connection := DM.db;
  MontarStringGrid(stgGrid, 2, 4, 1, 1, 16, [10, 50, 70, 450],
    [' ', 'Redutor', 'Código', 'Descrição']);
  Filtrar([cSqlDepartamento], [' Grau1<>''00'' AND Grau2=''00'' AND Grau3=''00'' ORDER BY Grau1'], [cdsGrau1]);
  Filtrar([cSqlDepartamento], [' Grau1<>''00'' AND Grau2<>''00'' AND Grau3=''00'' ORDER BY Grau1, Grau2'], [cdsGrau2]);
  Filtrar([cSqlDepartamento], [' Grau1<>''00'' AND Grau2<>''00'' AND Grau3<>''00'' ORDER BY Grau1, Grau2, Grau3'], [cdsGrau3]);
  cdsGrau1.First;
  cdsGrau2.First;
  cdsGrau3.First;
  while not cdsGrau1.Eof do
  begin
    Application.ProcessMessages;
    InserirRegistroStringGrid(stgGrid, [' ', cdsGrau1.FieldValues['CodDepartamento'],
      cdsGrau1.FieldValues['Grau1'] + '.00.00' ,cdsGrau1.FieldValues['Descricao']], stgGrid.RowCount - 1);
    InserirLinhaStringGrid(stgGrid, STG_FINAL);
    Filtrar([cSqlDepartamento], ['Grau1=''' + cdsGrau1.FieldValues['Grau1'] + ''' AND Grau2<>''00'' AND Grau3=''00'' ORDER BY Grau1, Grau2'], [cdsGrau2]);

    while not cdsGrau2.Eof do
    begin
      Application.ProcessMessages;
      InserirRegistroStringGrid(stgGrid, [' ', cdsGrau2.FieldValues['CodDepartamento'],
        cdsGrau2.FieldValues['Grau1'] + '.' + cdsGrau2.FieldValues['Grau2'] +
        '.00', Replicate(' ', 5) + cdsGrau2.FieldValues['Descricao']], stgGrid.RowCount - 1);
      InserirLinhaStringGrid(stgGrid, STG_FINAL);
      Filtrar([cSqlDepartamento], ['Grau1=''' + cdsGrau1.FieldValues['Grau1'] + ''' AND Grau2=''' + cdsGrau2.FieldValues['Grau2'] + ''' AND Grau3<>''00'' ORDER BY Grau1, Grau2'], [cdsGrau3]);

      while not cdsGrau3.Eof do
      begin
        Application.ProcessMessages;
        InserirRegistroStringGrid(stgGrid, [' ', cdsGrau3.FieldValues['CodDepartamento'],
          cdsGrau3.FieldValues['Grau1'] + '.' + cdsGrau3.FieldValues['Grau2'] + '.' +
          cdsGrau3.FieldValues['Grau3'], Replicate(' ', 10) + cdsGrau3.FieldValues['Descricao']], stgGrid.RowCount - 1);
        InserirLinhaStringGrid(stgGrid, STG_FINAL);
        cdsGrau3.Next;
      end;
      cdsGrau2.Next;
    end;
    cdsGrau1.Next;
  end;
  if stgGrid.RowCount > 2 then
    stgGrid.RowCount := stgGrid.RowCount - 1;
  stgGrid.Row := 1;
  Self.Enabled := true;
end;

procedure T_frmCadGridDepartamento.txtCodigoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key <> 8) and (46 <> Key) then
    AutocompletarCampo(Sender, 'TBDEPARTAMENTO', '99.99.99', 3);
end;

procedure T_frmCadGridDepartamento.dsrCadStateChange(Sender: TObject);
begin
  inherited;
  if qryCad.State in [dsInsert] then begin
    txtCodigo.ReadOnly := false;
    txtCodigo.Color := clWindow;
  end
  else begin
    txtCodigo.ReadOnly := true;
    txtCodigo.Color := $00E0F7FF;
  end;
end;

procedure T_frmCadGridDepartamento.qryCadBeforePost(DataSet: TDataSet);
var
  CodConcat: Array [0 .. 2] of String;
begin
  SepararCodigo(txtCodigo.Text, CodConcat);
  qryCadGRAU1.Value := CodConcat[0];
  qryCadGRAU2.Value := CodConcat[1];
  qryCadGRAU3.Value := CodConcat[2];
  inherited;
end;

procedure T_frmCadGridDepartamento.FormShow(Sender: TObject);
begin
  inherited;
  MontarGrid;
end;

procedure T_frmCadGridDepartamento.bitGravarClick(Sender: TObject);
begin
  inherited;
  MontarGrid;
end;

procedure T_frmCadGridDepartamento.dsrGridDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if qryCad.State in [dsBrowse] then
    txtCodigo.Text := stgGrid.Cells[2, stgGrid.Row];
end;

procedure T_frmCadGridDepartamento.bitCidadeClick(Sender: TObject);
begin
  inherited;
  if not (qryCad.state in [dsBrowse]) then begin
    qryCadCODEMPRESA.AsInteger := T_frmPesquisa.AbrePesquisa('CODCLIENTE', 'Pesquisa de empresas', Self, sqlEmpresa, 10);
  end;
end;

procedure T_frmCadGridDepartamento.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not (qryCad.state in [dsBrowse]) then begin
    qryCadCODCONTACONTABILCRED.AsInteger := T_frmPesquisa.AbrePesquisa('CODOPERACAOFINANCEIRA', 'Pesquisa de operação financeira', Self, sqlOperFinanc, 10);
  end;
end;

procedure T_frmCadGridDepartamento.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if not (qryCad.state in [dsBrowse]) then begin
    qryCadCODCONTACONTABILDEB.AsInteger := T_frmPesquisa.AbrePesquisa('CODOPERACAOFINANCEIRA', 'Pesquisa de operação financeira', Self, sqlOperFinanc, 10);
  end;
end;

procedure T_frmCadGridDepartamento.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if not (qryCad.state in [dsBrowse]) then begin
    qryCadCODCENTCUSTO.AsInteger := T_frmPesquisa.AbrePesquisa('CODCENTROCUSTO', 'Pesquisa de centro de custos', Self, sqlCentroCusto, 10);
  end;
end;

end.
