unit uOperacaoFinanceira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadStringGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, StringGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, DBCtrls, DBComboBoxMC,
  DBCheckBoxMC, DBLookupComboBoxMC, DBRadioGroupMC, DuploGrid, EditMC,
  Mask, DBEditMC;

type
  T_frmCadGridOperacaoFinanceira = class(T_frmCadStringGrid)
    qryGridCODOPERACAOFINANCEIRA: TIntegerField;
    qryGridCODIGO: TStringField;
    qryGridDESCRICAO: TStringField;
    cdsGridCODOPERACAOFINANCEIRA: TIntegerField;
    cdsGridCODIGO: TStringField;
    cdsGridDESCRICAO: TStringField;
    qryCadCODOPERACAOFINANCEIRA: TIntegerField;
    qryCadDESCRICAO: TStringField;
    qryCadGRAU1: TStringField;
    qryCadGRAU2: TStringField;
    qryCadGRAU3: TStringField;
    qryCadGRAU4: TStringField;
    qryCadTIPOVINCULO: TStringField;
    qryCadIMPRIMERECIBO: TStringField;
    qryCadCODMODELODOCUMENTO: TIntegerField;
    qryCadCODPLANOPAGAMENTO: TIntegerField;
    qryCadTIPOMOVIMENTO: TStringField;
    qryCadNATUREZA: TStringField;
    qryCadMEDICMS: TIntegerField;
    qryCadUNTICMS: TIntegerField;
    qryCadMEDDIFERENCAICMS: TIntegerField;
    qryCadUNITDIFERENCAICMS: TIntegerField;
    qryCadMEDSUBSTITUICAOTRIBUTARIA: TIntegerField;
    qryCadUNITSUBSTITUICAOTRIBUTARIA: TIntegerField;
    qryCadMEDIPI: TIntegerField;
    qryCadUNITIPI: TIntegerField;
    qryCadMEDDESPESAACESSORIA: TIntegerField;
    qryCadUNITDESPESAACESSORIA: TIntegerField;
    qryCadMEDCTRC: TIntegerField;
    qryCadUNITCTRC: TIntegerField;
    qryCadMEDICMSCTRC: TIntegerField;
    qryCadUNITICMSCTRC: TIntegerField;
    qryCadMEDDIFERENCACTRC: TIntegerField;
    qryCadUNITDIFERENCACTRC: TIntegerField;
    PageControl1: TPageControl;
    PanelMC1: TPanelMC;
    tabGeral: TTabSheet;
    tabCentroCusto: TTabSheet;
    DuploGridMC1: TDuploGridMC;
    TabSheet1: TTabSheet;
    DBRadioGroupMC1: TDBRadioGroupMC;
    GroupBox1: TGroupBox;
    bitCidade: TSpeedButton;
    DBLookupComboBoxMC1: TDBLookupComboBoxMC;
    DBLookupComboBoxMC2: TDBLookupComboBoxMC;
    DBCheckBoxMC1: TDBCheckBoxMC;
    LabelMC1: TLabelMC;
    LabelMC2: TLabelMC;
    Bevel3: TBevel;
    DBRadioGroupMC2: TDBRadioGroupMC;
    LabelMC3: TLabelMC;
    DBComboBoxMC1: TDBComboBoxMC;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    LabelMC4: TLabelMC;
    DBComboBoxMC2: TDBComboBoxMC;
    LabelMC5: TLabelMC;
    DBComboBoxMC3: TDBComboBoxMC;
    LabelMC6: TLabelMC;
    DBComboBoxMC4: TDBComboBoxMC;
    LabelMC7: TLabelMC;
    DBComboBoxMC5: TDBComboBoxMC;
    LabelMC8: TLabelMC;
    DBComboBoxMC6: TDBComboBoxMC;
    LabelMC9: TLabelMC;
    DBComboBoxMC7: TDBComboBoxMC;
    LabelMC10: TLabelMC;
    DBComboBoxMC8: TDBComboBoxMC;
    LabelMC11: TLabelMC;
    DBComboBoxMC9: TDBComboBoxMC;
    GroupBox3: TGroupBox;
    LabelMC12: TLabelMC;
    LabelMC13: TLabelMC;
    LabelMC14: TLabelMC;
    LabelMC15: TLabelMC;
    LabelMC16: TLabelMC;
    LabelMC17: TLabelMC;
    LabelMC18: TLabelMC;
    LabelMC19: TLabelMC;
    DBComboBoxMC10: TDBComboBoxMC;
    DBComboBoxMC11: TDBComboBoxMC;
    DBComboBoxMC12: TDBComboBoxMC;
    DBComboBoxMC13: TDBComboBoxMC;
    DBComboBoxMC14: TDBComboBoxMC;
    DBComboBoxMC15: TDBComboBoxMC;
    DBComboBoxMC16: TDBComboBoxMC;
    DBComboBoxMC17: TDBComboBoxMC;
    LabelMC20: TLabelMC;
    lblNome: TLabelMC;
    LabelMC21: TLabelMC;
    txtRedutor: TDBEditMC;
    txtDescricao: TDBEditMC;
    txtCodigo: TEditMC;
    procedure FormShow(Sender: TObject);
    procedure bitGravarClick(Sender: TObject);
    procedure qryCadMEDICMSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryCadMEDICMSSetText(Sender: TField; const Text: String);
    procedure txtCodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsrGridDataChange(Sender: TObject; Field: TField);
    procedure qryCadNewRecord(DataSet: TDataSet);
    procedure qryCadBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure MontarStg;
  public
    { Public declarations }
  end;

