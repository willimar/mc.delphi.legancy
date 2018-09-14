unit uPagamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, TFlatButtonUnit, EditMC,
  SpeedButtonMC, LabelMC, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZQueryMC, uCobranca;

type
  T_frmPagamento = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    Shape1: TShape;
    Nome: TLabel;
    DBText10: TDBText;
    Label3: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    DBText15: TDBText;
    DBText16: TDBText;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    Label22: TLabel;
    Label23: TLabel;
    lblEmail: TDBText;
    lblWeb: TDBText;
    Label24: TLabel;
    Label25: TLabel;
    DBText22: TDBText;
    DBImage1: TDBImage;
    DBEdit1: TDBEdit;
    txtValor: TEditMC;
    LabelMC1: TLabelMC;
    btnPagar: TSpeedButtonMC;
    btnCancelar: TSpeedButtonMC;
    qryCaixa: TZQueryMC;
    qryCaixaCODCAIXA: TIntegerField;
    qryCaixaCODEMPRESA: TIntegerField;
    qryCaixaCODDESCRICAO: TIntegerField;
    qryCaixaVALOR: TFloatField;
    qryCaixaTIPO: TStringField;
    qryCaixaLANCAMENTO: TDateField;
    procedure btnPagarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
  private
    FFormDebito: T_frmCadGridDebito;
    { Private declarations }
  public
    { Public declarations }
    property FormDebito: T_frmCadGridDebito read FFormDebito write FFormDebito;
  end;

var
  _frmPagamento: T_frmPagamento;

implementation

uses uDM, uDBFunc, uToolFunc;

{$R *.DFM}

procedure T_frmPagamento.btnPagarClick(Sender: TObject);
var
  Valor : Real;
begin
  txtValor.ValidarDado;

  if FormDebito.cdsGridD_VALOR.AsFloat < StrToFloat(txtValor.Text) then begin
    Alerta('O sistema não permite crédito.');
    Exit;
  end;

  Valor := FormDebito.cdsGridD_VALOR.AsFloat - StrToFloat(txtValor.Text);
  ExecutarSql('UPDATE TBDEBITO SET VALOR=' + Substituir(',', '.', FloatToStr(Valor)) + ' WHERE CODDEBITO=' + FormDebito.cdsGridCODDEBITO.AsString);
  FormDebito.cdsGrid.Refresh;

  qryCaixa.Open;
  qryCaixa.Append;
  qryCaixaCODEMPRESA.AsInteger := DM.SisControl.Empresa.Codigo;
  qryCaixaCODDESCRICAO.AsInteger := 4;
  qryCaixaVALOR.AsFloat := StrToFloat(txtValor.Text);
  qryCaixaTIPO.AsString := 'E';
  qryCaixaLANCAMENTO.AsDateTime := Date;
  qryCaixa.Post;
  ModalResult := mrOK;
end;

procedure T_frmPagamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
end;

procedure T_frmPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

procedure T_frmPagamento.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
