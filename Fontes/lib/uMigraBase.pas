unit uMigraBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, ComboBoxMC, EditMC, ImgList,
  SpeedButtonMC, ZConnection, Gauges, RichEditMC;

type
  T_frmMigraBase = class(T_frmCadGrid)
    ImageList1: TImageList;
    SourceDB: TZConnection;
    LabelMC1: TLabelMC;
    LabelMC2: TLabelMC;
    LabelMC3: TLabelMC;
    SpeedButtonMC1: TSpeedButtonMC;
    lblStatusConexao: TLabelMC;
    Status: TGauge;
    Gauge: TGauge;
    cboProtocolo: TComboBoxMC;
    txtUsuario: TEditMC;
    txtSenha: TEditMC;
    txtResumo: TRichEditMC;
    LabelMC4: TLabelMC;
    LabelMC5: TLabelMC;
    LabelMC6: TLabelMC;
    LabelMC7: TLabelMC;
    LabelMC8: TLabelMC;
    LabelMC9: TLabelMC;
    procedure SpeedButtonMC1Click(Sender: TObject);
    procedure bitImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmMigraBase: T_frmMigraBase;

implementation

uses uDMMCLocadora, uToolFunc;

{$R *.dfm}

procedure T_frmMigraBase.SpeedButtonMC1Click(Sender: TObject);
  function Protocolo: String;
  begin
    case cboProtocolo.ItemIndex of
      0: Result := 'mysql-4.0';
    end;
  end;
  function DataBase: String;
  begin
    case cboProtocolo.ItemIndex of
      0: Result := 'mclocadora';
    end;
  end;
begin
  inherited;
  SourceDB.Protocol := Protocolo;
  SourceDB.Password := txtSenha.Text;
  SourceDB.User := txtUsuario.Text;
  SourceDB.Database := DataBase;
  SourceDB.Connect;
  lblStatusConexao.Caption := 'Conexão ativa';
end;

procedure T_frmMigraBase.bitImprimirClick(Sender: TObject);
begin
  (*inherited;*)
  if lblStatusConexao.Caption <> 'Conexão ativa' then begin
    Alerta('Abra antes a conexão clicando no botão onectar.');
    Exit;
  end;
  Application.CreateForm(TDMMCLocadora, DMMCLocadora);
  Application.ProcessMessages;
  DMMCLocadora.Total := Status;
  DMMCLocadora.Parcial := Gauge;
  DMMCLocadora.Memo := txtResumo;
  DMMCLocadora.ExecuteAcao;
end;

procedure T_frmMigraBase.FormShow(Sender: TObject);
begin
  inherited;
  Gauge.Left := Width - Gauge.Width - 200;
  Status.Left := Width - Status.Width - 200;
  tbPadrao.Left := Width - bitImprimir.Width - 30;
end;

end.
