program MCEstoque;

uses
  Forms,
  SysUtils,
  uToolFunc in '..\lib\uToolFunc.pas',
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
  uPrincipal in 'uPrincipal.pas' {_frmPrincipal},
  uCliente in '..\cadastros\uCliente.pas' {_frmCadGridCliente},
  uEmpresa in '..\cadastros\uEmpresa.pas' {_frmCadGridEmpresa},
  uFormCliente in '..\relatórios\Filtros\uFormCliente.pas' {_frmFormCliente},
  uRptCliente in '..\relatórios\Rpts\uRptCliente.pas' {_frmRptCliente},
  uCidade in '..\cadastros\uCidade.pas' {_frmCadGridCidade},
  uDependentes in '..\cadastros\uDependentes.pas' {_frmDependentes},
  uFornecedor in '..\cadastros\uFornecedor.pas' {_frmCadGridForncedor},
  uFuncionario in '..\cadastros\uFuncionario.pas' {_frmCadGridFuncionario},
  uGrupoUsuario in '..\cadastros\uGrupoUsuario.pas' {_frmCadGridGrupoUsuario},
  uDepartamento in '..\cadastros\uDepartamento.pas' {_frmCadGridDepartamento},
  uCadStringGrid in '..\lib\uCadStringGrid.pas' {_frmCadStringGrid},
  uVendedor in '..\cadastros\uVendedor.pas' {_frmCadGridVendedor},
  uSocio in '..\cadastros\uSocio.pas' {_frmCadGridSocio},
  uTransportador in '..\cadastros\uTransportador.pas' {_frmCadGridTransportador},
  uOperacaoFinanceira in '..\cadastros\uOperacaoFinanceira.pas' {_frmCadGridOperacaoFinanceira},
  uPlanoPagamento in '..\cadastros\uPlanoPagamento.pas' {_frmCadGridPlanoPagamento},
  uTributacaoNotaFiscal in '..\cadastros\uTributacaoNotaFiscal.pas' {_frmCadGridTributacaoNotaFiscal},
  uProduto in '..\cadastros\uProduto.pas' {_frmCadGridProduto},
  uGerenciadorConta in '..\cadastros\uGerenciadorConta.pas' {_frmCadGridGerenciadorConta},
  uGrupoProduto in '..\cadastros\uGrupoProduto.pas' {_frmCadGridGrupoProduto},
  uSubGrupoProduto in '..\cadastros\uSubGrupoProduto.pas' {_frmCadGridSubGrupoProduto},
  uAnaliseCredito in '..\uMovimentos\uAnaliseCredito.pas' {_frmCadGridAnaliseCredito};

{$R *.res}

begin
  Application.Initialize;
  _frmSplash := T_frmSplash.Create(Application);
  _frmSplash.show;
  _frmSplash.Refresh;
  _frmSplash.Free;
  _frmSplash := nil;
  Application.Title := 'MCEstoque';
  Application.Run;
  if not DM.SisControl.FinalizouInstalacao then begin
    DM.cds.Close;                                    
    DeleteFile(path + 'conexão.mc');
  end
end.
