program MCContas;

uses
  Forms, SysUtils,
  uPrincipal in 'uPrincipal.pas' {_frmPrincipal},
  fraCad in '..\lib\fraCad.pas' {FrameCad: TFrame},
  uCadGrid2 in '..\lib\uCadGrid2.pas' {_frmCadGrid2},
  uCadGrid in '..\lib\uCadGrid.pas' {_frmCadGrid},
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
  uPesquisa in '..\lib\uPesquisa.pas' {_frmPesquisa},
  uPreReport in '..\lib\uPreReport.pas' {_frmPreReport},
  uReportFunc in '..\lib\uReportFunc.pas',
  uRpt in '..\lib\uRpt.pas' {_frmRpt},
  uSobre in '..\lib\uSobre.pas' {_frmSobre},
  uSplash in '..\lib\uSplash.pas' {_frmSplash},
  uToolFunc in '..\lib\uToolFunc.pas',
  uEmpresa in '..\cadastros\uEmpresa.pas',
  uCliente in '..\cadastros\uCliente.pas' {_frmCadGridCliente},
  uFormCliente in '..\relatórios\Filtros\uFormCliente.pas' {_frmFormCliente},
  uCidade in '..\cadastros\uCidade.pas' {_frmCadGridCidade},
  uDependentes in '..\cadastros\uDependentes.pas' {_frmDependentes},
  uRptCliente in '..\relatórios\Rpts\uRptCliente.pas' {_frmRptCliente},
  uFuncionario in '..\cadastros\uFuncionario.pas' {_frmCadGridFuncionario},
  uGrupoUsuario in '..\cadastros\uGrupoUsuario.pas' {_frmCadGridGrupoUsuario};

{$R *.res}

begin
  Application.Initialize;
  _frmSplash := T_frmSplash.Create(Application);
  _frmSplash.show;
  _frmSplash.Refresh;
  _frmSplash.Free;
  _frmSplash := nil;
  Application.Title := 'MCContas';
  Application.Run;
  if not DM.SisControl.FinalizouInstalacao then begin
    DM.cds.Close;                                    
    DeleteFile(path + 'conexão.mc');
  end
end.
