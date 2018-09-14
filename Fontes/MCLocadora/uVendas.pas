unit uVendas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls, Db, DBTables, ComObj,
  ExtCtrls, TFlatButtonUnit, ImgList, Variants, ToolWin, ComCtrls,
  DatasourceMC, DBClient, ClientDataSetMC, DBEditMC, LabelMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, EditMC;

type
  T_frmVenda = class(TForm)
    Panel2: TPanel;
    Shape2: TShape;
    Panel7: TPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label1: TLabel;
    Panel3: TPanel;
    Shape3: TShape;
    lblFechar: TLabel;
    Panel4: TPanel;
    Shape4: TShape;
    Label11: TLabel;
    Panel5: TPanel;
    Shape5: TShape;
    ToolBar1: TToolBar;
    bitInserir: TSpeedButton;
    bitAlterar: TSpeedButton;
    Panel1: TPanel;
    Panel6: TPanel;
    Shape1: TShape;
    Nome: TLabel;
    DBText1: TDBText;
    Label7: TLabel;
    Label13: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label15: TLabel;
    DBText6: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    DBText9: TDBText;
    ImageList1: TImageList;
    bitCidade: TSpeedButton;
    txtValor: TDBEditMC;
    cdsApoio: TClientDataSetMC;
    cdsApoioValor: TCurrencyField;
    dsrApoio: TDatasourceMC;
    LabelMC1: TLabelMC;
    qryFilme: TZQueryMC;
    qryFilmeSUBCOD: TStringField;
    qryFilmeBARCODE: TStringField;
    qryFilmeDISPONIVEL: TStringField;
    qryFilmeFL_NOME: TStringField;
    qryFilmeAUTOR: TStringField;
    qryFilmeQUANTIDADE: TIntegerField;
    qryFilmePF_NOME: TStringField;
    qryFilmeVALORCOMPRA: TFloatField;
    qryFilmeVALOR: TFloatField;
    dsrFilme: TDatasourceMC;
    qryCaixa: TZQueryMC;
    qryCaixaCODCAIXA: TIntegerField;
    qryCaixaCODEMPRESA: TIntegerField;
    qryCaixaCODDESCRICAO: TIntegerField;
    qryCaixaVALOR: TFloatField;
    qryCaixaTIPO: TStringField;
    qryCaixaLANCAMENTO: TDateField;
    txtCodigo: TEditMC;
    LabelMC2: TLabelMC;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bitAlterarClick(Sender: TObject);
    procedure bitInserirClick(Sender: TObject);
    procedure txtCodigoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bitCidadeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure AbreForm;
  end;

var
  _frmVenda: T_frmVenda;
  Valor : string;
  bora, lResult : boolean;
implementation

uses uDM, uToolFunc, uPrincipal, uPesquisa;

{$R *.DFM}

procedure T_frmVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure T_frmVenda.FormDestroy(Sender: TObject);
begin
  fMenu(_frmPrincipal);
end;

procedure T_frmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  _frmVenda := nil;
end;

procedure T_frmVenda.bitAlterarClick(Sender: TObject);
begin
  Close;
end;

procedure T_frmVenda.bitInserirClick(Sender: TObject);
begin
  txtCodigo.SetFocus;
  txtValor.ValidarDado;

  if qryFilmeDISPONIVEL.AsString = 'Não' then begin
    Alerta('Filme não disponível, venda bloqueada. Certifique-se que o filme não conste em nem uma locação.');
    Exit;
  end;

  if not dsrFilme.Enabled then begin
    Alerta('Nenhum filme foi selcionado.');
    Exit;
  end;

  qryCaixa.Append;
  qryCaixaCODEMPRESA.AsInteger := DM.SisControl.Empresa.Codigo;
  qryCaixaCODDESCRICAO.AsInteger := 1;
  qryCaixaVALOR.AsFloat := cdsApoioValor.AsFloat;
  qryCaixaTIPO.AsString := 'E';
  qryCaixaLANCAMENTO.AsDateTime := Date;
  qryCaixa.Post;

  qryFilme.Edit;
  qryFilmeDISPONIVEL.AsString := 'Não';
  qryFilme.Post;

  Informacao('Venda efetuada corretamente.'(*' Gostaria de imprimir o recibo?'*));

  Close;
end;

procedure T_frmVenda.txtCodigoChange(Sender: TObject);
var
  AchouBarCode, AchouSubCod: Boolean;
begin
  AchouBarCode := qryFilme.Locate('BARCODE', txtCodigo.Text, [loCaseInsensitive]);
  AchouSubCod := qryFilme.Locate('SUBCOD', txtCodigo.Text, [loCaseInsensitive]);

  if AchouBarCode or AchouSubCod then begin
    dsrFilme.Enabled := true;
  end
  else begin
    dsrFilme.Enabled := false;
  end;
end;

procedure T_frmVenda.FormCreate(Sender: TObject);
begin
  cdsApoio.CreateDataSet;
  qryFilme.Open;
  qryCaixa.Open;
end;

procedure T_frmVenda.bitCidadeClick(Sender: TObject);
begin
  txtCodigo.Text := T_frmPesquisa.AbrePesquisa('SUBCOD', 'Pesquisa de filmes', Self, qryFilme, 10);
end;

class procedure T_frmVenda.AbreForm;
begin
  if (DM.qryInterfaceSOMENTELEITURA.AsString = 'Não') and
     (DM.qryInterfaceINSERIR.AsString = 'Não') and
     (DM.qryInterfaceALTERAR.AsString = 'Não') and
     (DM.qryInterfaceIMPRIMIR.AsString = 'Não') and
     (DM.qryInterfaceEXCLUIR.AsString = 'Não') then begin
    Alerta('O usuário ' + QuotedStr(DM.SisControl.Usuario.Usuario) + ' não possui permissão suficiente para acessar esta parte do programa.');
    Exit;
  end;
  _frmVenda := T_frmVenda.Create(_frmPrincipal);
  fMenu(_frmPrincipal);
end;

end.
