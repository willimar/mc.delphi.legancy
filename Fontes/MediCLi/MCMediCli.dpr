program MCMediCli;

uses
  Forms,
  uCadGrid2 in 'lib\uCadGrid2.pas' {_frmCadGrid2},
  uCadGrid in 'lib\uCadGrid.pas' {_frmCadGrid},
  uDBFunc in 'lib\uDBFunc.pas',
  uDM in 'lib\uDM.pas' {DM: TDataModule},
  uErro in 'lib\uErro.pas' {ExceptionDialog},
  uLogin in 'lib\uLogin.pas' {_frmLogin},
  uSplash in 'lib\uSplash.pas' {_frmSplash},
  uToolFunc in 'lib\uToolFunc.pas',
  uPrincipal in 'lib\uPrincipal.pas' {_frmPrincipal},
  uPrincipalMedCLi in 'MediCLi\uPrincipalMedCLi.pas' {_frmPrincipalMedCli},
  uSobre in 'lib\uSobre.pas' {_frmSobre},
  uSobreMediCLi in 'MediCLi\uSobreMediCLi.pas' {_frmSobre1},
  uPacientes in 'cadastros\uPacientes.pas' {_frmCadPaciente};

{$R *.res}

begin
  Application.Initialize;
  _frmSplash := T_frmSplash.Create(Application);
  _frmSplash.show;
  _frmSplash.Refresh;
  _frmSplash.Free;
  _frmSplash := nil;
  Application.Title := 'MediCli 1.0 beta';
  Application.Run;
end.
