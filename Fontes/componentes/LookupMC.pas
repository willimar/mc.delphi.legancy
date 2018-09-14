unit LookupMC;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, PanelMC, EditMC, Buttons, Graphics, Forms,
  ZConnection, variants, DBCtrls, DB, ZQueryMC, StdCtrls, Windows, ComCtrls, LabelMC,
  DBMCAPI;

type
  TChecagemType = (ctDefault, ctCPF, ctCNPJ, ctCPFCNPJ);
  TLookupMC = class(TPanelMC)
  private
    FEditLookup: TEditMC;
    FbtnLookup: TSpeedButton;
    FKeyValue: variant;
    FFormPai: TForm;
    FApplicationNome: string;
    FDataLink: TFieldDataLink;
    FLookupDataLink: TFieldDataLink;
    FJanelaTitulo: string;
    FChange: TNotifyEvent;
    FSQL: TStrings;
    FChecagemType: TChecagemType;
    FTabSheet: TTabSheet;
    FLookupKeyField: string;
    FLookupDisplayField: string;
    FRequerido: boolean;
    DBMCAPI: TDBMCAPI;

    function GetDataField: string;
    function GetDataSource: TDataSource;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(const Value: TDataSource);
    function GetDataSourceList: TDataSource;
    procedure SetDataSourceList(const Value: TDataSource);
    procedure SetSql(const Value: TStrings);
    procedure OnGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure DoChange(Sender: TObject);
    procedure Enter(Sender: TObject);
    function GetRotulo: TLabelMC;
    procedure SetRotulo(const Value: TLabelMC);
    { Private declarations }
  protected
    { Protected declarations }
  public
    {propriedades publicas}
    property KeyValue: variant read FKeyValue write FKeyValue;
    property EditLookup: TEditMC read FEditLookup;
    property btnLookup: TSpeedButton read FbtnLookup;
    property FormPai: TForm read FFormPai write FFormPai;
    procedure SetKeyValue(Value: String; SetaValor: Boolean = true);
    procedure ValidarDado;
    procedure DataChange(Sender: TObject);
  public
    { metodos publicos}
    constructor Create(AWoner: TComponent); override;
    procedure DoClick(Sender: TObject);virtual;
    procedure SetFocus; override;
    procedure Clear; virtual;
  published
    {publicando novas propriedades}
    property ApplicationNome: string read FApplicationNome write FApplicationNome;
    property JanelaTitulo: string read FJanelaTitulo write FJanelaTitulo;
    property LookupDisplayField: string read FLookupDisplayField write FLookupDisplayField;
    property LookupKeyField: string read FLookupKeyField write FLookupKeyField;
    property LookupListSource: TDataSource read GetDataSourceList write SetDataSourceList;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property DataField: string read GetDataField write SetDataField;
    property SQL: TStrings read FSQL write SetSql;
    property Requerido: boolean read FRequerido write FRequerido default false;
    property ChecagemTipo: TChecagemType read FChecagemType write FChecagemType default ctDefault;
    property TabSheet: TTabSheet read FTabSheet write FTabSheet;
    property Rotulo: TLabelMC read GetRotulo write SetRotulo default nil;
  published
    {publicando novos eventos}
    property OnChange: TNotifyEvent read FChange write FChange;
  end;

procedure Register;

implementation

uses uPesquisaLookup;

procedure Register;
begin
  RegisterComponents('MC DBVisuais', [TLookupMC]);
end;

{ TLookupMC }
{$R imgLookup.res}

procedure TLookupMC.Clear;
begin
  FEditLookup.Text := '';
  KeyValue := null;
  FDataLink.Field.AsString := '';
end;

procedure TLookupMC.DoClick(Sender: TObject);
begin
  if (DataSource.DataSet.State in [dsBrowse, dsInactive]) then exit;
  FEditLookup.SetFocus;
  _frmLookup := T_frmLookup.Create(FormPai);
  _frmLookup.lblTitulo.Hint := ApplicationNome + ' - ' + _frmLookup.lblTitulo.Caption;
  _frmLookup.Hint := ApplicationNome;
  _frmLookup.NewQuery := TZQueryMC(LookupListSource.DataSet);
  _frmLookup.NewQuery.Close;
  _frmLookup.NewQuery.SQL := SQL;
  _frmLookup.NewQuery.Open;
  _frmLookup.lblCaption := JanelaTitulo;
  _frmLookup.Caption := 'Pesquisando registro';
  _frmLookup.ApplicationTitulo := ApplicationNome;
  FDataLink.Field.OnGetText := OnGetText;
  KeyValue := T_frmLookup.AbreJanela(LookupKeyField, LookupDisplayField, FormPai, _frmLookup, FEditLookup);
  FDataLink.Field.AsVariant := KeyValue;
end;

constructor TLookupMC.Create(AWoner: TComponent);
begin
  inherited Create(AWoner);
  BevelOuter := bvNone;

  FEditLookup := TEditMC.Create(self);
  FEditLookup.Name := 'txtLookup';
  FEditLookup.Parent := Self;
  Caption := '';
  Height := 22;
  FEditLookup.Width := Width - 23;
  FEditLookup.Height := 21;
  FEditLookup.Anchors := [akLeft,akTop,akRight,akBottom];

  FbtnLookup := TSpeedButton.Create(self);
  FbtnLookup.Name := 'btnLookup';
  FbtnLookup.Parent := Self;
  FbtnLookup.Align := alRight;
  FbtnLookup.Width := 22;
  FbtnLookup.Flat := true;
  FbtnLookup.Glyph.LoadFromResourceName(HInstance, 'PESQUISA');
  FbtnLookup.OnClick := DoClick;
  FbtnLookup.Cursor := crHandPoint;

  Caption := '';
  FEditLookup.Text := '';
  FbtnLookup.Caption := '';

  FDataLink := TFieldDataLink.Create;
  FLookupDataLink := TFieldDataLink.Create;

  FEditLookup.OnChange := OnChange;

  FSQL := TStringList.Create;
  FEditLookup.OnChange := DoChange;
  FEditLookup.OnEnter := Enter;
  FEditLookup.ReadOnly := true;
  FDataLink.OnDataChange := DataChange;


