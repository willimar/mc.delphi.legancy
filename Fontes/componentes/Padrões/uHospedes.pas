unit uHospedes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, ImgList,
  Grids, DBGrids, Mask, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DBClient, Provider;

Const
  ConstHIstorico =                                                                   
    'SELECT '                                                                        +
	    'Apartamento "Apartamento", q.Descricao "Descrição do Quarto", '               +
	    'pq.Descricao "Perfil do Quarto", '                                            +
	    'hh.DataHospedagemChegada, hh.DataHospedagemSaida '                            +
    'FROM tbhistoricohospedagem hh '                                                 +
    'LEFT JOIN tbquarto q ON q.CodQuarto=hh.CodQuarto '                              +
    'LEFT JOIN tbperfilquarto pq ON pq.CodPerfilQuarto=q.CodPerfilQuarto '           ;

type
  T_frmHospede = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    Panel2: TPanel;
    Shape2: TShape;
    Panel3: TPanel;
    Shape3: TShape;
    lblFechar: TLabel;
    Panel4: TPanel;
    Shape4: TShape;
    ToolBar1: TToolBar;
    bitInserir: TSpeedButton;
    bitAlterar: TSpeedButton;
    bitGravar: TSpeedButton;
    bitCancelar: TSpeedButton;
    bitExcluir: TSpeedButton;
    bitImprimir: TSpeedButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel5: TPanel;
    Shape5: TShape;
    Label1: TLabel;
    PageControl1: TPageControl;
    tbsGrid: TTabSheet;
    tbsDetalhes: TTabSheet;
    dbgDados: TDBGrid;
    tbPessoa: TZQuery;
    dsrPessoa: TDataSource;
    Panel7: TPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label2: TLabel;
    edtTexto: TEdit;
    Texto: TLabel;
    Label4: TLabel;
    cboCampo: TComboBox;
    dsrGrid: TDataSource;
    cdsGrid: TClientDataSet;
    dspGrid: TDataSetProvider;
    qryGrid: TZReadOnlyQuery;
    Panel6: TPanel;
    dbeCodigo: TDBEdit;
    Label3: TLabel;
    dbeNome: TDBEdit;
    Label5: TLabel;
    Panel8: TPanel;
    pgcFuncionario: TPageControl;
    tbsDadosGerais: TTabSheet;
    pnlDoc: TPanel;
    Bevel4: TBevel;
    Label7: TLabel;
    bitCidade: TSpeedButton;
    Label9: TLabel;
    Label15: TLabel;
    edtUf: TEdit;
    edtPais: TEdit;
    dblEstadoCivil: TDBLookupComboBox;
    dblSexo: TDBComboBox;
    chkDeficiente: TDBCheckBox;
    Panel11: TPanel;
    Bevel3: TBevel;
    Label13: TLabel;
    dbeRg: TDBEdit;
    Panel12: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Panel13: TPanel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    tbsEndereco: TTabSheet;
    tbsDependente: TTabSheet;
    panEnd: TPanel;
    Bevel8: TBevel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    SpeedButton10: TSpeedButton;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    dbeRua: TDBEdit;
    dbeComplemento: TDBEdit;
    dbeBairro: TDBEdit;
    dbeCep: TDBEdit;
    dblCidade2: TDBLookupComboBox;
    edtUf2: TEdit;
    edtPais2: TEdit;
    dbeTel: TDBEdit;
    dbeFax: TDBEdit;
    dbeCel: TDBEdit;
    dbeEmail: TDBEdit;
    dbeWeb: TDBEdit;
    Panel19: TPanel;
    dbmObs: TDBMemo;
    Panel20: TPanel;
    Panel21: TPanel;
    DBGrid1: TDBGrid;
    dsrHospede: TDataSource;
    tbHospede: TZQuery;
    tbCidade: TZQuery;
    dsrCidade: TDataSource;
    dsrDependentes: TDataSource;
    cdsDependentes: TClientDataSet;
    dspDependente: TDataSetProvider;
    dsrEstadoCivil: TDataSource;
    tbEstadoCivil: TZQuery;
    dblCidade: TDBLookupComboBox;
    Label6: TLabel;
    dbeApelido: TDBEdit;
    dbeCpf: TDBEdit;
    Label10: TLabel;
    dbeNascimento: TDBEdit;
    lblCPF: TLabel;
    tbPessoaCodPessoa: TIntegerField;
    tbPessoaCodEmpresa: TIntegerField;
    tbPessoaCodCidadeResidencia: TIntegerField;
    tbPessoaCodUsuario: TIntegerField;
    tbPessoaEndereco: TStringField;
    tbPessoaComplemento: TStringField;
    tbPessoaBairro: TStringField;
    tbPessoaTel1: TStringField;
    tbPessoaTel2: TStringField;
    tbPessoaTel3: TStringField;
    tbPessoaCep: TStringField;
    tbPessoaNome: TStringField;
    tbPessoaTipoPessoa: TStringField;
    tbPessoaEmail: TStringField;
    tbPessoaWeb: TStringField;
    tbPessoaDatCadastro: TDateField;
    tbPessoaDatAtualizacao: TDateField;
    tbHospedeCodHospede: TIntegerField;
    tbHospedeApelido: TStringField;
    tbHospedeDataNascimento: TDateField;
    tbHospedeCodNaturalidade: TIntegerField;
    tbHospedeSexo: TStringField;
    tbHospedeDeficiente: TStringField;
    tbHospedeTipoDeficiencia: TStringField;
    tbHospedeObs: TMemoField;
    tbPessoaRG: TStringField;
    tbHospedeCodEstadoCivil: TIntegerField;
    dbeTipoDeficiencia: TDBEdit;
    tbCidadeCodCidade: TIntegerField;
    tbCidadeCodUf: TStringField;
    tbCidadeNome: TStringField;
    tbCidadeNaturalidade: TStringField;
    tbCidadePais: TStringField;
    tbUsuario: TZQuery;
    dsrUsuario: TDataSource;
    tbUsuarioCodUsuario: TIntegerField;
    tbUsuarioCodGrupoUsuario: TIntegerField;
    tbUsuarioCodPessoa: TIntegerField;
    tbUsuarioLogin: TStringField;
    tbUsuarioSenha: TStringField;
    tbUsuarioUltimaSenha: TStringField;
    tbUsuarioDatExpiracao: TDateField;
    tbUsuarioAtivo: TStringField;
    tbPessoaUsuario: TStringField;
    tbPessoaDescUser: TStringField;
    tbHospedeCodPessoa: TIntegerField;
    tbPessoaCPFCNPJ: TStringField;
    cdsDependentesApartamento: TStringField;
    cdsDependentesDescriodoQuarto: TStringField;
    cdsDependentesPerfildoQuarto: TStringField;
    cdsDependentesDataHospedagemChegada: TDateField;
    cdsDependentesDataHospedagemSaida: TDateField;
    cdsDependentesPeriodo: TStringField;
    qryDependentes: TZQuery;
    procedure lblFecharMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lblFecharMouseLeave(Sender: TObject);
    procedure lblFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgDadosTitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure bitInserirClick(Sender: TObject);
    procedure bitAlterarClick(Sender: TObject);
    procedure bitGravarClick(Sender: TObject);
    procedure bitCancelarClick(Sender: TObject);
    procedure dbCodigoChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bitCidadeClick(Sender: TObject);
    procedure tbsDetalhesShow(Sender: TObject);
    procedure dblCidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtTextoChange(Sender: TObject);
    procedure dsrGridDataChange(Sender: TObject; Field: TField);
    procedure dblCidade2Click(Sender: TObject);
    procedure dbeCodigoChange(Sender: TObject);
    procedure dblSexoChange(Sender: TObject);
    procedure tbHospedeAfterInsert(DataSet: TDataSet);
    procedure dblEstadoCivilClick(Sender: TObject);
    procedure tbPessoaCalcFields(DataSet: TDataSet);
    procedure chkDeficienteClick(Sender: TObject);
    procedure tbPessoaAfterInsert(DataSet: TDataSet);
    procedure dbeCpfExit(Sender: TObject);
    procedure tbsEnderecoShow(Sender: TObject);
    procedure cdsDependentesCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    Coluna: Word;
    Campos: Array of String;
  public
    { Public declarations }
  end;

