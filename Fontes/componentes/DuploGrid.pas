unit DuploGrid;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, PanelMC, db, DBGridMC, ClientDataSetMC,
  DataSetProviderMC, DataSourceMC, SpeedButtonMC, dbgrids, ZQueryMC, Provider;

type
  TDuploGridMC = class(TPanelMC)
  private
    FGridOrigem: TDBGridMC;
    FGridDestino: TDBGridMC;
    FcdsOrigem: TClientDataSetMC;
    FcdsDestino: TClientDataSetMC;
    FdspOrigem: TDataSetProviderMC;
    FdspDestino: TDataSetProviderMC;
    FdsrOrigem: TDataSourceMC;
    FdsrDestino: TDataSourceMC;
    FActive: Boolean;
    FbtnAdiciona: TSpeedButtonMC;
    FbtnDeleta: TSpeedButtonMC;
    FbtnAdicionaTodos: TSpeedButtonMC;
    FbtnDeletaTodos: TSpeedButtonMC;
    FKeyField: String;
    FKeyFieldDestino: string;
    FDataSetControle: TDataSet;
    FModificado: boolean;
    FIndexKey: string;
    FLoookupField: string;
    FDataSetLookup: TDataSet;

    function GetDestino: TDataSet;
    function GetOrigem: TDataSet;
    procedure SetDestino(const Value: TDataSet);
    procedure SetOrigem(const Value: TDataSet);
    procedure SetActive(const Value: Boolean);
    function GetBtnLeft: Integer;
    function GetLarguraGriddestino: Integer;
    function GetLarguraGridOrigem: Integer;
    procedure SetBtnLeft(const Value: Integer);
    procedure SetLarguraGriddestino(const Value: Integer);
    procedure SetLarguraGridOrigem(const Value: Integer);
    function GetBtnTop: Integer;
    procedure SetBtnTop(const Value: Integer);
    procedure AdicionaClick(Sender: TObject);
    procedure AdicionaTodosClick(Sender: TObject);
    procedure DetelaClick(Sender: TObject);
    procedure DeletaTodosClick(Sender: TObject);
    procedure DataChange(Sender: TObject);
    function GetKeyValueDetino: Variant;
    { Private declarations }
  protected
    { Protected declarations }
    property dspOrigem: TDataSetProviderMC read FdspOrigem write FdspOrigem;
    property dspDestino: TDataSetProviderMC read FdspDestino write FdspDestino;
    property cdsOrigem: TClientDataSetMC read FcdsOrigem write FcdsOrigem;
    property cdsDestino: TClientDataSetMC read FcdsDestino write FcdsDestino;
    property dsrOrigem: TDataSourceMC read FdsrOrigem write FdsrOrigem;
    property dsrDestino: TDataSourceMC read FdsrDestino write FdsrDestino;
    property btnAdicionaTodos: TSpeedButtonMC read FbtnAdicionaTodos write FbtnAdicionaTodos;
    property btnAdiciona: TSpeedButtonMC read FbtnAdiciona write FbtnAdiciona;
    property btnDeletaTodos: TSpeedButtonMC read FbtnDeletaTodos write FbtnDeletaTodos;
    property btnDeleta: TSpeedButtonMC read FbtnDeleta write FbtnDeleta;
  public
    { Public declarations }
    constructor Create(AWoner: TComponent); override;
    destructor Destroy; override;
    procedure Open(cKeyValue: variant);virtual;
    procedure Close;virtual;
    procedure ApplyUpdates(KeyValue: Variant);virtual;
    procedure Resize; override;
    procedure TransferirRegistros(GridInicio, GridFim: TDBGridMC; Todos: Boolean);virtual;
    property KeyValueDetino: Variant read GetKeyValueDetino;
    property Modificado: boolean read FModificado;
  published
    { Published declarations }
    property DataSetOrigem: TDataSet read GetOrigem write SetOrigem;
    property DataSetDestino: TDataSet read GetDestino write SetDestino;
    property GridOrigem: TDBGridMC read FGridOrigem;
    property GridDestino: TDBGridMC read FGridDestino;
    property Active: Boolean read FActive write SetActive default false;
    property BtnLeft: Integer read GetBtnLeft write SetBtnLeft;
    property BtnTop: Integer read GetBtnTop write SetBtnTop;
    property LarguraGridOrigem: Integer read GetLarguraGridOrigem write SetLarguraGridOrigem;
    property LarguraGridDestino: Integer read GetLarguraGridDestino write SetLarguraGridDestino;
    property KeyField: String read FKeyField write FKeyField;
    property IndexKey: string read FIndexKey write FIndexKey;
    property LoookupField: string read FLoookupField write FLoookupField;
    property DataSetLookup: TDataSet read FDataSetLookup write FDataSetLookup;
    property KeyFieldDestino: string read FKeyFieldDestino write FKeyFieldDestino;
    property DataSetControle: TDataSet read FDataSetControle write FDataSetControle;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('MC DBVisuais', [TDuploGridMC]);
