unit uPrincipalMedCLi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPrincipal, AppEvnts, Menus, XPMan, ExtCtrls, ComCtrls;

type
  T_frmPrincipalMedCli = class(T_frmPrincipal)
    Cadastro1: TMenuItem;
    Pessoas1: TMenuItem;
    Pacientes1: TMenuItem;
    Mdicos1: TMenuItem;
    Laboratrio1: TMenuItem;
    Hospital1: TMenuItem;
    Convnios1: TMenuItem;
    Exames1: TMenuItem;
    procedure Pacientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmPrincipalMedCli: T_frmPrincipalMedCli;

implementation

uses uSobre, uPacientes;

{$R *.dfm}

procedure T_frmPrincipalMedCli.Pacientes1Click(Sender: TObject);
begin
  inherited;
  T_frmCadPaciente.AbreJanela(self);
end;

end.
