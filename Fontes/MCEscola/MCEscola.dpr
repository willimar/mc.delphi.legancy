program MCEscola;

uses
  Forms,
  fraCad in '..\lib\fraCad.pas' {FrameCad: TFrame},
  uCadGrid2 in '..\lib\uCadGrid2.pas' {_frmCadGrid2},
  uCadGrid in '..\lib\uCadGrid.pas' {_frmCadGrid},
  uCadStringGrid in '..\lib\uCadStringGrid.pas' {_frmCadStringGrid},
  uConfigConexao in '..\lib\uConfigConexao.pas' {_frmCofiguracao},
  uDadosCliente in '..\lib\uDadosCliente.pas' {fraDadosCliente: TFrame},
  uDadosFilme in '..\lib\uDadosFilme.pas' {fraDadosFilme: TFrame},
  uDBFunc in '..\lib\uDBFunc.pas',
  uDiretorio in '..\lib\uDiretorio.pas' {_frmDiretorio},
  uDM in '..\lib\uDM.pas' {DM: TDataModule},
  uErro in '..\lib\uErro.pas' {ExceptionDialog},
  uFrameCadGrid in '..\lib\uFrameCadGrid.pas' {fraCadGrid: TFrame},
  uInstalarSenha in '..\lib\uInstalarSenha.pas' {_frmInserirSenha},
  uLogin in '..\lib\uLogin.pas' {_frmLogin},
  uMigraBase in '..\lib\uMigraBase.pas' {_frmMigraBase},
  uPesquisa in '..\lib\uPesquisa.pas' {_frmPesquisa},
  uPreReport in '..\lib\uPreReport.pas' {_frmPreReport},
  uRegistro in '..\lib\uRegistro.pas',
  uReportFunc in '..\lib\uReportFunc.pas',
  uRpt in '..\lib\uRpt.pas' {_frmRpt},
  uSobre in '..\lib\uSobre.pas' {_frmSobre},
  uSplash in '..\lib\uSplash.pas' {_frmSplash},
  uToolFunc in '..\lib\uToolFunc.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Run;
end.
