unit BDFlatMemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, TFlatMemoUnit, DBCtrls, db, Criptografia;

type
  TBDFlatMemo = class(TFlatMemo)
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

procedure TBDFlatMemo.Notification(AComponent : TComponent; Operation : TOperation);
begin
  if(Operation = opRemove) and (AComponent is TDataSource) and (FDataLink.DataSource = nil)then
    FDataLink.FieldName := '';
end;

constructor TBDFlatMemo.Create(AOwner : TComponent);
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

destructor TBDFlatMemo.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;

function TBDFlatMemo.GetDataSource : TDataSource;
begin
  Result := FDataLink.Datasource;
end;

procedure TBDFlatMemo.SetDataSource(Value : TDataSource);
begin
  FDataLink.DataSource := Value;
end;

function TBDFlatMemo.GetDataField : String;
begin
  Result := FDataLink.FieldName;
end;

procedure TBDFlatMemo.SetDataField(Value : String);
begin
  FDataLink.FieldName := Value;
end;

procedure TBDFlatMemo.DataChange(Sender : TObject);
begin
  try
    if Criptografia then
      Lines.Text := descriptografa(FDataLink.Field.Text, Chave)
    else
      Lines.Text := FDataLink.Field.Text;
  except
    Lines.Text := ValorDefault;
  end;
end;

procedure TBDFlatMemo.UpdateData(Sender : TObject);
begin
  try
    if Criptografia then
      FDataLink.Field.Text := criptografa(Lines.Text, Chave)
    else
      FDataLink.Field.Text := Lines.Text;
  except
    begin
      FDataLink.Edit;
      if Criptografia then
        FDataLink.Field.Text := criptografa(Lines.Text, Chave)
      else
        FDataLink.Field.Text := Lines.Text;
    end;
  end;
end;

procedure TBDFlatMemo.Change;
begin
  FDataLink.Modified;
  inherited Change;
  try
    FDataLink.Edit;
    FDataLink.UpdateRecord;
  except

  end;
end;

procedure TBDFlatMemo.KeyPress(var Key : Char);
begin
  if (Key = #13) and EnterTab then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0)
  end;
end;
procedure Register;
begin
  RegisterComponents('DBFlatStyle', [TBDFlatMemo]);
end;

end.