var
  _frmHospede: T_frmHospede;
  
implementation

uses uDM, uToolFunc, uDBFunc, uVars, uGrupoEmp, uCidade, uConst,
  uEscolheEmpresa, uPrincipal;

{$R *.dfm}

procedure T_frmHospede.lblFecharMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lblFechar.Font.Color := clInfoBk;
end;

procedure T_frmHospede.lblFecharMouseLeave(Sender: TObject);
begin
  lblFechar.Font.Color := clBlack;
end;

procedure T_frmHospede.lblFecharClick(Sender: TObject);
begin
  Close;
end;

procedure T_frmHospede.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fMenu(_frmPrincipal);
end;

procedure T_frmHospede.dbgDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {if odd(cdsGrid.RecNo) then
  begin
    dbgDados.Canvas.Font.Color := clBlack;
    dbgDados.Canvas.Brush.Color := $EFEBE7;
  end
  else
  begin
    dbgDados.Canvas.Font.Color := clBlack;
    dbgDados.Canvas.Brush.Color := clCream;
  end;
  dbgDados.Canvas.FillRect(Rect);
  dbgDados.Canvas.TextOut(Rect.Left + 2, Rect.Top, Column.Field.AsString);}
  ZebraDBGrid(Sender, Rect, Column, State);
end;

