unit uToolFuncMC;

interface
  function ValidarCpf(CPF : String) : Boolean;
  function ValidarCnpj(CNPJ: string): boolean;

implementation

uses SysUtils;

function ValidarCpf(CPF : String) : Boolean;
var
  Digito1, Digito2: integer;
  Testar: String;
begin
  Testar := CPF;
  Testar := StringReplace(Testar, '.', '', [rfReplaceAll]);
  Testar := StringReplace(Testar, '-', '', [rfReplaceAll]);
  if (POS('/', Testar) <> 0) then exit;
  if (Length(Testar) <> 11) then
  begin
    Result := false;
    Exit;
  end;
  //Calcula o primeiro digito verificador do CPF
  Digito1 := StrToInt(Testar[9]) * 2 +
             StrToInt(Testar[8]) * 3 +
             StrToInt(Testar[7]) * 4 +
             StrToInt(Testar[6]) * 5 +
             StrToInt(Testar[5]) * 6 +
             StrToInt(Testar[4]) * 7 +
             StrToInt(Testar[3]) * 8 +
             StrToInt(Testar[2]) * 9 +
             StrToInt(Testar[1]) * 10;
  Digito1 := 11-(Digito1 mod 11);
  if Digito1 >= 10 then Digito1 := 0;
  //Calcula o segundo digito do CPF
  Digito2 := Digito1 * 2 +
             StrToInt(Testar[9]) * 3 +
             StrToInt(Testar[8]) * 4 +
             StrToInt(Testar[7]) * 5 +
             StrToInt(Testar[6]) * 6 +
             StrToInt(Testar[5]) * 7 +
             StrToInt(Testar[4]) * 8 +
             StrToInt(Testar[3]) * 9 +
             StrToInt(Testar[2]) * 10+
             StrToInt(Testar[1]) * 11;
  Digito2 := 11 - (Digito2 mod 11);
  if Digito2 >= 10 then Digito2 := 0;
  //verifica se o codigo verificador calculado é igula ao código verificador
  //digitado
  if (IntToStr(Digito1) + IntToStr(Digito2)) = (Testar[10] + Testar[11]) then
    Result := true
  else
    Result := false;
end;

function ValidarCnpj(CNPJ: string): boolean;
var
  Digito1, Digito2 : integer;
  Testar: String;
begin
  Testar := CNPJ;
  Testar := StringReplace(Testar, '.', '', [rfReplaceAll]);
  Testar := StringReplace(Testar, '-', '', [rfReplaceAll]);
  Testar := StringReplace(Testar, '/', '', [rfReplaceAll]);

  if (Length(Testar) <> 14) then
  begin
    Result := false;
    Exit;
  end;
  Digito1 := StrToInt(Testar[12]) * 2 +
             StrToInt(Testar[11]) * 3 +
             StrToInt(Testar[10]) * 4 +
             StrToInt(Testar[9]) * 5 +
             StrToInt(Testar[8]) * 6 +
             StrToInt(Testar[7]) * 7 +
             StrToInt(Testar[6]) * 8 +
             StrToInt(Testar[5]) * 9 +
             StrToInt(Testar[4]) * 2 +
             StrToInt(Testar[3]) * 3 +
             StrToInt(Testar[2]) * 4 +
             StrToInt(Testar[1]) * 5;
  Digito1 := 11 - (Digito1 mod 11);
  if Digito1 >= 10 then Digito1 := 0;
  Digito2 := Digito1 * 2 +
             StrToInt(Testar[12]) * 3 +
             StrToInt(Testar[11]) * 4 +
             StrToInt(Testar[10]) * 5 +
             StrToInt(Testar[9]) * 6 +
             StrToInt(Testar[8]) * 7 +
             StrToInt(Testar[7]) * 8 +
             StrToInt(Testar[6]) * 9 +
             StrToInt(Testar[5]) * 2 +
             StrToInt(Testar[4]) * 3 +
             StrToInt(Testar[3]) * 4 +
             StrToInt(Testar[2]) * 5 +
             StrToInt(Testar[1]) * 6;
  Digito2 := 11 - (Digito2 mod 11);
  if Digito2 >= 10 then Digito2 := 0;
  //ALERTA(IntToStr(Digito1) + IntToStr(Digito1));
  if (IntToStr(Digito1) + IntToStr(Digito2)) = (Testar[13] + Testar[14]) then
    Result := true
  else
    Result := false;
end;

end.
