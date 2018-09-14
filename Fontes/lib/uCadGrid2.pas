unit uCadGrid2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Provider, DB, DBClient,
  Mask, DBCtrls, DataSetProviderMC, ZQueryMC, ClientDataSetMC, DatasourceMC,
  DBEditMC, LabelMC, DBGridMC, SpeedButtonMC;

type
  T_frmCadGrid2 = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    lblFechar: TLabelMC;
    Panel4: TPanel;
    Shape4: TShape;
    lblTitulo: TLabelMC;
    Panel2: TPanel;
    Shape2: TShape;
    Panel7: TPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label2: TLabelMC;
    Texto: TLabelMC;
    Label4: TLabelMC;
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
    grd: TDBGridMC;
    Shape5: TShape;
    dbeCodigo: TDBEditMC;
    dbeDescricao: TDBEditMC;
    Label3: TLabelMC;
    Label5: TLabelMC;
    dsrGrid: TDatasourceMC;
    cdsGrid: TClientDataSetMC;
    qryGrid: TZQueryMC;
    dspGrid: TDataSetProviderMC;
    qryCad: TZQueryMC;
    dsrCad: TDatasourceMC;
    btnFiltro: TSpeedButtonMC;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsrGridDataChange(Sender: TObject; Field: TField);
    procedure bitInserirClick(Sender: TObject);
    procedure bitAlterarClick(Sender: TObject);
    procedure bitGravarClick(Sender: TObject);
    procedure bitCancelarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bitExcluirClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
  private
    FSqlPadrao: string;
    FFormularioPai: TForm;
    procedure ExecutarCad;

    { Private declarations }
  public
    { Public declarations }
    property FormularioPai: TForm read FFormularioPai write FFormularioPai;
    property SqlPadrao: string read FSqlPadrao write FSqlPadrao;
    class function AbreJanela(const KeyField: String; FormPai: TForm; Query: TZQueryMC = nil): Variant;virtual;
  end;

var
  _frmCadGrid2: T_frmCadGrid2;

implementation

uses uDM, uDBFunc, uToolFunc, Math, uPrincipal, uErro, uRegistro;

{$R *.dfm}

procedure T_frmCadGrid2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  if Assigned(FormularioPai) then
    fMenu(FormularioPai);
  Self := nil;
end;

procedure T_frmCadGrid2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then begin
    Key := #0;
    ModalResult := mrCancel;
  end;
  if Key = #13 then begin
    Key := #0;
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure T_frmCadGrid2.FormShow(Sender: TObject);
var
  i, J: word;
begin
  Hint := DM.SisControl.ApplicationNome + ' - ' + Caption;
  if cdsGrid.Tag <> 3 then
    cdsGrid.Open;
  cboCampo.Items.Clear;

  lblTitulo.Hint := DM.SisControl.ApplicationNome + ' - ' + lblTitulo.Caption;
  Self.Hint := DM.SisControl.ApplicationNome;

  for i := 0 to pred(cdsGrid.FieldCount) do
  begin
    if cdsGrid.Fields[i].Visible then
      cboCampo.Items.Add(cdsGrid.Fields[i].DisplayLabel);
  end;
  cboCampo.ItemIndex := 0;

  {ligando todas as querys de tag 1 com a query de cadastro principal}
  for i := 0 to pred(Self.ComponentCount) do
  begin
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
            Break;{ele sai pois só existe uma chave estrageira}
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
  dsrGridDataChange(dsrGrid, nil);
  
end;

procedure T_frmCadGrid2.FormCreate(Sender: TObject);
begin
  SqlPadrao := qryGrid.SQL.Text;
end;

procedure T_frmCadGrid2.dsrGridDataChange(Sender: TObject; Field: TField);
begin
  if qryCad.State in [dsBrowse] then
  begin
    ExecutarCad;
  end;
end;

procedure T_frmCadGrid2.bitInserirClick(Sender: TObject);
begin
  if not ValidarCadastro and (NumeroRegistro(qryCad.TableName, '*', '') > 100) then begin
    Alerta('Sistema não registrado, operação negada.');
    abort;
  end;
  qryCad.Append;
  dbeCodigo.SetFocus;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