procedure T_frmHospede.dbgDadosTitleClick(Column: TColumn);
begin
  cdsGrid.IndexFieldNames := Column.FieldName;
  dbgDados.Columns[Coluna].Font.Style := [];
  Column.Font.Style := [fsBold];
  Coluna := Column.Index;
end;

procedure T_frmHospede.FormShow(Sender: TObject);
begin
  if tbsGrid.TabVisible then
    tbsGrid.Show;
end;

procedure T_frmHospede.bitInserirClick(Sender: TObject);
begin
  Inserir([tbPessoa, tbHospede], [nil], [], []);
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  tbsDetalhes.Show;
  edtUf.Clear;
  edtPais.Clear;
  edtUf2.Clear;
  edtPais2.Clear;
  dbeCodigo.Color := clWindow;
  dbeCodigo.ReadOnly := false;
  dbeCodigo.TabStop := true;
end;

procedure T_frmHospede.bitAlterarClick(Sender: TObject);
begin
  Alterar([tbPessoa, tbHospede], [nil], [], []);
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  tbsDetalhes.Show;
  dbeCodigo.Color := $00E0F7FF;
  dbeCodigo.ReadOnly := true;
  dbeCodigo.TabStop := false;
end;

procedure T_frmHospede.bitGravarClick(Sender: TObject);
begin
  tbsDetalhes.Show;
  if DadoInvalido(dbeCodigo, tbsDadosGerais, 'Digite o código.') or
     DadoInvalido(dbeCpf, tbsDadosGerais, 'Digite o CPF.') or
     DadoInvalido(dbeNome, tbsDadosGerais, 'Digite o nome do hospede.') or
     DadoInvalido(dblCidade, tbsDadosGerais, 'Selecione a naturalidade.') or

     DadoInvalido(dblCidade2, tbsEndereco, 'Selecione a cidade.') then
     exit;

  //validando o CPFCNPJ
  if tbPessoa.FieldValues['TipoPessoa'] <> NULL then
    if tbPessoa.FieldValues['TipoPessoa'] = 'F' then
    begin
      if not ValidarCpf(dbeCpf.Text) then
      begin
        Informacao('O registro não poderá ser salvo com um CPF inválido.', false);
        dbeCpf.SetFocus;
        Abort;
      end;
    end
    else
      if not ValidarCpf(dbeCpf.Text) then
      begin
        Informacao('O registro não poderá ser salvo com um CNPJ inválido.', false);
        dbeCpf.SetFocus;
        Abort;
      end;

  tbPessoa.FieldValues['CodUsuario'] := SisControl.Usuario.CodUsuario;
  //SALVANDO A DATA DO CADASTRO
  if tbPessoa.State in [dsInsert] then
    tbPessoa.FieldValues['DatCadastro'] := Date;
  //SALVANDO A DATA DA ULTIMA ATUALIZAÇÃO
  tbPessoa.FieldValues['DatAtualizacao'] := Date;
  
  Salvar([tbPessoa], ['CodPessoa'], ['tbpessoa']);

  tbHospede.FieldValues['CodPessoa'] := tbPessoa.FieldValues['CodPessoa'];
  Salvar([tbHospede], ['CodHospede'], ['tbhospede']);
  if tbsGrid.TabVisible then
    tbsGrid.Show;
  dbeCodigo.Color := clWindow;
  dbeCodigo.ReadOnly := true;
  dbeCodigo.TabStop := false;
  botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
  edtTextoChange(Sender);