var
  _frmCadGridOperacaoFinanceira: T_frmCadGridOperacaoFinanceira;

const
   INICIA_MEDICMS = 12;

implementation

uses uDM, uToolFunc, uDBFunc;

{$R *.dfm}

{ T_frmCadGridOperacaoFinanceira }

procedure T_frmCadGridOperacaoFinanceira.MontarStg;
const
  ConstOperFinanceira = 'SELECT CodOperacaoFinanceira, Descricao, Grau1, Grau2, Grau3, Grau4 FROM tboperacaofinanceira';
var
  cdsGrau1, cdsGrau2, cdsGrau3, cdsGrau4: TZQueryMC;
begin
  Application.ProcessMessages;
  cdsGrau1 := TZQueryMC.Create(self);
  cdsGrau2 := TZQueryMC.Create(self);
  cdsGrau3 := TZQueryMC.Create(self);
  cdsGrau4 := TZQueryMC.Create(self);

  cdsGrau1.Connection := DM.db;
  cdsGrau2.Connection := DM.db;
  cdsGrau3.Connection := DM.db;
  cdsGrau4.Connection := DM.db;

  MontarStringGrid(stgGrid, 2, 4, 1, 1, 16, [13, 50, 78, 400],
    [' ', 'Redutor', 'Código', 'Descrição']);
  Filtrar([ConstOperFinanceira], ['Grau2 = ''00'' ORDER BY Grau1'], [cdsGrau1]);
  Filtrar([ConstOperFinanceira], ['Grau2 <> ''00'' AND Grau3=''00'''], [cdsGrau2]);
  Filtrar([ConstOperFinanceira], ['Grau3 <> ''00'' AND Grau4=''00'''], [cdsGrau3]);
  Filtrar([ConstOperFinanceira], ['Grau4 <> ''00'''], [cdsGrau4]);

  cdsGrau1.First;
  while not cdsGrau1.Eof do
  begin
    Application.ProcessMessages;
    InserirRegistroStringGrid(stgGrid, [' ', IntToStr(cdsGrau1.FieldValues['CodOperacaoFinanceira']), cdsGrau1.FieldValues['Grau1'] + '.' +
      cdsGrau1.FieldValues['Grau2'] + '.' + cdsGrau1.FieldValues['Grau3'] + '.' +
      cdsGrau1.FieldValues['Grau4'], cdsGrau1.FieldValues['Descricao']], stgGrid.Row);
    InserirLinhaStringGrid(stgGrid, STG_FINAL);
    stgGrid.Row := stgGrid.Row + 1;
    Filtrar([ConstOperFinanceira], ['Grau1=' + QuotedStr(cdsGrau1.FieldValues['Grau1']) +
       ' AND Grau2 <> ''00'' AND' + ' Grau3=''00'' ORDER BY Grau2'], [cdsGrau2]);
    cdsGrau2.First;
    while not cdsGrau2.Eof do
    begin
      Application.ProcessMessages;
      InserirRegistroStringGrid(stgGrid, [' ', IntToStr(cdsGrau2.FieldValues['CodOperacaoFinanceira']), cdsGrau2.FieldValues['Grau1'] + '.' +
      cdsGrau2.FieldValues['Grau2'] + '.' + cdsGrau2.FieldValues['Grau3'] + '.' +
      cdsGrau2.FieldValues['Grau4'], Replicate(' ', 5) + cdsGrau2.FieldValues['Descricao']], stgGrid.Row);
      InserirLinhaStringGrid(stgGrid, STG_FINAL);
      stgGrid.Row := stgGrid.Row + 1;
      Filtrar([ConstOperFinanceira], ['Grau1=' + QuotedStr(cdsGrau2.FieldValues['Grau1']) + ' AND Grau2=' +
        QuotedStr(cdsGrau2.FieldValues['Grau2']) + ' AND' + ' Grau3<>''00'' AND Grau4=''0000'' ORDER BY Grau3'], [cdsGrau3]);
      cdsGrau3.First;
      while not cdsGrau3.Eof do
      begin
        Application.ProcessMessages;
        InserirRegistroStringGrid(stgGrid, [' ', IntToStr(cdsGrau3.FieldValues['CodOperacaoFinanceira']), cdsGrau3.FieldValues['Grau1'] + '.' +
        cdsGrau3.FieldValues['Grau2'] + '.' + cdsGrau3.FieldValues['Grau3'] + '.' +
        cdsGrau3.FieldValues['Grau4'], Replicate(' ', 10) + cdsGrau3.FieldValues['Descricao']], stgGrid.Row);
        InserirLinhaStringGrid(stgGrid, STG_FINAL);
        stgGrid.Row := stgGrid.Row + 1;
        Filtrar([ConstOperFinanceira], ['Grau1=' +
          QuotedStr(cdsGrau3.FieldValues['Grau1']) + ' AND Grau2=' +
          QuotedStr(cdsGrau3.FieldValues['Grau2']) + ' AND' + ' Grau3=' +
          QuotedStr(cdsGrau3.FieldValues['Grau3']) + ' AND Grau4<>''0000'' ORDER BY Grau4'], [cdsGrau4]);
        cdsGrau4.First;
        while not cdsGrau4.Eof do
        begin
          Application.ProcessMessages;
          InserirRegistroStringGrid(stgGrid, [' ', IntToStr(cdsGrau4.FieldValues['CodOperacaoFinanceira']), cdsGrau4.FieldValues['Grau1'] + '.' +
          cdsGrau4.FieldValues['Grau2'] + '.' + cdsGrau4.FieldValues['Grau3'] + '.' +
          cdsGrau4.FieldValues['Grau4'], Replicate(' ', 15) + cdsGrau4.FieldValues['Descricao']], stgGrid.Row);
          InserirLinhaStringGrid(stgGrid, STG_FINAL);
          stgGrid.Row := stgGrid.Row + 1;
          cdsGrau4.Next;
        end;
        cdsGrau3.Next;
      end;
      cdsGrau2.Next;
    end;
    cdsGrau1.Next;
  end;
  if stgGrid.RowCount > 2 then
    stgGrid.RowCount := stgGrid.RowCount - 1;
  stgGrid.Row := 1;