end;

function TLookupMC.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

function TLookupMC.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

function TLookupMC.GetDataSourceList: TDataSource;
begin
  Result := FLookupDataLink.DataSource;
end;

procedure TLookupMC.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

procedure TLookupMC.SetDataSource(const Value: TDataSource);
begin
  FDataLink.DataSource := Value;
end;

procedure TLookupMC.SetDataSourceList(const Value: TDataSource);
begin
  FLookupDataLink.DataSource := Value;
end;

procedure TLookupMC.SetFocus;
begin
  inherited;
  FEditLookup.SetFocus;
end;

procedure TLookupMC.SetSql(const Value: TStrings);
begin
  if SQL.Text <> Value.Text then
  begin
    SQL.BeginUpdate;
    try
      SQL.Assign(Value);
    finally
      SQL.EndUpdate;
    end;
  end;
end;

procedure TLookupMC.OnGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if not (DataSource.DataSet.State in [dsBrowse, dsInactive]) then exit;
  DBMCAPI.Filtrar([SQL.Text], [StringReplace(LookupKeyField, '_', '.', [rfReplaceAll]) + '=' + Sender.AsString],
      [TZQueryMC(LookupListSource.DataSet)]);
  FEditLookup.Text := LookupListSource.DataSet.FieldByName(LookupDisplayField).AsString;
end;

procedure TLookupMC.DoChange(Sender: TObject);
begin
  if FDataLink.Field.AsString = '' then begin
    TZQueryMC(LookupListSource.DataSet).Close;
    exit;
  end;
  DBMCAPI.Filtrar([SQL.Text], [StringReplace(LookupKeyField, '_', '.', [rfReplaceAll]) + '=' +
    FDataLink.Field.AsString], [TZQueryMC(LookupListSource.DataSet)]);
end;

procedure TLookupMC.Enter(Sender: TObject);
begin
  FEditLookup.ReadOnly := (DataSource.DataSet.State in [dsBrowse, dsInactive]);
end;

procedure TLookupMC.SetKeyValue(Value: String; SetaValor: Boolean = true);
begin
  if (DataSource.DataSet.State in [dsBrowse, dsInactive]) then exit;
  DBMCAPI.Filtrar([SQL.Text], [StringReplace(LookupKeyField, '_', '.', [rfReplaceAll]) + '=' +
    QuotedStr(Value)], [TZQueryMC(LookupListSource.DataSet)]);
  if SetaValor then begin
    FEditLookup.Text := LookupListSource.DataSet.FieldByName(LookupDisplayField).AsString;
    KeyValue := LookupListSource.DataSet.FieldByName(LookupKeyField).AsVariant;
    FDataLink.Field.AsVariant := KeyValue;
  end;
end;

procedure TLookupMC.ValidarDado;
begin
  if FDataLink.Field = nil then Exit;
  case FChecagemType of
    ctDefault: begin
      if (FEditLookup.Text = '') and Requerido then
      begin
        Application.MessageBox(PCHAR('O Campo ''' + FDataLink.Field.DisplayLabel + ''' é de preenchimento obrigatório.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION);
        FEditLookup.Color := clSkyBlue;
        if TabSheet <> nil then
          TabSheet.Show;
        SetFocus;
        abort;
      end;
    end;
    ctCPF: begin
      if not DBMCAPI.ValidarCpf(FEditLookup.Text) then begin
        Application.MessageBox(PCHAR('O CPF informado é inválido.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION);
        FEditLookup.Color := clSkyBlue;
        if TabSheet <> nil then
          TabSheet.Show;
        SetFocus;
        abort;
      end;
    end;
    ctCNPJ: begin
      if not DBMCAPI.ValidarCnpj(FEditLookup.Text) then begin
        Application.MessageBox(PCHAR('O CNPJ informado é inválido.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION);
        FEditLookup.Color := clSkyBlue;
        if TabSheet <> nil then
          TabSheet.Show;
        SetFocus;
        abort;
      end;
    end;
    ctCPFCNPJ: begin
      if not DBMCAPI.ValidarCpf(FEditLookup.Text) and not DBMCAPI.ValidarCnpj(FEditLookup.Text) then begin
        Application.MessageBox(PCHAR('O CPF ou CNPJ informado é inválido.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION);
        FEditLookup.Color := clSkyBlue;
        if TabSheet <> nil then
          TabSheet.Show;
        SetFocus;
        abort;
      end;
    end;
  end;
end;

function TLookupMC.GetRotulo: TLabelMC;
begin
  Result := FEditLookup.Rotulo;
end;

procedure TLookupMC.SetRotulo(const Value: TLabelMC);
begin
  FEditLookup.Rotulo := Value;
end;

procedure TLookupMC.DataChange(Sender: TObject);
begin
  if not Assigned(FDataLink.Field) then Exit;
  if FDataLink.Field.AsString <> '' then begin
    DBMCAPI.RetornarPesquisa(SQL.Text + DBMCAPI.iif(POS('WHERE', SQL.Text)>0, ' AND ', ' WHERE ') + StringReplace(LookupKeyField, '_', '.', [rfReplaceAll]) + '=' + FDataLink.Field.AsString, [LookupDisplayField], [FEditLookup], TZQueryMC(LookupListSource.DataSet).Connection);
    SetKeyValue(FDataLink.Field.AsString, false);
  end;
end;

end.
