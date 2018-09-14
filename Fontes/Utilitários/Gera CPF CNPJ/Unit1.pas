unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function ValidarCpf(CPF : String) : String;
var
  Digito1, Digito2: integer;
begin
  //Calcula o primeiro digito verificador do CPF
  Digito1 := StrToInt(CPF[9]) * 2 +
             StrToInt(CPF[8]) * 3 +
             StrToInt(CPF[7]) * 4 +
             StrToInt(CPF[6]) * 5 +
             StrToInt(CPF[5]) * 6 +
             StrToInt(CPF[4]) * 7 +
             StrToInt(CPF[3]) * 8 +
             StrToInt(CPF[2]) * 9 +
             StrToInt(CPF[1]) * 10;
  Digito1 := 11-(Digito1 mod 11);
  if Digito1 >= 10 then Digito1 := 0;
  //Calcula o segundo digito do CPF
  Digito2 := Digito1 * 2 +
             StrToInt(CPF[9]) * 3 +
             StrToInt(CPF[8]) * 4 +
             StrToInt(CPF[7]) * 5 +
             StrToInt(CPF[6]) * 6 +
             StrToInt(CPF[5]) * 7 +
             StrToInt(CPF[4]) * 8 +
             StrToInt(CPF[3]) * 9 +
             StrToInt(CPF[2]) * 10+
             StrToInt(CPF[1]) * 11;
  Digito2 := 11 - (Digito2 mod 11);
  if Digito2 >= 10 then Digito2 := 0;
  //verifica se o codigo verificador calculado é igula ao código verificador
  //digitado
  Result := (IntToStr(Digito1) + IntToStr(Digito2));
end;

function ValidarCnpj(CNPJ: string): String;
var
  Digito1, Digito2 : integer;
begin
  Digito1 := StrToInt(CNPJ[12]) * 2 +
             StrToInt(CNPJ[11]) * 3 +
             StrToInt(CNPJ[10]) * 4 +
             StrToInt(CNPJ[9]) * 5 +
             StrToInt(CNPJ[8]) * 6 +
             StrToInt(CNPJ[7]) * 7 +
             StrToInt(CNPJ[6]) * 8 +
             StrToInt(CNPJ[5]) * 9 +
             StrToInt(CNPJ[4]) * 2 +
             StrToInt(CNPJ[3]) * 3 +
             StrToInt(CNPJ[2]) * 4 +
             StrToInt(CNPJ[1]) * 5;
  Digito1 := 11 - (Digito1 mod 11);
  if Digito1 >= 10 then Digito1 := 0;
  Digito2 := Digito1 * 2 +
             StrToInt(CNPJ[12]) * 3 +
             StrToInt(CNPJ[11]) * 4 +
             StrToInt(CNPJ[10]) * 5 +
             StrToInt(CNPJ[9]) * 6 +
             StrToInt(CNPJ[8]) * 7 +
             StrToInt(CNPJ[7]) * 8 +
             StrToInt(CNPJ[6]) * 9 +
             StrToInt(CNPJ[5]) * 2 +
             StrToInt(CNPJ[4]) * 3 +
             StrToInt(CNPJ[3]) * 4 +
             StrToInt(CNPJ[2]) * 5 +
             StrToInt(CNPJ[1]) * 6;
  Digito2 := 11 - (Digito2 mod 11);
  if Digito2 >= 10 then Digito2 := 0;
  //ALERTA(IntToStr(Digito1) + IntToStr(Digito1));
  Result := (IntToStr(Digito1) + IntToStr(Digito2));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
    Edit2.Text := Edit1.Text + ValidarCpf(Edit1.Text);
  if Edit3.Text <> '' then
    Edit4.Text := Edit3.Text + ValidarCnpj(Edit3.Text);
end;

end.
 