unit DBFlatSpinEditInteger;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, TFlatEditUnit, TFlatSpinEditUnit, DBCtrls, db, Criptografia;

type
  TDBFlatSpinEditInteger = class(TFlatSpinEditInteger)
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

procedure TDBFlatSpinEditInteger.Notification(AComponent : TComponent; Operation : TOperation);
begin
  if(Operation = opRemove) and (AComponent is TDataSource) and (FDataLink.DataSource = nil)then
    FDataLink.FieldName := '';
end;

constructor TDBFlatSpinEditInteger.Create(AOwner : TComponent);
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

destructor TDBFlatSpinEditInteger.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;

function TDBFlatSpinEditInteger.GetDataSource : TDataSource;
begin
  Result := FDataLink.Datasource;
end;

procedure TDBFlatSpinEditInteger.SetDataSource(Value : TDataSource);
begin
  FDataLink.DataSource := Value;
end;

function TDBFlatSpinEditInteger.GetDataField : String;
begin
  Result := FDataLink.FieldName;
end;

procedure TDBFlatSpinEditInteger.SetDataField(Value : String);
begin
  FDataLink.FieldName := Value;
end;

procedure TDBFlatSpinEditInteger.DataChange(Sender : TObject);
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

procedure TDBFlatSpinEditInteger.UpdateData(Sender : TObject);
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

procedure TDBFlatSpinEditInteger.Change;
begin
  FDataLink.Modified;
  inherited Change;
  try
    FDataLink.Edit;
    FDataLink.UpdateRecord;
  except

  end;
end;

procedure TDBFlatSpinEditInteger.KeyPress(var Key : Char);
begin
  if (Key = #13) and EnterTab then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0)
  end;
end;

procedure Register;
begin
  RegisterComponents('DBFlatStyle', [TDBFlatSpinEditInteger]);
end;

end.
