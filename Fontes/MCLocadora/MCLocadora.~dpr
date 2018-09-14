program MCLocadora;

uses
  Forms,
  SysUtils,
  uPrincipal in 'uPrincipal.pas' {_frmPrincipal},
  uCadGrid2 in '..\lib\uCadGrid2.pas' {_frmCadGrid2},
  uCadGrid in '..\lib\uCadGrid.pas' {_frmCadGrid},
  uDBFunc in '..\lib\uDBFunc.pas',
  uDM in '..\lib\uDM.pas' {DM: TDataModule},
  uErro in '..\lib\uErro.pas' {ExceptionDialog},
  uLogin in '..\lib\uLogin.pas' {_frmLogin},
  uPesquisa in '..\lib\uPesquisa.pas' {_frmPesquisa},
  uSobre in '..\lib\uSobre.pas' {_frmSobre},
  uSplash in '..\lib\uSplash.pas' {_frmSplash},
  uToolFunc in '..\lib\uToolFunc.pas',
  uCliente in '..\cadastros\uCliente.pas' {_frmCadGridCliente},
  uCidade in '..\cadastros\uCidade.pas' {_frmCadGridCidade},
  uSocio in '..\cadastros\uSocio.pas' {_frmCadGridSocio},
  fraCad in '..\lib\fraCad.pas' {FrameCad: TFrame},
  uFrameCadGrid in '..\lib\uFrameCadGrid.pas' {fraCadGrid: TFrame},
  uDependentes in '..\cadastros\uDependentes.pas' {_frmDependentes},
  uFornecedor in '..\cadastros\uFornecedor.pas' {_frmCadGridForncedor},
  uGenero in '..\cadastros\uGenero.pas' {_frmCadGridGenero},
  uPreco in '..\cadastros\uPreco.pas' {_frmCadGridPreco},
  uFilme in '..\cadastros\uFilme.pas' {_frmCadGridFilme},
  uMensagem in '..\cadastros\uMensagem.pas' {_frmCadGridMensagem},
  uMovimento in 'uMovimento.pas' {_frmMovimento},
  uDadosFilme in '..\lib\uDadosFilme.pas' {fraDadosFilme: TFrame},
  uSaida in 'uSaida.pas' {_frmSaida},
  uDadosCliente in '..\lib\uDadosCliente.pas' {fraDadosCliente: TFrame},
  uDevolucao in 'uDevolucao.pas' {_frmDevolucao},
  uRptTiket in 'uRptTiket.pas' {_frmTiket},
  uEntrada in 'uEntrada.pas' {_frmEntrada},
  uTroca in 'uTroca.pas' {_frmTroca},
  uVendas in 'uVendas.pas' {_frmVenda},
  uReserva in 'uReserva.pas' {_frmReserva},
  uPagamento in 'uPagamento.pas' {_frmPagamento},
  uCobranca in 'uCobranca.pas' {_frmCadGridDebito},
  uFuncionario in '..\cadastros\uFuncionario.pas' {_frmCadGridFuncionario},
  uGrupoUsuario in '..\cadastros\uGrupoUsuario.pas' {_frmCadGridGrupoUsuario},
  uPreReport in '..\lib\uPreReport.pas' {_frmPreReport},
  uReportFunc in '..\lib\uReportFunc.pas',
  uRpt in '..\lib\uRpt.pas' {_frmRpt},
  uFormAniverssariante in '..\relatórios\Filtros\uFormAniverssariante.pas' {_FormAniversariante},
  uRptAniverssariantes in '..\relatórios\Rpts\uRptAniverssariantes.pas' {_frmRptAniverssariantes},
  uFormDebito in '..\relatórios\Filtros\uFormDebito.pas' {_frmFormDebito},
  uRptDebito in '..\relatórios\Rpts\uRptDebito.pas' {_frmRptDebito},
  uFormCliente in '..\relatórios\Filtros\uFormCliente.pas' {_frmFormCliente},
  uRptCliente in '..\relatórios\Rpts\uRptCliente.pas' {_frmRptCliente},
  uRptGenero in '..\relatórios\Rpts\uRptGenero.pas' {_frmRptGenero},
  uFormGenero in '..\relatórios\Filtros\uFormGenero.pas' {_frmFormGenero},
  uRptPreco in '..\relatórios\Rpts\uRptPreco.pas' {_frmRptPreco},
  uFormPreco in '..\relatórios\Filtros\uFormPreco.pas' {_frmFormPreco},
  uFormFilmes in '..\relatórios\Filtros\uFormFilmes.pas' {_frmFormFilme},
  uRptFilme in '..\relatórios\Rpts\uRptFilme.pas' {_frmRptFilme},
  uEmpresa in '..\cadastros\uEmpresa.pas' {_frmCadGridEmpresa},
  uCaixa in '..\Lançamentos\ucaixa.pas' {_frmCaixa},
  uConfigConexao in '..\lib\uConfigConexao.pas' {_frmCofiguracao},
  uInstalarSenha in '..\lib\uInstalarSenha.pas' {_frmInserirSenha},
  uRegistro in '..\lib\uRegistro.pas',
  uMigraBase in '..\lib\uMigraBase.pas' {_frmMigraBase},
  uDMMCLocadora in 'uDMMCLocadora.pas' {DMMCLocadora: TDataModule},
  uRptCodeBarFitas in '..\relatórios\Filtros\uRptCodeBarFitas.pas' {_frmFormCodeBarFitas},
  uRptCodeBarFita in '..\relatórios\Rpts\uRptCodeBarFita.pas' {_frmRptCodeBarFita},
  uExclusao in '..\relatórios\Rpts\uExclusao.pas';

{$R *.res}

begin
  Application.Initialize;
  _frmSplash := T_frmSplash.Create(Application);
  _frmSplash.show;
  _frmSplash.Refresh;
  _frmSplash.Free;
  _frmSplash := nil;
  Application.Title := 'MCLocadora  2.2';
  Application.Run;
  if not DM.SisControl.FinalizouInstalacao then begin
    DM.cds.Close;
    DeleteFile(path + 'conexão.mc');
  end
end.
