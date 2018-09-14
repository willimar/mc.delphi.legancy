unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBTables, ComCtrls,  StdCtrls, BDE,
  ExtCtrls, Gauges, ToolWin, Buttons, CoolTrayIcon, XPMan, AppEvnts,
  LabelMC, PanelMC, SpeedButtonMC;

type
  T_frmPrincipal = class(TForm)
    sbPrincipal: TStatusBar;
    tControle: TTimer;
    XPManifest1: TXPManifest;
    aeHint: TApplicationEvents;
    tMensagens: TTimer;
    Image: TImage;
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    lblLink: TLabelMC;
    procedure FormActivate(Sender: TObject);
    procedure tControleTimer(Sender: TObject);
    procedure aeHintHint(Sender: TObject);
    procedure tMensagensTimer(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

uses uSplash, uDM, uSobre;

{$R *.DFM}

procedure T_frmPrincipal.FormActivate(Sender: TObject);
begin
  _frmSplash.Free;
  _frmSplash := nil;
  Caption := DM.SisControl.ApplicationNome;
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
    Panels[2].Text := DM.SisControl.Usuario.Usuario;
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

end.
