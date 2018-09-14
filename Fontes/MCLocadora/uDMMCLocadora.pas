unit uDMMCLocadora;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZQueryMC, Gauges, RichEditMC, Forms;

type
  TDMMCLocadora = class(TDataModule)
    qryCliente: TZQueryMC;
    qryClienteCODFICHA: TIntegerField;
    qryClienteCODPESSOA: TIntegerField;
    qryClienteNOME: TStringField;
    qryClienteCORE: TStringField;
    qryClienteCONTATONOME: TStringField;
    qryClienteCONTATORAMAL: TStringField;
    qryClienteCONTATOENDERECO: TStringField;
    qryClienteCONTATOBAIRRO: TStringField;
    qryClienteCONTATOCOMPLEMENTO: TStringField;
    qryClienteCONTATOCIDADE: TStringField;
    qryClienteCONTATOCEP: TStringField;
    qryClienteCODGERCONTA: TStringField;
    qryClienteCONTA: TStringField;
    qryClienteFAVORECIDO: TStringField;
    qryClientePROPRIETARIO: TStringField;
    qryClienteFIADOR: TStringField;
    qryClienteFORNECEDOR: TStringField;
    qryClienteFUNCIONARIO: TStringField;
    qryClienteLOCADOR: TStringField;
    qryClienteCOMPRADOR: TStringField;
    qryClienteCONTATOTEL: TStringField;
    qryClienteINTERESSADO: TStringField;
    qryClienteTITULAR: TStringField;
    qryClienteENVIAREMAIL: TStringField;
    qryClientePROFISSAO: TStringField;
    qryClienteCODTITULAR: TIntegerField;
    qryClienteATIVO: TStringField;
    qryClienteEMPRESA: TStringField;
    qryClienteVENDEDOR: TStringField;
    qryClienteREPRESENTANTE: TStringField;
    qryClienteTRANSPORTADOR: TStringField;
    qryPessoa: TZQueryMC;
    qryPessoaCODPESSOA: TIntegerField;
    qryPessoaCODCIDRESID: TLargeintField;
    qryPessoaCODUSUARIO: TLargeintField;
    qryPessoaRUA: TStringField;
    qryPessoaBAIRRO: TStringField;
    qryPessoaCEP: TStringField;
    qryPessoaNOME: TStringField;
    qryPessoaTIPOPESSOA: TStringField;
    qryPessoaCPFCNPJ: TStringField;
    qryPessoaEMAIL: TStringField;
    qryPessoaURL: TStringField;
    qryPessoaDATACADASTRO: TDateField;
    qryPessoaDATAATUALIZACAO: TDateField;
    qryPessoaDATANASC: TDateField;
    qryPessoaSEXO: TStringField;
    qryPessoaOBS: TStringField;
    qryPessoaRAMAL: TStringField;
    qryPessoaCIDNASCIM: TLargeintField;
    qryPessoaDEFICIENCIA: TStringField;
    qryPessoaESTADOCIVIL: TStringField;
    qryPessoaRG: TStringField;
    qryPessoaCOMPLEMENTO: TStringField;
    qryPessoaTEL1: TStringField;
    qryPessoaTEL2: TStringField;
    qryGenero: TZQueryMC;
    qryGeneroCodGenero: TIntegerField;
    qryGeneroTipo: TStringField;
    qryPreco: TZQueryMC;
    qryPrecoCodPreco: TIntegerField;
    qryPrecoTipo: TStringField;
    qryPrecoValor: TFloatField;
    qryFilme: TZQueryMC;
    qryFilmeCODFILME: TIntegerField;
    qryFilmeCODFORNECEDOR: TIntegerField;
    qryFilmeCODPRECO: TIntegerField;
    qryFilmeCODGENERO: TIntegerField;
    qryFilmeNOME: TStringField;
    qryFilmeAUTOR: TStringField;
    qryFilmeDVD: TStringField;
    qryFilmeDATAAQU: TDateField;
    qryFilmeQUANTIDADE: TIntegerField;
    qryFilmeSINOPSE: TMemoField;
    qryFilmeESTANTE: TStringField;
    qryFilmeVALORCOMPRA: TFloatField;
    qryFilmePARTICIP1: TStringField;
    qryFilmePARTICIP2: TStringField;
    qryFilmePARTICIP3: TStringField;
    qryFilmePRTELEIRA: TStringField;
    qryFita: TZQueryMC;
    qryFitaSUBCOD: TStringField;
    qryFitaCODFILME: TIntegerField;
    qryFitaDISPONIVEL: TStringField;
    qryFitaBARCODE: TStringField;
    qryAluguel: TZQueryMC;
    qryAluguelCODALUGUEL: TIntegerField;
    qryAluguelCODPESSOA: TIntegerField;
    qryAluguelRETIRADA: TDateField;
    qryAluguelENTREGA: TDateField;
    qryAluguelVALOR: TFloatField;
    qryAluguelPAGO: TFloatField;
    qryItemAluguel: TZQueryMC;
    qryItemAluguelCODITEMALUG: TIntegerField;
    qryItemAluguelCODALUGUEL: TIntegerField;
    qryItemAluguelVALOR: TFloatField;
    qryItemAluguelDEVOLVE: TStringField;
    qryItemAluguelCODFILME: TIntegerField;
    qryItemAluguelCODFITA: TStringField;
    qryResreva: TZQueryMC;
    qryResrevaCODRESERVA: TIntegerField;
    qryResrevaCODFITA: TStringField;
    qryResrevaCODPESSOA: TIntegerField;
    qryResrevaRESERVA: TDateField;
    qryResrevaCODFICHA: TSmallintField;
    qryDebito: TZQueryMC;
    qryDebitoCodDebito: TIntegerField;
    qryDebitoCodFicha: TIntegerField;
    qryDebitoValor: TFloatField;
    qryDebitoVencimento: TDateField;
    qryCaixa: TZQueryMC;
    qryCaixaCodCaixa: TIntegerField;
    qryCaixaCodEmp: TIntegerField;
    qryCaixaCodDescricao: TIntegerField;
    qryCaixaValor: TFloatField;
    qryCaixaTipo: TStringField;
    qryCaixaLancamento: TDateField;
    sqlCliente: TZQueryMC;
    sqlPessoa: TZQueryMC;
    sqlGenero: TZQueryMC;
    sqlPreco: TZQueryMC;
    sqlFilme: TZQueryMC;
    sqlFita: TZQueryMC;
    sqlAluguel: TZQueryMC;
    sqlItemAluguel: TZQueryMC;
    sqlReserva: TZQueryMC;
    sqlDebito: TZQueryMC;
    sqlCaixa: TZQueryMC;
    sqlPessoaCODPESSOA: TIntegerField;
    sqlPessoaCODCIDRESID: TIntegerField;
    sqlPessoaCODUSUARIO: TIntegerField;
    sqlPessoaENDERECO: TStringField;
    sqlPessoaBAIRRO: TStringField;
    sqlPessoaCEP: TStringField;
    sqlPessoaNOME: TStringField;
    sqlPessoaTIPOPESSOA: TStringField;
    sqlPessoaCPFCNPJ: TStringField;
    sqlPessoaEMAIL: TStringField;
    sqlPessoaWEB: TStringField;
    sqlPessoaDATACADASTRO: TDateField;
    sqlPessoaDATATUALIZACAO: TDateField;
    sqlPessoaDATANASCIMENTO: TDateField;
    sqlPessoaSEXO: TStringField;
    sqlPessoaOBS: TBlobField;
    sqlPessoaTELRAMAL: TStringField;
    sqlPessoaCODCIDADENACIMENTO: TIntegerField;
    sqlPessoaDEFICIECIA: TStringField;
    sqlPessoaESTADOCIVIL: TIntegerField;
    sqlPessoaRG: TStringField;
    sqlPessoaCOMPLEMENTO: TStringField;
    sqlPessoaTEL: TStringField;
    sqlPessoaCEL: TStringField;
    sqlClienteCODCLIENTE: TIntegerField;
    sqlClienteCODPESSOA: TIntegerField;
    sqlClienteAPELIDO: TStringField;
    sqlClienteCORE: TStringField;
    sqlClienteCONTATONOME: TStringField;
    sqlClienteCONTATORAMAL: TStringField;
    sqlClienteCONTATOENDERECO: TStringField;
    sqlClienteCONTATONBAIRRO: TStringField;
    sqlClienteCONTATOCOMPLEMENTO: TStringField;
    sqlClienteCONTATOCIDADEID: TIntegerField;
    sqlClienteCONTATOCEP: TStringField;
    sqlClienteCODGERCONTA: TIntegerField;
    sqlClienteCONTA: TStringField;
    sqlClienteFAVORECIDO: TStringField;
    sqlClientePROPRIETARIO: TStringField;
    sqlClienteFIADOR: TStringField;
    sqlClienteFORNECEDOR: TStringField;
    sqlClienteFUNCIONARIO: TStringField;
    sqlClienteLOCADOR: TStringField;
    sqlClienteCOMPRADOR: TStringField;
    sqlClienteCONTATOTEL: TStringField;
    sqlClienteINTERESSADO: TStringField;
    sqlClienteTITULAR: TStringField;
    sqlClienteRECEBEEMAIL: TStringField;
    sqlClientePROFISSAO: TStringField;
    sqlClienteCODTITULAR: TIntegerField;
    sqlClienteATIVO: TStringField;
    sqlClienteEMPRESA: TStringField;
    sqlClienteVENDEDOR: TStringField;
    sqlClienteREPRESENTANTE: TStringField;
    sqlClienteTRANSPORTADOR: TStringField;
    sqlGeneroCODGENERO: TIntegerField;
    sqlGeneroNOME: TStringField;
    sqlPrecoCODPRECO: TIntegerField;
    sqlPrecoNOME: TStringField;
    sqlPrecoVALOR: TFloatField;
    sqlFilmeCODFILME: TIntegerField;
    sqlFilmeCODFORNECEDOR: TIntegerField;
    sqlFilmeCODPRECO: TIntegerField;
    sqlFilmeCODGENERO: TIntegerField;
    sqlFilmeNOME: TStringField;
    sqlFilmeAUTOR: TStringField;
    sqlFilmeDVD: TStringField;
    sqlFilmeDATAAQU: TDateField;
    sqlFilmeQUANTIDADE: TIntegerField;
    sqlFilmeSINOPSE: TBlobField;
    sqlFilmeESTANTE: TStringField;
    sqlFilmeVALORCOMPRA: TFloatField;
    sqlFilmePARTICIP1: TStringField;
    sqlFilmePARTICIP2: TStringField;
    sqlFilmePARTICIP3: TStringField;
    sqlFilmePRATELEIRA: TStringField;
    sqlAluguelCODALUGUEL: TIntegerField;
    sqlAluguelCODPESSOA: TIntegerField;
    sqlAluguelRETIRADA: TDateField;
    sqlAluguelENTREGA: TDateField;
    sqlAluguelVALOR: TFloatField;
    sqlAluguelPAGO: TFloatField;
    sqlItemAluguelCODITEMALUG: TIntegerField;
    sqlItemAluguelCODALUGUEL: TIntegerField;
    sqlItemAluguelVALOR: TFloatField;
    sqlItemAluguelDEVOLVE: TStringField;
    sqlItemAluguelCODFILME: TIntegerField;
    sqlItemAluguelSUBCOD: TStringField;
    sqlReservaCODRESERVA: TIntegerField;
    sqlReservaCODPESSOA: TIntegerField;
    sqlReservaRESERVA: TDateField;
    sqlReservaCODCLIENTE: TIntegerField;
    sqlReservaSUBCOD: TStringField;
    sqlDebitoCODDEBITO: TIntegerField;
    sqlDebitoCODFICHA: TIntegerField;
    sqlDebitoVALOR: TFloatField;
    sqlDebitoVENCIMENTO: TDateField;
    sqlCaixaCODCAIXA: TIntegerField;
    sqlCaixaCODEMPRESA: TIntegerField;
    sqlCaixaCODDESCRICAO: TIntegerField;
    sqlCaixaVALOR: TFloatField;
    sqlCaixaTIPO: TStringField;
    sqlCaixaLANCAMENTO: TDateField;
    sqlFitaSUBCOD: TStringField;
    sqlFitaCODFILME: TIntegerField;
    sqlFitaDISPONIVEL: TStringField;
    sqlFitaBARCODE: TStringField;
  private
    { Private declarations }
    procedure MigraPessoa;
    procedure MigraCliente;
    procedure MigraAluguel;
    procedure MigraDebito;
    procedure MigraFilme;
    procedure MigraFita;
    procedure MigraGenero;
    procedure MigraItemAluguel;
    procedure MigraPreco;
    procedure MigraCaixa;
    procedure MigraResreva;
  public
    { Public declarations }
    procedure ExecuteAcao;
  published
    Parcial, Total: TGauge;
    Memo: TRichEditMC;
  end;

