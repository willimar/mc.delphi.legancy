unit uCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DB, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC;

type
  T_frmCadGridDebito = class(T_frmCadGrid2)
    qryGridP_NOME: TStringField;
    qryGridD_VALOR: TFloatField;
    qryGridD_CODFICHA: TIntegerField;
    qryGridP_CODPESSOA: TIntegerField;
    qryGridCODDEBITO: TIntegerField;
    qryGridVENCIMENTO: TDateField;
    cdsGridP_NOME: TStringField;
    cdsGridD_VALOR: TFloatField;
    cdsGridD_CODFICHA: TIntegerField;
    cdsGridP_CODPESSOA: TIntegerField;
    cdsGridCODDEBITO: TIntegerField;
    cdsGridVENCIMENTO: TDateField;
    qryCadCODPESSOA: TIntegerField;
    qryCadCODCLIENTE: TIntegerField;
    qryCadENDERECO: TStringField;
    qryCadCOMPLEMENTO: TStringField;
    qryCadBAIRRO: TStringField;
    qryCadTEL: TStringField;
    qryCadCEL: TStringField;
    qryCadCEP: TStringField;
    qryCadP_NOME: TStringField;
    qryCadTIPOPESSOA: TStringField;
    qryCadCPFCNPJ: TStringField;
    qryCadEMAIL: TStringField;
    qryCadWEB: TStringField;
    qryCadDATACADASTRO: TDateField;
    qryCadRG: TStringField;
    qryCadDATANASCIMENTO: TDateField;
    qryCadSEXO: TStringField;
    qryCadTELRAMAL: TStringField;
    qryCadN_NOME: TStringField;
    qryCadDEFICIECIA: TStringField;
    qryCadESTADOCIVIL: TIntegerField;
    qryCadAPELIDO: TStringField;
    qryCadTITULAR: TStringField;
    qryCadATIVO: TStringField;
    qryCadCID_NOME: TStringField;
    qryCadCODUF: TStringField;
    qryCadCODTITULAR: TIntegerField;
    qryCadFOTO: TBlobField;
    procedure bitAlterarClick(Sender: TObject);
    procedure bitExcluirClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridDebito: T_frmCadGridDebito;

implementation

uses uToolFunc, uPagamento, uDBFunc;

{$R *.dfm}

procedure T_frmCadGridDebito.bitAlterarClick(Sender: TObject);
begin
  (*inherited;*)
  if cdsGrid.IsEmpty then begin
    Alerta('Selecione o cliente para pagar o débito.');
    exit;
  end;

  _frmPagamento := T_frmPagamento.Create(self);
  _frmPagamento.FormDebito := self;
  _frmPagamento.ShowModal;
end;

procedure T_frmCadGridDebito.bitExcluirClick(Sender: TObject);
begin
  (*inherited;*)
  if Pergunta('Deseja excluir o débito deste sócio?') then begin
    ExecutarSql('UPDATE TBDEBITO SET VALOR=0 WHERE CODDEBITO=' + cdsGridCODDEBITO.AsString);
    cdsGrid.Refresh;
  end;
end;

procedure T_frmCadGridDebito.grdDblClick(Sender: TObject);
begin
  if qryCad.State in [dsBrowse] then
    bitAlterarClick(bitAlterar);
end;

procedure T_frmCadGridDebito.FormActivate(Sender: TObject);
begin
  inherited;
  bitInserir.Visible := false;
  bitImprimir.Visible := false;
  bitExcluir.Visible := false;
end;

end.