end;

{$R imgDuploGrid.res}
{ TDuploGridMC }

procedure TDuploGridMC.AdicionaClick(Sender: TObject);
begin
  TransferirRegistros(FGridOrigem, FGridDestino, false);
end;

procedure TDuploGridMC.AdicionaTodosClick(Sender: TObject);
begin
  TransferirRegistros(FGridOrigem, FGridDestino, true);
end;

procedure TDuploGridMC.ApplyUpdates(KeyValue: Variant);
begin
  try
    if not FModificado then
      exit;
    FdsrDestino.Enabled := false;
    FcdsDestino.First;
    FModificado := false;
    while not FcdsDestino.Eof do begin
      FcdsDestino.Edit;
      FcdsDestino.FieldByName(FKeyField).AsVariant := KeyValue;
      FcdsDestino.Post;
      FcdsDestino.Next;
    end;
    FcdsDestino.ApplyUpdates(0);
  finally
    FdsrDestino.Enabled := true;
  end;
end;

procedure TDuploGridMC.Close;
begin
  Active := false;
end;

constructor TDuploGridMC.Create(AWoner: TComponent);
begin
  inherited;
  Width := 350;
  Height := 190;
  FModificado := false;

  FdspOrigem := TDataSetProviderMC.Create(Self);
  FdspDestino := TDataSetProviderMC.Create(Self);
  FdspOrigem.SetSubComponent(true);
  FdspOrigem.Name := 'dspOrigem';
  FdspOrigem.ResolveToDataSet := true;
  FdspOrigem.Options := [poAllowMultiRecordUpdates,poAutoRefresh];
  FdspDestino.SetSubComponent(true);
  FdspDestino.Name := 'dspDestino';
  FdspDestino.Options := [poAutoRefresh];
  FdspDestino.ResolveToDataSet := true;
  FdspDestino.Options := [poAllowMultiRecordUpdates,poAutoRefresh];

  FcdsOrigem := TClientDataSetMC.Create(Self);
  FcdsDestino := TClientDataSetMC.Create(Self);
  FcdsOrigem.SetSubComponent(true);
  FcdsDestino.SetSubComponent(true);
  FcdsOrigem.Name := 'cdsOrigem';
  FcdsDestino.Name := 'cdsDestino';
  FcdsOrigem.ProviderName := 'dspOrigem';
  FcdsDestino.ProviderName := 'dspDestino';

  FdsrOrigem := TDatasourceMC.Create(Self);
  FdsrDestino := TDatasourceMC.Create(Self);
  FdsrOrigem.DataSet := FcdsOrigem;
  FdsrDestino.DataSet := FcdsDestino;
  FdsrOrigem.SetSubComponent(true);
  FdsrDestino.SetSubComponent(true);
  FdsrOrigem.Name := 'dsrOrigem';
  FdsrDestino.Name := 'dsrDestino';
  FdsrOrigem.OnStateChange := DataChange;
  FdsrDestino.OnStateChange := DataChange;

  FGridOrigem := TDBGridMC.Create(Self);
  FGridDestino  := TDBGridMC.Create(Self);
  FGridOrigem.SetSubComponent(true);
  FGridDestino.SetSubComponent(true);
  FGridOrigem.Parent := Self;
  FGridDestino.Parent := Self;
  FGridOrigem.Align := alLeft;
  FGridDestino.Align := alRight;
  FGridOrigem.Width := 160;
  FGridDestino.Width := 160;
  FGridOrigem.Name := 'Origem';
  FGridDestino.Name := 'Destino';
  FGridOrigem.DataSource := FdsrOrigem;
  FGridDestino.DataSource := FdsrDestino;
  FGridOrigem.OnDblClick := AdicionaClick;
  FGridDestino.OnDblClick := DetelaClick;
  FGridOrigem.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
  FGridDestino.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];

  FbtnAdiciona := TSpeedButtonMC.Create(Self);
  FbtnDeleta := TSpeedButtonMC.Create(Self);
  FbtnAdicionaTodos := TSpeedButtonMC.Create(Self);
  FbtnDeletaTodos := TSpeedButtonMC.Create(Self);
  FbtnAdiciona.SetSubComponent(true);
  FbtnDeleta.SetSubComponent(true);
  FbtnAdicionaTodos.SetSubComponent(true);
  FbtnDeletaTodos.SetSubComponent(true);
  FbtnAdiciona.Name := 'btnAdiciona';
  FbtnDeleta.Name := 'btnDeleta';
  FbtnAdicionaTodos.Name := 'btnAdicionaTodos';
  FbtnDeletaTodos.Name := 'btnDeletaTodos';
  FbtnAdiciona.Parent := Self;
  FbtnDeleta.Parent := Self;
  FbtnAdicionaTodos.Parent := Self;
  FbtnDeletaTodos.Parent := Self;
  FbtnAdiciona.Height := 19;
  FbtnDeleta.Height := 19;
  FbtnAdicionaTodos.Height := 19;
  FbtnDeletaTodos.Height := 19;
  FbtnAdiciona.Width := 21;
  FbtnDeleta.Width := 21;
  FbtnAdicionaTodos.Width := 21;
  FbtnDeletaTodos.Width := 21;
  FbtnAdiciona.Left := 165;
  FbtnDeleta.Left := 165;
  FbtnAdicionaTodos.Left := 165;
  FbtnDeletaTodos.Left := 165;
  FbtnAdicionaTodos.Top := 63;
  FbtnAdiciona.Top := 82;
  FbtnDeleta.Top := 102;
  FbtnDeletaTodos.Top := 122;
  FbtnAdiciona.Flat := true;
  FbtnDeleta.Flat := true;
  FbtnAdicionaTodos.Flat := true;
  FbtnDeletaTodos.Flat := true;
  FbtnAdiciona.Glyph.LoadFromResourceName(HInstance, 'ADICIONA');
  FbtnDeleta.Glyph.LoadFromResourceName(HInstance, 'DELETA');
  FbtnAdicionaTodos.Glyph.LoadFromResourceName(HInstance, 'ADICIONATODOS');
  FbtnDeletaTodos.Glyph.LoadFromResourceName(HInstance, 'DELETATODOS');
  FbtnAdiciona.Cursor := crHandPoint;
  FbtnDeleta.Cursor := crHandPoint;
  FbtnAdicionaTodos.Cursor := crHandPoint;
  FbtnDeletaTodos.Cursor := crHandPoint;
  FbtnAdiciona.OnClick := AdicionaClick;
  FbtnDeleta.OnClick := DetelaClick;
  FbtnAdicionaTodos.OnClick := AdicionaTodosClick;
  FbtnDeletaTodos.OnClick := DeletaTodosClick;
