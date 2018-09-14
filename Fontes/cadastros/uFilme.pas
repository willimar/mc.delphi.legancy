unit uFilme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, Mask, DBCtrls, DBEditMC,
  DBCheckBoxMC, DBLookupComboBoxMC, DBRichEditMC, SpeedButtonMC;

type
  T_frmCadGridFilme = class(T_frmCadGrid)
    qryGridCODFILME: TIntegerField;
    qryGridF_NOME: TStringField;
    qryGridP_NOME: TStringField;
    qryGridG_NOME: TStringField;
    qryGridQUANTIDADE: TIntegerField;
    cdsGridCODFILME: TIntegerField;
    cdsGridF_NOME: TStringField;
    cdsGridP_NOME: TStringField;
    cdsGridG_NOME: TStringField;
    cdsGridQUANTIDADE: TIntegerField;
    qryGridESTANTE: TStringField;
    qryGridPRATELEIRA: TStringField;
    cdsGridESTANTE: TStringField;
    cdsGridPRATELEIRA: TStringField;
    txtNome: TDBEditMC;
    LabelMC1: TLabelMC;
    txtData: TDBEditMC;
    LabelMC2: TLabelMC;
    txtQtd: TDBEditMC;
    LabelMC3: TLabelMC;
    cmbFornecedor: TDBLookupComboBoxMC;
    LabelMC4: TLabelMC;
    LabelMC5: TLabelMC;
    cmbGenero: TDBLookupComboBoxMC;
    LabelMC6: TLabelMC;
    cmbPreco: TDBLookupComboBoxMC;
    txtValor: TDBEditMC;
    bitCidade: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    txtEstante: TDBEditMC;
    LabelMC7: TLabelMC;
    txtPrateleira: TDBEditMC;
    LabelMC8: TLabelMC;
    txtValorCompra: TDBEditMC;
    LabelMC9: TLabelMC;
    chkDvd: TDBCheckBoxMC;
    GroupBox1: TGroupBox;
    DBEditMC8: TDBEditMC;
    DBEditMC9: TDBEditMC;
    DBEditMC10: TDBEditMC;
    LabelMC10: TLabelMC;
    txtAutor: TDBEditMC;
    txtSinopse: TDBRichEditMC;
    LabelMC11: TLabelMC;
    PanelMC1: TPanelMC;
    PanelMC2: TPanelMC;
    DBGridMC1: TDBGridMC;
    qryFitas: TZQueryMC;
    qryCadCODFILME: TIntegerField;
    qryCadCODFORNECEDOR: TIntegerField;
    qryCadCODPRECO: TIntegerField;
    qryCadCODGENERO: TIntegerField;
    qryCadNOME: TStringField;
    qryCadAUTOR: TStringField;
    qryCadDVD: TStringField;
    qryCadDATAAQU: TDateField;
    qryCadQUANTIDADE: TIntegerField;
    qryCadSINOPSE: TBlobField;
    qryCadESTANTE: TStringField;
    qryCadVALORCOMPRA: TFloatField;
    qryCadPARTICIP1: TStringField;
    qryCadPARTICIP2: TStringField;
    qryCadPARTICIP3: TStringField;
    dsrFitas: TDatasourceMC;
    qryFitasSUBCOD: TStringField;
    qryFitasCODFILME: TIntegerField;
    qryFitasDISPONIVEL: TStringField;
    qryFitasBARCODE: TStringField;
    qryFornecedores: TZQueryMC;
    qryFornecedoresCODCLIENTE: TIntegerField;
    qryFornecedoresNOME: TStringField;
    srcFornecedor: TDatasourceMC;
    qryGenero: TZQueryMC;
    qryGeneroCODGENERO: TIntegerField;
    qryGeneroNOME: TStringField;
    dsrGenero: TDatasourceMC;
    qryPreco: TZQueryMC;
    qryPrecoCODPRECO: TIntegerField;
    qryPrecoNOME: TStringField;
    qryPrecoVALOR: TFloatField;
    dsrPreco: TDatasourceMC;
    qryCadPRECOLOCACAO: TFloatField;
    qryCadPRATELEIRA: TStringField;
    qryHistorico: TZQueryMC;
    qryHistoricoCODHISTORICO: TIntegerField;
    qryHistoricoCODFICHA: TIntegerField;
    qryHistoricoCODFILME: TIntegerField;
    qryHistoricoDATASAIDA: TDateField;
    qryHistoricoDATAENTRADA: TDateField;
    qryHistoricoATRASO: TStringField;
    qryHistoricoCODSOCIO: TIntegerField;
    qryHistoricoVALOR: TFloatField;
    qryHistoricoQTD: TIntegerField;
    qryHistoricoTROCA: TStringField;
    qryHistoricoMOTIVO: TStringField;
    Panel6: TPanelMC;
    pbCodBarra: TPaintBox;
    Panel7: TPanelMC;
    procedure bitGravarClick(Sender: TObject);
    procedure tbsDetalhesShow(Sender: TObject);
    procedure bitCancelarClick(Sender: TObject);
    procedure bitInserirClick(Sender: TObject);
    procedure bitImprimirClick(Sender: TObject);
    procedure qryCadNewRecord(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bitCidadeClick(Sender: TObject);
    procedure pbCodBarraPaint(Sender: TObject);
    procedure dsrFitasDataChange(Sender: TObject; Field: TField);
    procedure bitExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridFilme: T_frmCadGridFilme;

implementation

uses uToolFunc, uDBFunc, uDM, uFormFilmes, uPesquisa, uGenero, uPreco,
  DateUtils, uExclusao, uErro;

{$R *.dfm}

procedure T_frmCadGridFilme.bitGravarClick(Sender: TObject);
  function GerarSubCod: String;
  var
    dia, mes, ano, hora, minuto, segundo, milesimo: word;
    Resutado: string;
  begin
    DecodeDateTime(Date + Time, ano, mes, dia, hora, minuto, segundo, milesimo);
    Resutado :=
      FormatFloat('00', dia) +
      FormatFloat('00', mes) +
      Copy(IntToStr(ano), 3, 2) +
      FormatFloat('00', hora) +
      FormatFloat('00', minuto) +
      FormatFloat('00', segundo) +
      Copy(IntToStr(milesimo), 1, 1);
    Result := Resutado;
  end;
var
  Alterar: Boolean;
  cSql, CodFilme, CodFornecedor, Qtd, Valor: String;
  i: Integer;
begin
  Alterar := iif(qryCad.State in [dsEdit], true, false);
  CodFilme := qryCadCODFILME.AsString;
  CodFornecedor := qryCadCODFORNECEDOR.AsString;
  Qtd := qryCadQUANTIDADE.AsString;
  Valor := qryCadVALORCOMPRA.AsString;
  inherited;
  if not Alterar then begin
    for i := 1 to StrToInt(Qtd) do begin
      sleep(200);
      cSql := cSql + 'INSERT INTO tbfita (SubCod, CodFilme, Disponivel) '+
                     'VALUES(''' + GerarSubCod +{ '-' + IntToStr(i) + }''', ' + CodFilme + ', ''Sim'');';
    end;
  end
  else begin
    if qryFitas.RecordCount < qryCadQUANTIDADE.asInteger then begin
      for i := qryFitas.RecordCount + 1 to (qryCadQUANTIDADE.asInteger) do begin
        sleep(200);
        cSql := cSql + 'INSERT INTO tbfita (SubCod, CodFilme, Disponivel) '+
                     'VALUES(''' + GerarSubCod +{ '-' + IntToStr(i) + }''', ' + CodFilme + ', ''Sim'');';
      end;
    end;
  end;

  if cSql <> '' then
    ExecutarSql(cSql);

  if not Alterar then begin
    qryHistorico.Append;
    qryHistoricoCODFICHA.AsString := CodFornecedor;
    qryHistoricoCODFILME.AsString := CodFilme;
    qryHistoricoDATASAIDA.AsDateTime := date;
    qryHistoricoDATAENTRADA.AsDateTime := Date;
    qryHistoricoATRASO.AsString := 'Não';
    qryHistoricoCODSOCIO.AsString := CodFornecedor;
    qryHistoricoVALOR.AsString := Valor;
    qryHistoricoQTD.AsString := Qtd;
    qryHistoricoTROCA.AsString := 'Não';
    qryHistorico.Post;
  end;
  tbsDetalhes.Tag := 0;
end;

procedure T_frmCadGridFilme.tbsDetalhesShow(Sender: TObject);
begin
  inherited;
  if tbsDetalhes.Tag <> qryCadCODFILME.AsInteger then begin
    tbsDetalhes.Tag := qryCadCODFILME.AsInteger;
    qryFitas.Close;
    qryFitas.ParamByName('CODFILME').Value := qryCadCODFILME.AsInteger;
    qryFitas.Open;
  end;
end;

procedure T_frmCadGridFilme.bitCancelarClick(Sender: TObject);
begin
  inherited;
  tbsDetalhes.Tag := 0;
end;

procedure T_frmCadGridFilme.bitInserirClick(Sender: TObject);
begin
  tbsDetalhes.Tag := 0;
  inherited;
  if pgcCadastro.ActivePage = tbsDetalhes then
    tbsDetalhesShow(tbsDetalhes);
end;

procedure T_frmCadGridFilme.bitImprimirClick(Sender: TObject);
begin
  inherited;
  T_frmFormFilme.Abrir(cdsGridCODFILME.AsInteger, Self);
end;

procedure T_frmCadGridFilme.qryCadNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryCadDVD.AsString := 'Não';
  qryCadDATAAQU.AsDateTime := date;
end;

procedure T_frmCadGridFilme.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if qryCad.State in [dsEdit, dsInsert] then
    qryCadCODFORNECEDOR.AsInteger := T_frmPesquisa.AbrePesquisa('CODCLIENTE', 'Pesquisa de fornecedores', self, qryFornecedores, 10);
end;

procedure T_frmCadGridFilme.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if qryCad.State in [dsEdit, dsInsert] then
    qryCadCODGENERO.AsInteger := T_frmCadGridGenero.AbreJanela('CODGENERO', Self);
end;

procedure T_frmCadGridFilme.bitCidadeClick(Sender: TObject);
begin
  inherited;
  if qryCad.State in [dsEdit, dsInsert] then
    qryCadCODPRECO.AsInteger := T_frmCadGridPreco.AbreJanela('CODPRECO', Self)
end;

procedure T_frmCadGridFilme.pbCodBarraPaint(Sender: TObject);
begin
  inherited;
  DM.SisControl.ValorConvX := GetDeviceCaps(Canvas.Handle, LogPixelsX);
  DM.SisControl.ValorConvY := GetDeviceCaps(Canvas.Handle, LogPixelsY);
  if qryFitasSUBCOD.AsString <> '' then begin
    Ean13(pbCodBarra.Canvas, qryFitasSUBCOD.AsString, 0, 0, 15);
  end;
end;

procedure T_frmCadGridFilme.dsrFitasDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  pbCodBarra.Repaint;
  pbCodBarraPaint(pbCodBarra);
end;

procedure T_frmCadGridFilme.bitExcluirClick(Sender: TObject);
var
  Delecao: TExcluir;
begin
  try
    if Pergunta(Exclusao) then begin
      Delecao := TExcluir.Create(Self);
      Delecao.DB := DM.db;
      Delecao.Processor := DM.Processor;
      Delecao.DeleteFilme(cdsGridCODFILME.AsInteger);
      qryCad.Delete;
      cdsGrid.Refresh;
    end;
  finally
    FreeAndNil(Delecao);
  end;
end;

end.
