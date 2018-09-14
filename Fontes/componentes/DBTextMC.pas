unit DBTextMC;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, DBCtrls, Forms, Windows, ComCtrls;

type
  TDBTextMC = class(TDBText)
  private
    FRequerido: boolean;
    FTabSheet: TTabSheet;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
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
  RegisterComponents('MC DBVisuais', [TDBTextMC]);
end;

{ TDBTextMC }

constructor TDBTextMC.Create(Awoner: TComponent);
begin
  inherited Create(Awoner);
  Tag := 2;
end;

procedure TDBTextMC.ValidarDado;
begin
  if (Assigned(Field)) and (Field.AsString = '') and Requerido then
  begin
    Application.MessageBox(PCHAR('O Campo ''' + Field.DisplayLabel + ''' é de preenchimento obrigatório.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION);
    if TabSheet <> nil then
      TabSheet.Show;
    abort;
  end;
end;

end.