end;

procedure TDuploGridMC.DataChange(Sender: TObject);
begin
  (*FdsrDestino.Enabled := false;
  FdsrOrigem.Enabled := false;*)
  if (FcdsOrigem.State in [dsInactive]) or (FcdsDestino.State in [dsInactive]) then begin
    FbtnAdiciona.Enabled := false;
    FbtnDeleta.Enabled := false;
    FbtnAdicionaTodos.Enabled := false;
    FbtnDeletaTodos.Enabled := false;
  end
  else begin
    FbtnAdiciona.Enabled := true;
    FbtnDeleta.Enabled := true;
    FbtnAdicionaTodos.Enabled := true;
    FbtnDeletaTodos.Enabled := true;
  end;
  (*FdsrDestino.Enabled := true;
  FdsrOrigem.Enabled := true;*)
end;

procedure TDuploGridMC.DeletaTodosClick(Sender: TObject);
begin
  TransferirRegistros(FGridDestino, FGridOrigem, true);
end;

destructor TDuploGridMC.Destroy;
begin
  {Close;}
  FreeAndNil(FGridOrigem);
  FreeAndNil(FGridDestino);
  FreeAndNil(FcdsOrigem);
  FreeAndNil(FcdsDestino);
  FreeAndNil(FdspOrigem);
  FreeAndNil(FdspDestino);
  FreeAndNil(FdsrOrigem);
  FreeAndNil(FdsrDestino);
  FreeAndNil(FbtnAdiciona);
  FreeAndNil(FbtnDeleta);
  FreeAndNil(FbtnAdicionaTodos);
  FreeAndNil(FbtnDeletaTodos);
  inherited;
