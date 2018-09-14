unit uTributacaoNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, Mask, DBCtrls, DBEditMC,
  DBLookupListBoxMC, DBTextMC;

type
  T_frmCadGridTributacaoNotaFiscal = class(T_frmCadGrid)
    DBEditMC1: TDBEditMC;
    txtDescricao: TDBEditMC;
    LabelMC1: TLabelMC;
    LabelMC2: TLabelMC;
    PanelMC1: TPanelMC;
    PanelMC2: TPanelMC;
    DBTextMC1: TDBTextMC;
    PanelMC3: TPanelMC;
    dblEstados: TDBLookupListBoxMC;
    PanelMC4: TPanelMC;
    LabelMC3: TLabelMC;
    DBEditMC3: TDBEditMC;
    DBEditMC4: TDBEditMC;
    LabelMC4: TLabelMC;
    LabelMC5: TLabelMC;
    PanelMC7: TPanelMC;
    LabelMC10: TLabelMC;
    LabelMC11: TLabelMC;
    DBEditMC9: TDBEditMC;
    DBEditMC10: TDBEditMC;
    PanelMC9: TPanelMC;
    LabelMC14: TLabelMC;
    LabelMC15: TLabelMC;
    DBEditMC13: TDBEditMC;
    DBEditMC14: TDBEditMC;
    LabelMC16: TLabelMC;
    LabelMC17: TLabelMC;
    PanelMC5: TPanelMC;
    LabelMC6: TLabelMC;
    LabelMC7: TLabelMC;
    DBEditMC5: TDBEditMC;
    DBEditMC6: TDBEditMC;
    LabelMC8: TLabelMC;
    PanelMC6: TPanelMC;
    LabelMC9: TLabelMC;
    LabelMC12: TLabelMC;
    DBEditMC7: TDBEditMC;
    DBEditMC8: TDBEditMC;
    PanelMC8: TPanelMC;
    LabelMC13: TLabelMC;
    LabelMC18: TLabelMC;
    DBEditMC11: TDBEditMC;
    DBEditMC12: TDBEditMC;
    LabelMC19: TLabelMC;
    LabelMC20: TLabelMC;
    sqlUF: TZQueryMC;
    sqlUFCODUF: TStringField;
    sqlUFNOME: TStringField;
    scrUF: TDatasourceMC;
    qryGridCODTRIBUTACAONOTAFISCAL: TIntegerField;
    qryGridDESCRICAO: TStringField;
    cdsGridCODTRIBUTACAONOTAFISCAL: TIntegerField;
    cdsGridDESCRICAO: TStringField;
    qryCadCODTRIBUTACAONOTAFISCAL: TIntegerField;
    qryCadDESCRICAO: TStringField;
    sqlNFEstado: TZQueryMC;
    dsrNFEstado: TDatasourceMC;
    cdsNFEstados: TClientDataSetMC;
    dspNFEstados: TDataSetProviderMC;
    cdsNFEstadosCODTRIBUTACAONOTAFISCAL: TIntegerField;
    cdsNFEstadosCODUF: TStringField;
    cdsNFEstadosBASECONTRIB: TFloatField;
    cdsNFEstadosALIQUOTACONTRIB: TFloatField;
    cdsNFEstadosBASENCONTRIB: TFloatField;
    cdsNFEstadosALIQUOTANCONTRIB: TFloatField;
    cdsNFEstadosBASEENTRADA: TFloatField;
    cdsNFEstadosALIQUOTAENTRADA: TFloatField;
    cdsNFEstadosBASETRANSF: TFloatField;
    cdsNFEstadosALIQUOTATRANSF: TFloatField;
    cdsNFEstadosBASESUBTRIB: TFloatField;
    cdsNFEstadosALIQUOTASUBTRIB: TFloatField;
    cdsNFEstadosBASEPRODRURAL: TFloatField;
    cdsNFEstadosALIQUOTAPRODRURAL: TFloatField;
    procedure bitGravarClick(Sender: TObject);
    procedure cdsNFEstadosNewRecord(DataSet: TDataSet);
    procedure dblEstadosClick(Sender: TObject);
    procedure dsrCadDataChange(Sender: TObject; Field: TField);
    procedure tbsDetalhesShow(Sender: TObject);
    procedure bitInserirClick(Sender: TObject);
    procedure bitAlterarClick(Sender: TObject);
    procedure dsrCadStateChange(Sender: TObject);
    procedure qryCadNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridTributacaoNotaFiscal: T_frmCadGridTributacaoNotaFiscal;

