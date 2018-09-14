unit uPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DB, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC, SpeedButtonMC;

type
  T_frmPesquisa = class(T_frmCadGrid2)
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure cdsGridAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
  private
    { Private declarations }
    NewQuery: TZQueryMC;
    FFieldNome: String;
    FValor: Variant;

  public
    { Public declarations }
    class function AbrePesquisa(const KeyField, cCaption: String; FormPai: TForm; Query: TZQueryMC; FontSize: Integer = 0): Variant;
    property Valor: Variant read FValor write FValor;
    property FieldNome: String read FFieldNome write FFieldNome;
  end;

var
  _frmPesquisa: T_frmPesquisa;

implementation

uses uDM, uDBFunc, uToolFunc;

{$R *.dfm}

{ T_frmCadGrid1 }

{ T_frmPesquisa }

class function T_frmPesquisa.AbrePesquisa(const KeyField, cCaption: String;
  FormPai: TForm; Query: TZQueryMC; FontSize: Integer): Variant;
begin
  with Self.Create(FormPai) do begin
    if (Query.State in [dsBrowse, dsEdit]) then begin
      FieldNome := KeyField;
      Valor := Query.FieldByName(KeyField).AsVariant
    end;
    NewQuery := Query;
    dspGrid.DataSet := NewQuery;
    NewQuery.Open;
    lblTitulo.Caption := cCaption;
    if FontSize > 0 then begin
      lblTitulo.Font.Size := FontSize;
      lblTitulo.Font.Style := [fsBold];
    end;
    if not Assigned(FormPai) then
      ShowModal
    else begin
      if FormPai.FormStyle = fsMDIForm then
        FormStyle := fsMDIChild
      else
        ShowModal;
    end;

    if (KeyField <> '') then
      if ModalResult = mrOK then
        Result := cdsGrid.FieldByName(KeyField).AsVariant
      else
        Result := Valor;
  end;
end;

procedure T_frmPesquisa.FormShow(Sender: TObject);
var
  i: word;
begin
  (*inherited;*)
  cdsGrid.Open;
  cboCampo.Items.Clear;
  SqlPadrao := NewQuery.SQL.Text;

  lblTitulo.Hint := DM.SisControl.ApplicationNome + ' - ' + lblTitulo.Caption;
  Self.Hint := DM.SisControl.ApplicationNome;

  for i := 0 to pred(cdsGrid.FieldCount) do
  begin
    if cdsGrid.Fields[i].Visible then begin
      cboCampo.Items.Add(cdsGrid.Fields[i].DisplayLabel);
    end;
    if (NewQuery.Fields[i] is TFloatField) then begin
      TFloatField(cdsGrid.Fields[i]).currency := TFloatField(NewQuery.Fields[i]).currency;
    end;
    if NewQuery.Fields[i].Origin = 'CHECK' then
      grd.FieldCheckBox := NewQuery.Fields[i];
  end;

  cboCampo.ItemIndex := 0;
  btnFiltroClick(nil);
  cdsGrid.Locate(FieldNome, Valor, [loCaseInsensitive]);
end;

procedure T_frmPesquisa.cdsGridAfterOpen(DataSet: TDataSet);
var
  i: word;
begin
  inherited;
  for i := 0 to pred(NewQuery.FieldCount) do begin
    cdsGrid.Fields[i].DisplayLabel := NewQuery.Fields[i].DisplayLabel;
    cdsGrid.Fields[i].Visible := NewQuery.Fields[i].Visible;
  end;
end;

procedure T_frmPesquisa.FormCreate(Sender: TObject);
begin
  (*inherited;*)

end;

procedure T_frmPesquisa.SpeedButton1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure T_frmPesquisa.btnFiltroClick(Sender: TObject);
begin
  //inherited;
  Filtrar([SqlPadrao], [Substituir('_', '.', grd.Columns[cboCampo.ItemIndex].FieldName)
    + ' LIKE ' + QuotedStr('%' + edtTexto.Text + '%')], [NewQuery]);
  cdsGrid.Refresh;
end;

end.