end;

procedure T_frmHospede.bitCancelarClick(Sender: TObject);
begin
  if Pergunta('Deseja cancelar a operação?') then
  begin
    Cancelar([tbHospede, tbPessoa]);
    botao([bitInserir, bitAlterar, bitGravar, bitCancelar, bitExcluir, bitImprimir]);
    if tbsGrid.TabVisible then
      tbsGrid.Show;
    dbeCodigo.Color := clWindow;
    dbeCodigo.ReadOnly := true;
    dbeCodigo.TabStop := false;
  end;
end;

procedure T_frmHospede.dbCodigoChange(Sender: TObject);
begin
  TDBEdit(Sender).Color := clWindow;
end;

procedure T_frmHospede.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ModalResult := mrCancel;
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure T_frmHospede.bitCidadeClick(Sender: TObject);
begin
  Application.CreateForm(T_frmCidade, _frmCidade);
  _frmCidade.Pesquiza := 2;
  _frmCidade.ShowModal;
  tbPessoa.FieldValues['CodCidadeResidencia'] := Chaves.CodCidade;
end;

procedure T_frmHospede.tbsDetalhesShow(Sender: TObject);
begin
  if tbHospede.State in [dsInsert] then
  begin
    dbeCodigo.SetFocus;
  end
  else
  begin
    dbeNome.SetFocus;
    if (dblCidade.Text <> '') then
    begin
      edtUf.Text := iif(NULL=tbCidade.FieldValues['CodUf'], '', tbCidade.FieldValues['CodUf']);
      edtPais.Text := iif(NULL=tbCidade.FieldValues['Pais'], '', tbCidade.FieldValues['Pais']);
    end;
  end;
  pgcFuncionario.ActivePageIndex := 0;
end;

procedure T_frmHospede.dblCidadeClick(Sender: TObject);
begin
  TDBLookupComboBox(Sender).Color := clWindow;
  if dblCidade.KeyValue <> NULL then
    RetornarPesquisa(cPesCidadeUfPais + ' WHERE CodCidade=' + IntToStr(dblCidade.KeyValue), ['UF', 'Pais'], [edtUf, edtPais]);
end;

procedure T_frmHospede.FormCreate(Sender: TObject);
begin
  SetLength(Campos, 9);
  Campos[0] := 'CodHospede';
  Campos[1] := 'p.Nome';
  Campos[2] := 'Apelido';
  Campos[3] := 'Sexo';
  Campos[4] := 'Sexo';
  Campos[5] := 'DataNascimento';
  Campos[6] := 'cn.Nome';
  Campos[7] := 'cn.CodUf';
  Campos[8] := 'pn.Nome';
end;

procedure T_frmHospede.edtTextoChange(Sender: TObject);
begin
  ExecutarFiltro([cPesqHospede], [Campos[cboCampo.ItemIndex]
    + ' LIKE ' + QuotedStr('%' + edtTexto.Text + '%')], [qryGrid]);
  cdsGrid.Close;
  cdsGrid.Open;
