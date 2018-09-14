unit DBMemoMC;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, DBCtrls, LabelMC, ComCtrls, Graphics,
  Forms, Windows;

type
  TDBMemoMC = class(TDBMemo)
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
    procedure DoEnter;override;
    procedure DoExit;override;
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
  RegisterComponents('MC DBVisuais', [TDBMemoMC]);
end;

{ TDBMemoMC }

procedure TDBMemoMC.Change;
begin
  inherited;
  if ReadOnly and not TabStop then exit;
  Color := clWindow;
end;

constructor TDBMemoMC.Create(Awoner: TComponent);
begin
  inherited Create(Awoner);
  Tag := 2;
end;

procedure TDBMemoMC.DoExit;
begin
  if Rotulo <> nil then
    FRotulo.Font.Color := clBlack;
  inherited;
end;

procedure TDBMemoMC.DoEnter;
begin
  inherited;
  if Rotulo <> nil then
    FRotulo.Font.Color := clBlue;
end;

procedure TDBMemoMC.ValidarDado;
begin
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
