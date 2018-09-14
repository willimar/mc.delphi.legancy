unit uProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, ImgList,
  Grids, DBGrids, Mask, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DBClient, Provider;

type
  T_frmProduto = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    Panel2: TPanel;
    Shape2: TShape;
    Panel3: TPanel;
    Shape3: TShape;
    lblFechar: TLabel;
    Panel4: TPanel;
    Shape4: TShape;
    ToolBar1: TToolBar;
    bitInserir: TSpeedButton;
    bitAlterar: TSpeedButton;
    bitGravar: TSpeedButton;
    bitCancelar: TSpeedButton;
    bitExcluir: TSpeedButton;
    bitImprimir: TSpeedButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel5: TPanel;
    Shape5: TShape;
    Label1: TLabel;
    PageControl1: TPageControl;
    tbsGrid: TTabSheet;
    tbsDetalhes: TTabSheet;
    dbgDados: TDBGrid;
    tbProduto: TZQuery;
    dsrProduto: TDataSource;
    Panel7: TPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label2: TLabel;
    edtTexto: TEdit;
    Texto: TLabel;
    Label4: TLabel;
    cboCampo: TComboBox;
    dsrGrid: TDataSource;
    cdsGrid: TClientDataSet;
    dspGrid: TDataSetProvider;
    qryGrid: TZReadOnlyQuery;
    tbGrupoProduto: TZQuery;
    dsrGrupoProduto: TDataSource;
    tbSubGrupoProduto: TZQuery;
    dsrSubGrupoProduto: TDataSource;
    PageControl2: TPageControl;
    tbsGerais: TTabSheet;
    TabSheet2: TTabSheet;
    panEnd: TPanel;
    Bevel6: TBevel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    dbevaloMinimo: TDBEdit;
    dbeValorMaximo: TDBEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    dbeValorCusto: TDBEdit;
    dbeValorVenda: TDBEdit;
    Panel6: TPanel;
    pbCodBarra: TPaintBox;
    Panel8: TPanel;
    pnlDoc: TPanel;
    Bevel4: TBevel;
    lbGrupoEmpresa: TLabel;
    bitGrupo: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    dblGrupoProduto: TDBLookupComboBox;
    dblSubGrupoProduto: TDBLookupComboBox;
    pnlDados: TPanel;
    lbCodigo: TLabel;
    lbNome: TLabel;
    Bevel3: TBevel;
    lbApelido: TLabel;
    Label15: TLabel;
    dbCodigo: TDBEdit;
    dbeCodBarra: TDBEdit;
    dbeRazSocial: TDBEdit;
    dbeReferencia: TDBEdit;
    DBGrid1: TDBGrid;
    Panel9: TPanel;
    qryProdutoEstoque: TZReadOnlyQuery;
    dspEstoque: TDataSetProvider;
    cdsProdutoEstoque: TClientDataSet;
    dsrProdutoEstoque: TDataSource;
    edtRazSoc: TEdit;
    cdsProdutoEstoqueRazSocial: TStringField;
    cdsProdutoEstoqueQtd: TIntegerField;
    Panel10: TPanel;
    DBText2: TDBText;
    DBText1: TDBText;
    DBMemo1: TDBMemo;
    Bevel5: TBevel;
    procedure lblFecharMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lblFecharMouseLeave(Sender: TObject);
    procedure lblFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure bitInserirClick(Sender: TObject);
    procedure bitAlterarClick(Sender: TObject);
    procedure bitGravarClick(Sender: TObject);
    procedure bitCancelarClick(Sender: TObject);
    procedure tbProdutoEstoqueAfterInsert(DataSet: TDataSet);
    procedure dbCodigoChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblGrupoProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbsDetalhesShow(Sender: TObject);
    procedure dbCidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtTextoChange(Sender: TObject);
    procedure dsrGridDataChange(Sender: TObject; Field: TField);
    procedure dbeCodBarraExit(Sender: TObject);
    procedure pbCodBarraPaint(Sender: TObject);
    procedure dblSubGrupoProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bitGrupoClick(Sender: TObject);
    procedure edtRazSocChange(Sender: TObject);
    procedure dsrProdutoDataChange(Sender: TObject; Field: TField);
    procedure dbgDadosTitleClick(Column: TColumn);
    procedure dbeRazSocialExit(Sender: TObject);
    procedure tbProdutoBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    Coluna: Word;
    Campos: Array of String;

  public
    { Public declarations }
  end;