end;

procedure T_frmCadGridOperacaoFinanceira.FormShow(Sender: TObject);
begin
  inherited;
  MontarStg;
end;

procedure T_frmCadGridOperacaoFinanceira.bitGravarClick(Sender: TObject);
begin
  inherited;
  MontarStg;
end;

procedure T_frmCadGridOperacaoFinanceira.qryCadMEDICMSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;   
  if Sender.IsNull then
    Text := ''
  else
    case Sender.AsInteger of
      0: Text := 'Nenhuma';
      1: Text := 'Subtração';
      2: Text := 'Adição';
    end;
end;

procedure T_frmCadGridOperacaoFinanceira.qryCadMEDICMSSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if Text = 'Nenhuma' then
    Sender.AsInteger := 0
  else if Text = 'Subtração' then
    Sender.AsInteger := 1
  else if Text = 'Adição' then
    Sender.AsInteger := 2;
end;

procedure T_frmCadGridOperacaoFinanceira.txtCodigoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key <> 8) and (46 <> Key) then
    AutocompletarCampo(Sender, 'tboperacaofinanceira', '99.99.99.9999', 4);
end;

procedure T_frmCadGridOperacaoFinanceira.dsrGridDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if qryCad.State in [dsBrowse] then
    txtCodigo.Text := stgGrid.Cells[2, stgGrid.Row];
end;

procedure T_frmCadGridOperacaoFinanceira.qryCadNewRecord(
  DataSet: TDataSet);
var
  i: integer;
begin
  inherited;
  qryCadTIPOVINCULO.AsString := 'F';
  qryCadTIPOMOVIMENTO.AsString := 'E';
  qryCadNATUREZA.AsString := 'Ativo';
  qryCadIMPRIMERECIBO.AsString := 'Não';
  for i := INICIA_MEDICMS to pred(qryCad.FieldCount) do begin
    qryCad.Fields[i].AsInteger := 0;
  end;
end;

procedure T_frmCadGridOperacaoFinanceira.qryCadBeforePost(
  DataSet: TDataSet);
var
  CodConcat: Array [0 .. 3] of String;
begin
  inherited;
  SepararCodigo(txtCodigo.Text, CodConcat);
  qryCadGRAU1.Value := CodConcat[0];
  qryCadGRAU2.Value := CodConcat[1];
  qryCadGRAU3.Value := CodConcat[2];
  qryCadGRAU4.Value := CodConcat[3];
end;

end.
