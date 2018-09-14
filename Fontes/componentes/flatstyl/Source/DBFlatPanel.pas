unit DBFlatPanel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, TFlatPanelUnit, DBCtrls, db, Criptografia;

type
  TDBFlatPanel = class(TFlatPanel)
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

procedure TDBFlatPanel.Notification(AComponent : TComponent; Operation : TOperation);
begin
  if(Operation = opRemove) and (AComponent is TDataSource) and (FDataLink.DataSource = nil)then
    FDataLink.FieldName := '';
end;

constructor TDBFlatPanel.Create(AOwner : TComponent);
begin
  FDataLink := TFieldDataLink.Create;
  inherited Create(AOwner);
  Criptografia := false;
  Chave := 666;
  ValorDefault := '';
  EnterTab := true;
end;

destructor TDBFlatPanel.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;

function TDBFlatPanel.GetDataSource : TDataSource;
begin
  Result := FDataLink.Datasource;
end;

procedure TDBFlatPanel.SetDataSource(Value : TDataSource);
begin
  FDataLink.DataSource := Value;
end;

function TDBFlatPanel.GetDataField : String;
begin
  Result := FDataLink.FieldName;
end;

procedure TDBFlatPanel.SetDataField(Value : String);
begin
  FDataLink.FieldName := Value;
end;

procedure TDBFlatPanel.KeyPress(var Key : Char);
begin
  if (Key = #13) and EnterTab then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0)
  end;
end;
procedure Register;
begin
  RegisterComponents('DBFlatStyle', [TDBFlatPanel]);
end;

end.