var
  DMMCLocadora: TDMMCLocadora;

implementation

uses uDM, uToolFunc;

{$R *.dfm}

{ TDMMCLocadora }

procedure TDMMCLocadora.ExecuteAcao;
var
  i, Contagem: integer;
begin
  Contagem := 0;
  for i := 0 to pred(ComponentCount) do begin
    if Components[i] is TZQueryMC then begin
      (Components[i] as TZQueryMC).Open;
      if pos('qry', (Components[i] as TZQueryMC).Name) > 0 then
        Contagem := Contagem + (Components[i] as TZQueryMC).RecordCount;
    end;
  end;

  Total.MaxValue := Contagem;
  try
    Memo.Lines.Add('Migrando os dados da pessoa...');
    MigraPessoa;
  except
    Memo.Lines.Add('Os dados de pessoa não foram todos migrados...');
  end;
  try
    Memo.Lines.Add('Configurando as pessoas...');
    MigraCliente;
  except
    Memo.Lines.Add('Os dados do cliente não foram todos configurados...');
  end;
  try
    Memo.Lines.Add('Migrando os preços de locação...');
    MigraPreco;
  except
    Memo.Lines.Add('Os dados de preço não foram todos migrados...');
  end;
  try
    Memo.Lines.Add('Migrando os generos de filmes...');
    MigraGenero;
  except
    Memo.Lines.Add('Os dados de generos não foram todos migrados...');
  end;
  try
    Memo.Lines.Add('Migrando os filmes...');
    MigraFilme;
  except
    Memo.Lines.Add('Os dados de filmes não foram todos migrados...');
  end;
  try
    Memo.Lines.Add('Configurando os filmes existentes...');
    MigraFita;
  except
    Memo.Lines.Add('Os dados do filme não foram todos configurados...');
  end;
  try
    Memo.Lines.Add('Migrando os aluguéis efetuados...');
    MigraAluguel;
  except
    Memo.Lines.Add('Os dados de aluguel não foram todos migrados...');
  end;
  try
    Memo.Lines.Add('Configurando os alugueis...');
    MigraItemAluguel;
  except
    Memo.Lines.Add('Os dados de aluguel não foram todos configurados...');
  end;
  try
    Memo.Lines.Add('Migrando os debitos de clientes registrados...');
    MigraDebito;
  except
    Memo.Lines.Add('Os dados de debito não foram todos migrados...');
  end;
  try
    Memo.Lines.Add('Migrando os dados de caixa...');
    MigraCaixa;
  except
    Memo.Lines.Add('Os dados de caixa não foram todos migrados...');
  end;
  try
    Memo.Lines.Add('Migrando as reservas...');
    MigraResreva;
  except
    Memo.Lines.Add('Os dados de reserva não foram todos migrados...');
  end;
  Memo.Lines.Add('Migração concluída.');
