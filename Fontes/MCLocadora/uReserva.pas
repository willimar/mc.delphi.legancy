unit uReserva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  db,Grids, DBGrids, StdCtrls, DBCtrls, DBCGrids, ExtCtrls, Buttons, Mask,
  ImgList, TFlatButtonUnit, Variants, ComCtrls, ToolWin, DatasourceMC,
  uPrincipal, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, SpeedButtonMC;

type
  T_frmReserva = class(TForm)
    Panel3: TPanel;
    Shape3: TShape;
    lblFechar: TLabel;
    Panel5: TPanel;
    Shape5: TShape;
    lblTitulo: TLabel;
    Panel6: TPanel;
    Shape6: TShape;
    Panel7: TPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label35: TLabel;
    Panel8: TPanel;
    Shape7: TShape;
    ToolBar1: TToolBar;
    bitAlterar: TSpeedButton;
    Label3: TLabel;
    txtTexto: TEdit;
    Label8: TLabel;
    txtNomeFilme: TEdit;
    Panel1: TPanel;
    PageControl2: TPageControl;
    tbsGrid: TTabSheet;
    DBCtrlGrid1: TDBCtrlGrid;
    Panel4: TPanel;
    Shape4: TShape;
    Label43: TLabel;
    DBText36: TDBText;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBText43: TDBText;
    DBText44: TDBText;
    DBText45: TDBText;
    Label53: TLabel;
    lblEmailGrid: TDBText;
    Label55: TLabel;
    Label4: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    Label5: TLabel;
    DBText11: TDBText;
    Label6: TLabel;
    Label9: TLabel;
    Label33: TLabel;
    DBImage3: TDBImage;
    tbsDetalhes: TTabSheet;
    Panel9: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    txtFilme: TEdit;
    txtCliente: TEdit;
    edmDataReserva: TMaskEdit;
    Panel2: TPanel;
    Shape1: TShape;
    Nome: TLabel;
    DBText1: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label15: TLabel;
    Label16: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBText8: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    Label22: TLabel;
    Label23: TLabel;
    lblEmail: TDBText;
    lblWeb: TDBText;
    Label24: TLabel;
    Label18: TLabel;
    DBText19: TDBText;
    DBImage1: TDBImage;
    Panel10: TPanel;
    Shape2: TShape;
    Label12: TLabel;
    DBText20: TDBText;
    Label17: TLabel;
    Label25: TLabel;
    DBText21: TDBText;
    DBText22: TDBText;
    Label26: TLabel;
    DBText23: TDBText;
    Label27: TLabel;
    DBText24: TDBText;
    Label28: TLabel;
    DBText25: TDBText;
    Label29: TLabel;
    DBText26: TDBText;
    DBText27: TDBText;
    Label30: TLabel;
    Label31: TLabel;
    DBText28: TDBText;
    Label38: TLabel;
    cboCampo: TComboBox;
    Label36: TLabel;
    qryFilme: TZQueryMC;
    qryFilmeBARCODE: TStringField;
    qryFilmeDISPONIVEL: TStringField;
    qryFilmeFL_NOME: TStringField;
    qryFilmeAUTOR: TStringField;
    qryFilmeQUANTIDADE: TIntegerField;
    qryFilmePF_NOME: TStringField;
    qryFilmeVALORCOMPRA: TFloatField;
    qryFilmeVALOR: TFloatField;
    dsrFilme: TDatasourceMC;
    bitCidade: TSpeedButton;
    btnReserva: TSpeedButtonMC;
    ImageList1: TImageList;
    SpeedButton1: TSpeedButton;
    qryCliente: TZQueryMC;
    qryClienteCODPESSOA: TIntegerField;
    qryClienteATIVO: TStringField;
    qryClienteCODCLIENTE: TIntegerField;
    qryClienteP_NOME: TStringField;
    qryClienteAPELIDO: TStringField;
    qryClienteCPFCNPJ: TStringField;
    qryClienteRG: TStringField;
    qryClienteDEFICIECIA: TStringField;
    qryClienteENDERECO: TStringField;
    qryClienteBAIRRO: TStringField;
    qryClienteCOMPLEMENTO: TStringField;
    qryClienteTEL: TStringField;
    qryClienteTELRAMAL: TStringField;
    qryClienteCEL: TStringField;
    qryClienteCEP: TStringField;
    qryClienteTIPOPESSOA: TStringField;
    qryClienteEMAIL: TStringField;
    qryClienteWEB: TStringField;
    qryClienteDATACADASTRO: TDateField;
    qryClienteDATANASCIMENTO: TDateField;
    qryClienteSEXO: TStringField;
    qryClienteN_NOME: TStringField;
    qryClienteESTADOCIVIL: TIntegerField;
    qryClienteTITULAR: TStringField;
    qryClienteCID_NOME: TStringField;
    qryClienteCODUF: TStringField;
    qryClienteCODTITULAR: TIntegerField;
    dsrCliente: TDatasourceMC;
    qryReserva: TZQueryMC;
    qryReservaF_NOME: TStringField;
    qryReservaP_NOME: TStringField;
    qryReservaP_TEL: TStringField;
    qryReservaCEL: TStringField;
    qryReservaRESERVA: TDateField;
    qryReservaEMAIL: TStringField;
    qryReservaFOTO: TBlobField;
    dsrReserva: TDatasourceMC;
    qryReservaR_SUBCOD: TStringField;
    qryFilmeSUBCOD: TStringField;
    qryClienteFOTO: TBlobField;
    sqlReserva: TZQueryMC;
    sqlReservaCODRESERVA: TIntegerField;
    sqlReservaSUBCOD: TStringField;
    sqlReservaCODPESSOA: TIntegerField;
    sqlReservaRESERVA: TDateField;
    sqlReservaCODCLIENTE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtFilmeChange(Sender: TObject);
    procedure btnReservaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bitAlterarClick(Sender: TObject);
    procedure bitCidadeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure txtClienteChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtTextoChange(Sender: TObject);
  private
    { Private declarations }
    SqlPadrao: String;
  public
    { Public declarations }
    class procedure AbreForm(FormPai: T_frmPrincipal);
  end;

