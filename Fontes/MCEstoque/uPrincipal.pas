unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBTables, ComCtrls,  StdCtrls, BDE,
  ExtCtrls, Gauges, ToolWin, Buttons, CoolTrayIcon, XPMan, AppEvnts,
  LabelMC, PanelMC;

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
    Cadastro1: TMenuItem;
    AlterarUsurio1: TMenuItem;
    Sair1: TMenuItem;
    Relatrios1: TMenuItem;
    Ferramentas1: TMenuItem;
    Calculadora1: TMenuItem;
    EditordeTexto1: TMenuItem;
    N3: TMenuItem;
    BancodeDados1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    Grupos1: TMenuItem;
    Usurios2: TMenuItem;
    lblLink: TLabelMC;
    Empresa2: TMenuItem;
    Empresas1: TMenuItem;
    Departamento1: TMenuItem;
    Gerenciadordecontas1: TMenuItem;
    Fornecedor1: TMenuItem;
    Vendas1: TMenuItem;
    Vendedores1: TMenuItem;
    Programaodevendas1: TMenuItem;
    Clientes1: TMenuItem;
    ransportadores1: TMenuItem;
    N6: TMenuItem;
    Operaesfinanceiras1: TMenuItem;
    Planosdepagamentos1: TMenuItem;
    abeladepreo1: TMenuItem;
    Cadastro2: TMenuItem;
    Alterao1: TMenuItem;
    Configurao1: TMenuItem;
    N9: TMenuItem;
    Modelosdedocumento1: TMenuItem;
    N10: TMenuItem;
    ributaesdenotafiscal1: TMenuItem;
    Produtos1: TMenuItem;
    Sistema3: TMenuItem;
    N12: TMenuItem;
    N2: TMenuItem;
    Faturamento1: TMenuItem;
    Pedido1: TMenuItem;
    N5: TMenuItem;
    Consultas1: TMenuItem;
    N8: TMenuItem;
    Movimento1: TMenuItem;
    Cancelamento1: TMenuItem;
    Anlizedecrdito1: TMenuItem;
    N11: TMenuItem;
    Emissodepedidos1: TMenuItem;
    N13: TMenuItem;
    Formaodecarga1: TMenuItem;
    Faturamento2: TMenuItem;
    Expedio1: TMenuItem;
    N14: TMenuItem;
    Confirmaodeentrada1: TMenuItem;
    Pedidos1: TMenuItem;
    Notas1: TMenuItem;
    Posiododepsito1: TMenuItem;
    Entradadeservio1: TMenuItem;
    Saidainterna1: TMenuItem;
    Aferiodeestoque1: TMenuItem;
    N15: TMenuItem;
    Devoluodecompra1: TMenuItem;
    Devoluodevenda1: TMenuItem;
    N16: TMenuItem;
    ransferncia1: TMenuItem;
    Pedido2: TMenuItem;
    Nota1: TMenuItem;
    N4: TMenuItem;
    Alteraesdepreo1: TMenuItem;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Empresas1Click(Sender: TObject);
    procedure Departamento1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure ransportadores1Click(Sender: TObject);
    procedure Operaesfinanceiras1Click(Sender: TObject);
    procedure Planosdepagamentos1Click(Sender: TObject);
    procedure ributaesdenotafiscal1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Gerenciadordecontas1Click(Sender: TObject);
    procedure Anlizedecrdito1Click(Sender: TObject);
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
  uEmpresa, uDepartamento, uFornecedor, uVendedor, uSocio, uTransportador,
  uOperacaoFinanceira, uPlanoPagamento, uTributacaoNotaFiscal, uProduto,
  uGerenciadorConta, uAnaliseCredito;

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

procedure T_frmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure T_frmPrincipal.Empresas1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridEmpresa.AbreJanela(Self);
end;

procedure T_frmPrincipal.Departamento1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridDepartamento.AbreJanela(Self);
end;

procedure T_frmPrincipal.Fornecedor1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridForncedor.AbreJanela(Self);
end;

procedure T_frmPrincipal.Vendedores1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridVendedor.AbreJanela(Self);
end;

procedure T_frmPrincipal.Clientes1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridSocio.AbreJanela(Self);
end;

procedure T_frmPrincipal.ransportadores1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridTransportador.AbreJanela(Self);
end;

procedure T_frmPrincipal.Operaesfinanceiras1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridOperacaoFinanceira.AbreJanela(Self);
end;

procedure T_frmPrincipal.Planosdepagamentos1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridPlanoPagamento.AbreJanela(Self);
end;

procedure T_frmPrincipal.ributaesdenotafiscal1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridTributacaoNotaFiscal.AbreJanela(Self);
end;

procedure T_frmPrincipal.Produtos1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridProduto.AbreJanela(Self);
end;

procedure T_frmPrincipal.Gerenciadordecontas1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridGerenciadorConta.AbreJanela(Self);
end;

procedure T_frmPrincipal.Anlizedecrdito1Click(Sender: TObject);
begin
  DM.CarregarPermissoes(TComponent(Sender).Name);
  T_frmCadGridAnaliseCredito.AbreJanela(Self);
end;

end.