end;

procedure T_frmCadGrid2.bitAlterarClick(Sender: TObject);
begin
  qryCad.Edit;
  dbeDescricao.SetFocus;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
end;

procedure T_frmCadGrid2.bitGravarClick(Sender: TObject);
begin
  edtTexto.SetFocus;
  if not ValidarForm(Self) then exit;
  qryCad.Post;
  cdsGrid.Refresh;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
end;

procedure T_frmCadGrid2.bitCancelarClick(Sender: TObject);
begin
  qryCad.Cancel;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
end;

procedure T_frmCadGrid2.ExecutarCad;
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
    qryCad.Query[i].ParamByName(qryCad.Campos[i]).AsInteger := cdsGrid.FieldByName(cdsGrid.FieldKey).AsInteger;
    qryCad.Query[i].Refresh;
  end;
end;

class function T_frmCadGrid2.AbreJanela(const KeyField: String; FormPai: TForm; Query: TZQueryMC = nil): Variant;
begin
  if (DM.qryInterfaceSOMENTELEITURA.AsString = 'Não') and
     (DM.qryInterfaceINSERIR.AsString = 'Não') and
     (DM.qryInterfaceALTERAR.AsString = 'Não') and
     (DM.qryInterfaceIMPRIMIR.AsString = 'Não') and
     (DM.qryInterfaceEXCLUIR.AsString = 'Não') then begin
    Alerta('O usuário ' + QuotedStr(DM.SisControl.Usuario.Usuario) + ' não possui permissão suficiente para acessar esta parte do programa.');
    Exit;
  end;

  with Self.Create(FormPai) do begin
    FormularioPai := FormPai;
    if not Assigned(FormPai) then
      ShowModal
    else begin
      if FormPai.FormStyle = fsMDIForm then
        FormStyle := fsMDIChild
      else
        ShowModal;
    end;
    if (KeyField <> '') then begin
      if Assigned(Query) then
        Query.Refresh;
      Result := cdsGrid.FieldByName(KeyField).AsVariant;
    end;
  end;
  fMenu(FormPai);
end;

procedure T_frmCadGrid2.FormDestroy(Sender: TObject);
begin
  Self := nil;
end;

procedure T_frmCadGrid2.bitExcluirClick(Sender: TObject);
begin
  if Pergunta(Exclusao) then
  begin
    qryCad.Delete;
    cdsGrid.Refresh;
  end;
end;

procedure T_frmCadGrid2.grdDblClick(Sender: TObject);
begin
  if (qryCad.State in [dsBrowse]) and (bitAlterar.Visible or bitInserir.Visible) then
    bitAlterarClick(bitAlterar);
end;

procedure T_frmCadGrid2.FormActivate(Sender: TObject);
begin
  if DM.SisControl.Usuario.Codigo > 0 then begin
    if DM.qryInterfaceSOMENTELEITURA.AsString = 'Sim' then begin
      bitInserir.Visible := false;
      bitAlterar.Visible := false;
      bitExcluir.Visible := false;
      bitImprimir.Visible := false;
    end;
    if DM.qryInterfaceINSERIR.AsString = 'Não' then begin
      bitInserir.Visible := false;
    end;
    if DM.qryInterfaceALTERAR.AsString = 'Não' then begin
      bitAlterar.Visible := false;
    end;
    if DM.qryInterfaceIMPRIMIR.AsString = 'Não' then begin
      bitImprimir.Visible := false;
    end;
    if DM.qryInterfaceEXCLUIR.AsString = 'Não' then begin
      bitExcluir.Visible := false;
    end;
  end;
end;

procedure T_frmCadGrid2.btnFiltroClick(Sender: TObject);
begin
  Filtrar([SqlPadrao], [StringReplace(grd.Columns[cboCampo.ItemIndex].FieldName, '_', '.', [rfReplaceAll])
    + ' LIKE ' + QuotedStr('%' + edtTexto.Text + '%')], [qryGrid]);
  cdsGrid.Refresh;
end;

end.
