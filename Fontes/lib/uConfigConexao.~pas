unit uConfigConexao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Provider, DB, DBClient,
  Mask, DBCtrls, Gauges, ZConnection, ZSqlProcessor, LabelMC, ComboBoxMC,
  DBComboBoxMC, DBEditMC;

type
  T_frmCofiguracao = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    lblFechar: TLabel;
    Panel4: TPanel;
    Shape4: TShape;
    Label1: TLabel;
    Panel2: TPanel;
    Shape2: TShape;
    Panel3: TPanel;
    Shape3: TShape;
    ToolBar1: TToolBar;
    bitGravar: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Shape5: TShape;
    txtEndFisico: TDBEdit;
    txtUser: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    txtSenha: TDBEdit;
    Label2: TLabel;
    cds: TClientDataSet;
    dsr: TDataSource;
    cdshost: TStringField;
    cdsuser: TStringField;
    cdssenha: TStringField;
    Gauge: TGauge;
    lblInformativo: TLabel;
    cdsporta: TIntegerField;
    Label4: TLabel;
    txtPorta: TDBEdit;
    Label6: TLabel;
    Memo: TDBMemo;
    dsrSqlTabela: TDataSource;
    cdsSqlTabela1: TClientDataSet;
    cdsSqlTabela1SQL: TBlobField;
    cdsSqlDados1: TClientDataSet;
    cdsSqlDados1SQL: TBlobField;
    dsrDados: TDataSource;
    Image1: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    bitCancelar: TSpeedButton;
    LabelMC1: TLabelMC;
    LabelMC2: TLabelMC;
    cdsprotocolo: TStringField;
    cmbProtocolo: TDBComboBoxMC;
    LabelMC3: TLabelMC;
    cdsenrecofisico: TStringField;
    LabelMC4: TLabelMC;
    txtHost: TDBEditMC;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bitGravarClick(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsAfterEdit(DataSet: TDataSet);
    procedure txtEndFisicoChange(Sender: TObject);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure bitCancelarClick(Sender: TObject);
  private
    { Private declarations }
    db: TZConnection;
    Processor: TZSQLProcessor;
    Query: TZQuery;
    ClientDataSet: TClientDataSet;
    Provider: TDataSetProvider;
    procedure PrepararObjetos;
    procedure TestarConexao;
    procedure Resetar(Mensagem: boolean);
    procedure EscreveLabel(Valor: String);
    procedure ProcessarSql;
    procedure ExecutarBlocoSql(Sql: String);
    procedure SalvarConexao;
    procedure CadastraEmpresa;
    procedure PreparaConexaoOficial;
    function FaltaBaseDados: boolean;
  public
    { Public declarations }

  end;

var
  _frmCofiguracao: T_frmCofiguracao;

implementation

uses uToolFunc, uEmpresa, uPrincipal, uDM;

{$R *.dfm}

procedure T_frmCofiguracao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ModalResult := mrCancel;
end;

procedure T_frmCofiguracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fMenu(_frmPrincipal);
end;

procedure T_frmCofiguracao.PrepararObjetos;
begin
  bitCancelar.Enabled := false;
  EscreveLabel('Preparando objetos para conexão.');
  db := TZConnection.Create(self);
  Processor := TZSQLProcessor.Create(self);
  Processor.Connection := db;
  cds.Edit;
  Query := TZQuery.Create(self);
  Query.Connection := db;
  Query.RequestLive := true;
  Provider := TDataSetProvider.Create(self);
  Provider.DataSet := Query;
  Provider.Name := 'Provider';
  ClientDataSet := TClientDataSet.Create(self);
  ClientDataSet.ProviderName := Provider.Name;
end;

procedure T_frmCofiguracao.TestarConexao;
begin
  try
    EscreveLabel('Conectando ao banco de dados.');
    if DadoInvalido(txtHost, nil, 'Informe o local onde está o servidor.') or
      DadoInvalido(txtUser, nil, 'Inform o nome do usuário.') then
    begin
      Resetar(false);
      Abort;
    end;
    //D:\Programação\NovaGeração\dados\MCLocadora.fbd
    db.HostName := txtHost.Text;
    db.User := txtUser.Text;
    db.Password := txtSenha.Text;
    db.Database := txtEndFisico.Text;
    db.Protocol := cmbProtocolo.Text;
    db.Port := StrToInt(iif(txtPorta.Text = '', '0', txtPorta.Text));
    db.Connect;
  except
    Resetar(true);
    Abort;
  end;
end;

procedure T_frmCofiguracao.Resetar(Mensagem: boolean);
begin
  Gauge.Progress := 0;
  FreeAndNil(db);
  FreeAndNil(Processor);
  if Mensagem then
  begin
    EscreveLabel('Não foi possivel completar a conexão.');
    Alerta('Não foi possivel completar a conexão.', false);
  end;
end;

procedure T_frmCofiguracao.EscreveLabel(Valor: String);
begin
  lblInformativo.Caption := Valor;
  Self.Refresh;
  Application.ProcessMessages;
end;

procedure T_frmCofiguracao.FormCreate(Sender: TObject);
begin
  cds.CreateDataSet;
  cds.Edit;
end;

procedure T_frmCofiguracao.bitGravarClick(Sender: TObject);
begin
  try
    if cmbProtocolo.ItemIndex > 0 then begin
      Alerta('Esta versão e sistema somente poderá usar o bnco de dados Firebird 1.5');
      Exit;
    end;
    incGauge(Gauge); //1
    PrepararObjetos;
    incGauge(Gauge); //2
    TestarConexao;
    EscreveLabel('Conexão com o banco de dados estabelecida com sucesso.');
    incGauge(Gauge); //3
    if FaltaBaseDados then
    begin
      ProcessarSql;    //85
    end;
    incGauge(Gauge); //86
    SalvarConexao;
    incGauge(Gauge); //87
    PreparaConexaoOficial;
    incGauge(Gauge); //88
    CadastraEmpresa;

  finally 
    FreeAndNil(db);
    FreeAndNil(Processor);
    FreeAndNil(Query);
    FreeAndNil(ClientDataSet);
    FreeAndNil(Provider);
    bitCancelar.Enabled := true;
  end;
end;

procedure T_frmCofiguracao.ProcessarSql;
var
  i: integer;
  Valor : string;
begin
  
end;

procedure T_frmCofiguracao.ExecutarBlocoSql(Sql: String);
begin

end;

procedure T_frmCofiguracao.SalvarConexao;
begin
  if cds.State in [dsEdit, dsINsert] then cds.Post;
  cds.SaveToFile(ExtractFilePath(ParamStr(0)) + 'conexão.mc', dfBinary);
  cds.Edit;
end;

procedure T_frmCofiguracao.cdsBeforePost(DataSet: TDataSet);
begin
  cdshost.AsString := Criptografar(cdshost.AsString);
  cdsuser.AsString := Criptografar(cdsuser.AsString);
  cdssenha.AsString := Criptografar(cdssenha.AsString);
end;

procedure T_frmCofiguracao.cdsAfterEdit(DataSet: TDataSet);
begin
  cdshost.AsString := Descriptografar(cdshost.AsString);
  cdsuser.AsString := Descriptografar(cdsuser.AsString);
  cdssenha.AsString := Descriptografar(cdssenha.AsString);
end;

procedure T_frmCofiguracao.txtEndFisicoChange(Sender: TObject);
begin
  (Sender as TDBEdit).Color := clWindow;
end;

procedure T_frmCofiguracao.cdsAfterInsert(DataSet: TDataSet);
begin
  cdsprotocolo.AsString := 'firebird-1.5';
  cdsporta.AsInteger := 0;
  cdshost.AsString := 'localhost';
  cdsenrecofisico.AsString := 'MCLocadora';
  cdsuser.AsString := 'sysdba';
  cdssenha.AsString := 'masterkey';
end;

procedure T_frmCofiguracao.CadastraEmpresa;
var
  _frmCadGridEmpresa: T_frmCadGridEmpresa;  
begin
  _frmCadGridEmpresa := T_frmCadGridEmpresa.Abrir(_frmPrincipal);
  _frmCadGridEmpresa.lblFechar.Enabled := false;
  _frmCadGridEmpresa.bitCancelar.visible := false;
  if _frmCadGridEmpresa.qryCad.IsEmpty then begin
    _frmCadGridEmpresa.bitInserirClick(_frmCadGridEmpresa.bitInserir);
  end
  else begin
    _frmCadGridEmpresa.bitAlterarClick(_frmCadGridEmpresa.bitAlterar);
  end;
end;

procedure T_frmCofiguracao.PreparaConexaoOficial;
begin
  cds.FileName := ExtractFilePath(ParamStr(0)) + 'conexão.mc';
  cds.Open;
  DM.db.HostName := cdshost.AsString;
  DM.db.Database := cdsenrecofisico.AsString;
  DM.db.User := cdsuser.AsString;
  DM.db.Password := cdssenha.AsString;
  DM.db.Port := cdsporta.AsInteger;
  DM.db.Protocol := cdsprotocolo.AsString;
  DM.db.Connected := true;
end;

function T_frmCofiguracao.FaltaBaseDados: boolean;
begin
  Result := false;
end;

procedure T_frmCofiguracao.bitCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