implementation

uses uDM, uToolFunc, uDBFunc;

{$R *.dfm}

procedure T_frmCadGridTributacaoNotaFiscal.bitGravarClick(Sender: TObject);
begin
  inherited;
  if cdsNFEstados.State in [dsEdit, dsInsert] then
    cdsNFEstados.Post;
  cdsNFEstados.ApplyUpdates(0);
end;

procedure T_frmCadGridTributacaoNotaFiscal.cdsNFEstadosNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  if dblEstados.KeyValue = null then begin
    Alerta('Informe antes o estado.');
    cdsNFEstados.Cancel;
    Exit;
  end;
  cdsNFEstadosCODUF.AsString := dblEstados.KeyValue;
  cdsNFEstadosCODTRIBUTACAONOTAFISCAL.AsInteger := qryCadCODTRIBUTACAONOTAFISCAL.AsInteger;
end;

procedure T_frmCadGridTributacaoNotaFiscal.dblEstadosClick(
  Sender: TObject);
begin
  inherited;
  cdsNFEstados.Filtered := False;
  if dblEstados.KeyValue = null then
    Exit;
  if cdsNFEstados.State in [dsEdit, dsInsert] then
    cdsNFEstados.Post;
  cdsNFEstados.Filter := 'CODUF=''' + dblEstados.KeyValue + '''';
  cdsNFEstados.Filtered := True;
end;

procedure T_frmCadGridTributacaoNotaFiscal.dsrCadDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if (qryCad.State in [dsBrowse]) and (cdsNFEstados.State in [dsBrowse]) then begin
    sqlNFEstado.Close;
    sqlNFEstado.ParamByName('CODTRIBUTACAONOTAFISCAL').AsInteger := qryCadCODTRIBUTACAONOTAFISCAL.AsInteger;
    sqlNFEstado.Open;
    cdsNFEstados.Close;
    cdsNFEstados.Open;
  end;
end;

procedure T_frmCadGridTributacaoNotaFiscal.tbsDetalhesShow(
  Sender: TObject);
begin
  inherited;
  if tbsDetalhes.Tag <> qryCadCODTRIBUTACAONOTAFISCAL.AsInteger then begin
    dblEstadosClick(dblEstados);
    tbsDetalhes.Tag := qryCadCODTRIBUTACAONOTAFISCAL.AsInteger;
  end;
end;

procedure T_frmCadGridTributacaoNotaFiscal.bitInserirClick(
  Sender: TObject);
begin
  inherited;
  txtDescricao.SetFocus;  
end;

procedure T_frmCadGridTributacaoNotaFiscal.bitAlterarClick(
  Sender: TObject);
begin
  inherited;
  txtDescricao.SetFocus;
end;

procedure T_frmCadGridTributacaoNotaFiscal.dsrCadStateChange(
  Sender: TObject);
begin
  inherited;
  dsrNFEstado.AutoEdit := qryCad.State in [dsEdit,  dsInsert];
end;

procedure T_frmCadGridTributacaoNotaFiscal.qryCadNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsNFEstados.Close;
  sqlNFEstado.Close;
  sqlNFEstado.ParamByName('CODTRIBUTACAONOTAFISCAL').AsInteger := 0;
  sqlNFEstado.Open;
  cdsNFEstados.Open;
end;

end.
