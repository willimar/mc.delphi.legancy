program Padroes;

uses
  Forms,
  uCadGrid in 'lib\uCadGrid.pas' {_frmCadGrid},
  uDM in 'lib\uDM.pas' {DM: TDataModule},
  uDBFunc in 'lib\uDBFunc.pas',
  uToolFunc in 'lib\uToolFunc.pas',
  uMCThread in 'lib\uMCThread.pas',
  uErro in 'lib\uErro.pas' {ExceptionDialog},
  uCadGrid2 in 'lib\uCadGrid2.pas' {_frmCadGrid2},
  uPrincipal in 'lib\uPrincipal.pas' {_frmPrincipal},
  uSplash in 'lib\uSplash.pas' {_frmSplash},
  uLogin in 'lib\uLogin.pas' {_frmLogin},
  uSobre in 'lib\uSobre.pas' {_frmSobre};

{$R *.res}

begin
  Application.Initialize;
  _frmSplash := T_frmSplash.Create(Application);
  _frmSplash.show;
  _frmSplash.Refresh;
  _frmSplash.Free;
  _frmSplash := nil;
  Application.Title := 'Mundo Conecto';
  Application.Run;
end.
