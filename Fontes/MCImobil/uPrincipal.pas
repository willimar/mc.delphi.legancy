unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBTables, ComCtrls,  StdCtrls, BDE,
  ExtCtrls, Gauges, ToolWin, Buttons, CoolTrayIcon, XPMan, AppEvnts;

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
    MainMenu: TMainMenu;
    Ferramentas2: TMenuItem;
    Calculadora1: TMenuItem;
    EditordeTexto1: TMenuItem;
    aeHint: TApplicationEvents;
    tMensagens: TTimer;
    N4: TMenuItem;
    Image: TImage;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    Cadastro1: TMenuItem;
    Pessoa1: TMenuItem;
    Imveis1: TMenuItem;
    Propriedades1: TMenuItem;
    Empresa1: TMenuItem;
    Condomnio1: TMenuItem;
    N2: TMenuItem;
    Geral1: TMenuItem;
    Bairro1: TMenuItem;
    Cidade1: TMenuItem;
    UF1: TMenuItem;
    N3: TMenuItem;
    Banco1: TMenuItem;
    Agencia1: TMenuItem;
    Contratos1: TMenuItem;
    Documentos1: TMenuItem;
    MontarContrato1: TMenuItem;
    DespesasExtras1: TMenuItem;
    N5: TMenuItem;
    Fechar1: TMenuItem;
    Movimento1: TMenuItem;
    Alugar1: TMenuItem;
    Vender1: TMenuItem;
    Comprar1: TMenuItem;
    Imvel1: TMenuItem;
    Baixas1: TMenuItem;
    Boleta1: TMenuItem;
    N6: TMenuItem;
    Cancelar1: TMenuItem;
    N8: TMenuItem;
    CalculoDbito1: TMenuItem;
    EmissodeBoleto1: TMenuItem;
    Consultas1: TMenuItem;
    FichadeLocatrio1: TMenuItem;
    Dbitosemaberto1: TMenuItem;
    Relatrios1: TMenuItem;
    Cadastrais1: TMenuItem;
    EtiquetasdeEndereamento1: TMenuItem;
    Financeiro1: TMenuItem;
    PretaodeContas1: TMenuItem;
    DebitosaReceber1: TMenuItem;
    DebitosRecebidos1: TMenuItem;
    ContratosExpirados1: TMenuItem;
    N9: TMenuItem;
    GernciadordeContas1: TMenuItem;
    ransportadoras1: TMenuItem;
    Proprietrio1: TMenuItem;
    Fiador1: TMenuItem;
    Fornecedor1: TMenuItem;
    Funcionrio1: TMenuItem;
    N10: TMenuItem;
    CadastrarCheque1: TMenuItem;
    N11: TMenuItem;
    Locador1: TMenuItem;
    Interessado1: TMenuItem;
    Comprador1: TMenuItem;
    Rua1: TMenuItem;
    Configuraodefiltros1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure EditordeTexto1Click(Sender: TObject);
    procedure tControleTimer(Sender: TObject);
    procedure aeHintHint(Sender: TObject);
    procedure tMensagensTimer(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Proprietrio1Click(Sender: TObject);
    procedure Locador1Click(Sender: TObject);
    procedure Comprador1Click(Sender: TObject);
    procedure Interessado1Click(Sender: TObject);
    procedure Fiador1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure Propriedades1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UF1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Bairro1Click(Sender: TObject);
    procedure Rua1Click(Sender: TObject);
    procedure Banco1Click(Sender: TObject);
    procedure Agencia1Click(Sender: TObject);
    procedure DespesasExtras1Click(Sender: TObject);
    procedure Documentos1Click(Sender: TObject);
    procedure MontarContrato1Click(Sender: TObject);
    procedure Configuraodefiltros1Click(Sender: TObject);
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

uses uSplash, uToolFunc, uDM, uSobre, uEmpresa, uProprietario, uLocador,
  uComprador, uInteressado, uFiador, uFornecedor, uFuncionario,
  uPropriedade, uUF, uCidade, uBairro, uRua, uBanco, uAgencia,
  uNomeDespesa, uDocumentos, uMontarContrato, uCadFiltro;

{$R *.DFM}

procedure T_frmPrincipal.FormActivate(Sender: TObject);
begin
  _frmSplash.Free;
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
  if not TimerControle then
  begin
    TimerControle := true;
    Alerta('chegou.', false);
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

procedure T_frmPrincipal.Empresa1Click(Sender: TObject);
begin
  T_frmCadGridEmpresa.AbreJanela(Self);
end;

procedure T_frmPrincipal.Proprietrio1Click(Sender: TObject);
begin
  T_frmCadGridProprietario.AbreJanela(Self);
end;

procedure T_frmPrincipal.Locador1Click(Sender: TObject);
begin
  T_frmCadGridLocador.AbreJanela(Self);
end;

procedure T_frmPrincipal.Comprador1Click(Sender: TObject);
begin
  T_frmCadGridComprador.AbreJanela(Self);
end;

procedure T_frmPrincipal.Interessado1Click(Sender: TObject);
begin
  T_frmCadGridInteressado.AbreJanela(Self);
end;

procedure T_frmPrincipal.Fiador1Click(Sender: TObject);
begin
  T_frmCadGridFiador.AbreJanela(Self);
end;

procedure T_frmPrincipal.Fornecedor1Click(Sender: TObject);
begin
  T_frmCadGridForncedor.AbreJanela(Self);
end;

procedure T_frmPrincipal.Funcionrio1Click(Sender: TObject);
begin
  T_frmCadGridFuncionario.AbreJanela(Self);
end;

procedure T_frmPrincipal.Propriedades1Click(Sender: TObject);
begin
  T_frmCadGridPropriedade.AbreJanela(Self);
end;

procedure T_frmPrincipal.FormCreate(Sender: TObject);
begin
  Image.Left := Width - 132;
end;

procedure T_frmPrincipal.UF1Click(Sender: TObject);
begin
  T_frmCadGridUF.AbreJanela('CODUF', Self);
end;

procedure T_frmPrincipal.Cidade1Click(Sender: TObject);
begin
  T_frmCadGridCidade.AbreJanela('CODCIDADE', Self);
end;

procedure T_frmPrincipal.Bairro1Click(Sender: TObject);
begin
  T_frmCadGridBairro.AbreJanela('B_CODBAIRRO', Self)
end;

procedure T_frmPrincipal.Rua1Click(Sender: TObject);
begin
  T_frmCadGridRua.AbreJanela('R_CODRUA', Self);
end;

procedure T_frmPrincipal.Banco1Click(Sender: TObject);
begin
  T_frmCadGridBanco.AbreJanela('CODBANCO', Self)
end;

procedure T_frmPrincipal.Agencia1Click(Sender: TObject);
begin
  T_frmCadGridAgencia.AbreJanela(Self);
end;

procedure T_frmPrincipal.DespesasExtras1Click(Sender: TObject);
begin
  {NESTE PONTO CADASTRAR AS DESPESAS EXTRAS QUE PODERAM ENTRAR NO CONTRATO DE
   LOCAÇÃO OU VENDA}
  T_frmCadGridNomeDespesa.AbreJanela('CODNOMEDESPESA', Self);
end;

procedure T_frmPrincipal.Documentos1Click(Sender: TObject);
begin
  {AQUI SERÃ CADASTRADOS TODOS OS DOCUMENTOS NESCESSÁRIOS PARA MONTAR UM CNTRATO
   TERÁ O CONTRATO NO WORD
   TERÁ OS ANEXOS DOCUMENTO CRU DO WORD
   TERÁ RECIBOS FEITOS NO WORD
   TERÁ OS BOLETOS BANCÁRIOS QUE DEVERÃO SER CONFIGURADOS DE ACORDO COM AS NORMAS
     INCLUSIVE DEVE-SE TENTAR USARO O COMPONENTE
   TERÁ A IMPRESSÃO DE RECIBOS E NOTAS FISCAIS VIA IMPRESSORA MATRICIAL}
  T_frmCadGridDocumento.AbreJanela('CODDOCUMENTO', Self);
end;

procedure T_frmPrincipal.MontarContrato1Click(Sender: TObject);
begin
  {PADRÃO PARA CONTRATO
   NESTE PONTO DEVEMOS MONTAR O CONTRATO
   INFORMAR QUAIS DOCUMENTOS FARAM PARTE DO CONTRATO.
   OBS.: SERÁ UM NÚMERO N DE DOCUMENTOS QUE TERÁ UMA MANEIRA DE CONFIGURAR O
   ARQUIVO PARA FAZER A MACRO SUBSTITUIÇÃO
   EX.: O CARA SELECIONA O CAMPO E INFORMA QUAL O VALOR SERÁ SUBSTITUIDO
   OBRIGANDO O VALOR ESTA SOBRE <VALOR>
   TAMBÉM DEVERÁ SER INFORMADO QUAL SERÁ O ANEXO QUE SERÁ N TAMBÉM E SERÁ
   CONFIGURADO DA MESMA MANEIRA QUE O DOCUMENTO PADRÃO
   TABELA DE CONTRATOS
   CODCONTRATO | NOME | DESCRICAO
   TABELA DE CONFIGURAÇÃO DE CONTRATO
   CODCONTRATO | CAMPO | SUBSTIUIRVALOR
   }
   T_frmCadGridMontarContrato.AbreJanela(Self);
end;

procedure T_frmPrincipal.Configuraodefiltros1Click(Sender: TObject);
begin
  T_frmCadGridComandoSQL.AbreJanela('CODCOMANDO', Self)
end;

end.
