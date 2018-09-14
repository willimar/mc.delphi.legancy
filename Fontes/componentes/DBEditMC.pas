unit DBEditMC;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Mask, DBCtrls, Graphics, Forms, Windows,
  LabelMC, ComCtrls, DB, DBMCAPI;

type
  TChecagemType = (ctDefault, ctCPF, ctCNPJ, ctCPFCNPJ);
  TDBEditMC = class(TDBEdit)
  private
    FRequerido: boolean;
    FRotulo: TLabelMC;
    FTabSheet: TTabSheet;
    FChecagemType: TChecagemType;
    DBMCAPI: TDBMCAPI;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Change; override;
    procedure ValidarDado;virtual;
    procedure DoEnter;override;
    procedure DoExit;override;
    constructor Create(Awoner: TComponent);override;
  published
    { Published declarations }
    property Requerido: boolean read FRequerido write FRequerido default false;
    property TabSheet: TTabSheet read FTabSheet write FTabSheet;
    property Rotulo: TLabelMC read FRotulo write FRotulo default nil;
    property ChecagemTipo: TChecagemType read FChecagemType write FChecagemType default ctDefault;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('MC DBVisuais', [TDBEditMC]);
end;

{ TDBEditMC }

procedure TDBEditMC.Change;
begin
  inherited;
  if ReadOnly and not TabStop then exit;
  Color := clWindow;
end;

constructor TDBEditMC.Create(Awoner: TComponent);
begin
  inherited Create(Awoner);
  Tag := 2;
  DBMCAPI := TDBMCAPI.Create(Self);
end;

procedure TDBEditMC.DoExit;
var
  Texto: string;
begin
  if Rotulo <> nil then
    FRotulo.Font.Color := clBlack;
  if (FChecagemType <> ctDefault) and not (DataSource.DataSet.State in [dsBrowse, dsInactive]) then begin
    Texto := StringReplace(Text, '.', '', [rfReplaceAll]);
    Texto := StringReplace(Texto, '-', '', [rfReplaceAll]);
    Texto := StringReplace(Texto, '/', '', [rfReplaceAll]);
    if (DBMCAPI.ValidarCpf(Texto)) and ((ChecagemTipo = ctCPF) or (ChecagemTipo = ctCPFCNPJ)) then begin
      Texto := Format('%s.%s.%s-%s', [copy(Texto, 1, 3), copy(Texto, 4, 3), copy(Texto, 7, 3), copy(Texto, 10, 2)]);
    end
    else if DBMCAPI.ValidarCnpj(Texto) and ((ChecagemTipo = ctCNPJ) or (ChecagemTipo = ctCPFCNPJ)) then begin
      Texto := Format('%s.%s.%s/%s-%s', [copy(Texto, 1, 2), copy(Texto, 3, 3), copy(Texto, 6, 3), copy(Texto, 9, 4), copy(Texto, 13, 2)]);
    end;
    Field.AsString := Texto;
  end;
  inherited;
end;

procedure TDBEditMC.ValidarDado;
begin
  if Field = nil then Exit;
  case FChecagemType of
    ctDefault: begin
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
    ctCPF: begin
      if not DBMCAPI.ValidarCpf(Field.AsString) then begin
        Application.MessageBox(PCHAR('O CPF informado é inválido.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION);
        Color := clSkyBlue;
        if TabSheet <> nil then
          TabSheet.Show;
        SetFocus;
        abort;
      end;
    end;
    ctCNPJ: begin
      if not DBMCAPI.ValidarCnpj(Field.AsString) then begin
        Application.MessageBox(PCHAR('O CNPJ informado é inválido.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION);
        Color := clSkyBlue;
        if TabSheet <> nil then
          TabSheet.Show;
        SetFocus;
        abort;
      end;
    end;
    ctCPFCNPJ: begin
      if not DBMCAPI.ValidarCpf(Field.AsString) and not DBMCAPI.ValidarCnpj(Field.AsString) then begin
        Application.MessageBox(PCHAR('O CPF ou CNPJ informado é inválido.'), PCHAR(Application.Title), MB_OK + MB_ICONEXCLAMATION);
        Color := clSkyBlue;
        if TabSheet <> nil then
          TabSheet.Show;
        SetFocus;
        abort;
      end;
    end;
  end;
end;

procedure TDBEditMC.DoEnter;
begin
  inherited;
  if Rotulo <> nil then
    FRotulo.Font.Color := clBlue;
end;

end.