end;

procedure TDMMCLocadora.MigraPessoa;
var
  i: integer;
begin
  Parcial.MaxValue := qryPessoa.RecordCount;
  Parcial.Progress := 0;
  qryPessoa.First;
  while not qryPessoa.Eof do begin
    if not sqlPessoa.Locate('CODPESSOA', qryPessoaCODPESSOA.AsInteger, [loCaseInsensitive]) then begin
      //Application.ProcessMessages;
      sqlPessoa.Append;
      for i := 0 to pred(qryPessoa.FieldCount) do begin
        sqlPessoa.Fields[i].Value := qryPessoa.Fields[i].Value;
      end;
      sqlPessoa.Post;
    end;
    qryPessoa.Next;
    incGauge(Parcial);
    incGauge(Total);
  end;
end;

procedure TDMMCLocadora.MigraCliente;
var
  i: integer;
begin
  Parcial.MaxValue := qryCliente.RecordCount;
  Parcial.Progress := 0;
  qryCliente.First;
  while not qryCliente.Eof do begin
    if not sqlCliente.Locate('CODCLIENTE', qryClienteCODFICHA.AsInteger, [loCaseInsensitive]) then begin
      //Application.ProcessMessages;
      sqlCliente.Append;
      for i := 0 to pred(qryCliente.FieldCount) do begin
        sqlCliente.Fields[i].Value := qryCliente.Fields[i].Value;
      end;
      sqlCliente.Post;
    end;
    qryCliente.Next;
    incGauge(Parcial);
    incGauge(Total);
  end;
