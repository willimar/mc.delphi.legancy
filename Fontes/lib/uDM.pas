unit uDM;

interface

uses
  SysUtils, Classes, ZConnection, ImgList, Controls, ZSqlProcessor, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  DBXpress, SqlExpr, RLPreviewForm, ZSqlMonitor, ExtCtrls, uRegistro;

type
  TUsuario = Class
    Usuario: String;
    Codigo: Integer;
    Login: String;
    Senha: String;
  end;

  TSerial = Class
    NumeroSerial: String;
    Registro: TRegistro;
    ExpiraEm: String;
  end;
  TEmpresa = Class
    Empresa: String;
    Codigo: Integer;
    Cidade: String;
    UF: String[2];
    Endereco: String;
    Bairro: String;
    CNPJ: String;
    Telefone: String;
    Email: String;
    Web: String;
    Serial: TSerial;
  end;
  TSisControl = class(TComponent)
    private
    FApplicationNome: String;
    FRegRaiz: String;
    FUsuario: TUsuario;
    FPrimeiraVez: boolean;
    FTravarReservado: boolean;
    FBarCode: boolean;
    FEmpresa: TEmpresa;
    FLogado: Boolean;
    FFinalizouInstalacao: boolean;
    FVersao: string;
    FValorConvY: Integer;
    FValorConvX: Integer;
    FFlagGeral: integer;

      { Private declarations }
    public
      { Public declarations }
      constructor Create(AWoner: TComponent);override;
      procedure SetEmpresa;
    published
      { published declarations }
      property ApplicationNome: String read FApplicationNome write FApplicationNome;
      property Versao: string read FVersao write FVersao;
      property RegRaiz: String read FRegRaiz write FRegRaiz;
      property Usuario: TUsuario read FUsuario write FUsuario;
      property PrimeiraVez: boolean read FPrimeiraVez write FPrimeiraVez;
      property TravarReservado: boolean read FTravarReservado write FTravarReservado;
      property BarCode: boolean read FBarCode write FBarCode;
      property Empresa: TEmpresa read FEmpresa write FEmpresa;
      property Logado: Boolean read FLogado write FLogado;
      property FinalizouInstalacao: boolean read FFinalizouInstalacao write FFinalizouInstalacao;
      property ValorConvX: Integer read FValorConvX write FValorConvX;
      property ValorConvY: Integer read FValorConvY write FValorConvY;
      property FlagGeral: integer read FFlagGeral default 437;
  end;
  TDM = class(TDataModule)
    db: TZConnection;
    imgCheckBox: TImageList;
    Processor: TZSQLProcessor;
    qryUsuario: TZQueryMC;
    qryUsuarioCODUSUARIO: TIntegerField;
    qryUsuarioLOGIN: TStringField;
    qryUsuarioSENHA: TStringField;
    qryUsuarioULTIMASENHA: TStringField;
    qryUsuarioDATAEXPIRACAO: TDateField;
    qryUsuarioATIVO: TStringField;
    qryUsuarioNOME: TStringField;
    qryInterface: TZQueryMC;
    qryInterfaceSOMENTELEITURA: TStringField;
    qryInterfaceINSERIR: TStringField;
    qryInterfaceALTERAR: TStringField;
    qryInterfaceIMPRIMIR: TStringField;
    qryInterfaceEXCLUIR: TStringField;
    qryDescCaixa: TZQueryMC;
    qryDescCaixaCODDESCRICAO: TIntegerField;
    qryDescCaixaDESCRICAO: TStringField;
    qryEmpresa: TZQueryMC;
    cds: TClientDataSet;
    cdsprotocolo: TStringField;
    cdshost: TStringField;
    cdsenrecofisico: TStringField;
    cdsuser: TStringField;
    cdssenha: TStringField;
    cdsporta: TIntegerField;
    rlpSetup: TRLPreviewSetup;
    qryEmpresaCODCLIENTE: TIntegerField;
    qryEmpresaNOME: TStringField;
    qryEmpresaCI_NOME: TStringField;
    qryEmpresaCODUF: TStringField;
    qryEmpresaENDERECO: TStringField;
    qryEmpresaBAIRRO: TStringField;
    qryEmpresaTEL: TStringField;
    qryEmpresaCPFCNPJ: TStringField;
    qryEmpresaEMAIL: TStringField;
    qryEmpresaWEB: TStringField;
    qryEmpresaCHAVE: TBlobField;
    qryEmpresaDATAULTIMOACESSO: TStringField;
  private
    FSisControl: TSisControl;
    FNoInicio: integer;
    FNoFim: integer;
    FDepois: integer;
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AWoner: TComponent);override;
    procedure CarregarPermissoes(NomeInterface: String);
  published
    { published declarations }
    property SisControl: TSisControl read FSisControl write FSisControl;
    property NoInicio: integer read FNoInicio default 0;
    property NoFim: integer read FNoFim default 1;
    property Depois: integer read FDepois default 2;

    property Letra: integer read FNoInicio default 0;
    property Float: integer read FNoFim default 1;
    property Inteiro: integer read FDepois default 2;
  end;

var
  DM: TDM;

implementation

uses uToolFunc, DateUtils;

{$R *.dfm}

procedure TDM.CarregarPermissoes(NomeInterface: String);
begin
  qryInterface.Close;
  db.Connected := false;
  qryInterface.ParamByName('NOME').AsString := NomeInterface;
  qryInterface.ParamByName('CODUSUARIO').AsInteger := SisControl.Usuario.Codigo;
  qryInterface.Open;
end;

constructor TDM.Create(AWoner: TComponent);
begin
  inherited Create(AWoner);
  FSisControl := TSisControl.Create(self);
  FSisControl.SetSubComponent(true);
  FSisControl.Name := 'SisControl';
end;

{ TSisControl }

constructor TSisControl.Create(AWoner: TComponent);
begin
  inherited Create(AWoner);
  ApplicationNome := 'Mundo Conecto';
  RegRaiz := ExtractFilePath(ParamStr(0));
  FUsuario := TUsuario.Create;
  FUsuario.Codigo := 1;
  FUsuario.Login := 'MC';
  FUsuario.Senha := 'MC';
  FUsuario.Usuario := 'Usuário temporário';

  FEmpresa := TEmpresa.Create;
  FEmpresa.Codigo := 1;
  FEmpresa.Empresa := 'Mundo Conecto LTDA';
  FEmpresa.Telefone := '(32) 3233-2211';

  FFlagGeral := 437;

  Empresa.Serial := TSerial.Create;
end;

procedure TSisControl.SetEmpresa;
begin
  try
    if DM.qryEmpresa.State in [dsInactive] then
      DM.qryEmpresa.Open;

    Empresa.Empresa := DM.qryEmpresaNOME.AsString;
    Empresa.Codigo := DM.qryEmpresaCODCLIENTE.AsInteger;
    Empresa.Cidade := DM.qryEmpresaCI_NOME.AsString;
    Empresa.UF := DM.qryEmpresaCODUF.AsString;
    Empresa.Endereco := DM.qryEmpresaENDERECO.AsString;
    Empresa.Bairro := DM.qryEmpresaBAIRRO.AsString;
    Empresa.CNPJ := DM.qryEmpresaCPFCNPJ.AsString;
    Empresa.Telefone := DM.qryEmpresaTEL.AsString;
    Empresa.Email := DM.qryEmpresaEMAIL.AsString;
    Empresa.Web := DM.qryEmpresaWEB.AsString;
    Versao := '2.2';
  finally

  end;
end;

end.
