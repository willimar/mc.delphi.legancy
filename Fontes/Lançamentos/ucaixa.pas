unit uCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, DB,
  DBClient, Provider, ToolWin, DBCtrls, ZAbstractRODataset, ZDataset,
  ZAbstractDataset, ZQueryMC;

type
  T_frmCaixa = class(TForm)
    StatusBar: TStatusBar;
    cdsCaixa: TClientDataSet;
    dsrCaixa: TDataSource;
    dspCaixa: TDataSetProvider;
    cdsCaixaCodDescricao: TIntegerField;
    cdsCaixaValor: TFloatField;
    cdsCaixaTipo: TStringField;
    cdsCaixaLancamento: TDateField;
    cdsCaixaDescricao: TStringField;
    cdsTipo: TClientDataSet;
    cdsTipoTipo: TStringField;
    cdsTipoDescTipo: TStringField;
    cdsCaixaDescTipo: TStringField;
    ToolBar1: TToolBar;
    DBNavigator1: TDBNavigator;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    Shape5: TShape;
    ToolBar2: TToolBar;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    Entrada: TZReadOnlyQuery;
    Saida: TZReadOnlyQuery;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbgDados: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    GeralDetalhado: TZReadOnlyQuery;
    dsrGeralDetalhado: TDataSource;
    Geral: TZReadOnlyQuery;
    dsrGeral: TDataSource;
    DBGrid2: TDBGrid;
    Shape1: TShape;
    qryCaixa: TZQueryMC;
    qryCaixaVALOR: TFloatField;
    qryCaixaTIPO: TStringField;
    qryCaixaLANCAMENTO: TDateField;
    cdsCaixaCODCAIXA: TIntegerField;
    cdsCaixaCODEMPRESA: TIntegerField;
    GeralMES: TSmallintField;
    GeralVALOR: TFloatField;
    GeralTIPO: TStringField;
    GeralDetalhadoMES: TSmallintField;
    GeralDetalhadoTIPO: TStringField;
    GeralDetalhadoCODDESCRICAO: TIntegerField;
    GeralDetalhadoVALOR: TFloatField;
    EntradaTIPO: TStringField;
    EntradaVALOR: TFloatField;
    SaidaTIPO: TStringField;
    SaidaVALOR: TFloatField;
    GeralDetalhadoDescricao: TStringField;
    GeralANO: TSmallintField;
    GeralPERIODO: TStringField;
    GeralDESCRICAO: TStringField;
    GeralDetalhadoANO: TSmallintField;
    GeralDetalhadoPERIODO: TStringField;
    qryCaixaCODCAIXA: TIntegerField;
    qryCaixaCODEMPRESA: TIntegerField;
    qryCaixaCODDESCRICAO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure cdsCaixaAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure cdsCaixaBeforePost(DataSet: TDataSet);
    procedure EntradaAfterOpen(DataSet: TDataSet);
    procedure SaidaAfterOpen(DataSet: TDataSet);
    procedure dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GeralTIPOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure GeralCalcFields(DataSet: TDataSet);
    procedure GeralDetalhadoCalcFields(DataSet: TDataSet);
    procedure cdsCaixaTipoValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure Abrir(FormPai: TForm);
  end;

var
  _frmCaixa: T_frmCaixa;

implementation

uses uDM, uPrincipal, uToolFunc, uDBFunc;

{$R *.DFM}


procedure T_frmCaixa.FormShow(Sender: TObject);
begin
  cdsTipo.InsertRecord(['E', 'Entrada']);
  cdsTipo.InsertRecord(['S', 'Saída']);
  cdsCaixa.Open;
  Geral.Open;
  GeralDetalhado.Open;
  Entrada.Open;
  Saida.Open;
  qryCaixa.Open;
  cdsCaixa.Open;
end;

procedure T_frmCaixa.cdsCaixaAfterInsert(DataSet: TDataSet);
begin
  cdsCaixaCODEMPRESA.Value := DM.SisControl.Empresa.Codigo;
  cdsCaixaCodDescricao.Value := 0;
  cdsCaixaValor.Value := 0;
  cdsCaixaTipo.Value := 'E';
  cdsCaixaLancamento.Value := date;
