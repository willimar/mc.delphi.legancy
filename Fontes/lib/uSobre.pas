unit uSobre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  OleCtrls, Menus, StdCtrls, Buttons, ShellAPI,
  ExtCtrls, ToolWin, ComCtrls, LabelMC;

type
  T_frmSobre = class(TForm)
    Panel9: TPanel;
    Shape5: TShape;
    ToolBar3: TToolBar;
    bitAlterar: TSpeedButton;
    Panel1: TPanel;
    Shape1: TShape;
    lblFechar: TLabel;
    Panel4: TPanel;
    Shape4: TShape;
    lblTitulo: TLabel;
    Panel2: TPanel;
    Shape2: TShape;
    Panel7: TPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label2: TLabel;
    Texto: TLabel;
    Label4: TLabel;
    edtTexto: TEdit;
    cboCampo: TComboBox;
    Image1: TImage;
    Memo1: TMemo;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblLicenca: TLabel;
    lblId: TLabel;
    Label11: TLabel;
    LabelMC1: TLabelMC;
    procedure bitAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure AbreJanela;
  end;

var
  _frmSobre: T_frmSobre;


implementation

uses uPrincipal, uToolFunc, uDM, uRegistro;
{$R *.DFM}

class procedure T_frmSobre.AbreJanela;
begin
  fMenu(_frmPrincipal);
  LockWindowUpdate(_frmPrincipal.Handle);
  with T_frmSobre.Create(_frmPrincipal) do Show;
  LockWindowUpdate(0);
end;

procedure T_frmSobre.bitAlterarClick(Sender: TObject);
begin
  Close;
end;

procedure T_frmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fMenu(_frmPrincipal);
  _frmSobre := nil;
end;

procedure T_frmSobre.Label11Click(Sender: TObject);
begin
  EnviarEmail('mundoconecto@gmail.com?subject=MCLocadora 2.2', Handle);
end;

procedure T_frmSobre.FormShow(Sender: TObject);
begin
  lblTitulo.Caption := Substituir('Mundo Conecto - ', '', DM.SisControl.ApplicationNome);
  if DM.SisControl.Empresa.Serial.Registro = [rtDemo] then
    lblLicenca.Caption := 'Software demo'
  else if DM.SisControl.Empresa.Serial.Registro = [rtLicenca] then
    lblLicenca.Caption := 'Licenciado até ' + DM.SisControl.Empresa.Serial.ExpiraEm
  else if DM.SisControl.Empresa.Serial.Registro = [rtExpirado] then
    lblLicenca.Caption := 'Registro expirou'
  else if DM.SisControl.Empresa.Serial.Registro = [rtNone] then
    lblLicenca.Caption := 'Software não registrado';
  lblId.Caption := Mascara('0000-0000-0000-0000', DM.SisControl.Empresa.Serial.NumeroSerial);
end;

end.