var
  _frmProduto: T_frmProduto;

implementation

uses uDM, uToolFunc, uDBFunc, uVars, uGrupoEmp, uCidade, uConst,
  uPrincipal, uHotel;

{$R *.dfm}

procedure T_frmProduto.lblFecharMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lblFechar.Font.Color := clInfoBk;
end;

procedure T_frmProduto.lblFecharMouseLeave(Sender: TObject);
begin
  lblFechar.Font.Color := clBlack;
end;

procedure T_frmProduto.lblFecharClick(Sender: TObject);
begin
  Close;
end;

procedure T_frmProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fMenu(_frmPrincipal);
end;

procedure T_frmProduto.dbgDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  ZebraDBGrid(Sender, Rect, Column, State);
end;

procedure T_frmProduto.FormShow(Sender: TObject);
begin
  tbsGrid.Show;
  edtTexto.Text := ' ';
  edtTexto.Text := '';
end;

procedure T_frmProduto.bitInserirClick(Sender: TObject);
begin
  Inserir([tbProduto], [nil], [], []);
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  tbsDetalhes.Show;
  dbCodigo.Color := clWindow;
  dbCodigo.ReadOnly := false;
  dbCodigo.TabStop := true;
  tbProduto.FieldValues['TipoProduto'] := 1;
  tbProduto.FieldValues['CodProduto'] := Codigo('tbproduto', 'CodProduto');
end;

procedure T_frmProduto.bitAlterarClick(Sender: TObject);
begin
  Alterar([tbProduto], [nil], [], []);
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  tbsDetalhes.Show;
  dbCodigo.Color := $00E0F7FF;
  dbCodigo.ReadOnly := true;
  dbCodigo.TabStop := false;
end;

procedure T_frmProduto.bitGravarClick(Sender: TObject);
var
  RecNo: Integer;
  Estoque: Boolean;
begin
  Estoque := false;
  if DadoInvalido(dbCodigo, tbsDetalhes, 'Digite o código.') or
     DadoInvalido(dbeRazSocial, tbsDetalhes, 'Digite o nome do produto.') or
     DadoInvalido(dbevaloMinimo, tbsDetalhes, 'Digite o valor mínimo.') or
     DadoInvalido(dbeValorMaximo, tbsDetalhes, 'Digite o valor máximo.') or
     DadoInvalido(dbeValorCusto, tbsDetalhes, 'Digite o valor de custo.') or
     DadoInvalido(dblGrupoProduto, tbsDetalhes, 'Selecione a grupo do produto.') or
     DadoInvalido(dblSubGrupoProduto, tbsDetalhes, 'Selecione o subgrupo do produto.') then
     exit;

  if tbProduto.State in [dsInsert] then
  begin
    tbProduto.FieldValues['DataCadastro'] := Date;
    Estoque := true;
  end;
  tbProduto.FieldValues['DatAtualizacao'] := Date;

  Salvar([tbProduto], ['CodProduto'], ['tbproduto']);
  
  if Estoque then
    ProdutoEstoque(tbProduto.FieldValues['CodProduto']);

  tbsGrid.Show;
  RecNo := qryGrid.RecNo;
  edtTexto.Text := ' ';
  edtTexto.Text := '';
  qryGrid.RecNo := RecNo;
  dbCodigo.Color := $00E0F7FF;
  dbCodigo.ReadOnly := true;
  dbCodigo.TabStop := false;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
end;

procedure T_frmProduto.bitCancelarClick(Sender: TObject);
begin
  if Pergunta('Deseja cancelar a operação?') then
  begin
    Cancelar([tbProduto]);
    botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
    tbsGrid.Show;
    dbCodigo.Color := clWindow;
    dbCodigo.ReadOnly := true;
    dbCodigo.TabStop := false;
  end;
end;

procedure T_frmProduto.tbProdutoEstoqueAfterInsert(DataSet: TDataSet);
begin
  tbProduto.FieldValues['CodProduto'] := Codigo('tbproduto', 'CodProduto');
end;

procedure T_frmProduto.dbCodigoChange(Sender: TObject);
begin
  TDBEdit(Sender).Color := clWindow;
