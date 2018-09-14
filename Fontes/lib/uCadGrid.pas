unit uCadGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ToolWin,
  ExtCtrls, Provider, DB, DBClient, ClientDataSetMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DataSetProviderMC, ZQueryMC, DatasourceMC,
  Mask, DBEditMC, DBGridMC, PanelMC, LabelMC, SpeedButtonMC;

type
  T_frmCadGrid = class(TForm)
    Panel1: TPanelMC;
    Shape1: TShape;
    Panel2: TPanelMC;
    Shape2: TShape;
    Panel3: TPanelMC;
    Shape3: TShape;
    lblFechar: TLabelMC;
    Panel4: TPanelMC;
    Shape4: TShape;
    tbPadrao: TToolBar;
    bitInserir: TSpeedButton;
    bitAlterar: TSpeedButton;
    bitGravar: TSpeedButton;
    bitCancelar: TSpeedButton;
    bitExcluir: TSpeedButton;
    bitImprimir: TSpeedButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel5: TPanelMC;
    Shape5: TShape;
    lblTitulo: TLabelMC;
    pgcCadastro: TPageControl;
    tbsGrid: TTabSheet;
    tbsDetalhes: TTabSheet;
    pnlFiltro: TPanelMC;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label2: TLabelMC;
    edtTexto: TEdit;
    Texto: TLabelMC;
    Label4: TLabelMC;
    cboCampo: TComboBox;
    Panel8: TPanelMC;
    cdsGrid: TClientDataSetMC;
    qryGrid: TZQueryMC;
    dspGrid: TDataSetProviderMC;
    dsrGrid: TDatasourceMC;
    qryCad: TZQueryMC;
    dsrCad: TDatasourceMC;
    grd: TDBGridMC;
    btnFiltro: TSpeedButtonMC;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lblFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bitInserirClick(Sender: TObject);
    procedure bitAlterarClick(Sender: TObject);
    procedure bitGravarClick(Sender: TObject);
    procedure bitCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsrGridDataChange(Sender: TObject; Field: TField);
    procedure grdDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bitExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
  private
    FSqlPadrao: string;
    FFormularioPai: TForm;
  private
    { Private declarations }
    procedure ExecutarCad;
  public
    { Public declarations }
    property FormularioPai: TForm read FFormularioPai write FFormularioPai;
    property SqlPadrao: string read FSqlPadrao write FSqlPadrao;
    procedure LigarQuery;
    class procedure AbreJanela(FormPai: TForm);
  end;

var
  _frmCadGrid: T_frmCadGrid;

implementation

uses uDM, uDBFunc, Math, uToolFunc, uErro, uRegistro;

{$R *.dfm}

procedure T_frmCadGrid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fMenu(FormularioPai);
  DM.db.Connected := false;
end;

procedure T_frmCadGrid.FormShow(Sender: TObject);
var
  i, j: word;
begin    
  Hint := DM.SisControl.ApplicationNome + ' - ' + Caption;
  if cdsGrid.Tag <> 3 then begin
    cdsGrid.Open;
    cboCampo.Items.Clear;

    {inserindo os campos na combo de pesquisa e preparando a variavelvel para filtro}
    for i := 0 to pred(cdsGrid.FieldCount) do
    begin
      if cdsGrid.Fields[i].Visible then
        cboCampo.Items.Add(cdsGrid.Fields[i].DisplayLabel);
    end;
  end;

  {colocando os controles em posic��o padr�o}
  lblFechar.Left := Width - 25;
  tbPadrao.Left := Width - 530;
  cboCampo.ItemIndex := 0;
  pnlFiltro.Top := Height - 230;
  lblTitulo.Hint := DM.SisControl.ApplicationNome + ' - ' + lblTitulo.Caption;
  Self.Hint := DM.SisControl.ApplicationNome;

  {ligando todas as querys de tag 1 com a query de cadastro principal}
  LigarQuery;
  dsrGridDataChange(dsrGrid, nil);
