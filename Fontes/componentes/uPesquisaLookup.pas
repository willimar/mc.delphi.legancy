unit uPesquisaLookup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Provider, DB, DBClient,
  Mask, DBCtrls, DataSetProviderMC, ZQueryMC, ClientDataSetMC, DatasourceMC,
  DBEditMC, LabelMC, DBGridMC, EditMC, MCAPI, DBMCAPI;

type
  T_frmLookup = class(TForm)
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
    lblTexto: TLabelMC;
    Label4: TLabelMC;
    edtTexto: TEdit;
    cboCampo: TComboBox;
    Panel3: TPanel;
    Shape3: TShape;
    ToolBar1: TToolBar;
    bitExcluir: TSpeedButton;
    Panel5: TPanel;
    grd: TDBGridMC;
    dsrGrid: TDatasourceMC;
    cdsGrid: TClientDataSetMC;
    dspGrid: TDataSetProviderMC;
    DBMCAPI: TDBMCAPI;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edtTextoChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bitExcluirClick(Sender: TObject);
  private
    FSqlPadrao: string;
    FNewQuery: TZQueryMC;
    FlblCaption: string;
    FApplicationTitulo: string;
    { Private declarations }
  public
    { Public declarations }
    property SqlPadrao: string read FSqlPadrao write FSqlPadrao;
    property NewQuery: TZQueryMC read FNewQuery write FNewQuery;
    property lblCaption: string read FlblCaption write FlblCaption;
    property ApplicationTitulo: string read FApplicationTitulo write FApplicationTitulo;
    class function AbreJanela(const KeyField, DisplayField: String; FormPai: TForm;Fomulario: T_frmLookup; var Texto: TEditMC): Variant;
  end;

var
  _frmLookup: T_frmLookup;

implementation

{$R *.dfm}

procedure T_frmLookup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure T_frmLookup.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure T_frmLookup.FormShow(Sender: TObject);
var
  i: integer;
begin
  if Assigned(NewQuery) then begin
    dspGrid.DataSet := NewQuery;
  end;

  cdsGrid.Open;
  cboCampo.Items.Clear;
  for i := 0 to pred(cdsGrid.FieldCount) do
  begin
    cdsGrid.Fields[i].Visible := NewQuery.Fields[i].Visible;
    cdsGrid.Fields[i].DisplayLabel := NewQuery.Fields[i].DisplayLabel;
    if cdsGrid.Fields[i].Visible then
      cboCampo.Items.Add(cdsGrid.Fields[i].DisplayLabel);
  end;
  cboCampo.ItemIndex := 0;
  lblTitulo.Caption := lblCaption;
  Hint := ApplicationTitulo;
  lblTitulo.Hint := ApplicationTitulo + ' - ' + lblTitulo.Caption;
end;

procedure T_frmLookup.edtTextoChange(Sender: TObject);
begin
  DBMCAPI.Filtrar([SqlPadrao], [StringReplace(grd.Columns[cboCampo.ItemIndex].FieldName, '_', '.', [rfReplaceAll])
    + ' LIKE ' + QuotedStr('%' + edtTexto.Text + '%')], [NewQuery]);
  cdsGrid.Refresh;
end;

class function T_frmLookup.AbreJanela(const KeyField, DisplayField: String; FormPai: TForm; Fomulario: T_frmLookup; var Texto: TEditMC): Variant;
begin
  Fomulario.SqlPadrao := Fomulario.NewQuery.SQL.Text;

  Fomulario.ShowModal;
  if (KeyField <> '') then begin
    if Fomulario.cdsGrid.FieldByName(KeyField).AsString = '' then exit;
    Fomulario.DBMCAPI.Filtrar([Fomulario.SqlPadrao], [StringReplace(KeyField, '_', '.', [rfReplaceAll]) + '=' + Fomulario.cdsGrid.FieldByName(KeyField).AsString],
      [Fomulario.NewQuery]);
    Texto.Text := Fomulario.cdsGrid.FieldByName(DisplayField).AsString;
    Result := Fomulario.cdsGrid.FieldByName(KeyField).AsVariant;
  end;
end;

procedure T_frmLookup.FormDestroy(Sender: TObject);
begin
  Self := nil;
end;

procedure T_frmLookup.bitExcluirClick(Sender: TObject);
begin
  Close;
end;

end.
