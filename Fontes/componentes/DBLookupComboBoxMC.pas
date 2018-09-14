unit DBLookupComboBoxMC;

interface

uses
  SysUtils, Classes, Controls, DBCtrls, Graphics, Forms, Windows, LabelMC,
  ComCtrls, Variants;

type
  TDBLookupComboBoxMC = class(TDBLookupComboBox)
  private
    FRequerido: boolean;
    FRotulo: TLabelMC;
    FTabSheet: TTabSheet;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Click;override;
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
  RegisterComponents('MC DBVisuais', [TDBLookupComboBoxMC]);
end;

{ TDBLookupComboBoxMC }

procedure TDBLookupComboBoxMC.Click;
begin
  inherited;
  if ReadOnly and not TabStop then exit;
  Color := clWindow;
end;

constructor TDBLookupComboBoxMC.Create(Awoner: TComponent);
begin
  inherited Create(Awoner);
  Tag := 2;
  NullValueKey := 46;
end;

procedure TDBLookupComboBoxMC.DoEnter;
begin
  if Rotulo <> nil then
    FRotulo.Font.Color := clBlue;
  inherited;
end;

procedure TDBLookupComboBoxMC.DoExit;
begin
  if Rotulo <> nil then
    FRotulo.Font.Color := clBlack;
  inherited;  
end;

procedure TDBLookupComboBoxMC.ValidarDado;
begin
  if (KeyValue = NULL) and Requerido then begin
    if Assigned(Field) then
      Application.MessageBox(PCHAR('O campo ''' + Field.DisplayLabel + ''' é de preenchimento obrigatório.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION)
    else
      Application.MessageBox(PCHAR('Campo de preenchimento obrigatório.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION);
    Color := clSkyBlue;
    if TabSheet <> nil then
      TabSheet.Show;
    SetFocus;
    abort;
  end;
end;

end.