end;

procedure T_frmCadGrid.lblFecharClick(Sender: TObject);
begin
  if qryCad.State in [dsInsert, dsEdit] then begin
    if not Pergunta('Deseja cancelar as modifica��es em ' + lblTitulo.Caption + '.') then begin
      exit;
    end;
  end;
  Close;
end;

procedure T_frmCadGrid.FormCreate(Sender: TObject);
begin
  Constraints.MaxHeight := 0;
  Constraints.MaxWidth := 0;
  SqlPadrao := qryGrid.SQL.Text;
end;

procedure T_frmCadGrid.ExecutarCad;
var
  i: word;
  Condicao: Array of String;
begin
  qryCad.ParamByName('CODIGO').Value := cdsGrid.FieldByName(cdsGrid.FieldKey).AsVariant;
  qryCad.Refresh;
  if length(qryCad.Query) = 0 then
    exit;
  for i := 0 to pred(length(qryCad.Query)) do
  begin
    qryCad.Query[i].ParamByName(qryCad.Campos[i]).AsInteger := cdsGrid.FieldByName(qryCad.FieldKey).AsInteger;
    qryCad.Query[i].Refresh;
  end;
end;

procedure T_frmCadGrid.bitInserirClick(Sender: TObject);
begin
  if not ValidarCadastro and (NumeroRegistro(qryCad.TableName, '*', '') > 100) then begin
    Alerta('Sistema n�o registrado, opera��o negada.');
    abort;
  end;
  qryCad.Append;
  tbsDetalhes.Show;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  edtTexto.Enabled := false;
end;

procedure T_frmCadGrid.bitAlterarClick(Sender: TObject);
begin
  qryCad.Edit;
  tbsDetalhes.Show;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  edtTexto.Enabled := false;
end;

procedure T_frmCadGrid.bitGravarClick(Sender: TObject);
begin
  edtTexto.Enabled := true;
  if pnlFiltro.Visible then
    edtTexto.SetFocus
  else if tbsDetalhes.TabVisible then
    tbsDetalhes.SetFocus;
  tbsDetalhes.Show;
  if not ValidarForm(Self) then exit;
  qryCad.Post;
  tbsGrid.Show;
  cdsGrid.Refresh;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  if edtTexto.Text <> '' then
    edtTexto.Clear;
end;

procedure T_frmCadGrid.bitCancelarClick(Sender: TObject);
begin
  qryCad.Cancel;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  edtTexto.Enabled := true;
  if edtTexto.Text <> '' then
    edtTexto.Clear;
end;

procedure T_frmCadGrid.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then begin
    Key := #0;
    close;
  end;
  if Key = #13 then begin
    Key := #0;
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure T_frmCadGrid.dsrGridDataChange(Sender: TObject; Field: TField);
begin
  if qryCad.State in [dsBrowse] then begin
    ExecutarCad;
  end;
end;

class procedure T_frmCadGrid.AbreJanela(FormPai: TForm);
begin
  if (DM.qryInterfaceSOMENTELEITURA.AsString = 'N�o') and
     (DM.qryInterfaceINSERIR.AsString = 'N�o') and
     (DM.qryInterfaceALTERAR.AsString = 'N�o') and
     (DM.qryInterfaceIMPRIMIR.AsString = 'N�o') and
     (DM.qryInterfaceEXCLUIR.AsString = 'N�o') then begin
    Alerta('O usu�rio ' + QuotedStr(DM.SisControl.Usuario.Usuario) + ' n�o possui permiss�o suficiente para acessar esta parte do programa.');
    Exit;
  end;
  fMenu(FormPai);
  LockWindowUpdate(FormPai.Handle);
  with Self.Create(FormPai) do
  begin
    FormularioPai := FormPai;
    Show;
  end;
  LockWindowUpdate(0);
