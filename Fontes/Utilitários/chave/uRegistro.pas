{
O CODIGO DO SISTEMA VAI GARANTIR QUE A CHAVE SEJA UNICA
O NUMERO DO HD VAI GARANTIR QUE SOMENTE HAVERÁ UM SOFTWARE PARA UM REGISTRO
A CHAVE DEVE SER ELABORADA COM AS SEGUINTES INFLUENCIAS
1º CODIGO DO SISTEMA
2º NOME DA LOCADORA
3º CGC
}
unit uRegistro;

interface
  uses SysUtils, Math;

  procedure Registro(Empresa, CGC, Codigo : String; var Chave : String);
  function CalculaCnpjCpf(Numero : String) : String;

implementation

function Normaliza(Caracter : String) : String;
begin
  //manter os caracteres fora do 0 - 47  58 - 64  91 - 255
  if StrToInt(Caracter) < 0 then
    Caracter := IntToStr(StrToInt(Caracter) * -1);
  Result := Caracter;
  if (StrToInt(Caracter) >= 0) and (StrToInt(Caracter) <= 47) then
  begin
    result := '48';
  end;
    
  if (StrToInt(Caracter) >= 58) and (StrToInt(Caracter) <= 64) then
  begin
    if (StrToInt(Caracter) < 61) then
      result := '57'
    else
      result := '65';
  end;

  if (StrToInt(Caracter) >= 91) and (StrToInt(Caracter) <= 255) then
  begin
    result := '90';
  end;
end;

procedure Finaliza(var Valor : Array of String; Caracter : String; i : Word);
var
  ControleA,ControleB,ControleC : String;
begin
  if StrToInt(Caracter) = 0 then
  begin
    Caracter := '2';
  end;
  while length(Caracter) <= 2 do
  begin
    Caracter := IntToStr(StrToInt(Caracter) * 2);
    Valor[i] := Caracter;
  end;
  if length(Caracter) > 2 then
  begin
    if (length(Caracter) >= 3) and (length(Caracter) <= 4) then
    begin
      if length(Caracter) = 3 then
         Caracter := Caracter + '0';
      Valor[i] := CHR(StrToInt(Normaliza(Copy(Caracter, 1, 2))));
      ControleA := Copy(Caracter, 1, 2);
      Valor[i] := Valor[i] + CHR(StrToInt(Normaliza(Copy(Caracter, 3, 2))));
      ControleB := Copy(Caracter, 3, 2);
      Valor[i] := Valor[i] + CHR(StrToInt(Normaliza(IntToStr(StrToInt(ControleA) + StrToInt(ControleB)))));
      Valor[i] := Valor[i] + CHR(StrToInt(Normaliza(IntToStr(StrToInt(ControleB) - StrToInt(ControleA)))));;
    end;
    if (length(Caracter) >= 5) and (length(Caracter) <= 6) then
    begin
      Valor[i] := CHR(StrToInt(Normaliza(Copy(Caracter, 1, 2))));
      ControleA := Copy(Caracter, 1, 2);
      Valor[i] := Valor[i] + CHR(StrToInt(Normaliza(Copy(Caracter, 3, 2))));
      ControleB := Copy(Caracter, 3, 2);
      Valor[i] := Valor[i] + CHR(StrToInt(Normaliza(Copy(Caracter, 5, 2))));
      ControleC := Copy(Caracter, 5, 2);
      Valor[i] := Valor[i] + CHR(StrToInt(Normaliza(IntToStr(StrToInt(ControleB) + StrToInt(ControleA) + StrToInt(ControleC)))));;
    end;
    if (length(Caracter) >= 7) then
    begin
      Valor[i] := CHR(StrToInt(Normaliza(Copy(Caracter, 1, 2))));
      Valor[i] := Valor[i] + CHR(StrToInt(Normaliza(Copy(Caracter, 3, 2))));
      Valor[i] := Valor[i] + CHR(StrToInt(Normaliza(Copy(Caracter, 5, 2))));
      Valor[i] := Valor[i] + CHR(StrToInt(Normaliza(Copy(Caracter, 7, 2))));
    end;
  end;
end;

procedure Registro(Empresa, CGC, Codigo : String; var Chave : String);
var
  aValor : array [1 .. 4] of string;
  i : integer;
  nValor1, nValor2, nValor3, nValor4: Int64;
begin
  //INICIALIZANDO AS VARIAVEIS
  nvalor1 := 0;
  nvalor2 := 0;
  nvalor3 := 0;
  nvalor4 := 0;
  Codigo := Codigo + IntToStr(StrToInt(Codigo)*3);
  //O VALOR DE CADA PONTO DA CHAVE SERÁ O ORD DOS VALORES SENDO O QUATRO
  //A SOMA DOS 3 PRIMEIROS VALORES
  for i := 1 to pred(Length(Empresa)) do
  begin
    nValor1 := nValor1 + Ord(Empresa[i]);
  end;
  for i := 1 to pred(length(CGC)) do
  begin
    nValor2 := nValor2 + Ord(CGC[i]);
  end;
  for i := 1 to pred(length(Codigo)) do
  begin
    nValor3 := nValor3 + ord(Codigo[i]);
  end;
  nvalor1 := nvalor1 * StrToInt(Codigo);
  nvalor2 := nvalor2 * StrToInt(Codigo);
  nvalor3 := (nvalor3 * StrToInt(Codigo)) * 2;
  nvalor4 := (nvalor1 + nvalor2 + nvalor3) * StrToInt(Codigo);

  //FINALIZANDO CHAVE
  aValor[1] := Copy(IntToStr(nvalor1),1,4);
  aValor[2] := Copy(IntToStr(nvalor2),1,4);
  aValor[3] := Copy(IntToStr(nvalor3),1,4);
  aValor[4] := Copy(IntToStr(nvalor4),1,4);

  //Chave := aValor[1] +' - '+ (aValor[2]) +' - '+ (aValor[3]) +' - '+ (aValor[4]);
  Chave := aValor[1] + (aValor[2]) + (aValor[3]) + (aValor[4]);
end;

function CalculaCnpjCpf(Numero : String) : String;
var
  i,j,k, Soma, Digito : Integer;
  CNPJ : Boolean;
begin
  Result := Numero;
  case Length(Numero) of
     9  : CNPJ := False;
     12 : CNPJ := True;
  else
        Exit;
  end;
  for j := 1 to 2 do
  begin
       k := 2;
       Soma := 0;
       for i := Length(Result) downto 1 do
       begin
            Soma := Soma + (Ord(Result[i])-Ord('0'))*k;
            Inc(k);
            if (k > 9) and CNPJ then
               k := 2;
       end;
       Digito := 11 - Soma mod 11;
       if Digito >= 10 then
          Digito := 0;
       Result := Result + Chr(Digito + Ord('0'));
  end;
end;

end.