var
  _frmReserva: T_frmReserva;

implementation

uses uDM, uDBFunc, uToolFunc, uPesquisa;

{$R *.DFM}

procedure T_frmReserva.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  self := nil;
end;

procedure T_frmReserva.txtFilmeChange(Sender: TObject);
var
  AchouBarCode, AchouSubCod: Boolean;
begin
  AchouBarCode := qryFilme.Locate('BARCODE', txtFilme.Text, [loCaseInsensitive]);
  AchouSubCod := qryFilme.Locate('SUBCOD', txtFilme.Text, [loCaseInsensitive]);

  if AchouBarCode or AchouSubCod then begin
    dsrFilme.Enabled := true;
  end
  else begin
    dsrFilme.Enabled := false;
  end;
end;

procedure T_frmReserva.btnReservaClick(Sender: TObject);
var
  cSql : String;
begin
  if not dsrCliente.Enabled then begin
    Alerta('Selecione o cliente que está fazendo a reserva.');
    exit;
  end;

  if not dsrFilme.Enabled then begin
    Alerta('Selecione o filme que está sendo reservado.');
    exit;
  end;

  if edmDataReserva.Text = '  /  /    ' then begin
    Alerta('Informe o dia para qual a reserva está sendo feita.');
    exit;
  end;

  if StrToDate(edmDataReserva.Text) <= date then begin
    Alerta('Só serão feitas reservas para datas posteriores a de hoje.');
    exit;
  end;

  if qryClienteATIVO.AsString = 'Não' then begin
    Alerta('Não é possivel fazer a reserva, pois o cliente está bloqueado. Para desbloquear o cliente vá até o cadastro de clientes.');
    exit;
  end;

  if (NumeroRegistro('TBRESERVA', 'SUBCOD', 'SUBCOD=' + QuotedStr(qryFilmeSUBCOD.AsString)) > 0)
     and (NumeroRegistro('TBRESERVA', 'RESERVA', 'RESERVA=' + QuotedStr(edmDataReserva.Text)) > 0) then begin
    Alerta('Esta fita já está reservada.');
    exit;
  end;
  sqlReserva.Open;
  sqlReserva.Append;
  sqlReservaCODRESERVA.AsInteger := Codigo;
  sqlReservaCODPESSOA.AsInteger := qryClienteCODPESSOA.AsInteger;
  sqlReservaRESERVA.AsDateTime := StrToDate(edmDataReserva.Text);
  sqlReservaSUBCOD.AsString := qryFilmeSUBCOD.AsString;
  sqlReservaCODCLIENTE.AsInteger := qryClienteCODCLIENTE.AsInteger;
  sqlReserva.Post;
  
  txtFilme.Clear;
  txtCliente.Clear;
  edmDataReserva.Clear;
  txtFilme.SetFocus;
  qryReserva.Refresh;
