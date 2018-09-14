unit uEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCliente, ExtDlgs, DB, DatasourceMC, Provider,
  DataSetProviderMC, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZQueryMC, DBClient, ClientDataSetMC, DBCtrls, DBCheckBoxMC, fraCad,
  uFrameCadGrid, EditMC, DBMemoMC, DBTextMC, NavigatorMC, StdCtrls,
  ComCtrls, DBRichEditMC, DBImageMC, ExtCtrls, DBRadioGroupMC, CheckBoxMC,
  DBComboBoxMC, DBLookupComboBoxMC, Mask, DBEditMC, SpeedButtonMC, Grids,
  DBGrids, DBGridMC, Buttons, ToolWin, LabelMC, PanelMC, IniFiles;

type
  T_frmCadGridEmpresa = class(T_frmCadGridCliente)
    tabRegistro: TTabSheet;
    DBEditMC1: TDBEditMC;
    LabelMC15: TLabelMC;
    DBEditMC2: TDBEditMC;
    LabelMC22: TLabelMC;
    LabelMC25: TLabelMC;
    qrySerial: TZQueryMC;
    dsrSerial: TDatasourceMC;
    SpeedButtonMC4: TSpeedButtonMC;
    SpeedButtonMC5: TSpeedButtonMC;
    OpenDialog: TOpenDialog;
    qrySerialCODCHAVE: TStringField;
    qrySerialCHAVE: TBlobField;
    qrySerialDATAULTIMOACESSO: TStringField;
    qrySerialCODEMPRESA: TIntegerField;
    procedure qryClienteAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure txtCPFCPJExit(Sender: TObject);
    procedure qryCadAfterPost(DataSet: TDataSet);
    procedure bitGravarClick(Sender: TObject);
    procedure qrySerialNewRecord(DataSet: TDataSet);
    procedure dsrClienteDataChange(Sender: TObject; Field: TField);
    procedure qryClienteAfterEdit(DataSet: TDataSet);
    procedure qryClienteAfterPost(DataSet: TDataSet);
    procedure tabRegistroShow(Sender: TObject);
    procedure qryClienteAfterCancel(DataSet: TDataSet);
    procedure bitAlterarClick(Sender: TObject);
    procedure SpeedButtonMC1Click(Sender: TObject);
    procedure SpeedButtonMC2Click(Sender: TObject);
  private
    { Private declarations }
    procedure LocalizarSerial(CodEmpresa: Integer);
  public
    { Public declarations }
    class function Abrir(FormPai: TForm): T_frmCadGridEmpresa;
  end;

var
  _frmCadGridEmpresa: T_frmCadGridEmpresa;

implementation

uses uCadGrid, uToolFunc, uInstalarSenha, uDM, uDBFunc, uRegistro;

{$R *.dfm}

procedure T_frmCadGridEmpresa.qryClienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryClienteEMPRESA.AsString := 'Sim';
  qryClienteTITULAR.AsString := 'Não';
end;

procedure T_frmCadGridEmpresa.FormActivate(Sender: TObject);
  function VerBtnEmpresa: boolean;
  begin
    Result := false;
    if CompareText(Application.Title, 'Mcestoque') = 0 then
      Result := true;
  end;
begin
  inherited;
  if not VerBtnEmpresa then begin
    bitInserir.Visible := false;
    bitExcluir.Visible := false;
    bitImprimir.Visible := false;
  end;
end;

procedure T_frmCadGridEmpresa.txtCPFCPJExit(Sender: TObject);
begin
  txtCPFCPJ.ValidarDado;
  inherited;
end;

class function T_frmCadGridEmpresa.Abrir(FormPai: TForm): T_frmCadGridEmpresa;
begin
  LockWindowUpdate(FormPai.Handle);
  _frmCadGridEmpresa := T_frmCadGridEmpresa.Create(FormPai);
  Result := _frmCadGridEmpresa;
  LockWindowUpdate(0);
end;

procedure T_frmCadGridEmpresa.qryCadAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not bitCancelar.Visible then begin
    Informacao('O sistema tem de ser reiniciado agora.');
    DOSExec(PCHAR(ExtractFilePath(ParamStr(0)) + Application.Title + '.exe'), SW_MAXIMIZE);
    Application.Terminate;
  end;
end;

procedure T_frmCadGridEmpresa.bitGravarClick(Sender: TObject);
var
  Chave: string;
  MemoryStream: TMemoryStream;