end;

procedure TDuploGridMC.DetelaClick(Sender: TObject);
begin
  TransferirRegistros(FGridDestino, FGridOrigem, false);
end;

function TDuploGridMC.GetBtnLeft: Integer;
begin
  Result := FbtnAdiciona.Left;
end;

function TDuploGridMC.GetBtnTop: Integer;
begin
  Result := FbtnAdicionaTodos.Top;
end;

function TDuploGridMC.GetDestino: TDataSet;
begin
  Result := FdspDestino.DataSet;
end;

function TDuploGridMC.GetKeyValueDetino: Variant;
begin
  Result := DataSetDestino.FieldByName(FKeyFieldDestino).AsVariant;
end;

function TDuploGridMC.GetLarguraGriddestino: Integer;
begin
  Result := FGridDestino.Width;
end;

function TDuploGridMC.GetLarguraGridOrigem: Integer;
begin
  Result := FGridOrigem.Width;
end;

function TDuploGridMC.GetOrigem: TDataSet;
begin
  Result := FdspOrigem.DataSet;
end;

procedure TDuploGridMC.Open(cKeyValue: variant);
begin
  TZQueryMC(DataSetOrigem).ParamByName(FKeyField).Value := cKeyValue;
  TZQueryMC(DataSetDestino).ParamByName(FKeyField).Value := cKeyValue;
  Active := false;
  Active := true;
end;

procedure TDuploGridMC.Resize;
begin
  inherited;
  Caption := '';
  BtnLeft := trunc(Width / 2) - 10;
  BtnTop := trunc(Height / 2) - 38;
  FGridOrigem.Width := trunc(Width / 2) - 12;
  FGridDestino.Width := trunc(Width / 2) - 12;
end;

procedure TDuploGridMC.SetActive(const Value: Boolean);
var
  i: integer;
begin
  try
    if Value then begin
      if not Assigned(DataSetOrigem) then
        raise Exception.Create('Você esqueceu de informar a origem.');
      if not Assigned(DataSetDestino) then
        raise Exception.Create('Você esqueceu de informar o destino.');
      if DataSetOrigem = DataSetDestino then
        raise Exception.Create('Origem não pode ser a mesma do destino.');
      FModificado := false;
      FdsrDestino.Enabled := false;
      FdsrOrigem.Enabled := false;
      DataSetOrigem.Close;
      DataSetDestino.Close;
      DataSetOrigem.Open;
      DataSetDestino.Open;
      FcdsOrigem.Open;
      FcdsDestino.Open;
      for i := 0 to Pred(DataSetOrigem.FieldCount) do begin
        FcdsOrigem.Fields[i].DisplayLabel := DataSetOrigem.Fields[i].DisplayLabel;
        FcdsOrigem.Fields[i].ProviderFlags := DataSetOrigem.Fields[i].ProviderFlags;
        FcdsOrigem.Fields[i].Visible := DataSetOrigem.Fields[i].Visible;
        FcdsOrigem.Fields[i].ReadOnly := DataSetOrigem.Fields[i].ReadOnly;
      end;
      for i := 0 to Pred(DataSetDestino.FieldCount) do begin
        FcdsDestino.Fields[i].DisplayLabel := DataSetDestino.Fields[i].DisplayLabel;
        FcdsDestino.Fields[i].ProviderFlags := DataSetDestino.Fields[i].ProviderFlags;
        FcdsDestino.Fields[i].Visible := DataSetDestino.Fields[i].Visible;
        FcdsOrigem.Fields[i].ReadOnly := DataSetOrigem.Fields[i].ReadOnly;
      end;
      FcdsDestino.First;
      FcdsDestino.IndexFieldNames := IndexKey;
      while not FcdsDestino.Eof do begin
        FcdsDestino.Edit;
        if TZQueryMC(DataSetLookup).Locate(IndexKey, FcdsDestino.FieldValues[IndexKey], [loCaseInsensitive]) then
          FcdsDestino.FieldByName(LoookupField).AsVariant := DataSetLookup.FieldByName(LoookupField).AsVariant;
        FcdsDestino.Post;
        FcdsDestino.Next;
      end;
      FcdsDestino.First;
      FdsrDestino.Enabled := true;
      FdsrOrigem.Enabled := true;
    end
    else begin
      FcdsOrigem.Close;
      FcdsDestino.Close;
    end;
    FActive := Value;
  finally

  end;
