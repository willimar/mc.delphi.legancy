unit DBFlatEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, TFlatEditUnit, DBCtrls, db, Criptografia;

type
  TDBFlatEdit = class(TFlatEdit)
  private
    { Private declarations }
    FDataLink : TFieldDataLink;
    FCriptografa : Boolean;
    FChave : Word;
    FValorDefault : String;
    FEnterTab : boolean;
    function GetDataSource : TDataSource;
    procedure SetDataSource(Value : TDataSource);
    function GetDataField : String;
    procedure SetDataField(Value : String);
    procedure DataChange(Sender : TObject);
    procedure UpdateData(Sender : TObject);
    procedure Change;override;
    procedure KeyPress(var Key : Char); override;
  protected
    { Protected declarations }
    procedure Notification(AComponent : TComponent; Operation : TOperation);override;

  public
    { Public declarations }
    constructor Create(AOwner : TComponent);override;
    destructor Destroy;override;

  published
    { Published declarations }
    property DataSource : TDataSource read GetDataSource write SetDataSource;
    property DataField : String read GetDataField write SetDataField;
    property Criptografia : Boolean read FCriptografa write FCriptografa;
    property Chave : Word read FChave write FChave;
    property ValorDefault : String read FValorDefault write FValorDefault;
    property EnterTab : Boolean read FEnterTab write FEnterTab;

  end;

procedure Register;

implementation

procedure TDBFlatEdit.Notification(AComponent : TComponent; Operation : TOperation);
begin
  if(Operation = opRemove) and (AComponent is TDataSource) and (FDataLink.DataSource = nil)then
    FDataLink.FieldName := '';
end;

constructor TDBFlatEdit.Create(AOwner : TComponent);
begin
  FDataLink := TFieldDataLink.Create;
  inherited Create(AOwner);
  Criptografia := false;
  Chave := 666;
  ValorDefault := '';
  EnterTab := true;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := UpdateData;
end;

destructor TDBFlatEdit.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;

function TDBFlatEdit.GetDataSource : TDataSource;
begin
  Result := FDataLink.Datasource;
end;

procedure TDBFlatEdit.SetDataSource(Value : TDataSource);
begin
  FDataLink.DataSource := Value;
end;

function TDBFlatEdit.GetDataField : String;
begin
  Result := FDataLink.FieldName;
end;

procedure TDBFlatEdit.SetDataField(Value : String);
begin
  FDataLink.FieldName := Value;
end;

procedure TDBFlatEdit.DataChange(Sender : TObject);
begin
  try
    if Criptografia then
      Text := descriptografa(FDataLink.Field.Text, Chave)
    else
      Text := FDataLink.Field.Text;
  except
    Text := ValorDefault;
  end;
end;

procedure TDBFlatEdit.UpdateData(Sender : TObject);
begin
  try
    if Criptografia then
      FDataLink.Field.Text := criptografa(Text, Chave)
    else
      FDataLink.Field.Text := Text;
  except
    begin
      FDataLink.Edit;
      if Criptografia then
        FDataLink.Field.Text := criptografa(Text, Chave)
      else
        FDataLink.Field.Text := Text;
    end;
  end;
end;

procedure TDBFlatEdit.Change;
begin
  FDataLink.Modified;
  inherited Change;
  try
    FDataLink.Edit;
    FDataLink.UpdateRecord;
  except

  end;
end;

procedure TDBFlatEdit.KeyPress(var Key : Char);
begin
  if (Key = #13) and EnterTab then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0)
  end;
end;

procedure Register;
begin
  RegisterComponents('DBFlatStyle', [TDBFlatEdit]);
end;

end.
