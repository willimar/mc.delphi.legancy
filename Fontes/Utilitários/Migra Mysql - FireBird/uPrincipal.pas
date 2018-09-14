unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZQueryMC, ActnList, Buttons, SpeedButtonMC, Gauges, ZSqlProcessor;

type
  TForm1 = class(TForm)
    mysql: TZConnection;
    fbird: TZConnection;
    fbPessoa: TZQueryMC;
    fbPessoaCODPESSOA: TIntegerField;
    fbPessoaCODCIDRESID: TIntegerField;
    fbPessoaCODUSUARIO: TIntegerField;
    fbPessoaENDERECO: TStringField;
    fbPessoaCOMPLEMENTO: TStringField;
    fbPessoaBAIRRO: TStringField;
    fbPessoaTEL: TStringField;
    fbPessoaCEL: TStringField;
    fbPessoaCEP: TStringField;
    fbPessoaNOME: TStringField;
    fbPessoaTIPOPESSOA: TStringField;
    fbPessoaCPFCNPJ: TStringField;
    fbPessoaEMAIL: TStringField;
    fbPessoaWEB: TStringField;
    fbPessoaDATACADASTRO: TDateField;
    fbPessoaDATATUALIZACAO: TDateField;
    fbPessoaRG: TStringField;
    fbPessoaDATANASCIMENTO: TDateField;
    ZQueryMC2: TZQueryMC;
    ZQueryMC2CodPessoa: TIntegerField;
    ZQueryMC2RG: TStringField;
    ZQueryMC2CPFCNPJ: TStringField;
    ZQueryMC2Nome: TStringField;
    ZQueryMC2DataNasc: TDateField;
    ZQueryMC2Rua: TStringField;
    ZQueryMC2Complemento: TStringField;
    ZQueryMC2Bairro: TStringField;
    ZQueryMC2Cep: TStringField;
    ZQueryMC2DataCadastro: TDateField;
    ZQueryMC2Tel1: TStringField;
    ZQueryMC2Tel2: TStringField;
    ZQueryMC2Email: TStringField;
    ZQueryMC2Url: TStringField;
    ZQueryMC2CODCIDRESID: TIntegerField;
    ZQueryMC2CODUSUARIO: TIntegerField;
    ZQueryMC2TIPOPESSOA: TStringField;
    ZQueryMC2DATAATUALIZACAO: TDateField;
    Gauge1: TGauge;
    SpeedButtonMC1: TSpeedButtonMC;
    ZSQLProcessor1: TZSQLProcessor;
    fbCliente: TZQueryMC;
    fbClienteCODCLIENTE: TIntegerField;
    fbClienteCODPESSOA: TIntegerField;
    fbClientePROPRIETARIO: TStringField;
    fbClienteFIADOR: TStringField;
    fbClienteFORNECEDOR: TStringField;
    fbClienteFUNCIONARIO: TStringField;
    fbClienteLOCADOR: TStringField;
    fbClienteCOMPRADOR: TStringField;
    fbClienteCONTATOTEL: TStringField;
    fbClienteINTERESSADO: TStringField;
    fbClienteTITULAR: TStringField;
    fbClienteRECEBEEMAIL: TStringField;
    fbClientePROFISSAO: TStringField;
    fbClienteCODTITULAR: TIntegerField;
    fbClienteATIVO: TStringField;
    ZQueryMC1: TZQueryMC;
    ZQueryMC1Ativo: TStringField;
    ZQueryMC1CodPessoa: TIntegerField;
    ZQueryMC1CodTitular: TIntegerField;
    ZQueryMC1Profissao: TStringField;
    ZQueryMC1Titular: TStringField;
    ZQueryMC1EnviarEmail: TStringField;
    ZQueryMC1CODCLIENTE: TIntegerField;
  private
    { Private declarations }
    procedure Inserir(Origem, Destino: TZQueryMC);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Inserir(Origem, Destino: TZQueryMC);
var
  i: integer;
begin
  Origem.Append;
  for i := 0 to pred(Origem.FieldCount) do begin
    Destino.Fields[i].AsVariant := Origem.Fields[i].AsVariant;
  end;
  Destino.Post;
end;

end.
