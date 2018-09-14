{
 gerando controle de registro do software por extação
}
unit uSplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, ComCtrls, StdCtrls, ExtCtrls, DBTables, jpeg, ExtDlgs, Buttons, menus,
  CoolTrayIcon, Gauges;

type
  T_frmSplash = class(TForm)
    Status: TGauge;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure Progresso(Gauge : TGauge);
    procedure Instalacao;
  public
    { Public declarations }
  end;

var
  _frmSplash: T_frmSplash;
  chost : string;

implementation

uses uDM, uDBFunc, uPrincipal, uConfigConexao, uToolFunc, uRegistro;

{$R *.DFM}


procedure T_frmSplash.FormActivate(Sender: TObject);
begin
  if Assigned(DM) then exit;
  Status.MaxValue := 3;
  Application.ProcessMessages;
  Progresso(Status); //1
  Application.CreateForm(TDM, DM);
  DM.SisControl.ApplicationNome := 'Mundo Conecto - ' + GetAplicativoNome;
  Progresso(Status); //2
  Progresso(Status); //3

  if FileExists(ExtractFilePath(ParamStr(0)) + 'conexão.mc') then begin
    DM.cds.FileName := ExtractFilePath(ParamStr(0)) + 'conexão.mc';
    DM.cds.Open;
    incGauge(Status);//5
    DM.db.Disconnect;
    DM.db.HostName := Descriptografar(DM.cdshost.AsString);
    DM.db.User := Descriptografar(DM.cdsuser.AsString);
    DM.db.Password := Descriptografar(DM.cdssenha.AsString);
    DM.db.Port := DM.cdsporta.AsInteger;
    DM.db.Protocol := DM.cdsprotocolo.AsString;
    DM.db.Database := DM.cdsenrecofisico.AsString;
    DM.db.Connect;
    incGauge(Status);//6
    Application.CreateForm(T_frmPrincipal, _frmPrincipal);
    incGauge(Status);//7
    DM.SisControl.PrimeiraVez := false;
    DM.qryDescCaixa.Open;
    DM.qryEmpresa.Open;
    if DM.qryEmpresa.IsEmpty or Instala then begin
      Instalacao;
    end
    else begin
      //DM.SisControl.SetEmpresa;
      DM.SisControl.FinalizouInstalacao := true;
    end;
  end
  else
  begin
    Instalacao;
  end;
end;

procedure T_frmSplash.Instalacao;
begin
  Application.CreateForm(T_frmPrincipal, _frmPrincipal);
  incGauge(Status); //5
  _frmCofiguracao := T_frmCofiguracao.Create(_frmPrincipal);
  incGauge(Status); //6
  _frmCofiguracao.BorderIcons := [];
  fMenu(_frmPrincipal);
  incGauge(Status); //7
end;

procedure T_frmSplash.Progresso(Gauge: TGauge);
var
  i : integer;
begin
  i := Gauge.Progress;
  inc(i);
  Gauge.Progress := i;
  Application.ProcessMessages;
end;

end.
