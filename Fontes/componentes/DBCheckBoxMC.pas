unit DBCheckBoxMC;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, DBCtrls, Graphics, Forms, Windows, ComCtrls;

type
  TDBCheckBoxMC = class(TDBCheckBox)
  private
    FRequerido: boolean;
    FTabSheet: TTabSheet;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Click;override;
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
  RegisterComponents('MC DBVisuais', [TDBCheckBoxMC]);
end;

{ TDBCheckBoxMC }

procedure TDBCheckBoxMC.Click;
begin
  inherited;
  if ReadOnly and not TabStop then exit;
  Font.Color := clBlack;
end;

constructor TDBCheckBoxMC.Create(Awoner: TComponent);
begin
  inherited Create(Awoner);
  Tag := 2;
end;

procedure TDBCheckBoxMC.ValidarDado;
begin
  if not Assigned(Field) then exit;
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