end;

procedure TDMMCLocadora.MigraGenero;
var
  i: integer;
begin
  Parcial.MaxValue := qryGenero.RecordCount;
  Parcial.Progress := 0;
  qryGenero.First;
  while not qryGenero.Eof do begin
    if not sqlGenero.Locate('CODgenero', qryGeneroCodGenero.AsInteger, [loCaseInsensitive]) then begin
      //Application.ProcessMessages;
      sqlGenero.Append;
      for i := 0 to pred(qryGenero.FieldCount) do begin
        sqlGenero.Fields[i].Value := qryGenero.Fields[i].Value;
      end;
      sqlGenero.Post;
    end;
    qryGenero.Next;
    incGauge(Parcial);
    incGauge(Total);
  end;
end;

procedure TDMMCLocadora.MigraPreco;
var
  i: integer;
begin
  Parcial.MaxValue := qryPreco.RecordCount;
  Parcial.Progress := 0;
  qryPreco.First;
  while not qryPreco.Eof do begin
    if not sqlPreco.Locate('CODPreco', qryPrecoCodPreco.AsInteger, [loCaseInsensitive]) then begin
      //Application.ProcessMessages;
      sqlPreco.Append;
      for i := 0 to pred(qryPreco.FieldCount) do begin
        sqlPreco.Fields[i].Value := qryPreco.Fields[i].Value;
      end;
      sqlPreco.Post;
    end;
    qryPreco.Next;
    incGauge(Parcial);
    incGauge(Total);
  end;
