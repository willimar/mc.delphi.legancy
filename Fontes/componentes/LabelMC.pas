unit LabelMC;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Graphics;

type
  TTypeLabel = (tlDefault, tlBotao, tlUrl, tlEmail);
  TLabelMC = class(TLabel)
  private
    FBotao: TTypeLabel;
    procedure SetCursor(const Value: TTypeLabel);

    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AWoner: TComponent);override;
    procedure MouseMove(Shift: TShiftState; x, y: Integer);override;
    procedure MouseLeave(Sender: TObject);virtual;
    procedure Click;override;
  published
    { Published declarations }
    property Botao: TTypeLabel read FBotao write SetCursor default tlDefault;
  end;

procedure Register;

implementation

uses MCAPI;

procedure Register;
begin
  RegisterComponents('MC Visuais', [TLabelMC]);
end;

{ TLabelMC }

procedure TLabelMC.Click;
var
  MCAPI: TMCAPI;
begin
  inherited;
  try
    MCAPI := TMCAPI.Create(Self);
    if Botao in [tlUrl] then begin
      MCAPI.AbrirUrl(Caption);
    end
    else if Botao in [tlEmail] then begin
      MCAPI.EnviarEmail(Caption, Parent.Handle);
    end;
  finally
    FreeAndNil(MCAPI);
  end;
end;

constructor TLabelMC.Create(AWoner: TComponent);
begin
  inherited Create(AWoner);
  OnMouseLeave := MouseLeave;
end;

procedure TLabelMC.MouseLeave(Sender: TObject);
begin
  if Botao = tlBotao then
    TLabelMC(Sender).Font.Color := clBlack;
end;

procedure TLabelMC.MouseMove(Shift: TShiftState; x,
  y: Integer);
begin
  inherited;
  if Botao = tlBotao then
    Font.Color := clInfoBk;
end;

procedure TLabelMC.SetCursor(const Value: TTypeLabel);
begin
  if Value in [tlBotao, tlUrl, tlEmail] then begin
    Cursor := crHandPoint;
    Transparent := true;
    AutoSize := false;

    if Value in [tlUrl, tlEmail] then begin
      Font.Color := clBlue;
      Font.Style := [fsUnderline];
    end;
  end
  else begin
    Cursor := crDefault;
  end;
  FBotao := Value;
end;

end.