end;

procedure T_frmCadGrid.grdDblClick(Sender: TObject);
begin
  if (qryCad.State in [dsBrowse]) and (bitAlterar.Visible or bitInserir.Visible) then
    Self.bitAlterarClick(bitAlterar);
end;

procedure T_frmCadGrid.FormDestroy(Sender: TObject);
begin
  Self := nil;
end;

procedure T_frmCadGrid.bitExcluirClick(Sender: TObject);
begin
  if Pergunta(Exclusao) then begin
    qryCad.Delete;
    cdsGrid.Refresh;
  end;
end;

procedure T_frmCadGrid.FormActivate(Sender: TObject);
begin
  if DM.SisControl.Usuario.Codigo > 0 then begin
    if DM.qryInterfaceSOMENTELEITURA.AsString = 'Sim' then begin
      bitInserir.Visible := false;
      bitAlterar.Visible := false;
      bitExcluir.Visible := false;
      bitImprimir.Visible := false;
    end;
    if DM.qryInterfaceINSERIR.AsString = 'N�o' then begin
      bitInserir.Visible := false;
    end;
    if DM.qryInterfaceALTERAR.AsString = 'N�o' then begin
      bitAlterar.Visible := false;
    end;
    if DM.qryInterfaceIMPRIMIR.AsString = 'N�o' then begin
      bitImprimir.Visible := false;
    end;
    if DM.qryInterfaceEXCLUIR.AsString = 'N�o' then begin
      bitExcluir.Visible := false;
    end;
  end;
end;

procedure T_frmCadGrid.LigarQuery;
var
  i, j: integer;
begin
  for i := 0 to pred(Self.ComponentCount) do begin
    if (Self.Components[i] is TZQueryMC) then
    begin
      if (Self.Components[i] as TZQueryMC).Tag = 1 then
      begin
        SetLength(qryCad.Campos, length(qryCad.Query) + 1);
        SetLength(qryCad.SqlFilha, length(qryCad.Query) + 1);
        SetLength(qryCad.Query, length(qryCad.Query) + 1);
        qryCad.Query[length(qryCad.Query) - 1] := (Self.Components[i] as TZQueryMC);
        qryCad.SqlFilha[length(qryCad.Query) - 1] := (Self.Components[i] as TZQueryMC).SQL.Text;
        {pegando a chave estrageira que possui tag 1 e providerflags pfInKey}
        for j := 0 to pred((Self.Components[i] as TZQueryMC).FieldCount) do
        begin
          if (pfInKey in (Self.Components[i] as TZQueryMC).Fields[j].ProviderFlags) and ((Self.Components[i] as TZQueryMC).Fields[j].Tag = 1) then
          begin
            qryCad.Campos[length(qryCad.Query) - 1] := (Self.Components[i] as TZQueryMC).Fields[j].FieldName;
            Break;{ele sai pois s� existe uma chave estrageira}
          end;
        end;
      end;
      if (Self.Components[i] as TZQueryMC).Tag <> 3 then
      begin
        (Self.Components[i] as TZQueryMC).Open;
      end;
    end
    else
      if (Self.Components[i] is TPageControl) then
      begin
        (Self.Components[i] as TPageControl).ActivePageIndex := 0;
      end
      else
        if (Self.Components[i] is TClientDataSetMC) then
        begin
          if (Self.Components[i] as TClientDataSetMC).tag <> 3 then
            (Self.Components[i] as TClientDataSetMC).open;
        end;
  end;
end;

procedure T_frmCadGrid.btnFiltroClick(Sender: TObject);
begin
  Filtrar([SqlPadrao], [StringReplace(grd.Columns[cboCampo.ItemIndex].FieldName, '_', '.', [rfReplaceAll])
    + ' LIKE ' + QuotedStr('%' + edtTexto.Text + '%')], [qryGrid]);
  cdsGrid.Refresh;
end;

end.