end;

procedure T_frmCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fMenu(_frmPrincipal);
  Action := caFree;
  _frmCaixa := nil;
end;

procedure T_frmCaixa.btnCancelarClick(Sender: TObject);
begin
  if Pergunta('Deseja cancelar todas as alterações para o caixa?') then
  begin
    cdsCaixa.CancelUpdates;
    Close;
  end;
end;

procedure T_frmCaixa.btnSalvarClick(Sender: TObject);
begin
  if cdsCaixa.State in [dsEdit, dsInsert] then
  begin
    cdsCaixa.Post;
  end;
  cdsCaixa.ApplyUpdates(0);
  close;
end;

procedure T_frmCaixa.cdsCaixaBeforePost(DataSet: TDataSet);
begin
  if cdsCaixaCodDescricao.Value = 0 then begin
    Alerta('Informe o valor do lançamento.');
    abort;
  end;
  cdsCaixaCODCAIXA.AsInteger := Codigo;
  if cdsCaixaTipo.AsString = 's' then
    cdsCaixaTipo.AsString := 'S';
  if cdsCaixaTipo.AsString = 'e' then
    cdsCaixaTipo.AsString := 'E';
end;

procedure T_frmCaixa.EntradaAfterOpen(DataSet: TDataSet);
begin
  StatusBar.Panels[1].Text := 'Entrada -> ' + FormatFloat('R$ #,###,##0.00', EntradaVALOR.Value);
end;

procedure T_frmCaixa.SaidaAfterOpen(DataSet: TDataSet);
begin
    StatusBar.Panels[2].Text := 'Saída -> ' + FormatFloat('R$ #,###,##0.00', SaidaVALOR.Value);
    if not (Entrada.State in [dsinactive]) and not (Saida.State in [dsinactive]) then
    begin
      StatusBar.Panels[3].Text := 'Total -> ' + FormatFloat('R$ #,###,##0.00', EntradaVALOR.Value - SaidaVALOR.Value);
    end;
end;

procedure T_frmCaixa.dbgDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  ZebraDBGrid(Sender, Rect, Column, State);
end;

class procedure T_frmCaixa.Abrir(FormPai: TForm);
begin
  if (DM.qryInterfaceSOMENTELEITURA.AsString = 'Não') and
     (DM.qryInterfaceINSERIR.AsString = 'Não') and
     (DM.qryInterfaceALTERAR.AsString = 'Não') and
     (DM.qryInterfaceIMPRIMIR.AsString = 'Não') and
     (DM.qryInterfaceEXCLUIR.AsString = 'Não') then begin
    Alerta('O usuário ' + QuotedStr(DM.SisControl.Usuario.Usuario) + ' não possui permissão suficiente para acessar esta parte do programa.');
    Exit;
  end;
  _frmCaixa := T_frmCaixa.Create(FormPai);
  fMenu(FormPai);
end;

procedure T_frmCaixa.GeralTIPOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'E' then
    Text := 'Entrada'
  else
    Text := 'Saida';
end;

procedure T_frmCaixa.GeralCalcFields(DataSet: TDataSet);
begin
  GeralPERIODO.AsString := GeralMES.AsString + '/' + GeralANO.AsString;
  GeralDESCRICAO.AsString := iif(GeralTIPO.AsString = 'E', 'Entrada de fluxo no caixa.', 'Saída de fluxo no caixa.');
end;

procedure T_frmCaixa.GeralDetalhadoCalcFields(DataSet: TDataSet);
begin
  GeralDetalhadoPERIODO.AsString := GeralDetalhadoMES.AsString + '/' + GeralDetalhadoANO.AsString;
end;

procedure T_frmCaixa.cdsCaixaTipoValidate(Sender: TField);
begin
  if Sender.AsString = 's' then
    Sender.AsString := 'S';
  if Sender.AsString = 'e' then
    Sender.AsString := 'E';
  if not (Sender.AsString[1] in ['S', 'E']) then begin
    Sender.AsString := '';
    Alerta('Valor inválido para tipo de movimento, digite somente ''E'' ou ''S'', para entrada ou saída respectivamente.');
    Abort;
  end;
end;

end.