end;

procedure T_frmHospede.dsrGridDataChange(Sender: TObject; Field: TField);
begin
  if cdsGrid.FieldValues['Código'] <> NULL then
  begin
    Filtrar([cSqlHospedes], ['CodHospede=' + IntToStr(cdsGrid.FieldValues['Código'])], [tbHospede]);
    Filtrar([cSqlPessoa, ConstHistorico], ['CodPessoa=' + IntToStr(tbHospede.FieldValues['CodPessoa']), 'CodHospede=' + IntToStr(tbHospede.FieldValues['CodHospede'])], [tbPessoa, qryDependentes]);
    cdsDependentes.Close;
    cdsDependentes.Open;
  end;
end;

procedure T_frmHospede.dblCidade2Click(Sender: TObject);
begin
  TDBLookupComboBox(Sender).Color := clWindow;
  if dblCidade2.KeyValue <> NULL then
    RetornarPesquisa(cPesCidadeUfPais + ' WHERE CodCidade=' + IntToStr(dblCidade2.KeyValue), ['UF', 'Pais'], [edtUf2, edtPais2]);
end;

procedure T_frmHospede.dbeCodigoChange(Sender: TObject);
begin
  TDBEdit(Sender).Color := clWindow;
end;

procedure T_frmHospede.dblSexoChange(Sender: TObject);
begin
  TDBComboBox(Sender).Color := clWindow;
end;

procedure T_frmHospede.tbHospedeAfterInsert(DataSet: TDataSet);
begin
  tbHospede.FieldValues['CodHospede'] := Codigo('tbhospede', 'CodHospede');
  tbHospede.FieldValues['Deficiente'] := 'Não';
end;

procedure T_frmHospede.dblEstadoCivilClick(Sender: TObject);
begin
  TDBLookupComboBox(Sender).Color := clWindow;
end;

procedure T_frmHospede.tbPessoaCalcFields(DataSet: TDataSet);
begin
  tbPessoaDescUser.Value := tbPessoaCodUsuario.Text + iif(tbPessoaCodUsuario.Text <> '', ' - ', '') + tbPessoaUsuario.Text; 
end;

procedure T_frmHospede.chkDeficienteClick(Sender: TObject);
begin
  if chkDeficiente.Checked then
  begin
    dbeTipoDeficiencia.Color := clWindow;
    dbeTipoDeficiencia.ReadOnly := false;
    dbeTipoDeficiencia.TabStop := true;
  end
  else
  begin
    dbeTipoDeficiencia.Color := $00E0F7FF;
    dbeTipoDeficiencia.ReadOnly := false;
    dbeTipoDeficiencia.TabStop := true;
  end;
end;

procedure T_frmHospede.tbPessoaAfterInsert(DataSet: TDataSet);
begin
  tbPessoa.FieldValues['CodUsuario'] := SisControl.Usuario.CodUsuario;
end;

procedure T_frmHospede.dbeCpfExit(Sender: TObject);
begin
  if ValidarPessoa(Sender, tbPessoa, tbHospede, 'tbhospede') then
  begin
    if Length(GetObjText(Sender)) = 14 then //SALVANDO O TIPO DE PESSOA
      tbPessoa.FieldValues['TipoPessoa'] := 'F'
    else
      tbPessoa.FieldValues['TipoPessoa'] := 'J';
    dblCidadeClick(dblCidade);
    dblCidade2Click(dblCidade2);
  end
  else
    tbPessoa.FieldValues['TipoPessoa'] := 'F'
end;

procedure T_frmHospede.tbsEnderecoShow(Sender: TObject);
begin
  dblCidade2Click(dblCidade2);
end;

procedure T_frmHospede.cdsDependentesCalcFields(DataSet: TDataSet);
begin
  cdsDependentesPeriodo.Value := cdsDependentesDataHospedagemChegada.Text + ' - ' + cdsDependentesDataHospedagemSaida.Text;
end;

end.