end;

procedure TDMMCLocadora.MigraFilme;
var
  i: integer;
begin
  Parcial.MaxValue := qryFilme.RecordCount;
  Parcial.Progress := 0;
  qryFilme.First;
  while not qryFilme.Eof do begin
    if not sqlFilme.Locate('codfilme', qryFilmeCODFILME.AsInteger, [loCaseInsensitive]) then begin
      //Application.ProcessMessages;
      sqlFilme.Append;
      for i := 0 to pred(qryFilme.FieldCount) do begin
        sqlFilme.Fields[i].Value := qryFilme.Fields[i].Value;
      end;
      sqlFilme.Post;
    end;
    qryFilme.Next;
    incGauge(Parcial);
    incGauge(Total);
  end;
end;

procedure TDMMCLocadora.MigraFita;
var
  i: integer;
begin
  Parcial.MaxValue := qryFita.RecordCount;
  Parcial.Progress := 0;
  qryFita.First;
  while not qryFita.Eof do begin
    if not sqlFita.Locate('SUBCOD', qryFitaSUBCOD.AsString, [loCaseInsensitive]) then begin
      //Application.ProcessMessages;
      sqlFita.Append;
      for i := 0 to pred(qryFita.FieldCount) do begin
        sqlFita.Fields[i].Value := qryFita.Fields[i].Value;
      end;
      sqlFita.Post;
    end;
    qryFita.Next;
    incGauge(Parcial);
    incGauge(Total);
  end;
