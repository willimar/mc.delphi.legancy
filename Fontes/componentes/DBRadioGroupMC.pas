unit DBRadioGroupMC;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, ExtCtrls, DBCtrls, Graphics, Forms, Windows, ComCtrls;

type
  TDBRadioGroupMC = class(TDBRadioGroup)
  private
    FRequerido: boolean;
    FTabSheet: TTabSheet;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure DoEnter;override;
    procedure DoExit;override;
    procedure ValidarDado;virtual;
    constructor Create(Awoner: TComponent);override;
  published
    { Published declarations }
    property Requerido: boolean read FRequerido write FRequerido default false;
    property TabSheet: TTabSheet read FTabSheet write FTabSheet;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('MC DBVisuais', [TDBRadioGroupMC]);
end;

{ TDBRadioGroupMC }

constructor TDBRadioGroupMC.Create(Awoner: TComponent);
begin
  inherited Create(Awoner);
  Tag := 2;
end;

procedure TDBRadioGroupMC.DoEnter;
begin
  if ReadOnly and not TabStop then exit;
  Font.Color := clBlue;
  inherited;
end;

procedure TDBRadioGroupMC.DoExit;
begin
  if ReadOnly and not TabStop then exit;
  Font.Color := clBlack;
  inherited;
end;

procedure TDBRadioGroupMC.ValidarDado;
begin
  if (Field.AsString = '') and Requerido then
  begin
    Application.MessageBox(PCHAR('O Campo ''' + Field.DisplayLabel + ''' é de preenchimento obrigatório.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION);
    Font.Color := clSkyBlue;
    if TabSheet <> nil then
      TabSheet.Show;
    SetFocus;
    abort;
  end;
end;

end.
