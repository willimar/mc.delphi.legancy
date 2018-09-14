unit DBFlatRadioButton;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TFlatRadioButtonUnit, DBCtrls, db, Criptografia;

type
  TDBFlatRadioButton = class(TFlatRadioButton)
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
    procedure Click;override;
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

procedure TDBFlatRadioButton.Notification(AComponent : TComponent; Operation : TOperation);
begin
  if(Operation = opRemove) and (AComponent is TDataSource) and (FDataLink.DataSource = nil)then
    FDataLink.FieldName := '';
end;

constructor TDBFlatRadioButton.Create(AOwner : TComponent);
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

destructor TDBFlatRadioButton.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;

function TDBFlatRadioButton.GetDataSource : TDataSource;
begin
  Result := FDataLink.Datasource;
end;

procedure TDBFlatRadioButton.SetDataSource(Value : TDataSource);
begin
  FDataLink.DataSource := Value;
end;

function TDBFlatRadioButton.GetDataField : String;
begin
  Result := FDataLink.FieldName;
end;

procedure TDBFlatRadioButton.SetDataField(Value : String);
begin
  FDataLink.FieldName := Value;
end;

procedure TDBFlatRadioButton.DataChange(Sender : TObject);
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

procedure TDBFlatRadioButton.UpdateData(Sender : TObject);
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

procedure TDBFlatRadioButton.Click;
begin
  FDataLink.Modified;
  inherited Click;
  try
    FDataLink.Edit;
    FDataLink.UpdateRecord;
  except

  end;
end;

procedure TDBFlatRadioButton.KeyPress(var Key : Char);
begin
  if (Key = #13) and EnterTab then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0)
  end;
end;
procedure Register;
begin
  RegisterComponents('DBFlatStyle', [TDBFlatRadioButton]);
end;

end.