end;

procedure TDuploGridMC.SetBtnLeft(const Value: Integer);
begin
  FbtnAdiciona.Left := value;
  FbtnDeleta.Left := value;
  FbtnAdicionaTodos.Left := value;
  FbtnDeletaTodos.Left := value;
end;

procedure TDuploGridMC.SetBtnTop(const Value: Integer);
begin
  FbtnAdicionaTodos.Top := Value;
  FbtnAdiciona.Top := Value + 19;
  FbtnDeleta.Top := Value + 38;
  FbtnDeletaTodos.Top := Value + 57;
end;

procedure TDuploGridMC.SetDestino(const Value: TDataSet);
begin
  FdspDestino.DataSet := Value;
end;

procedure TDuploGridMC.SetLarguraGriddestino(const Value: Integer);
begin
  FGridDestino.Width := Value;
end;

procedure TDuploGridMC.SetLarguraGridOrigem(const Value: Integer);
begin
  FGridOrigem.Width := Value;
end;

procedure TDuploGridMC.SetOrigem(const Value: TDataSet);
begin
  FdspOrigem.DataSet := Value;
end;

procedure TDuploGridMC.TransferirRegistros(GridInicio, GridFim: TDBGridMC;
  Todos: Boolean);
var
  i, j: integer;
begin
  if Assigned(DataSetControle) then begin
    if DataSetControle.State in [dsBrowse, dsInactive] then
      Exit;
  end;
  if not Todos then
  begin
    With GridInicio do
    Begin
      for i := 0 to Pred(SelectedRows.Count) do
      Begin
        Datasource.Dataset.Bookmark:= SelectedRows[i]; // posiciona nos registros selecionados do DBGrid
        GridFim.Datasource.Dataset.Append;
        for j := 0 to Pred(Datasource.Dataset.Fields.Count) do
        begin
          if j > GridFim.Datasource.Dataset.Fields.Count - 1 then Break;
          if not GridFim.Datasource.Dataset.Fields[j].ReadOnly then
            GridFim.Datasource.Dataset.Fields[j].Value := Datasource.Dataset.Fields[j].Value;
        end;
        GridFim.Datasource.Dataset.Post;
        Datasource.Dataset.Delete;
      end;
    end;
  end
  else
  begin
    With GridInicio do
    Begin
      Datasource.Dataset.First;
      while not Datasource.Dataset.Eof do
      begin
        GridFim.Datasource.Dataset.Append;
        for j := 0 to Pred(Datasource.Dataset.Fields.Count) do
        begin
          if j > GridFim.Datasource.Dataset.Fields.Count - 1 then Break;
          if not GridFim.Datasource.Dataset.Fields[j].ReadOnly then
            GridFim.Datasource.Dataset.Fields[j].Value := Datasource.Dataset.Fields[j].Value;
        end;
        GridFim.Datasource.Dataset.Post;
        Datasource.Dataset.Delete;
      end;
    end;
  end;
  GridInicio.SelectedRows.Clear;
  GridFim.SelectedRows.Clear;
  FModificado := true;
end;

end.
