program Chave;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uRegistro in 'uRegistro.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
