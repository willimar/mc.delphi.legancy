unit uFormCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPreReport, Buttons, ToolWin, ComCtrls, StdCtrls, ExtCtrls,
  LabelMC, CheckBoxMC, EditMC, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZQueryMC;

type
  T_frmFormCliente = class(T_frmPreReport)
    rdgModelo: TRadioGroup;
    CheckBoxMC1: TCheckBoxMC;
    txtPath: TEditMC;
    bitCidade: TSpeedButton;
    LabelMC1: TLabelMC;
    opdAbrir: TOpenDialog;
    qryContrato: TZQueryMC;
    qryContratoNOME: TStringField;
    qryContratoENDERECO: TStringField;
    qryContratoBAIRRO: TStringField;
    qryContratoCIDADE: TStringField;
    qryContratoCODUF: TStringField;
    qryContratoCEP: TStringField;
    qryContratoCOMPLEMENTO: TStringField;
    qryContratoDATACADASTRO: TDateField;
    qryContratoPROFISSAO: TStringField;
    qryContratoRG: TStringField;
    qryContratoCPFCNPJ: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure bitCidadeClick(Sender: TObject);
    procedure bitImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FCodPessoa: Integer;
    FSqlComplemento: String;
    { Private declarations }
    procedure ImprimirContrato;
  public
    { Public declarations }
    property CodPessoa: Integer read FCodPessoa write FCodPessoa;
    property SqlComplemento: String read FSqlComplemento write FSqlComplemento;
    class function Abrir(Formpai: TForm; Pessoa: Integer): T_frmFormCliente;
  end;

var
  _frmFormCliente: T_frmFormCliente;

implementation

uses uToolFunc, uCliente, uDM, uRptCliente;

{$R *.dfm}

procedure T_frmFormCliente.FormCreate(Sender: TObject);
begin
  inherited;
  txtPath.Text := ExtractFilePath(ParamStr(0)) + 'Contrato.doc';
  if not Assigned(_frmRptCliente) then
    _frmRptCliente := T_frmRptCliente.Create(FormularioPai);
end;

procedure T_frmFormCliente.bitCidadeClick(Sender: TObject);
begin
  inherited;
  if opdAbrir.Execute then
    txtPath.Text := opdAbrir.FileName;
end;

procedure T_frmFormCliente.bitImprimirClick(Sender: TObject);
begin
  case rdgModelo.ItemIndex of
    0: begin
      rpt := nil;
      ImprimirContrato;
    end;
    1: begin
      rpt := _frmRptCliente.rpt;
      _frmRptCliente.qryListaSintetica.Close;
      _frmRptCliente.qryListaSintetica.Sql.Text := _frmRptCliente.qryListaSintetica.Sql.Text + SqlComplemento;
      _frmRptCliente.qryListaSintetica.Open;
    end;
  end;
  if Assigned(rpt) then
    inherited;
end;

procedure T_frmFormCliente.ImprimirContrato;
var
  WinWord, Doc: Variant;
begin
  qryContrato.Close;
  qryContrato.ParamByName('CODPESSOA').AsInteger := CodPessoa;
  qryContrato.Open;

  AbrirDocWord(WinWord, Doc, txtPath.Text);
  {substituindo os dados da empresa}
  SubistituirNoWord(Doc, '<Empresa>', DM.SisControl.Empresa.Empresa, 5);
  SubistituirNoWord(Doc, '<CidadeEmpresa>', DM.SisControl.Empresa.Cidade, 5);
  SubistituirNoWord(Doc, '<UFEmpresa>', DM.SisControl.Empresa.UF, 5);
  SubistituirNoWord(Doc, '<EndEmpresa>', DM.SisControl.Empresa.Endereco, 5);
  SubistituirNoWord(Doc, '<BairroEmpresa>', DM.SisControl.Empresa.Bairro, 5);
  SubistituirNoWord(Doc, '<CNPJ>', DM.SisControl.Empresa.CNPJ, 5);
  {substituindo os dados do socio}
  SubistituirNoWord(Doc, '<Nome>', qryContratoNOME.AsString, 5);
  SubistituirNoWord(Doc, '<End>', qryContratoENDERECO.AsString, 5);
  SubistituirNoWord(Doc, '<Bairro>', qryContratoBAIRRO.AsString, 5);
  SubistituirNoWord(Doc, '<Complemento>', qryContratoCOMPLEMENTO.AsString, 5);
  SubistituirNoWord(Doc, '<CPF>', qryContratoCPFCNPJ.AsString, 5);
  SubistituirNoWord(Doc, '<RG>', qryContratoRG.AsString, 5);
  SubistituirNoWord(Doc, '<Profissão>', qryContratoPROFISSAO.AsString, 5);
  SubistituirNoWord(Doc, '<Cidade>', qryContratoCIDADE.AsString, 5);
  SubistituirNoWord(Doc, '<UF>', qryContratoCODUF.AsString, 5);
  SubistituirNoWord(Doc, '<CEP>', qryContratoCEP.AsString, 5);
  {Imprimindo a data de cadastro}
  SubistituirNoWord(Doc, '<dataCad>', qryContratoDATACADASTRO.AsString, 5);
  Doc.PrintOut(false);
  Doc.close(false);
  WinWord.Quit;
end;

class function T_frmFormCliente.Abrir(Formpai: TForm; Pessoa: Integer): T_frmFormCliente;
begin
  FormularioPai := Formpai;
  FormularioPai.FormStyle := fsNormal;
  FormularioPai.Hide;
  _frmFormCliente := T_frmFormCliente.Create(Formpai);
  _frmFormCliente.CodPessoa := Pessoa;
  Result := _frmFormCliente;
end;

procedure T_frmFormCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //FreeAndNil(_frmRptCliente);
end;

end.
