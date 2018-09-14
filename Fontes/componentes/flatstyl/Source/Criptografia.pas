unit Criptografia;

interface
  uses
    SysUtils;
  function criptografa(valor : String; Chave : Word) : String;
  function descriptografa(valor : String; Chave : Word) : String;

implementation

function criptografa(valor : String; Chave : Word) : String;
var
   saida, tmptexto, tmpchave, R1 : string;
   P, P1, T, tmpC2, tmpT2, cripto2, flag: integer;
begin
  //****************inicio da função**********************
  R1 := FloatToStr(Chave);
  p := 1;
  P1 := 1;
  T := length(valor);
  saida := '' ;
  flag := length(IntToStr(Chave));
  while P <= T do
  begin
    tmptexto := copy( valor, P, 1);
    tmpT2 := ord(tmptexto[1]);
    tmpchave := copy(IntToStr(Chave) , P1, 1);
    tmpC2 := strtoint ( tmpchave );
    Cripto2 := (tmpT2 + tmpC2) - StrToInt(R1);
    saida :=  saida + chr(Cripto2);
    P := P + 1;
    P1 := P1 + 1;
    if P1 > flag then P1 := 1;
  end;
  //***************termino da função**********************
  result := saida;
end;

function descriptografa(valor : String; Chave : Word) : String;
var
   saida, tmptexto, tmpchave, R1 : string;
   P, P1, T, tmpC2, tmpT2, cripto2, flag: integer;
begin
  //****************inicio da função**********************
  R1 := FloatToStr(Chave);//cria o valor chave de criptografia
  p := 1;  //inicializa variavel P
  P1 := 1; //inicializa variavel P
  T := length(valor); //pede o tamanho da variavel valor
  saida := '' ;  //limpa a variavel de retorno
  flag := length(IntToStr(Chave));  // mede o tamanho da chave
  // inicio do loop de criptografia
  while P <= T do
  begin
    tmptexto := copy( valor, P, 1);
    tmpT2 := ord(tmptexto[1]);
    tmpchave := copy(IntToStr(Chave) , P1, 1);
    tmpC2 := strtoint ( tmpchave );
    Cripto2 := (tmpT2 - tmpC2) + StrToInt(R1);
    saida :=  saida + chr(Cripto2);
    P := P + 1;
    P1 := P1 + 1;
    if P1 > flag then P1 := 1;
  end;
  //***************termino da função**********************
  result := saida;
end;


end.
