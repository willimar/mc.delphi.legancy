unit FileStreamMC;

interface

uses
  SysUtils, Classes, db, DBCtrls, Buttons, ComCtrls, PanelMC, Forms, Controls,
  Dialogs, Windows;

type

  TFileStreamMC = class(TPanelMC)
  private
    { Private declarations }
    FDataLink: TFieldDataLink;
    FRequerido: boolean;
    FTabSheet: TTabSheet;
    FbtnSalvar: TSpeedButton;
    FbtnAbrir: TSpeedButton;
    FOpenDialog: TOpenDialog;
    FSaveDialog: TSaveDialog;
    FFilter: TStrings;
    FileStream: TFileStream;
    FNomeArquivo: string;

    function GetDataField: string;
    function GetDataSource: TDataSource;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(const Value: TDataSource);
    procedure Redimencionar(Sender: TObject);
    procedure AbrirClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure SetFilter(const Value: TStrings);
  protected
    { Protected declarations }
    property btnAbrir: TSpeedButton read FbtnAbrir;
    property btnSalvar: TSpeedButton read FbtnSalvar;
  public
    { Public declarations }
    procedure ValidarDado;
    procedure DataChange(Sender: TObject);
    constructor Create(AWoner: TComponent); override;
    destructor Destroy;override;
    procedure Clear;virtual;
  published
    { Published declarations }
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property DataField: string read GetDataField write SetDataField;
    property Requerido: boolean read FRequerido write FRequerido default false;
    property TabSheet: TTabSheet read FTabSheet write FTabSheet;
    property Filter: TStrings read FFilter write SetFilter;
    property NomeArquivo: string read FNomeArquivo write FNomeArquivo;
  end;

procedure Register;

implementation

uses ExtCtrls, Math;

procedure Register;
begin
  RegisterComponents('MC Kernel', [TFileStreamMC]);
end;

{ TFileStreamMC }
{$R imgFileStream.res}

procedure TFileStreamMC.AbrirClick(Sender: TObject);
var
  ArquivoNome: String;
begin
  FOpenDialog.Filter := StringReplace(Filter.Text, #13, '|', [rfReplaceAll]);
  FOpenDialog.Filter := StringReplace(FOpenDialog.Filter, #$A, '', [rfReplaceAll]);
  if FOpenDialog.Execute then begin
    try
      FileStream := TFileStream.Create(FOpenDialog.FileName, fmOpenRead);
      if not FDataLink.Field.IsBlob then
        raise Exception.Create('Este não é um local válido para salvar um arquivo.');
      FDataLink.DataSet.FieldByName(NomeArquivo).AsString := ExtractFileName(FOpenDialog.FileName);
      TBlobField(FDataLink.Field).LoadFromStream(FileStream);
      Application.MessageBox('Arquivo carregado.', PCHAR(Application.Title), MB_ICONINFORMATION);
    finally
      FreeAndNil(FileStream);
    end;
  end;
end;

procedure TFileStreamMC.Clear;
begin

end;

constructor TFileStreamMC.Create(AWoner: TComponent);
begin
  inherited Create(AWoner);
  FDataLink := TFieldDataLink.Create;
  BevelOuter := bvNone;
  Width := 45;
  Height := 22;
  OnResize := Redimencionar;

  FbtnAbrir := TSpeedButton.Create(Self);
  FbtnAbrir.SetSubComponent(true);
  FbtnAbrir.Left := 0;
  FbtnAbrir.Width := 22;
  FbtnAbrir.Anchors := [akRight,akBottom];
  FbtnAbrir.Glyph.LoadFromResourceName(HInstance, 'ABRIR');
  FbtnAbrir.Flat := true;
  FbtnAbrir.Cursor := crHandPoint;
  FbtnAbrir.Parent := Self;
  FbtnAbrir.OnClick := AbrirClick;

  FbtnSalvar := TSpeedButton.Create(Self);
  FbtnSalvar.SetSubComponent(true);
  FbtnSalvar.Anchors := [akRight,akBottom];
  FbtnSalvar.Glyph.LoadFromResourceName(HInstance, 'SALVAR');
  FbtnSalvar.Left := 23;
  FbtnSalvar.Width := 22;
  FbtnSalvar.Flat := true;
  FbtnSalvar.Cursor := crHandPoint;
  FbtnSalvar.Parent := Self;
  FbtnSalvar.OnClick := SalvarClick;

  FFilter := TStringList.Create;
  FFilter.Text := 'Todos os Arquivos|*.*';

  FOpenDialog := TOpenDialog.Create(Self);
  FOpenDialog.Filter := 'Todos os Arquivos|*.*';

  FSaveDialog := TSaveDialog.Create(Self);
  FSaveDialog.Filter := 'Todos os Arquivos|*.*';

  FDataLink.OnDataChange := DataChange;
end;

procedure TFileStreamMC.DataChange(Sender: TObject);
begin
  if FDataLink.DataSet.State in [dsBrowse] then begin
    FbtnAbrir.Enabled := false;
    FbtnSalvar.Enabled := true;
  end
  else if FDataLink.DataSet.State in [dsInactive] then begin
    FbtnAbrir.Enabled := false;
    FbtnSalvar.Enabled := false;
  end
  else if FDataLink.DataSet.State in [dsEdit, dsInsert] then begin
    FbtnAbrir.Enabled := true;
    FbtnSalvar.Enabled := true;
  end;
  if TBlobField(FDataLink.Field).IsNull then
    FbtnSalvar.Enabled := false
  else
    FbtnSalvar.Enabled := true;
end;

destructor TFileStreamMC.Destroy;
begin
  FreeAndNil(FbtnAbrir);
  FreeAndNil(FbtnSalvar);
  FreeAndNil(FOpenDialog);
  FreeAndNil(FSaveDialog);
  FreeAndNil(FDataLink);
  inherited Destroy;
end;

function TFileStreamMC.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

function TFileStreamMC.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TFileStreamMC.Redimencionar(Sender: TObject);
begin
  Width := 45;
  Height := 22;
  Caption := '';
end;

procedure TFileStreamMC.SalvarClick(Sender: TObject);
begin
  FSaveDialog.FileName := FDataLink.DataSet.FieldByName(NomeArquivo).asString;
  if FSaveDialog.Execute then begin
    try
      FileStream := TFileStream.Create(FSaveDialog.FileName, fmCreate);
      if not FDataLink.Field.IsBlob then
        raise Exception.Create('Esta não é uma origem válida de arquivo.');
      TBlobField(FDataLink.Field).SaveToStream(FileStream);
      Application.MessageBox('Arquivo salvo.', PCHAR(Application.Title), MB_ICONINFORMATION);
    finally
      FreeAndNil(FileStream);
    end;
  end;
end;

procedure TFileStreamMC.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

procedure TFileStreamMC.SetDataSource(const Value: TDataSource);
begin
  FDataLink.DataSource := Value;
end;

procedure TFileStreamMC.SetFilter(const Value: TStrings);
begin
  if Filter.Text <> Value.Text then
  begin
    Filter.BeginUpdate;
    try
      Filter.Assign(Value);
    finally
      Filter.EndUpdate;
    end;
    if TRIM(Filter.Text) = '' then
      Filter.Text := 'Todos os Arquivos|*.*';
  end;
end;

procedure TFileStreamMC.ValidarDado;
begin
  if TBlobField(FDataLink.Field).IsNull then begin
    Application.MessageBox(PCHAR('Não foi carregado nem um arquivo.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION);
    if TabSheet <> nil then
      TabSheet.Show;
    abort;
  end;
end;

end.
