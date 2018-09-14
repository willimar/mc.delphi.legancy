unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBTables, ComCtrls,  StdCtrls, BDE,
  ExtCtrls, Gauges, ToolWin, Buttons, CoolTrayIcon, XPMan, AppEvnts,
  LabelMC;

type
  T_frmPrincipal = class(TForm)
    sbPrincipal: TStatusBar;
    tControle: TTimer;
    piTray: TPopupMenu;
    Sair2: TMenuItem;
    N1: TMenuItem;
    Minimizar1: TMenuItem;
    Maximizar1: TMenuItem;
    N7: TMenuItem;
    Configuraes1: TMenuItem;
    XPManifest1: TXPManifest;
    aeHint: TApplicationEvents;
    tMensagens: TTimer;
    Image: TImage;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Forncedor1: TMenuItem;
    N9: TMenuItem;
    Genero1: TMenuItem;
    N6: TMenuItem;
    Filmes2: TMenuItem;
    N10: TMenuItem;
    Mensagens1: TMenuItem;
    N5: TMenuItem;
    Filmes1: TMenuItem;
    Locao1: TMenuItem;
    Venda1: TMenuItem;
    ReservadeFita1: TMenuItem;
    ClientesemDebito1: TMenuItem;
    N2: TMenuItem;
    Localizar1: TMenuItem;
    AlterarUsurio1: TMenuItem;
    N8: TMenuItem;
    Sair1: TMenuItem;
    Relatrios1: TMenuItem;
    Clientes2: TMenuItem;
    Aniversariantes1: TMenuItem;
    EmDbito1: TMenuItem;
    Filmes3: TMenuItem;
    Montarcatalogo1: TMenuItem;
    Caixa1: TMenuItem;
    Caixacorrente1: TMenuItem;
    Fechamento1: TMenuItem;
    Detalhado1: TMenuItem;
    DetalhadoCompleto1: TMenuItem;
    Ferramentas1: TMenuItem;
    Calculadora1: TMenuItem;
    EditordeTexto1: TMenuItem;
    N3: TMenuItem;
    FluxodeCaixa1: TMenuItem;
    Email1: TMenuItem;
    N4: TMenuItem;
    BancodeDados1: TMenuItem;
    Empresa1: TMenuItem;
    Sistema2: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    Preos1: TMenuItem;
    Usurio1: TMenuItem;
    Grupos1: TMenuItem;
    Usurios2: TMenuItem;
    lblLink: TLabelMC;
    N11: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure EditordeTexto1Click(Sender: TObject);
    procedure tControleTimer(Sender: TObject);
    procedure aeHintHint(Sender: TObject);
    procedure tMensagensTimer(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Usurios2Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure AlterarUsurio1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AppIdle(Sender: TObject; var Done: Boolean);
    procedure AppMessage(var Msg: TMsg; var Handled: boolean);
  public
    { Public declarations }
    TimerControle: Boolean; //true siguinifica quie o timer está ativo
  end;

var
  _frmPrincipal: T_frmPrincipal;

implementation

uses uSplash, uDM, uLogin, uToolFunc, uSobre, uFuncionario, uGrupoUsuario,
  uEmpresa;

{$R *.DFM}

procedure T_frmPrincipal.FormActivate(Sender: TObject);
begin
  _frmSplash.Free;
  _frmSplash := nil;
  Caption := DM.SisControl.ApplicationNome;
  if not DM.SisControl.Logado then
    AlterarUsurio1Click(sender);
end;

procedure T_frmPrincipal.Calculadora1Click(Sender: TObject);
const
    s = 'Calc.Exe';
var
    c:array[0..79] of char;
begin
    strpcopy(c,s);
    WinExec(c,1);
end;

procedure T_frmPrincipal.EditordeTexto1Click(Sender: TObject);
const
    s = 'NOTEPAD.exe';
var
    c:array[0..79] of char;
begin
    strpcopy(c,s);
    WinExec(c,1);
end;

procedure T_frmPrincipal.AppIdle(Sender: TObject; var Done: Boolean);
begin
  tControle.Enabled := true;
end;

procedure T_frmPrincipal.AppMessage(var Msg: TMsg; var Handled: boolean);
begin
  case Msg.message of
    WM_LBUTTONDOWN, WM_RBUTTONDOWN, WM_KEYDOWN: tControle.Enabled := false;
  end;
end;

procedure T_frmPrincipal.tControleTimer(Sender: TObject);
begin
  if (Self.MDIChildCount > 0) then
  begin
    if (ActiveMDIChild.Name = '_frmLogin') then exit;
    ActiveMDIChild.Close;
  end;
  AlterarUsurio1Click(sender);
end;

procedure T_frmPrincipal.aeHintHint(Sender: TObject);
begin
  sbPrincipal.Panels[1].Text := Application.Hint;
end;

procedure T_frmPrincipal.tMensagensTimer(Sender: TObject);
begin
  with sbPrincipal do
  begin
    Panels[4].Text := FormatDateTime('hh:mm:ss', GetTime);
    Panels[2].Text := iif(DM.SisControl.Logado, DM.SisControl.Usuario.Usuario, 'Aguardando login');
    Panels[3].Text := FormatDateTime('dddd - dd "de", MMMM "de" yyyy', Date);
  end;
end;

procedure T_frmPrincipal.Sobre1Click(Sender: TObject);
begin
  T_frmSobre.AbreJanela;
end;

procedure T_frmPrincipal.FormCreate(Sender: TObject);
begin
  Image.Left := Width - 132;
  lblLink.Left := Image.Left - 5;
  Application.OnMessage := AppMessage;
  Application.OnIdle := AppIdle;
end;

procedure T_frmPrincipal.Usurios2Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridFuncionario.AbreJanela(Self);
end;

procedure T_frmPrincipal.Grupos1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridGrupoUsuario.AbreJanela(Self);
end;

procedure T_frmPrincipal.AlterarUsurio1Click(Sender: TObject);
begin
  _frmLogin := T_frmLogin.Create(self);
  fMenu(_frmPrincipal);
end;

procedure T_frmPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure T_frmPrincipal.Empresa1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridEmpresa.AbreJanela(Self);
end;

procedure T_frmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