end;

procedure T_frmProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ModalResult := mrCancel;
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure T_frmProduto.dblGrupoProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 114 then
    bitGrupoClick(Sender);
end;

procedure T_frmProduto.tbsDetalhesShow(Sender: TObject);
begin
  if tbProduto.State in [dsInsert] then
  begin
    PageControl2.ActivePageIndex := 0;
    dbCodigo.SetFocus;
  end
  else
  begin
    PageControl2.ActivePageIndex := 0;
    dbeRazSocial.SetFocus;
  end;
end;

procedure T_frmProduto.dbCidadeClick(Sender: TObject);
begin
  TDBLookupComboBox(Sender).Color := clWindow;
end;

procedure T_frmProduto.FormCreate(Sender: TObject);
begin
  SetLength(Campos, 7);
  Campos[0] := 'CodProduto';
  Campos[1] := 'p.Descricao';
  Campos[2] := 'Referencia';
  Campos[3] := 'CodBarra';
  Campos[4] := 'gp.Descricao';
  Campos[5] := 'e.Responsavel';
  Campos[6] := 'sgp.Descricao';
end;

procedure T_frmProduto.edtTextoChange(Sender: TObject);
begin
  ExecutarFiltro([cPesqProduto], [Campos[cboCampo.ItemIndex]
    + ' LIKE ' + QuotedStr('%' + edtTexto.Text + '%') + ' AND TipoProduto=1'], [qryGrid]);
  cdsGrid.Close;
  cdsGrid.Open;
end;

procedure T_frmProduto.dsrGridDataChange(Sender: TObject; Field: TField);
begin
  if cdsGrid.FieldValues['Código'] <> NULL then
  begin
    Filtrar([cSqlProduto], ['TipoProduto=1 AND CodProduto=' + IntToStr(cdsGrid.FieldValues['Código'])], [tbProduto]);
  end;
end;

procedure T_frmProduto.dbeCodBarraExit(Sender: TObject);
begin
  pbCodBarraPaint(pbCodBarra);  
end;

procedure T_frmProduto.pbCodBarraPaint(Sender: TObject);
begin
  ValorConvX := GetDeviceCaps(Canvas.Handle, LogPixelsX);
  ValorConvY := GetDeviceCaps(Canvas.Handle, LogPixelsY);
  //Canvas.Brush.Color := clBtnFace;
  //Canvas.FillRect(ClientRect);
  if dbeCodBarra.Text <> '' then
  begin
    Ean13(pbCodBarra.Canvas, dbeCodBarra.Text, 0,0,15);
  end;
end;

procedure T_frmProduto.dblSubGrupoProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //
end;

procedure T_frmProduto.bitGrupoClick(Sender: TObject);
begin
//
end;

procedure T_frmProduto.edtRazSocChange(Sender: TObject);
begin
  cdsProdutoEstoque.Locate('RazSocial', edtRazSoc.Text, [loPartialKey])
end;

procedure T_frmProduto.dsrProdutoDataChange(Sender: TObject;
  Field: TField);
begin
  ExecutarFiltro([cPesqProdutoEstoque], ['pe.CodProduto=' + iif(tbProduto.FieldByName('CodProduto').AsString='', '0', tbProduto.FieldByName('CodProduto').AsString)], [qryProdutoEstoque]);
  cdsProdutoEstoque.Close;
  cdsProdutoEstoque.Open;
end;

procedure T_frmProduto.dbgDadosTitleClick(Column: TColumn);
begin
  cdsGrid.IndexFieldNames := Column.FieldName;
  dbgDados.Columns[Coluna].Font.Style := [];
  Column.Font.Style := [fsBold];
  Coluna := Column.Index;
end;

procedure T_frmProduto.dbeRazSocialExit(Sender: TObject);
begin
  tbProduto.FieldByName('Referencia').Value := tbProduto.FieldByName('Descricao').Value;
end;

procedure T_frmProduto.tbProdutoBeforeOpen(DataSet: TDataSet);
begin
  if cdsGrid.State in [dsInactive] then exit;
  if (cdsGrid.RecordCount = 0) then
    Filtrar([cSqlProduto], ['CodProduto=0'], [tbProduto]);
end;

end.
