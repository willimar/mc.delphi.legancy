unit uMensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DB, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC;

type
  T_frmCadGridMensagem = class(T_frmCadGrid2)
    qryGridMENSAGEM: TStringField;
    cdsGridMENSAGEM: TStringField;
    qryCadMENSAGEM: TStringField;
    procedure bitInserirClick(Sender: TObject);
    procedure bitAlterarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridMensagem: T_frmCadGridMensagem;

implementation

{$R *.dfm}

procedure T_frmCadGridMensagem.bitInserirClick(Sender: TObject);
begin
  inherited;
  dbeDescricao.SetFocus;
end;

procedure T_frmCadGridMensagem.bitAlterarClick(Sender: TObject);
begin
  inherited;
  dbeDescricao.SetFocus;
end;

procedure T_frmCadGridMensagem.FormActivate(Sender: TObject);
begin
  inherited;
  bitImprimir.Visible := false;
end;

end.
