program MCImovel;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {_frmPrincipal},
  uCadGrid2 in '..\lib\uCadGrid2.pas' {_frmCadGrid2},
  uCadGrid in '..\lib\uCadGrid.pas' {_frmCadGrid},
  uDBFunc in '..\lib\uDBFunc.pas',
  uDM in '..\lib\uDM.pas' {DM: TDataModule},
  uErro in '..\lib\uErro.pas' {ExceptionDialog},
  uLogin in '..\lib\uLogin.pas' {_frmLogin},
  uSobre in '..\lib\uSobre.pas' {_frmSobre},
  uSplash in '..\lib\uSplash.pas' {_frmSplash},
  uToolFunc in '..\lib\uToolFunc.pas',
  uEmpresa in '..\cadastros\uEmpresa.pas' {_frmCadGridEmpresa},
  uCliente in '..\cadastros\uCliente.pas' {_frmCadGridCliente},
  uCidade in '..\cadastros\uCidade.pas' {_frmCadGridCidade},
  uPesquisa in '..\lib\uPesquisa.pas' {_frmPesquisa},
  uProprietario in '..\cadastros\uProprietario.pas' {_frmCadGridProprietario},
  uLocador in '..\cadastros\uLocador.pas' {_frmCadGridLocador},
  uComprador in '..\cadastros\uComprador.pas' {_frmCadGridComprador},
  uInteressado in '..\cadastros\uInteressado.pas' {_frmCadGridInteressado},
  uFiador in '..\cadastros\uFiador.pas' {_frmCadGridFiador},
  uFornecedor in '..\cadastros\uFornecedor.pas' {_frmCadGridForncedor},
  uFuncionario in '..\cadastros\uFuncionario.pas' {_frmCadGridFuncionario},
  uPropriedade in '..\cadastros\uPropriedade.pas' {_frmCadGridPropriedade},
  uUF in '..\cadastros\uUF.pas' {_frmCadGridUF},
  uBairro in '..\cadastros\uBairro.pas' {_frmCadGridBairro},
  uRua in '..\cadastros\uRua.pas' {_frmCadGridRua},
  uBanco in '..\cadastros\uBanco.pas' {_frmCadGridBanco},
  uAgencia in '..\cadastros\uAgencia.pas' {_frmCadGridAgencia},
  uNomeDespesa in '..\cadastros\uNomeDespesa.pas' {_frmCadGridNomeDespesa},
  uDocumentos in '..\cadastros\uDocumentos.pas' {_frmCadGridDocumento},
  uMontarContrato in '..\cadastros\uMontarContrato.pas' {_frmCadGridMontarContrato},
  uConfigContrato in '..\cadastros\uConfigContrato.pas' {_frmConfigContrato},
  uCadFiltro in '..\cadastros\uCadFiltro.pas' {_frmCadGridComandoSQL},
  uRptAniverssariantes in '..\relatórios\Rpts\uRptAniverssariantes.pas',
  uRptCliente in '..\relatórios\Rpts\uRptCliente.pas',
  uRptDebito in '..\relatórios\Rpts\uRptDebito.pas',
  uRptFilme in '..\relatórios\Rpts\uRptFilme.pas',
  uRptGenero in '..\relatórios\Rpts\uRptGenero.pas',
  uRptPreco in '..\relatórios\Rpts\uRptPreco.pas',
  fraCad in '..\lib\fraCad.pas' {FrameCad: TFrame},
  uCadStringGrid in '..\lib\uCadStringGrid.pas' {_frmCadStringGrid},
  uConfigConexao in '..\lib\uConfigConexao.pas' {_frmCofiguracao},
  uDadosCliente in '..\lib\uDadosCliente.pas' {fraDadosCliente: TFrame},
  uDadosFilme in '..\lib\uDadosFilme.pas' {fraDadosFilme: TFrame},
  uDiretorio in '..\lib\uDiretorio.pas' {_frmDiretorio},
  uFrameCadGrid in '..\lib\uFrameCadGrid.pas' {fraCadGrid: TFrame},
  uInstalarSenha in '..\lib\uInstalarSenha.pas' {_frmInserirSenha},
  uPreReport in '..\lib\uPreReport.pas' {_frmPreReport},
  uReportFunc in '..\lib\uReportFunc.pas',
  uRpt in '..\lib\uRpt.pas' {_frmRpt},
  uFormAniverssariante in '..\relatórios\Filtros\uFormAniverssariante.pas' {_FormAniversariante},
  uFormCliente in '..\relatórios\Filtros\uFormCliente.pas' {_frmFormCliente},
  uFormDebito in '..\relatórios\Filtros\uFormDebito.pas' {_frmFormDebito},
  uFormFilmes in '..\relatórios\Filtros\uFormFilmes.pas' {_frmFormFilme},
  uFormGenero in '..\relatórios\Filtros\uFormGenero.pas' {_frmFormGenero},
  uFormPreco in '..\relatórios\Filtros\uFormPreco.pas' {_frmFormPreco},
  uDependentes in '..\cadastros\uDependentes.pas' {_frmDependentes},
  uDepartamento in '..\cadastros\uDepartamento.pas' {_frmCadGridDepartamento};

{$R *.res}

begin
  Application.Initialize;
  _frmSplash := T_frmSplash.Create(Application);
  _frmSplash.show;
  _frmSplash.Refresh;
  _frmSplash.Free;
  _frmSplash := nil;
  Application.Title := 'MCImobil 1.0 beta';
  Application.CreateForm(T_frmCadStringGrid, _frmCadStringGrid);
  Application.CreateForm(T_frmCofiguracao, _frmCofiguracao);
  Application.CreateForm(T_frmDiretorio, _frmDiretorio);
  Application.CreateForm(T_frmInserirSenha, _frmInserirSenha);
  Application.CreateForm(T_frmPreReport, _frmPreReport);
  Application.CreateForm(T_frmRpt, _frmRpt);
  Application.CreateForm(T_FormAniversariante, _FormAniversariante);
  Application.CreateForm(T_frmFormCliente, _frmFormCliente);
  Application.CreateForm(T_frmFormDebito, _frmFormDebito);
  Application.CreateForm(T_frmFormFilme, _frmFormFilme);
  Application.CreateForm(T_frmFormGenero, _frmFormGenero);
  Application.CreateForm(T_frmFormPreco, _frmFormPreco);
  Application.CreateForm(T_frmDependentes, _frmDependentes);
  Application.CreateForm(T_frmCadGridDepartamento, _frmCadGridDepartamento);
  Application.Run;
end.
