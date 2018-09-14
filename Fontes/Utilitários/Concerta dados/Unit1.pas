unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, EditMC, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, Gauges, ZConnection, Grids,
  DBGrids, DBGridMC, DatasourceMC;

type
  TForm1 = class(TForm)
    EditMC1: TEditMC;
    bitCidade: TSpeedButton;
    ZQueryMC1: TZQueryMC;
    Memo1: TMemo;
    Gauge1: TGauge;
    ZConnection1: TZConnection;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function Maiuscula(Texto:String): String;
{Converte a primeira letra do texto especificado para 
maiuscula e as restantes para minuscula}
var
OldStart: Integer;
begin
if Texto <> '' then
  begin
  Texto := UpperCase(Copy(Texto,1,1))+LowerCase(Copy(Texto,2,Length(Texto)));
  Result := Texto;
  end;
end;

Function wordcount(str : string) : integer;
// Retorna o número de palavras que contem em uma string
var
count : integer;
i : integer;
len : integer;
begin
len := length(str);
count := 0;
i := 1;
while i <= len do
  begin
  while ((i <= len) and ((str[i] = #32) or (str[i] = #9) or (Str[i] = ';'))) do
  inc(i);
  if i <= len then
  inc(count);
  while ((i <= len) and ((str[i] <> #32) and (str[i] <> #9) and (Str[i] <> ';'))) do
  inc(i);
  end;
  wordcount := count;
end;

procedure MontarArray(cStr : String; var Resultar : Array of String);
var
  Valor : String;
  cont : integer;
begin
  Valor := cStr;
  cont := 0;
  if pos(' ', Valor) = 0 then Resultar[0] := cStr;
  while pos(' ', Valor) > 0 do
  begin
    Resultar[Cont] := Copy(Valor, 1, Pos(' ', valor) - 1);
    Delete(Valor, 1, pos(' ', valor));
    Valor := trim(Valor);
    inc(Cont);
  end;
    Resultar[Cont] := Copy(Valor, 1, Length(valor));
end;

function Concertar(Valor: String): string;
Var
  Temp: Array of String;
  i: word;
  Resultado : string;
begin
  SetLength(Temp, wordcount(Valor));
  if Valor = '' then BEGIN
    SetLength(Temp, 1);
    MontarArray('N/A', temp)
  END
  else
    MontarArray(Valor, temp);
  resultado := '';
  for i := 0 to pred(length(temp)) do begin
    Resultado := Resultado + ' ' + Maiuscula(temp[i]);
  end;
  Result := TRIM(resultado);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ZQueryMC1.Close;
  ZQueryMC1.SQL.Text := Memo1.Lines.Text;
  ZQueryMC1.Open;
  Gauge1.MaxValue := ZQueryMC1.RecordCount;
  Label1.Caption := inttostr(ZQueryMC1.RecordCount);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Gauge1.Progress := 0;
  ZQueryMC1.LAST;
  ZQueryMC1.First;
  while not ZQueryMC1.Eof do begin
    ZQueryMC1.Edit;
    ZQueryMC1.Fields[1].AsString := Concertar(TRIM(ZQueryMC1.Fields[1].AsString));
    ZQueryMC1.Post;
    ZQueryMC1.Next;
    Gauge1.Progress := Gauge1.Progress + 1;
    Application.ProcessMessages;
  end;
end;

end.
