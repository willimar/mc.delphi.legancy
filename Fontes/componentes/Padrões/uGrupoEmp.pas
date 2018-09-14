unit uGrupoEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Provider, DB, DBClient,
  Mask, DBCtrls;

type
  T_frmGrupoEmp = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    lblFechar: TLabel;
    Panel4: TPanel;
    Shape4: TShape;
    Label1: TLabel;
    Panel2: TPanel;
    Shape2: TShape;
    Panel7: TPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label2: TLabel;
    Texto: TLabel;
    Label4: TLabel;
    edtTexto: TEdit;
    cboCampo: TComboBox;
    Panel3: TPanel;
    Shape3: TShape;
    ToolBar1: TToolBar;
    bitInserir: TSpeedButton;
    bitAlterar: TSpeedButton;
    ToolButton1: TToolButton;
    bitGravar: TSpeedButton;
    bitCancelar: TSpeedButton;
    bitExcluir: TSpeedButton;
    ToolButton2: TToolButton;
    bitImprimir: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    dbgDados: TDBGrid;
    dsrGrupoEmp: TDataSource;
    cdsGrupoEmp: TClientDataSet;
    dspGrupoEmp: TDataSetProvider;
    tbGrupoEmpresa: TZQuery;
    Shape5: TShape;
    dbeCodigo: TDBEdit;
    dbeDescricao: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    dsGrupoEmp: TDataSource;
    tbGrupoEmp: TZQuery;
    procedure bitInserirClick(Sender: TObject);
    procedure bitAlterarClick(Sender: TObject);
    procedure bitGravarClick(Sender: TObject);
    procedure bitCancelarClick(Sender: TObject);
    procedure dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgDadosTitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbGrupoEmpAfterInsert(DataSet: TDataSet);
    procedure dsrGrupoEmpDataChange(Sender: TObject; Field: TField);
    procedure edtTextoChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Coluna: Word;
  public
    { Public declarations }
  end;

var
  _frmGrupoEmp: T_frmGrupoEmp;

implementation

uses uDM, uDBFunc, uToolFunc, Math, uVars, uConst;

{$R *.dfm}

procedure T_frmGrupoEmp.bitInserirClick(Sender: TObject);
begin
  tbGrupoEmp.Append;
  dbeCodigo.Color := clWindow;
  dbeCodigo.ReadOnly := false;
  dbeCodigo.TabStop := true;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  dbeCodigo.SetFocus;
end;

procedure T_frmGrupoEmp.bitAlterarClick(Sender: TObject);
begin
  tbGrupoEmp.Edit;
  dbeCodigo.Color := $00E0F7FF;
  dbeCodigo.ReadOnly := true;
  dbeCodigo.TabStop := false;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  dbeDescricao.SetFocus;
end;

procedure T_frmGrupoEmp.bitGravarClick(Sender: TObject);
begin
  if DadoInvalido(dbeCodigo, nil, 'Digite o código.') or
     DadoInvalido(dbeDescricao, nil, 'Digite a descrição.') then
     exit;

  if (NumeroRegistro('tbgrupoemp', 'CodGrupoEmp', dbeCodigo.Text) > 0) and
     (tbGrupoEmp.State in [dsInsert]) then
  begin
    Alerta('O código ' + dbeCodigo.Text + ' já se encontra cadastrado no sistema', false);
    tbGrupoEmp.FieldValues['CodGrupoEmp'] := Codigo('tbgrupoemp', 'CodGrupoEmp');
    Exit;
  end;

  dbeCodigo.Color := clWindow;
  dbeCodigo.ReadOnly := false;
  dbeCodigo.TabStop := true;

  tbGrupoEmp.Post;
  dbgDados.SetFocus;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  cdsGrupoEmp.Close;
  tbGrupoEmpresa.Close;
  cdsGrupoEmp.Open;
end;

procedure T_frmGrupoEmp.bitCancelarClick(Sender: TObject);
begin
  if Pergunta('Deseja cancelar a operação?') then
  begin
    tbGrupoEmp.Close;
    tbGrupoEmp.Open;
    dbgDados.SetFocus;
    dbeCodigo.Color := clWindow;
    dbeCodigo.ReadOnly := false;
    dbeCodigo.TabStop := true;
    botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  end;
end;

procedure T_frmGrupoEmp.dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd(cdsGrupoEmp.RecNo) then
  begin
    dbgDados.Canvas.Font.Color := clBlack;
    dbgDados.Canvas.Brush.Color := $EFEBE7;
  end
  else
  begin
    dbgDados.Canvas.Font.Color := clBlack;
    dbgDados.Canvas.Brush.Color := clCream;
  end;
  dbgDados.Canvas.FillRect(Rect);
  dbgDados.Canvas.TextOut(Rect.Left + 2, Rect.Top, Column.Field.AsString);
end;

procedure T_frmGrupoEmp.dbgDadosTitleClick(Column: TColumn);
begin
  cdsGrupoEmp.IndexFieldNames := Column.FieldName;
  dbgDados.Columns[Coluna].Font.Style := [];
  Column.Font.Style := [fsBold];
  Coluna := Column.Index;
end;

procedure T_frmGrupoEmp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdsGrupoEmp.FieldValues['Código'] <> NULL then
    Chaves.CodGrupoEmpresa := cdsGrupoEmp.FieldValues['Código'];
  Action := caFree;
end;

procedure T_frmGrupoEmp.tbGrupoEmpAfterInsert(DataSet: TDataSet);
begin
  tbGrupoEmp.FieldValues['CodGrupoEmp'] := Codigo('tbgrupoemp', 'CodGrupoEmp');
end;

procedure T_frmGrupoEmp.dsrGrupoEmpDataChange(Sender: TObject;
  Field: TField);
begin
  Filtrar([cSqlGrupoEmp], ['CodGrupoEmp=' + IntToStr(iif(NULL=cdsGrupoEmp.FieldValues['Código'], 0, cdsGrupoEmp.FieldValues['Código']))], [tbGrupoEmp]);
end;

procedure T_frmGrupoEmp.edtTextoChange(Sender: TObject);
var
  Campo: String;
begin
  case cboCampo.ItemIndex of
    0 : Campo := 'CodGrupoEmp';
    1 : Campo := 'Descricao';
  end;
  Filtrar([cPesqGrupoEmp], [Campo + ' LIKE ' + QuotedStr('%' + edtTexto.Text + '%')], [tbGrupoEmpresa]);
  cdsGrupoEmp.Close;
  cdsGrupoEmp.Open;
end;

procedure T_frmGrupoEmp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ModalResult := mrCancel;
end;

end.
