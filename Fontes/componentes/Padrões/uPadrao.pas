unit uPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  Buttons, ImgList, db, ComObj, Variants, Menus, TFlatColorComboBoxUnit,
  DBClient, Provider, ZAbstractRODataset, ZDataset;

type
  T_frmCliente = class(TForm)
    ImageList1: TImageList;
    Panel6: TPanel;
    Shape2: TShape;
    lblFechar: TLabel;
    Panel7: TPanel;
    Shape4: TShape;
    Label26: TLabel;
    Panel8: TPanel;
    Shape3: TShape;
    Label39: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Texto: TLabel;
    Label40: TLabel;
    edtTexto: TEdit;
    cboCampo: TComboBox;
    Panel9: TPanel;
    Shape5: TShape;
    ToolBar3: TToolBar;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    ToolButton2: TToolButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnExcluir: TSpeedButton;
    ToolButton3: TToolButton;
    btnImprimir: TSpeedButton;
    Panel10: TPanel;
    Shape6: TShape;
    PageControl2: TPageControl;
    tbsGrid: TTabSheet;
    dbgDados: TDBGrid;
    tbsDetalhes: TTabSheet;
    Panel2: TPanel;
    Panel1: TPanel;
    qryGrid: TZReadOnlyQuery;
    dspGrid: TDataSetProvider;
    cdsGrid: TClientDataSet;
    dsrGrid: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtBuscaHistChange(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnInserirObsTitularClick(Sender: TObject);
    procedure btnExcluirObsTitularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtObsTitularChange(Sender: TObject);
    procedure edtBuscarDependenteChange(Sender: TObject);
    procedure dbeNomeDependChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtTextoChange(Sender: TObject);
    procedure lblFecharClick(Sender: TObject);
    procedure dbgDadosTitleClick(Column: TColumn);
    procedure dsrGridDataChange(Sender: TObject; Field: TField);
    procedure tbsDetalhesShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Coluna: Word;
  public
    { Public declarations }
  end;

var
  _frmCliente: T_frmCliente;
const
  ConstCliente = 'SELECT * FROM tbpessoa  p WHERE Titular = "Sim"';

implementation

uses
  uToolFunc, uDM, uVars, uDBFunc, uPesquisa, uPrincipal, uReport, uDMB;

{$R *.DFM}

procedure T_frmCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure T_frmCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Pergunta('Deseja cancelar esta operação?') then
  begin
    Action := caFree;
    _frmCliente := nil;
  end
  else
  begin
    Action := caNone;
  end;
end;

procedure T_frmCliente.edtBuscaHistChange(Sender: TObject);
begin
  DM.tbHistorico.Locate('Filme', edtBuscaHist.Text, [loPartialKey]);
end;

procedure T_frmCliente.edtObsTitularChange(Sender: TObject);
begin
  if edtObsTitular.Text <> '' then
    Filtrar([cSqlTbObsCliente], [' Obs Like "%'+edtObsTitular.Text+'%" AND obs.CodPessoa=' + DM.tbCliente.FieldByName('CodPessoa').Text], [DM.tbObsCliente]);
end;

procedure T_frmCliente.edtBuscarDependenteChange(Sender: TObject);
begin
  DM.tbSubCliente.Locate('Nome', edtBuscarDependente.Text, [loPartialKey]);
end;

procedure T_frmCliente.dbeNomeDependChange(Sender: TObject);
begin
  TDBEdit(Sender).Color := clWindow;
end;

procedure T_frmCliente.FormDestroy(Sender: TObject);
begin
  fMenu(frmPrincipal);
end;

procedure T_frmCliente.ToolButton1Click(Sender: TObject);
begin
  Informacao('Imprimir o contrato.', false);
  Contrato;
end;

procedure T_frmCliente.btnLocalizarClick(Sender: TObject);
begin
  Application.CreateForm(T_frmPesquisa, _frmPesquisa);
  _frmPesquisa.MontarGrid(cSqlTbCliente);
  _frmPesquisa.ShowModal;
  _frmCliente.OnCreate(_frmCliente);
end;

procedure T_frmCliente.btnInserirObsTitularClick(Sender: TObject);
begin
  with DM.tbObsCliente do
  begin
    Append;
    Fieldvalues['DataObs'] := Date;
    FieldValues['Obs'] := edtObsTitular.Text;
    FieldValues['CodPessoa'] := DM.tbCliente.FieldByName('CodPessoa').Value;
    Salvar([DM.tbObsCLiente], ['CodObs'], ['tbobs']);
  end;
  DM.tbCliente.Refresh;
end;

procedure T_frmCliente.btnExcluirObsTitularClick(Sender: TObject);
begin
  if Pergunta('Deseja excluir o registro selecionado?') then
  begin
    DM.tbObsCliente.Delete;
  end;
end;

procedure T_frmCliente.FormCreate(Sender: TObject);
begin
  with DM do
  begin
    Filtrar([cSqlTbCliente, cSqlTbSubCliente, cSqlTbObsCliente,
                 cSqlTbObsSubCliente, cSqlTbHistorico],
                 ['CodFicha=' + iif(tbFicha.FieldByName('CodFicha').Text='', '0', tbFicha.FieldByName('CodFicha').Text),
                  'CodFicha=' + iif(tbFicha.FieldByName('CodFicha').Text='', '0', tbFicha.FieldByName('CodFicha').Text),
                  'CodFicha=' + iif(tbFicha.FieldByName('CodFicha').Text='', '0', tbFicha.FieldByName('CodFicha').Text),
                  'CodFicha=' + iif(tbFicha.FieldByName('CodFicha').Text='', '0', tbFicha.FieldByName('CodFicha').Text),
                  'h.CodFicha=' + iif(tbFicha.FieldByName('CodFicha').Text='', '0', tbFicha.FieldByName('CodFicha').Text)],
                  [tbCliente, tbSubCliente, tbObsCliente, tbObsSubCliente,
                  tbHistorico]);
  end;
  
end;

procedure T_frmCliente.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  ZebraDBGrid(Sender, Rect, Column, State);
end;

procedure T_frmCliente.edtTextoChange(Sender: TObject);
var
  cSql : String;
begin
  with qryGrid do
  begin
    Application.ProcessMessages;
    Close;
    cSql := ConstCliente + iif(Pos('WHERE', ConstCliente)>0, ' AND ', ' WHERE ') +
        dbgDados.Columns[cboCampo.ItemIndex].FieldName + ' LIKE ' +
        QuotedStr('%' + edtTexto.Text + '%');
    SQL.Text := cSql;
    ExecSQL;
    Open;
    cdsGrid.Close;
    cdsGrid.Open;
  end;
end;

procedure T_frmCliente.lblFecharClick(Sender: TObject);
begin
  Close;
end;

procedure T_frmCliente.dbgDadosTitleClick(Column: TColumn);
begin
  cdsGrid.IndexFieldNames := Column.FieldName;
  dbgDados.Columns[Coluna].Font.Style := [];
  Column.Font.Style := [fsBold];
  Coluna := Column.Index;
end;

procedure T_frmCliente.dsrGridDataChange(Sender: TObject; Field: TField);
begin
  Application.ProcessMessages;
  if cdsGrid.FieldByName('CodFicha').Text <> '' then
    Filtrar([cSqlTbFicha], ['CodFicha=' + cdsGrid.FieldByName('CodFicha').Text], [DM.tbFicha])
  else
    Filtrar([cSqlTbFicha], ['CodFicha=0'], [DM.tbFicha]);
  if _frmCliente <> nil then
    _frmCliente.OnCreate(Sender);
end;

procedure T_frmCliente.tbsDetalhesShow(Sender: TObject);
begin
//  tbsTitular.Show;
end;

procedure T_frmCliente.FormShow(Sender: TObject);
begin
//  tbsTitular.Show;
  tbsGrid.Show;
end;

end.