end;

procedure TDMMCLocadora.MigraAluguel;
var
  i: integer;
begin
  Parcial.MaxValue := qryAluguel.RecordCount;
  Parcial.Progress := 0;
  qryAluguel.First;
  while not qryAluguel.Eof do begin
    if not sqlAluguel.Locate('codaluguel', qryAluguelCODALUGUEL.AsInteger, [loCaseInsensitive]) then begin
      //Application.ProcessMessages;
      sqlAluguel.Append;
      for i := 0 to pred(qryAluguel.FieldCount) do begin
        sqlAluguel.Fields[i].Value := qryAluguel.Fields[i].Value;
      end;
      sqlAluguel.Post;
    end;
    qryAluguel.Next;
    incGauge(Parcial);
    incGauge(Total);
  end;
end;

procedure TDMMCLocadora.MigraItemAluguel;
var
  i: integer;
begin
  Parcial.MaxValue := qryItemAluguel.RecordCount;
  Parcial.Progress := 0;
  qryItemAluguel.First;
  while not qryItemAluguel.Eof do begin
    if not sqlItemAluguel.Locate('CODitemalug', qryItemAluguelCODITEMALUG.AsInteger, [loCaseInsensitive]) then begin
      //Application.ProcessMessages;
      sqlItemAluguel.Append;
      for i := 0 to pred(qryItemAluguel.FieldCount) do begin
        sqlItemAluguel.Fields[i].Value := qryItemAluguel.Fields[i].Value;
      end;
      sqlItemAluguel.Post;
    end;
    qryItemAluguel.Next;
    incGauge(Parcial);
    incGauge(Total);
  end;
end;

procedure TDMMCLocadora.MigraResreva;
var
  i: integer;
begin
  Parcial.MaxValue := qryResreva.RecordCount;
  Parcial.Progress := 0;
  qryResreva.First;
  while not qryResreva.Eof do begin
    if not sqlReserva.Locate('codreserva', qryResrevaCODRESERVA.AsInteger, [loCaseInsensitive]) then begin
      //Application.ProcessMessages;
      sqlReserva.Append;
      for i := 0 to pred(qryResreva.FieldCount) do begin
        sqlReserva.Fields[i].Value := qryResreva.Fields[i].Value;
      end;
      sqlReserva.Post;
    end;
    qryResreva.Next;
    incGauge(Parcial);
    incGauge(Total);
  end;
end;

procedure TDMMCLocadora.MigraDebito;
var
  i: integer;
begin
  Parcial.MaxValue := qryDebito.RecordCount;
  Parcial.Progress := 0;
  qryDebito.First;
  while not qryDebito.Eof do begin
    if not sqlDebito.Locate('coddebito', qryDebitoCodDebito.AsInteger, [loCaseInsensitive]) then begin
      //Application.ProcessMessages;
      sqlDebito.Append;
      for i := 0 to pred(qryDebito.FieldCount) do begin
        sqlDebito.Fields[i].Value := qryDebito.Fields[i].Value;
      end;
      sqlDebito.Post;
    end;
    qryDebito.Next;
    incGauge(Parcial);
    incGauge(Total);
  end;
end;

procedure TDMMCLocadora.MigraCaixa;
var
  i: integer;
begin
  Parcial.MaxValue := qryCaixa.RecordCount;
  Parcial.Progress := 0;
  qryCaixa.First;
  while not qryCaixa.Eof do begin
    if not sqlCaixa.Locate('codcaixa', qryCaixaCodCaixa.AsInteger, [loCaseInsensitive]) then begin
      sqlCaixa.Append;
      for i := 0 to pred(qryCaixa.FieldCount) do begin
        sqlCaixa.Fields[i].Value := qryCaixa.Fields[i].Value;
      end;
      sqlCaixa.Post;
    end;
    qryCaixa.Next;
    incGauge(Parcial);
    incGauge(Total);
  end;
end;

end.
