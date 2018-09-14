unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, EditMC, DB, DBClient, ClientDataSetMC, Grids, DBGrids,
  DBGridMC, DatasourceMC, Provider, DataSetProviderMC, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, LabelMC;

type
  TForm1 = class(TForm)
    EditMC1: TEditMC;
    Button1: TButton;
    DatasourceMC1: TDatasourceMC;
    DBGridMC1: TDBGridMC;
    ClientDataSetMC1: TClientDataSetMC;
    ClientDataSetMC1ads: TIntegerField;
    Button2: TButton;
    ClientDataSetMC2: TClientDataSetMC;
    ClientDataSetMC2a: TIntegerField;
    ClientDataSetMC2b: TDateTimeField;
    DBGridMC2: TDBGridMC;
    DatasourceMC2: TDatasourceMC;
    Button3: TButton;
    Button4: TButton;
    LabelMC1: TLabelMC;
    LabelMC2: TLabelMC;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DatasourceMC1DataChange(Sender: TObject; Field: TField);
    procedure DatasourceMC2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    parar : boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math, ComConst;

{$R *.dfm}

(*Para obter valores aleatórios que não se repitam é preciso utilzar arrays em uma estrutura de loop for.
Existem várias alternativas com scripts complexos, mas eu acabei criando uma solução um pouco mais simples.
Antes de mais nada, defino duas arrays, uma com os valores a serem sorteados e outra para armazenar os
valores aleatórios a serem extraídos, veja:*)
(*
function Teste1: integer
var
  numeros: array of integer;
  randonicos: array of [1 .. 5];
begin
  setlength(numeros, 10);
  // vamos supor que tenho 10 valores
  numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // e quero obter apenas 5 destes aleatoriamente
  //Para obter o valor aleatório, utilizo um loop for que obtém os valores aleatórios e verifica
  //se estes já não existem na Array. Caso um valor já exista, o valor da variável índice é decrementado,
  //veja:
(*
for(var j = 0; j < randomicos.length; j++) {
var diferente = true;
var valor = Math.floor(Math.random()*numeros.length);
for(var k = 0; k < randomicos.length; k++) {
if(randomicos[k] == numeros[valor]) { diferente = false; j--; }
(*}
if(diferente) randomicos[j] = numeros[valor];
}
(*trace(randomicos);

De qualquer forma, se alguém tiver outra técnica, me deixe saber, pois tenho muito interesse em aprimorar a solução.

Jonas Galvez*)

(*function Codigo: integer;
const
  number = 15;
var
  tempArray : Array of integer;
  i: integer;
begin

  for i := 0 to number to
      tempArray[i] = i;

  for (var i = 0; i
      var randIndex = Math.round(Math.random()*(number-1));
      var transicao = tempArray[randIndex];
      tempArray[randIndex] = tempArray[i];
      tempArray[i] = transicao;
  }
  return := tempArray;
}
// teste
trace(geraSeq(1000));

Passando o numero 15 como parâmetro essa rotina leva 3 milisegundos para executar, com valor = 1000
ela demora 178 ms.

Rômulo Nunes*)

function GerarNumero: integer;
const
 n = 10; (* n = tamanho da seqüência *)
 M = 2147483647; (* maior valor M = 231-1 *)
 a = 25717; (* parâmetro alfa *)
var
 Z, Za: integer; (* armazenamento da seqüência *)
 i: integer; (* contador *)
 X: array of real; //double X[n];
begin
  Za := 1;
  SetLength(X, n);
  for i := 0 to n do begin
    Z := (a * Za) mod M; (* calcula resto da divisão *)
    X[i] := frac(Za/(M - 1)); (* normaliza e armazena *)
    Za := Z;
  end;
  Result := Za;
end;

{v(j+1) = (a * v(j) + b) mod m}
function Teste1: integer;
begin
  //Result := 
end;

function Codigo: integer;
  function iif(Condicao: boolean; A, B : variant): variant;
  begin
    if Condicao then
      Result := A
    else
      Result := B;
  end;
var
  Dia, Mes, Ano, Hora, Minuto, Segundo, Mil: Word;
  Retorno: Real;
  A, B, R: Real;
  Data, cHora: Real;
  Valor: String;
begin
  DecodeDate(Date, Ano, Mes, Dia);
  DecodeTime(Time, Hora, Minuto, Segundo, Mil);
  A := Date + Ano + Mes + Dia;
  B := Time + Hora + Minuto + Segundo + Mil;
  R := Random(111);
  Retorno := (A * B)/iif(R > 0, R, 111);
  Result := Trunc(Retorno);
end;
function valor: integer;
var
  Dia, Mes, Ano, Hora, Minuto, Segundo, MSegundo: word;
  Valor: String;
  Resultado : real;
begin
  {pegando o valor para a chave primaria}
  DecodeDate(Date, Ano, Mes, Dia);
  DecodeTime(Time, Hora, Minuto, Segundo, MSegundo);
  Valor := IntToStr(Ano) + IntToStr(Mes) + IntToStr(Dia) +
    IntToStr(Hora) + IntToStr(Minuto) + IntToStr(Segundo);
  if MSegundo < 0 then
    MSegundo := 1;
  Resultado := StrToFloat(Valor)/MSegundo;
  //EditMC1.Text := IntToStr(trunc(Resultado));
  Result := trunc(Resultado);
  if Result < 0 then
    Result := Result * -1;
end;

(*function Numero: integer;
var
  Ano, Mes, Dia, Hora, Minuto, Segundo, MSegundo: Word;
  Valor : real;
  Resultado: integer;
begin
  try
    Sleep(10);
    DecodeDate(Date, Ano, Mes, Dia);
    DecodeTime(Time, Hora, Minuto, Segundo, MSegundo);
    Valor := (((Ano * 365)  / 0.12) *
             ((Mes * 31)    / 0.11) +
             ((Dia * 24)    / 0.12) *
             ((Hora * 60)   / 0.11) +
             ((Minuto * 6)  / 0.12) *
             ((Segundo)     / 0.11) +
             ((MSegundo)    / 0.12));
    Resultado := trunc(valor);

    if Resultado > 0 then
      Result := Resultado
    else
      Result := Resultado * -1;
    if Result = 0 then
      Result := Numero;
  except
    //Result := Numero;
  end;

    {1MS não multiplica reprovado
     2MS multiplica     reprovado
     3 segundo e MS não multiplica indece de repetição baixou não bom
     4 passou a multiplicar pelo MS indece de repetição baixo porém constante  não bom
     5 dividir por valor crescente o valor gerou código 0 reprovado
     6 foi feito a modificação do 5 e ao invéz de dividir multiplicou reprovado
     7 passou a dividir pelo MS reprovadasso
     8 hora divide hora subtrai}
end;*)

function Numero: integer;
var
  Ano, Mes, Dia, Hora, Minuto, Segundo, MSegundo: Word;
  Valor : string;
  Resultado: integer;
begin
  try
    Sleep(10);
    DecodeTime(Time, Hora, Minuto, Segundo, MSegundo);
    Valor := FormatFloat('00', Hora) + FormatFloat('00', Minuto) + FormatFloat('00', Segundo) +
      FormatFloat('000', MSegundo);
    Result := Random(StrToInt(Valor));
  except
    //Result := Numero;
  end;

    {1MS não multiplica reprovado
     2MS multiplica     reprovado
     3 segundo e MS não multiplica indece de repetição baixou não bom
     4 passou a multiplicar pelo MS indece de repetição baixo porém constante  não bom
     5 dividir por valor crescente o valor gerou código 0 reprovado
     6 foi feito a modificação do 5 e ao invéz de dividir multiplicou reprovado
     7 passou a dividir pelo MS reprovadasso
     8 hora divide hora subtrai}
end;

procedure TForm1.Button1Click(Sender: TObject);
  procedure vai;
  var
  SystemTime : TSystemTime;
  begin
  With SystemTime do
  begin
  //Definindo o dia do sistema
  wYear:= 2006;
  wMonth:= 1;
  wDay:= 21;
  //Definindo a hora do sistema
  wHour:= 20; //hora
  wMinute:= 00; //minutos
  wSecond:= 00; //segundos
  end;
  //Colocar a hora e data do sistema
  SetLocalTime(SystemTime);
  end;

var
  c, d: integer;
begin
  c := numero;
  while true do begin
    if Time > 0.85449181713 then
      vai;
    if ClientDataSetMC1.Locate('ads', C, [loCaseInsensitive]) then begin
      ClientDataSetMC2.InsertRecord([c, date+time]);
    end;
    if parar then begin
      parar := false;
      exit;
    end;
    ClientDataSetMC1.InsertRecord([c]);

    c := numero;
    Application.ProcessMessages;
  end;
  ShowMessage('Repetiu.............................. Merda');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  parar := true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ClientDataSetMC1.SaveToFile('c:\1.xml');
  ClientDataSetMC2.SaveToFile('c:\2.xml');
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Dia, Mes, Ano, Hora, Minuto, Segundo, MSegundo: word;
  Valor: String;
  Resultado : real;
begin
  EditMC1.Text := FloatToStr(GerarNumero);
end;

procedure TForm1.DatasourceMC1DataChange(Sender: TObject; Field: TField);
begin
  LabelMC1.Caption := IntToStr(ClientDataSetMC1.RecordCount)
end;

procedure TForm1.DatasourceMC2DataChange(Sender: TObject; Field: TField);
begin
  LabelMC2.Caption := IntToStr(ClientDataSetMC2.RecordCount)
end;

end.

