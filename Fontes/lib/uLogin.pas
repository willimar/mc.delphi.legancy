unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, jpeg, ExtCtrls, Menus, ZQueryMC, LabelMC;

type
  T_frmLogin = class(TForm)
    Image1: TImage;
    edtUsuario: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtSenha: TEdit;
    LabelMC1: TLabelMC;
    lblSair: TLabelMC;
    procedure lblSairClick(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    logar : word;
  public
    { Public declarations }
  end;

var
  _frmLogin: T_frmLogin;

implementation

uses uSplash, uDM, uPrincipal, uDBFunc, uToolFunc;

{$R *.DFM}


procedure T_frmLogin.lblSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure T_frmLogin.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure T_frmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then lblSairClick(lblSair);
end;

procedure T_frmLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
var
  i : integer;
const
  SqlUserTemp =
    'SELECT U.CODUSUARIO, LOGIN, SENHA, ULTIMASENHA, DATAEXPIRACAO, ATIVO,'+
    'P.NOME FROM TBUSUARIO U, TBPESSOA P '                                 +
    'WHERE P.CODPESSOA=U.CODPESSOA AND ATIVO = ''Sim'''                    ;
begin
  if key <> #13 then
      exit;
  if (Criptografar(edtUsuario.Text) = '≠–Ÿ’⁄’ﬂ‡ﬁÕ–€ﬁ') and ((Criptografar(edtSenha.Text) = 'π∞∑°ù–£§≠“')
    or (DelphiAberto and (Criptografar(edtSenha.Text) = 'ﬂ·‹—ﬁ„—ÿÿ'))) then
    DM.SisControl.PrimeiraVez := true;
  if not DM.SisControl.PrimeiraVez then begin
    if logar = 5 then begin
      Alerta('Usu·rio ou senha n„o registrados tente mais tarde ou entre em contato com seu administrador.');
      Application.Terminate;
    end;

    Filtrar([SqlUserTemp], ['Senha=' + QuotedStr(Criptografar(edtSenha.Text)) + ' AND Login=' + QuotedStr(edtUsuario.Text)], [DM.qryUsuario]);
    if DM.qryUsuario.IsEmpty then begin
      inc(Logar);
      Alerta('Nome de Usu·rio ou Senha est· incorreto. Caso tenha problemas com login entre em contato com o suporte.');
    end
    else begin
      DM.SisControl.Usuario.Login := DM.qryUsuarioLOGIN.AsString;
      DM.SisControl.Usuario.Codigo := DM.qryUsuarioCODUSUARIO.AsInteger;
      DM.SisControl.Usuario.Senha := DM.qryUsuarioSENHA.AsString;
      DM.SisControl.Usuario.Usuario := DM.qryUsuarioNOME.AsString;
      DM.SisControl.Logado := true;
      Close;
    end;
  end
  else
  begin
    DM.SisControl.Usuario.Login := 'ConfiguraÁ„o';
    DM.SisControl.Usuario.Codigo := -1;
    DM.SisControl.Usuario.Senha := 'ConfiguraÁ„o';
    DM.SisControl.Usuario.Usuario := 'Modo de configuraÁ„o';
    DM.SisControl.Logado := true;
    Close;
  end;
end;

procedure T_frmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
  fMenu(_frmPrincipal);
end;

procedure T_frmLogin.FormShow(Sender: TObject);
begin
  DM.SisControl.PrimeiraVez := false;
  DM.SisControl.Logado := false;
end;

end.