end;

procedure T_frmReserva.FormDestroy(Sender: TObject);
begin
  fMenu(_frmPrincipal);
end;

procedure T_frmReserva.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure T_frmReserva.bitAlterarClick(Sender: TObject);
begin
  Close;
end;

procedure T_frmReserva.bitCidadeClick(Sender: TObject);
begin
  txtFilme.Text := T_frmPesquisa.AbrePesquisa('SUBCOD', 'Pesquisa de filmes', Self, qryFilme, 10);
end;

procedure T_frmReserva.SpeedButton1Click(Sender: TObject);
begin
  txtCliente.Text := T_frmPesquisa.AbrePesquisa('P_NOME', 'Pesquisa de clientes', Self, qryCliente, 10);
end;

class procedure T_frmReserva.AbreForm(FormPai: T_frmPrincipal);
begin
  if (DM.qryInterfaceSOMENTELEITURA.AsString = 'Não') and
     (DM.qryInterfaceINSERIR.AsString = 'Não') and
     (DM.qryInterfaceALTERAR.AsString = 'Não') and
     (DM.qryInterfaceIMPRIMIR.AsString = 'Não') and
     (DM.qryInterfaceEXCLUIR.AsString = 'Não') then begin
    Alerta('O usuário ' + QuotedStr(DM.SisControl.Usuario.Usuario) + ' não possui permissão suficiente para acessar esta parte do programa.');
    Exit;
  end;

  _frmReserva := T_frmReserva.Create(FormPai);
  fMenu(FormPai);
  _frmReserva.qryFilme.Open;
  _frmReserva.qryCliente.Open;
  _frmReserva.qryReserva.Open;
end;

procedure T_frmReserva.txtClienteChange(Sender: TObject);
var
  Nome, CPFCNPJ: Boolean;
begin
  Nome := qryCliente.Locate('P_NOME', txtCliente.Text, [loCaseInsensitive]);
  CPFCNPJ := qryCliente.Locate('CPFCNPJ', txtCliente.Text, [loCaseInsensitive]);

  if Nome or CPFCNPJ then begin
    dsrCliente.Enabled := true;
  end
  else begin
    dsrCliente.Enabled := false;
  end;
end;

procedure T_frmReserva.FormCreate(Sender: TObject);
begin
  tbsGrid.Show;
  SqlPadrao := qryReserva.SQL.Text;
  lblTitulo.Hint := DM.SisControl.ApplicationNome + ' - ' + lblTitulo.Caption;
  Self.Hint := DM.SisControl.ApplicationNome;
end;

procedure T_frmReserva.txtTextoChange(Sender: TObject);
begin
  Filtrar([SqlPadrao], [StringReplace(qryReserva.Fields[cboCampo.ItemIndex].FieldName, '_', '.', [rfReplaceAll])
    + ' LIKE ' + QuotedStr('%' + txtTexto.Text + '%')
    + ' AND F.NOME LIKE ' + QuotedStr('%' + txtNomeFilme.Text + '%')], [qryReserva]);
end;

end.
