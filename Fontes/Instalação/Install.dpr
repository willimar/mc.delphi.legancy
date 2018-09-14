program Install;

uses
  Forms, 
  uPrincipal in 'uPrincipal.pas' {Form1},
  fraCad in '..\lib\fraCad.pas' {FrameCad: TFrame},
  uCadGrid2 in '..\lib\uCadGrid2.pas' {_frmCadGrid2},
  uCadGrid in '..\lib\uCadGrid.pas' {_frmCadGrid},
  uDadosCliente in '..\lib\uDadosCliente.pas' {fraDadosCliente: TFrame},
  uDadosFilme in '..\lib\uDadosFilme.pas' {fraDadosFilme: TFrame},
  uDBFunc in '..\lib\uDBFunc.pas',
  uDM in '..\lib\uDM.pas' {DM: TDataModule},
  uErro in '..\lib\uErro.pas' {ExceptionDialog},
  uFrameCadGrid in '..\lib\uFrameCadGrid.pas' {fraCadGrid: TFrame},
  uLogin in '..\lib\uLogin.pas' {_frmLogin},
  uPesquisa in '..\lib\uPesquisa.pas' {_frmPesquisa},
  uPreReport in '..\lib\uPreReport.pas' {_frmPreReport},
  uReportFunc in '..\lib\uReportFunc.pas',
  uRpt in '..\lib\uRpt.pas' {_frmRpt},
  uSobre in '..\lib\uSobre.pas' {_frmSobre},
  uSplash in '..\lib\uSplash.pas' {_frmSplash},
  uToolFunc in '..\lib\uToolFunc.pas',
  uIntall in 'uIntall.pas' {_frmInstalacao},
  uBaseDados in 'uBaseDados.pas' {_frmBaseDados},
  uDiretorio in '..\lib\uDiretorio.pas' {_frmDiretorio};

{$R *.res}

begin
  Application.Initialize;
  _frmSplash := T_frmSplash.Create(Application);
  _frmSplash.show;
  _frmSplash.Refresh;
  _frmSplash.Free;
  _frmSplash := nil;
  Application.Title := 'MCLocadora 1.2 beta';
  Application.CreateForm(T_frmInstalacao, _frmInstalacao);
  Application.Run;
end.