begin
  if not bitCancelar.Visible then begin
    _frmInserirSenha := T_frmInserirSenha.Create(self);
    if _frmInserirSenha.ShowModal = mrOK then
      DM.SisControl.FinalizouInstalacao := true
    else begin
      DM.SisControl.FinalizouInstalacao := false;
      Abort;
    end;
  end;
  if qrySerialCHAVE.IsNull then begin
    Alerta('O campo chave é de preenchimento obrigatório.');
    qrySerialCHAVE.AsString := '0000000000000000';
    Abort;
  end;

  (*preciso aqui pegar o número serial do sistema para fazer as validações abaixo

  é só criar uma rotina onde passo o ini e retorna o tipo de permissão.
  se é demo registrado se expirou bla bla bla bla*)

  try
    MemoryStream := TMemoryStream.Create;
    qrySerialCHAVE.SaveToStream(MemoryStream);
    Chave := PegarValorIni(SERIAL, MemoryStream);
  finally
    FreeAndNil(MemoryStream);
  end;

  if Chave = '0000000000000000' then begin
    Informacao('Empresa registrada para sistema demonstrativo.'#13               +
    'Com este tipo de registro o sistema irá impor algumas restrições de uso, as'+
    ' restrições podem ser vista no arquivo de licença de uso.');
  end;
  if (Chave <> Registro(qryCadNOME.AsString, qryCadCPFCNPJ.AsString, IntToStr(DM.SisControl.FlagGeral))) and
    ('0000000000000000' <> Chave) then begin
    Alerta('CHAVE INVÁLIDA!'#13+
           'Digite um número de série válido para para a empresa ''' + qryCadNOME.AsString + ''' registrada para o CNPJ '''+
           qryCadCPFCNPJ.AsString + '''.');
    Abort;
  end;
  inherited;
  DM.SisControl.SetEmpresa;
end;

procedure T_frmCadGridEmpresa.qrySerialNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrySerialCODCHAVE.AsString := Criptografar(IntToStr(Codigo));
  qrySerialCODEMPRESA.AsString := qryClienteCODCLIENTE.AsString;
  qrySerialDATAULTIMOACESSO.AsString := Criptografar(DateToStr(Date));
end;

procedure T_frmCadGridEmpresa.LocalizarSerial(CodEmpresa: Integer);
begin
  qrySerial.Close;
  qrySerial.ParamByName('CODEMPRESA').AsInteger := CodEmpresa;
  qrySerial.Open;
end;

procedure T_frmCadGridEmpresa.dsrClienteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if qrySerial.State in [dsBrowse] then
    LocalizarSerial(qryClienteCODCLIENTE.AsInteger);
end;

procedure T_frmCadGridEmpresa.qryClienteAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qrySerial.Edit;
end;

procedure T_frmCadGridEmpresa.qryClienteAfterPost(DataSet: TDataSet);
begin
  inherited;
  qrySerial.Post;
end;

procedure T_frmCadGridEmpresa.tabRegistroShow(Sender: TObject);
begin
  inherited;
  if qrySerial.IsEmpty and (qrySerial.State in [dsBrowse]) and not (qryCliente.State in [dsBrowse]) then
    qrySerial.Append;
end;

procedure T_frmCadGridEmpresa.qryClienteAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qrySerial.Cancel;
end;

procedure T_frmCadGridEmpresa.bitAlterarClick(Sender: TObject);
begin
  inherited;
  tabGerais.Show;
end;

procedure T_frmCadGridEmpresa.SpeedButtonMC1Click(Sender: TObject);
var
  MemoryStream: TMemoryStream;
begin
  if qrySerial.State in [dsEdit, dsInsert] then begin
    if OpenDialog.Execute then begin
      qrySerialCHAVE.LoadFromFile(OpenDialog.FileName);
      try
        MemoryStream := TMemoryStream.Create;
        qrySerialCHAVE.SaveToStream(MemoryStream);
        if not IniRegistroValido(MemoryStream) then begin
          Alerta('Arquivo de chave de registro inválido ou a validade da chave '+
            'expirou. O arquivo de registro tem um prazo de 30 dias para ser '+
            'inserido no sistema. Caso sua licença ainda seja válida entre em '+
            'contato com o fornecedor do software fornecendo seus dados de '+
            'cadastro para adquirir uma nova chave.');
          qrySerialCHAVE.Clear;
        end;
        qrySerialDATAULTIMOACESSO.AsString := Criptografar(DateToStr(Date));
      finally
        FreeAndNil(MemoryStream);
      end;
    end;
  end;
end;

procedure T_frmCadGridEmpresa.SpeedButtonMC2Click(Sender: TObject);
begin
  if qrySerial.State in [dsEdit, dsInsert] then begin
    qrySerialCHAVE.Clear;
  end;
end;

end.
