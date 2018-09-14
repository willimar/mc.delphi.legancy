unit DBComboBoxMC;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, DBCtrls, Graphics, Forms, Windows, LabelMC, ComCtrls;

type
  TDBComboBoxMC = class(TDBComboBox)
  private
    FRequerido: boolean;
    FRotulo: TLabelMC;
    FTabSheet: TTabSheet;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Change;override;
    procedure ValidarDado;virtual;
    procedure Enter(Sender: TObject);virtual;
    procedure DoExit(Sender: TObject);virtual;
    constructor Create(Awoner: TComponent);override;
  published
    { Published declarations }
    property Requerido: boolean read FRequerido write FRequerido default false;
    property TabSheet: TTabSheet read FTabSheet write FTabSheet;
    property Rotulo: TLabelMC read FRotulo write FRotulo default nil;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('MC DBVisuais', [TDBComboBoxMC]);
end;

{ TDBComboBoxMC }

procedure TDBComboBoxMC.Change;
begin
  inherited;
  if ReadOnly and not TabStop then exit;
  Color := clWindow;
end;

constructor TDBComboBoxMC.Create(Awoner: TComponent);
begin
  inherited Create(Awoner);
  Tag := 2;
  OnEnter := Enter;
  OnExit := DoExit;
end;

procedure TDBComboBoxMC.Enter(Sender: TObject);
begin
  if Rotulo <> nil then
    FRotulo.Font.Color := clBlue;
end;

procedure TDBComboBoxMC.DoExit(Sender: TObject);
begin
  if Rotulo <> nil then
    FRotulo.Font.Color := clBlack;
end;

procedure TDBComboBoxMC.ValidarDado;
begin
  if not Assigned(Field) then exit;
  if (Field.AsString = '') and Requerido then
  begin
    Application.MessageBox(PCHAR('O Campo ''' + Field.DisplayLabel + ''' é de preenchimento obrigatório.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION);
    Color := clSkyBlue;
    if TabSheet <> nil then
      TabSheet.Show;
    SetFocus;
    abort;
  end;
end;

end.
