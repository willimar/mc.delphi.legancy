program Project1;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {_frmPrincipal},
  fraCad in '..\..\lib\fraCad.pas' {FrameCad: TFrame},
  uCadGrid2 in '..\..\lib\uCadGrid2.pas' {_frmCadGrid2},
  uCadGrid in '..\..\lib\uCadGrid.pas' {_frmCadGrid},
  uDadosCliente in '..\..\lib\uDadosCliente.pas' {fraDadosCliente: TFrame},
  uDadosFilme in '..\..\lib\uDadosFilme.pas' {fraDadosFilme: TFrame},
  uDBFunc in '..\..\lib\uDBFunc.pas',
  uDM in '..\..\lib\uDM.pas' {DM: TDataModule},
  uErro in '..\..\lib\uErro.pas' {ExceptionDialog},
  uFrameCadGrid in '..\..\lib\uFrameCadGrid.pas' {fraCadGrid: TFrame},
  uLogin in '..\..\lib\uLogin.pas' {_frmLogin},
  uPesquisa in '..\..\lib\uPesquisa.pas' {_frmPesquisa},
  uSobre in '..\..\lib\uSobre.pas' {_frmSobre},
  uToolFunc in '..\..\lib\uToolFunc.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(T_frmPrincipal, _frmPrincipal);
  Application.Run;
end.
