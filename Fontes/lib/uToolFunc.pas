unit uToolFunc;

interface

uses
  Windows, Forms, menus, SysUtils, dbctrls, comctrls, graphics, stdctrls, buttons,
  dbgrids, extctrls, mask, FileCtrl, registry, classes, Controls, QGrids, ComObj,
  Grids, ZAbstractRODataset, ZAbstractDataset, ZDataset, DB, Variants, ZQueryMC,
  DBEditMC, DBGridMC, DBTextMC, DBRichEditMC, DBListBoxMC, DBComboBoxMC, DBCheckBoxMC,
  DBRadioGroupMC, DBLookupListBoxMC, DBLookupComboBoxMC, shellapi, LookupMC, FileStreamMC,
  Winsock, Gauges, EditMC, LabelMC;

const
  STG_INICIO = 0;
  STG_DEPOIS = 1;
  STG_FINAL = 2;

  type TTipoValida = (tvInteiro, tvFloat, tvSoCaracter);

  function Pergunta(QUESTION : String) : boolean;//Exibe uma janela de pergunta e retorna true se respondido Ok
  function Alerta(WARNING : String; Retorno : Boolean = false) : boolean;
  function Exclamacao(EXCLAMATION : String; Retorno : Boolean = false) : boolean;
  function Erro(ERROR : String; Retorno : Boolean = false) : boolean;
  function Informacao(INFORMATION : String; Retorno : Boolean = false) : boolean;
  procedure fMenu(Form : TForm);// torna o menu principal abilitado ou inabilitado
  function path : string; // retorna em que diret�rio est� o executavel
  procedure DOSExec(Comando : PChar; Modo : Integer; TempoEspera: Cardinal = 0);
  procedure libera(Form : TForm);
  function replicate(Str : string; nVezes : word) : string;
  function iif(Condicao : Boolean; Verdade, Mentira : Variant) : Variant;
  function FontStyleToStr(FontStyle : TFontStyles) : String;
  function StrToFontStyle(FontStyle : String) : TFontStyle;
  procedure CreateDire(Caminho,Arquivo : String);
  //procedure botao(Btn : Array of TToolButton);
  procedure botao(Btn : Array of TSpeedButton);
//  procedure email(Destinatario, Assunto, Mensagem : string);
  procedure GravarRegistro(host, Extacao, Registrado, backup : string);
  procedure LerRegistro(var Valor: String; Onde : String);
  function Substituir(OldValue, NewValue, Str : String) : String;
  function TamArquivo(Arquivo: string): Integer;
  function hd(FDrive:String) : string;
  function Demo : Boolean;
  Function Deletar(SubStr, Str: String) : String;
  function DadoInvalido(Sender, TabSheet : TObject; Msg : String) : Boolean;overload;
  function DadoInvalido(Sender, TabSheet : array of TObject; Msg : String) : Boolean;overload;
  function SqlData(Data: TDate) : String;
  procedure CamposPesquisa(DbGrid : TDbGrid; ComboBox : TComboBox);
  function Completar_Zero_Antes(Valor : String; Numero : Word) : String;
  function ValidarCpf(CPF : String) : Boolean;
  function ValidarCnpj(CNPJ: string): boolean;
  function IncluirStr(Const SubStr, Str: string; Posicao : Word): String;
  function DelphiAberto : Boolean;
  procedure DeletarMultSelect(DBGrid: TDBGrid);
  procedure MontarStringGrid(StringGrid : TStringGrid;
    nRowCount, nColCount, nFixedCols, nFixedRows, aRowHeights : Integer;
    aColWidths : Array of Integer; Titulo : Array of String);
  procedure InserirLinhaStringGrid(StringGrid : TStringGrid; Local : Word);
  procedure InserirRegistroStringGrid(StringGrid : TStringGrid; Registro : Array of String;
    Linha : Integer);
  function Mascara(SubStr, Str : String) : String;
  function CaracterValido(Sender : TObject; var Key : Char; TipoValida : TTipoValida) : Boolean;
  procedure Alterar_em_massa_StringGrid(StringGrid : TStringGrid; ACol : Integer; Valor : String);
  procedure Coluna_Total_StringGrid(StringGrid : TSTringGrid; Coluna : Word; var Total : Real);
  function Porcentagem(Porcent, Valor : Real) : Real;
  procedure AbrirDocWord(var WinWord, Doc : Variant; Path: String; Visivel: Boolean = true);
  procedure SubistituirNoWord(Doc : Variant; oldValue, NewValue: String; FazerNVezes: Word = 1);
  procedure SOInfo(var Resultado: String);
  procedure ExibeHinte(Top, Bottom, Left, Right: Integer; Msg:
    String; AOwner: Tcomponent; var HintWindow: THintWindow);
  procedure FechaHinte(AOwner: Tcomponent; var HintWindow: THintWindow);
  procedure SetObjText(Sender: TObject; Text: String);
  function GetObjText(Sender: TObject): String;
  procedure SetObjFoco(Sender: TObject);
  procedure SetObjColor(Sender: TObject; Color: TColor);
  procedure ZebraDBGrid(Sender: TObject; Rect: TRect; Column: TColumn;
    State: TGridDrawState);
  procedure TransferirRegistros(GridInicio, GridFim: TDBGrid; Todos: Boolean);
  procedure EAN13(Canvas: TCanvas; Numero:String; PosX, PosY : Integer; Altura : Double);
  function CalculaDigito(Numero : String): Char;
  procedure SepararCodigo(const Codigo : String; var Resultado : array of String);
  procedure PreencheArrayAutoComplete(var Resultado : Array of String;
    const ArrayMascara: Array of String);
  procedure PreencheEdit(Sender: TOBject; Valores, Where: Array of String; Tabela: String);
  procedure Controle_de_mascara(Sender: TOBject);
  procedure AutocompletarCampo(Sender: TOBject; Const Tabela,
    Mascara : String; Graus : Word);
  procedure CheckBox(Column: TColumn; Field: TField; DBGrid: TObject;
    Rect: TRect);
  function ValidarForm(Form: TForm): boolean;
  function Criptografar(valor : string) : string;
  function Descriptografar(valor : string) : string;
  procedure AbrirUrl(Url: String);
  procedure EnviarEmail(Destino: String; hWnd: HWND);
  function ExecutaEsperaTerminar(Arquivo: String; WindoState: Integer): Integer;
  function NomeComputadorRegistro : string;
  function GetIP(var NomeComputer: String): string;
  procedure incGauge(Gauge: TGauge);
  function PrinterIsOnLine(Porta: Word = 0): Boolean;
  function GetAplicativoNome: string;

implementation

uses
  uDBFunc, uDM;

function Pergunta(QUESTION : String) : boolean;
begin
  if Application.MessageBox(PChar(QUESTION), PChar(DM.SisControl.ApplicationNome), MB_YESNO +
                            MB_ICONQUESTION + MB_DEFBUTTON1) = IDYes then
    Result := true
  else
    Result := false;
end;

function Alerta(WARNING : String; Retorno : Boolean = false) : boolean;
begin
  if Retorno then
  begin
    if Application.MessageBox(PChar(WARNING), PChar(DM.SisControl.ApplicationNome), MB_YESNO +
                            MB_ICONWARNING + MB_DEFBUTTON1) = IDYes then
    begin
      Result := true;
    end
    else
      Result := false;
  end
  else
    Application.MessageBox(PChar(WARNING), PChar(DM.SisControl.ApplicationNome), MB_ICONWARNING);
end;

function Exclamacao(EXCLAMATION : String; Retorno : Boolean = false) : boolean;
begin
  if Retorno then
  begin
    if Application.MessageBox(PChar(EXCLAMATION), PChar(DM.SisControl.ApplicationNome), MB_YESNO +
                            MB_ICONEXCLAMATION + MB_DEFBUTTON1) = IDYes then
    begin
      Result := true;
    end
    else
      Result := false;
  end
  else
    Application.MessageBox(PChar(EXCLAMATION), PChar(DM.SisControl.ApplicationNome), MB_ICONEXCLAMATION);
end;

function Erro(ERROR : String; Retorno : Boolean = false) : boolean;
begin
  if Retorno then
  begin
    if Application.MessageBox(PChar(ERROR), PChar(DM.SisControl.ApplicationNome), MB_YESNO +
                            MB_ICONERROR + MB_DEFBUTTON1) = IDYes then
    begin
      Result := true;
    end
    else
      Result := false;
  end
  else
    Application.MessageBox(PChar(ERROR), PChar(DM.SisControl.ApplicationNome), MB_ICONERROR);
end;

function Informacao(INFORMATION : String; Retorno : Boolean = false) : boolean;
begin
  if Retorno then
  begin
    if Application.MessageBox(PChar(INFORMATION), PChar(DM.SisControl.ApplicationNome), MB_YESNO +
                            MB_ICONINFORMATION + MB_DEFBUTTON1) = IDYes then
    begin
      Result := true;
    end
    else
      Result := false;
  end
  else
    Application.MessageBox(PChar(INFORMATION), PChar(DM.SisControl.ApplicationNome), MB_ICONINFORMATION);
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - fMenu
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - Habilita e desabilita o menu principal
*******************************************************************************}
procedure fMenu(Form : TForm);
var
  i : word;
begin
  for i := 0 to pred(Form.ComponentCount) do
  begin
    if Form.Components[i] is TMenuItem then
    begin
      Form.Update;
      (Form.Components[i] as TMenuItem).Enabled := not
            (Form.Components[i] as TMenuItem).Enabled
    end;
  end;
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - path
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - Retorna o local onde o est� o executavel
*******************************************************************************}
function path : string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - DOSExec
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - Executa umn comando no DOS e espera terminar
*******************************************************************************}
procedure DOSExec(Comando : PChar; Modo : Integer; TempoEspera: Cardinal);
var
  //arj, parametro, nome, cbackup : string;
  StartUpInfo : TStartupInfo;
  ProcessInformation : TProcessInformation;
  rc : Boolean;
  Handle : THandle;
begin
    //obtem informa��es de inicio atual
    GetStartupInfo(StartUpInfo);
    //Gera arquivo de saida
    Handle := CreateFile('Video_Backup.log',GENERIC_READ or GENERIC_WRITE,0,nil,CREATE_ALWAYS,0,0);
    //inicializa o campo de startupinfo
    with StartUpInfo do
    begin
        //redireciona a saida
        hStdInput := Handle;
        //naum mostra a janela do dos
        wShowWindow := Modo;
        dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
    end;
    //dispara o processo
    rc := CreateProcess(nil,Comando,nil,nil,true,0,nil,nil,StartUpInfo,ProcessInformation);
    //espera terminar
    //o segundo parametro espera 10 segundos '''''''''''''''' indefinidamente
    if rc then
       WaitForSingleObject(ProcessInformation.hProcess, TempoEspera);
    //fecha o arquivo de saida
    CloseHandle(Handle);
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - libera
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - Libera o ReadOnly dos objetos Edit e Memo para edi��o (muito
                 usado nos cadastros)
*******************************************************************************}
procedure libera(Form : TForm);
var
  i : word;
begin
    for i := 0 to pred(Form.ComponentCount) do
    begin
        if (Form.Components[i] is TDBEdit) then
           (Form.Components[i] as TDBEdit).ReadOnly := not (Form.Components[i] as TDBEdit).ReadOnly;
        if (Form.Components[i] is TDBMemo) then
           (Form.Components[i] as TDBMemo).ReadOnly := not (Form.Components[i] as TDBMemo).ReadOnly;
        if (Form.Components[i] is TDBRadioGroup) then
           (Form.Components[i] as TDBRadioGroup).ReadOnly := not (Form.Components[i] as TDBRadioGroup).ReadOnly;
        if (Form.Components[i] is TDBCheckBox) then
           (Form.Components[i] as TDBCheckBox).ReadOnly := not (Form.Components[i] as TDBCheckBox).ReadOnly;
        if (Form.Components[i] is TDBLookupComboBox) then
           (Form.Components[i] as TDBLookupComboBox).ReadOnly := not (Form.Components[i] as TDBLookupComboBox).ReadOnly;
    end;
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - replicate
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - Repete uma string n vezes
*******************************************************************************}
function replicate(Str : string; nVezes : word) : string;
var
  cStr : string;
  i : word;
begin
    for i := 0 to pred(nVezes) do
    begin
        cStr := cStr + Str;
    end;
    Result := cStr;
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - iif
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - pois � iif
*******************************************************************************}
function iif(Condicao : Boolean; Verdade, Mentira : Variant) : Variant;
begin
  if Condicao then
    Result := Verdade
  else
    Result := Mentira;
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - FontStyleToStr
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - Tranforma o estilo de uma fonte em string
*******************************************************************************}
function FontStyleToStr(FontStyle : TFontStyles) : String;
begin
  if FontStyle = [fsBold] then Result := 'fsBold';
  if FontStyle = [fsItalic] then Result := 'fsItalic';
  if FontStyle = [fsUnderline] then Result := 'fsUnderline';
  if FontStyle = [fsStrikeOut] then Result := 'fsStrikeOut';
  if FontStyle = [] then Result := '';
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - StrToFontStyle
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - Faz o contrario da de cima
*******************************************************************************}
function StrToFontStyle(FontStyle : String) : TFontStyle;
begin
  if FontStyle = 'fsBold' then Result := fsBold;
  if FontStyle = 'fsItalic' then Result := fsItalic;
  if FontStyle = 'fsUnderline' then Result := fsUnderline;
  if FontStyle = 'fsStrikeOut' then Result := fsStrikeOut;
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - CreateDire
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - Cria um diretorio no caminho especificado
*******************************************************************************}
procedure CreateDire(Caminho,Arquivo : String);
begin
    if not DirectoryExists(Caminho + '\' + Arquivo) then
       CreateDir(Caminho + '\' + Arquivo);
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - botao
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - Habilita e desabilita os bot�es passados como parametro
*******************************************************************************}
{procedure botao(Btn : Array of TToolButton); overload;
var
  i : word;
begin
  for i := 0 to length(Btn)-1 do
  begin
    Btn[i].Enabled := not Btn[i].Enabled;
  end;
end;}

procedure botao(Btn : Array of TSpeedButton); overload;
var
  i : word;
begin
  for i := 0 to length(Btn)-1 do
  begin
    Btn[i].Enabled := not Btn[i].Enabled;
  end;
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - email
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - envia email smtp
*******************************************************************************}
{procedure email(Destinatario, Assunto, Mensagem : string);
var
   NMsmtp1 : TNMSMTP;
begin
  NMsmtp1 := TNMSMTP.Create(Application);
  //Seu servidor SMTP
  NMSMTP1.Host := SisControl.SMTPServer;
  //Porta SMTP, **N�O MUDE ISTO**
  NMSMTP1.Port := 25;
  //Nome de login do usu�rio
  NMSMTP1.UserID := SisControl.EmailLogin;
  //Conecta ao servidor
  NMSMTP1.Connect;
  //Se ocorrer algum erro durante a conex�o com o servidor, avise!
  if not NMSMTP1.Connected then
   raise Exception.Create('Erro de conex�o');
  with NMSMTP1.PostMessage do
  begin
    //Seu e-mail
    FromAddress := SisControl.MeuEmail;
    //Seu nome
    FromName := SisControl.Empresa;
    //E-mail do destinat�rio
    ToAddress.Clear;
    ToAddress.Add(Destinatario);
    //Assunto da mensagem
    Subject := Assunto;
    //Corpo da mensagem
    Body.Clear;
    Body.Text := Mensagem;
    if SisControl.PathEmailAnexo <> '' then
    begin
      //Anexar arquivos(Se n�o quiser anexar arquivos, apague as 3 linhas seguintes)
      Attachments.Clear;
      //Endere�o do anexo
         Attachments.Add(SisControl.PathEmailAnexo);
      end;
  end;
  //Manda o e-mail
  NMSMTP1.SendMail;
  //Disconecta do servidor
  NMSMTP1.Disconnect;
  NMsmtp1.free;
end; }

{*******************************************************************************
MCEstoque
Nome da Fun��o - GravarRegistro
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - Escreve no registro do windows
*******************************************************************************}
procedure GravarRegistro(host, Extacao, Registrado, backup : string);
var
  Registro : TRegistry;
begin
  // Chama o construtor do objeto
  Registro := TRegistry.Create;
  //Abre a chave (se o 2�. Par�metro for True, ele cria a chave caso ela ainda n�o exista.
  Registro.OpenKey (DM.SisControl.RegRaiz, True);
  // Grava as informa��es das caixas Abrir e Salvar.
  Registro.WriteString ('host', host);
  Registro.WriteString ('extacao', Extacao);
  Registro.WriteString ('mcvideo', Registrado);
  Registro.WriteString ('backup', backup);
  // Fecha a chave e o objeto
  Registro.CloseKey;
  Registro.Free;
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - GravarRegistro
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - le o registro do windows
*******************************************************************************}
procedure LerRegistro(var Valor: String; Onde : String);
var
  Registro : TRegistry;
begin
  // Chama o construtor do objeto
  Registro := TRegistry.Create;
  with Registro do
  begin
    // Somente abre se a chave existir
    if OpenKey(DM.Siscontrol.RegRaiz, False) then
     // Envia as informa��es ao form, vendo se os valores existem, primeiramente...
     if ValueExists (Onde) then
       Valor := ReadString(Onde);
     // Fecha a chave e o objeto
  end;
  Registro.CloseKey;
  Registro.Free;
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - Substituir
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - o nome ja diz
*******************************************************************************}
function Substituir(OldValue, NewValue, Str : String) : String;
var
  cStr : String;
begin
  Result := StringReplace(Str, OldValue, NewValue, [rfReplaceAll]);
  {while pos(OldValue, str) > 0 do
  begin
    delete(Str, pos(OldValue, str), length(OldValue));
    cstr := copy(str, 1, pos(OldValue, str) - 1) + NewValue + copy(str, pos(OldValue, str), length(str));
  end;
  Result := cStr;}
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - TamArquivo
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - verifica o tamanho do arquivo passado como parametro
*******************************************************************************}
function TamArquivo(Arquivo: string): Integer;
begin
  with TFileStream.Create(Arquivo, fmOpenRead or fmShareExclusive) do
    try
      Result := Size;
    finally
      Free;
    end;
end;

{*******************************************************************************
MCEstoque
Nome da Fun��o - hd
Responsavel    - Willimar
Data           - 00-00-0000
Manuten��o     -
Responsavel    -
Descri��o      - retorna o numero serial do HD
*******************************************************************************}
function hd(FDrive:String) : string;
var
  Serial:DWord;
  DirLen,Flags: DWord;
  DLabel : Array[0..11] of Char;
begin
  Try
    GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
    Result := IntToHex(Serial,8);
  Except
    Result :='';
  end;
end;

function Demo : Boolean;
begin
  result := false;
end;

Function Deletar(SubStr, Str: String) : String;
var
  S : String;
begin
  s := Str;
  while Pos(SubStr, s) > 0 do
    Delete(S, Pos(SubStr, s), Length(SubStr));
  Result := s;
end;

function DadoInvalido(Sender, TabSheet : TObject; Msg : String) : Boolean;
begin
  if GetObjText(Sender) = '' then
  begin
    Alerta(Msg, false);
    if TabSheet <> nil then
      (TabSheet as TTabSheet).Show;
    SetObjFoco(Sender);
    SetObjColor(Sender, clSkyBlue);
    Result := true;
    Exit;
  end;
  result := false;
end;

function DadoInvalido(Sender, TabSheet : array of TObject; Msg : String) : Boolean;overload;
begin
  if GetObjText(Sender[0]) = '' then
  begin
    Alerta(Msg, false);
    (TabSheet[0] as TTabSheet).Show;
    SetObjFoco(Sender[1]);
    SetObjColor(Sender[1], clSkyBlue);
    Result := true;
    Exit;
  end;
  result := false;
end;

function SqlData(Data: TDate) : String;
var
  m, d, a : Word;
begin
  DecodeDate(Data, a, m, d);
  Result := QuotedStr(IntToStr(a) + '-' + IntToStr(m) + '-' + IntToStr(d));
end;

procedure CamposPesquisa(DbGrid : TDbGrid; ComboBox : TComboBox);
var
  i : word;
begin
  ComboBox.Items.Clear;
  for i := 0 to DbGrid.Columns.Count - 1 do
    begin
      ComboBox.Items.Add(DbGrid.Columns[i].Title.Caption);
    end;
  ComboBox.ItemIndex := 1;
end;

function Completar_Zero_Antes(Valor : String; Numero : Word) : String;
var
  i : Word;
  Resp : String;
begin
  Resp := '';
  if Length(Valor) = Numero then
    begin
      Result := Valor;
      Exit;
    end;
  for i := 0 to Numero - Length(Valor) - 1 do
    begin
      Resp := Resp + '0';
    end;
  Result := Resp + Valor;
end;

function ValidarCpf(CPF : String) : Boolean;
var
  Digito1, Digito2: integer;
  Testar: String;
begin
  Testar := CPF;
  if (POS('/', Testar) <> 0) then begin
    Result := false;
    exit;
  end;
  Testar := Substituir('.', '', Testar);
  Testar := Substituir('-', '', Testar);
  if (Length(Testar) <> 11) then begin
    Result := false;
    exit;
  end;

  //Calcula o primeiro digito verificador do CPF
  Digito1 := StrToInt(Testar[9]) * 2 +
             StrToInt(Testar[8]) * 3 +
             StrToInt(Testar[7]) * 4 +
             StrToInt(Testar[6]) * 5 +
             StrToInt(Testar[5]) * 6 +
             StrToInt(Testar[4]) * 7 +
             StrToInt(Testar[3]) * 8 +
             StrToInt(Testar[2]) * 9 +
             StrToInt(Testar[1]) * 10;
  Digito1 := 11-(Digito1 mod 11);
  if Digito1 >= 10 then Digito1 := 0;
  //Calcula o segundo digito do CPF
  Digito2 := Digito1 * 2 +
             StrToInt(Testar[9]) * 3 +
             StrToInt(Testar[8]) * 4 +
             StrToInt(Testar[7]) * 5 +
             StrToInt(Testar[6]) * 6 +
             StrToInt(Testar[5]) * 7 +
             StrToInt(Testar[4]) * 8 +
             StrToInt(Testar[3]) * 9 +
             StrToInt(Testar[2]) * 10+
             StrToInt(Testar[1]) * 11;
  Digito2 := 11 - (Digito2 mod 11);
  if Digito2 >= 10 then Digito2 := 0;
  //verifica se o codigo verificador calculado � igula ao c�digo verificador
  //digitado
  if (IntToStr(Digito1) + IntToStr(Digito2)) = (Testar[10] + Testar[11]) then begin
    Result := true;
  end
  else
    Result := false;

end;

function ValidarCnpj(CNPJ: string): boolean;
var
  Digito1, Digito2 : integer;
  Testar: String;
begin
  Testar := CNPJ;
  Testar := Substituir('.', '', Testar);
  Testar := Substituir('-', '', Testar);
  Testar := Substituir('/', '', Testar);
  if (Length(Testar) <> 14) then
  begin
    Result := false;
    exit;
  end;
  Digito1 := StrToInt(Testar[12]) * 2 +
             StrToInt(Testar[11]) * 3 +
             StrToInt(Testar[10]) * 4 +
             StrToInt(Testar[9]) * 5 +
             StrToInt(Testar[8]) * 6 +
             StrToInt(Testar[7]) * 7 +
             StrToInt(Testar[6]) * 8 +
             StrToInt(Testar[5]) * 9 +
             StrToInt(Testar[4]) * 2 +
             StrToInt(Testar[3]) * 3 +
             StrToInt(Testar[2]) * 4 +
             StrToInt(Testar[1]) * 5;
  Digito1 := 11 - (Digito1 mod 11);
  if Digito1 >= 10 then Digito1 := 0;
  Digito2 := Digito1 * 2 +
             StrToInt(Testar[12]) * 3 +
             StrToInt(Testar[11]) * 4 +
             StrToInt(Testar[10]) * 5 +
             StrToInt(Testar[9]) * 6 +
             StrToInt(Testar[8]) * 7 +
             StrToInt(Testar[7]) * 8 +
             StrToInt(Testar[6]) * 9 +
             StrToInt(Testar[5]) * 2 +
             StrToInt(Testar[4]) * 3 +
             StrToInt(Testar[3]) * 4 +
             StrToInt(Testar[2]) * 5 +
             StrToInt(Testar[1]) * 6;
  Digito2 := 11 - (Digito2 mod 11);
  if Digito2 >= 10 then Digito2 := 0;
  //ALERTA(IntToStr(Digito1) + IntToStr(Digito1));
  if (IntToStr(Digito1) + IntToStr(Digito2)) = (Testar[13] + Testar[14]) then
    Result := true
  else
    Result := false;
end;

function IncluirStr(Const SubStr, Str: string; Posicao : Word): String;
begin
  Result := Copy(Str, 1, Posicao) + SubStr + Copy(Str, Posicao+1, Length(Str));
  //000.000.00000
end;

function DelphiAberto : Boolean;
begin
  if FindWindow('TAppBuilder', nil) > 0 then
    Result := true
  else
    Result := false;
end;

procedure DeletarMultSelect(DBGrid: TDBGrid);
var
 i : Integer;
begin
  With Dbgrid do
  Begin
    for i := 0 to Pred(SelectedRows.Count) do
    Begin
      Datasource.Dataset.Bookmark:= SelectedRows[i]; // posiciona nos registros selecionados do DBGrid
      Datasource.Dataset.Delete;
    end;
  end;
end;

procedure MontarStringGrid(StringGrid : TStringGrid;
  nRowCount, nColCount, nFixedCols, nFixedRows, aRowHeights : Integer;
  aColWidths : Array of Integer; Titulo : Array of String);
var
  i : Integer;
begin
  with StringGrid do
  begin
    RowCount := nRowCount;
    ColCount := nColCount;
    FixedCols := nFixedCols;
    FixedRows := nFixedRows;
    for i := 0 to nRowCount - 1 do
    begin
      RowHeights[i] := aRowHeights;
    end;
    for i := 0 to Length(aColWidths) - 1 do
    begin
      ColWidths[i] := aColWidths[i];
    end;
    if Titulo[0] <> '' then
      for i := 0 to Length(Titulo) - 1 do
      begin
        Cols[i].Text := Titulo[i];
      end;
  end;
end;

procedure InserirLinhaStringGrid(StringGrid : TStringGrid; Local : Word);
var
  i, j, Selected : Integer;
begin
  StringGrid.RowCount := StringGrid.RowCount + 1;
  StringGrid.RowHeights[StringGrid.RowCount-1] := StringGrid.RowHeights[StringGrid.RowCount-2];
  case Local of
    STG_INICIO: begin
      for i := StringGrid.RowCount downto 2 do
      begin
        for j := 0 to StringGrid.ColCount do
        begin
          StringGrid.Cells[j, i] := StringGrid.Cells[j, i-1];
          StringGrid.Cells[j, i-1] := '';
        end;
      end;
    end;
    STG_DEPOIS: begin
      for i := StringGrid.RowCount downto StringGrid.Row + 2 do
      begin
        for j := 0 to StringGrid.ColCount do
        begin
          StringGrid.Cells[j, i] := StringGrid.Cells[j, i-1];
          StringGrid.Cells[j, i-1] := '';
        end;
      end;
    end;
  end;
end;

procedure InserirRegistroStringGrid(StringGrid : TStringGrid; Registro : Array of String;
  Linha : Integer);
var
  i : integer;
begin
  for i := 0 to Length(Registro) - 1 do
  begin
    StringGrid.Cells[i, Linha] := Registro[i];
  end;
end;

function Mascara(SubStr, Str : String) : String;
var
  i, j : Integer;
  Resposta : string;
begin
  j := 1;
  for i := 1 to Length(SubStr) do
  begin
    if i > Length(Str) then
      begin
        Result := Resposta;
        exit;
      end;
    Resposta := Resposta + iif(SubStr[j] <> '0', SubStr[j] + Str[i], Str[i]);
    inc(j);
    j := iif(SubStr[i] <> '0', j + 1, j);
  end;
end;

function CaracterValido(Sender : TObject; var Key : Char; TipoValida : TTipoValida) : Boolean;
begin
  Case TipoValida of
    tvSoCaracter: begin
      if not ((not(key in ['0' .. '9', ',', #8])) or ((key in [',']) and
        (pos(Key, TEdit(Sender).Text)>0))) then
        begin
          MessageBeep(1);
          Key := #0;
          Result := False;
        end
      else
        result := true;
    end;
    tvFloat: begin
      if (not(key in ['0' .. '9', ',', #8])) or ((key in [',']) and
        (pos(Key, TEdit(Sender).Text)>0)) then
        begin
          MessageBeep(1);
          Key := #0;
          Result := false;
        end
      else
        Result := true;
    end;
    tvInteiro: begin
      if (not(key in ['0' .. '9', #8])) then
        begin
          MessageBeep(1);
          Key := #0;
          Result := false;
        end
      else
        Result := true;
    end;
  end;
end;

procedure Alterar_em_massa_StringGrid(StringGrid : TStringGrid; ACol : Integer; Valor : String);
var
  i : integer;
begin
  for i := 1 to StringGrid.RowCount do
  begin
    StringGrid.Cells[ACol, i] := Valor;
  end;
end;

procedure Coluna_Total_StringGrid(StringGrid : TSTringGrid; Coluna : Word; var Total : Real);
var
  i : Integer;
  Valor : String;
begin
  Total := 0;
  for i := 1 to StringGrid.RowCount - 1 do
  begin
    Valor := iif(StringGrid.Cells[Coluna, i] = '', '0', StringGrid.Cells[Coluna, i]);
    if pos('R', Valor) > 0 then
      Delete(Valor, pos('R', Valor), 2);
    Total := Total + StrToFloat(Valor);
  end;
end;

function Porcentagem(Porcent, Valor : Real) : Real;
begin
  result := Valor * Porcent/100;
end;

procedure AbrirDocWord(var WinWord, Doc : Variant; Path: String; Visivel: Boolean);
var
  Docs : Variant;
begin
  // Cria objeto principal de controle
  WinWord := CreateOleObject('Word.Application');
  // Mostra o Word
  WinWord.Visible := Visivel;
  // Pega uma interface para o objeto que manipula documentos
  Docs := WinWord.Documents;
  Doc := Docs.Open(Path);
end;

procedure SubistituirNoWord(Doc : Variant; oldValue, NewValue: String; FazerNVezes: Word = 1);
var
  i: word;
begin
  for i := 1 to FazerNVezes do
    Doc.Content.Find.Execute(FindText := oldValue, ReplaceWith := NewValue);
end;

procedure SOInfo(var Resultado: String);
var
  verInfo : TOsVersionInfo;
  str : String;
  I : Word;
begin
  verInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  if GetVersionEx(verInfo) then
  begin
    str := 'Vers�o : '+ IntToStr(verInfo.dwMajorVersion) +
      IntToStr(verInfo.dwMinorVersion) + #13;
    str := Str + 'Compila��o : '+IntToStr(verInfo.dwBuildNumber) + #13;
    str := Str + 'Sistema Operacional : ';
    case verInfo.dwPlatformId of
      VER_PLATFORM_WIN32s : str := str +'Windows 95';
      VER_PLATFORM_WIN32_WINDOWS : str := str +'Windows 95 Osr2 / 98';
      VER_PLATFORM_WIN32_NT : str := str +'Windows NT';
    end;
    str := str + #13 + 'Informa��es Adicionais : ';
    for I := 0 to 127 do
      str := str + verInfo.szCSDVersion[I] + #13;
    Resultado := str;
  end;
end;

procedure ExibeHinte(Top, Bottom, Left, Right: Integer; Msg: String;
  AOwner: Tcomponent; var HintWindow: THintWindow);
var
  Rect: TRect;
begin
  //calcula o tamanho da janela
  HintWindow := THintWindow.Create(AOwner);
  Rect := HintWindow.CalcHintRect(250, Msg, nil);
  Rect.Top := Top;
  Rect.Bottom := Bottom;
  Rect.Left := Left;
  Rect.Right := Right;
  //mostra a janela de hist;
  HintWindow.ActivateHint(Rect, Msg);
end;

procedure FechaHinte(AOwner: Tcomponent; var HintWindow: THintWindow);
begin
  //mostra a janela de hist;
  HintWindow.ReleaseHandle;
end;

procedure SetObjText(Sender: TObject; Text: String);
begin
  if (Sender is TDBComboBoxMC) then
    (Sender as TDBComboBoxMC).Text := Text
  else if (Sender is TDBRichEditMC) then
    (Sender as TDBRichEditMC).Lines.Text := Text
  else if Sender is TDBLookupComboBoxMC then
    (Sender as TDBLookupComboBoxMC).KeyValue := Text
  else if (Sender is TEditMC) then
    (Sender as TEditMC).Text := Text
  else if (Sender is TField) then
    (Sender as TField).Text := Text
  else if Sender is TParam then
    TParam(Sender).Value := Text
  else if Sender is TLabelMC then
    TLabelMC(Sender).Caption := Text;
end;

function GetObjText(Sender: TObject): String;
begin
  if (Sender is TDBEdit) then
    Result := (Sender as TDBEdit).Text;

  if (Sender is TEdit) then
    Result := (Sender as TEdit).Text;

  if (Sender is TDBComboBox) then
    Result := (Sender as TDBComboBox).Text;

  if (Sender is TDBLookupComboBox) then
    Result := (Sender as TDBLookupComboBox).Text;

  if (Sender is TComboBox) then
    Result := (Sender as TComboBox).Text;

  if (Sender is TDBListBox) then
    Result := (Sender as TDBListBox).Items[(Sender as TDBListBox).ItemIndex];

  if (Sender is TListBox) then
    Result := (Sender as TListBox).Items[(Sender as TListBox).ItemIndex];

  if (Sender is TDBMemo) then
    Result := (Sender as TDBMemo).Lines.Text;

  if (Sender is TMemo) then
    Result := (Sender as TMemo).Lines.Text;

  if (Sender is TDBRichEdit) then
    Result := (Sender as TDBRichEdit).Lines.Text;

  if (Sender is TRichEdit) then
    Result := (Sender as TRichEdit).Lines.Text;

  if (Sender is TMaskEdit) then
    Result := (Sender as TMaskEdit).Text;

  if (Sender is TDBCheckBox) then
    Result := iif((Sender as TDBCheckBox).Checked, 'Sim', '');

  if (Sender is TCheckBox) then
    Result := iif((Sender as TCheckBox).Checked, 'Sim', '');
end;

procedure SetObjFoco(Sender: TObject);
begin
  if (Sender is TDBEdit) then
    (Sender as TDBEdit).SetFocus;

  if (Sender is TEdit) then
    (Sender as TEdit).SetFocus;

  if (Sender is TDBComboBox) then
    (Sender as TDBComboBox).SetFocus;

  if (Sender is TDBLookupComboBox) then
    (Sender as TDBLookupComboBox).SetFocus;

  if (Sender is TComboBox) then
    (Sender as TComboBox).SetFocus;

  if (Sender is TDBListBox) then
    (Sender as TDBListBox).SetFocus;

  if (Sender is TListBox) then
    (Sender as TListBox).SetFocus;

  if (Sender is TDBMemo) then
    (Sender as TDBMemo).SetFocus;

  if (Sender is TMemo) then
    (Sender as TMemo).SetFocus;

  if (Sender is TDBRichEdit) then
    (Sender as TDBRichEdit).SetFocus;

  if (Sender is TRichEdit) then
    (Sender as TRichEdit).SetFocus;

  if (Sender is TMaskEdit) then
    (Sender as TMaskEdit).SetFocus;

  if (Sender is TDBCheckBox) then
    (Sender as TDBCheckBox).SetFocus;

  if (Sender is TCheckBox) then
    (Sender as TCheckBox).SetFocus;
end;

procedure SetObjColor(Sender: TObject; Color: TColor);
begin
  if (Sender is TDBEdit) then
    (Sender as TDBEdit).Color := Color;

  if (Sender is TEdit) then
    (Sender as TEdit).Color := Color;

  if (Sender is TDBComboBox) then
    (Sender as TDBComboBox).Color := Color;

  if (Sender is TDBLookupComboBox) then
    (Sender as TDBLookupComboBox).Color := Color;

  if (Sender is TComboBox) then
    (Sender as TComboBox).Color := Color;

  if (Sender is TDBListBox) then
    (Sender as TDBListBox).Color := Color;

  if (Sender is TListBox) then
    (Sender as TListBox).Color := Color;

  if (Sender is TDBMemo) then
    (Sender as TDBMemo).Color := Color;

  if (Sender is TMemo) then
    (Sender as TMemo).Color := Color;

  if (Sender is TDBRichEdit) then
    (Sender as TDBRichEdit).Color := Color;

  if (Sender is TRichEdit) then
    (Sender as TRichEdit).Color := Color;

  if (Sender is TMaskEdit) then
    (Sender as TMaskEdit).Color := Color;

  if (Sender is TDBCheckBox) then
    (Sender as TDBCheckBox).Color := Color;

  if (Sender is TCheckBox) then
    (Sender as TCheckBox).Color := Color;
end;

procedure ZebraDBGrid(Sender: TObject; Rect: TRect; Column: TColumn;
  State: TGridDrawState);
begin
  if not Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) then // se for �mpar
  // se a c�lula n�o est� selecionada
    if not (gdSelected in State) then
      begin
        // define a cor de fundo
        TDBGrid(Sender).Canvas.Brush.Color := $00C5D6D9;
        TDBGrid(Sender).Canvas.FillRect(Rect);//pinta a c�lula
        // pinta o texto padr�o
        TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
      end
    else
      begin
        // define a cor de fundo
        TDBGrid(Sender).Canvas.Brush.Color := $00CFB78F;
        TDBGrid(Sender).Canvas.FillRect(Rect);//pinta a c�lula
        // pinta o texto padr�o
        TDBGrid(Sender).DefaultDrawDataCell(rect,column.Field,State);
      end
  else
    if (gdSelected in State) then
      begin
        // define a cor de fundo
        TDBGrid(Sender).Canvas.Brush.Color := $00CFB78F;
        TDBGrid(Sender).Canvas.FillRect(Rect);//pinta a c�lula
        // pinta o texto padr�o
        TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
      end;
end;

procedure TransferirRegistros(GridInicio, GridFim: TDBGrid; Todos: Boolean);
var
  i, j: integer;
begin
  if not Todos then
  begin
    With GridInicio do
    Begin
      for i := 0 to Pred(SelectedRows.Count) do
      Begin
        Datasource.Dataset.Bookmark:= SelectedRows[i]; // posiciona nos registros selecionados do DBGrid
        GridFim.Datasource.Dataset.Append;
        for j := 0 to Pred(Datasource.Dataset.Fields.Count) do
        begin
          if j > GridFim.Datasource.Dataset.Fields.Count - 1 then Break;
          GridFim.Datasource.Dataset.Fields[j].Value := Datasource.Dataset.Fields[j].Value;
        end;
        GridFim.Datasource.Dataset.Post;
        Datasource.Dataset.Delete;
      end;
    end;
  end
  else
  begin
    With GridInicio do
    Begin
      Datasource.Dataset.First;
      while not Datasource.Dataset.Eof do
      begin
        GridFim.Datasource.Dataset.Append;
        for j := 0 to Pred(Datasource.Dataset.Fields.Count) do
        begin
          if j > GridFim.Datasource.Dataset.Fields.Count - 1 then Break;
          GridFim.Datasource.Dataset.Fields[j].Value := Datasource.Dataset.Fields[j].Value;
        end;
        GridFim.Datasource.Dataset.Post;
        Datasource.Dataset.Delete;
      end;
    end;
  end;
  GridInicio.SelectedRows.Clear;
  GridFim.SelectedRows.Clear;
end;

procedure EAN13(Canvas: TCanvas; Numero:String; PosX, PosY : Integer; Altura : Double);
//var
  //ValorConvX, ValorConvY : Integer;
  function ConvX(Medida : Double) : Integer;
  begin
    Result := Trunc(DM.SisControl.ValorConvX / 25.4 * Medida);
  end;
  function ConvY(Medida : Double) : Integer;
  begin
    Result := Trunc(DM.SisControl.ValorConvY / 25.4 * Medida);
  end;
const
  Barras : Array[1..3] of Array[0..9] of String =
    (('0001101','0011001','0010011','0111101','0100011',
      '0110001','0101111','0111011','0110111','0001011'),
     ('0100111','0110011','0011011','0100001','0011101',
      '0111001','0000101','0010001','0001001','0010111'),
     ('1110010','1100110','1101100','1000010','1011100',
      '1001110','1010000','1000100','1001000','1110100'));
  TabSel : Array[0..9] of String =
     ('111111','112122','112212','112221','121122',
      '122112','122211','121212','121221','122121');
  InicioFim : String = '101';
  Meio : String = '01010';
var
  i, j : Integer;
  TamBarra : Integer;
  TabAtu : Integer;
begin
  Canvas.Pen.Color := clBlack;
  Canvas.Pen.Style := psInsideFrame;
  Canvas.Brush.Color := clBlack;
  while length(Numero) < 12 do
    Numero := '0' + Numero;
  if Length(Numero) = 12 then
    Numero := Numero + CalculaDigito(Numero);
  if Length(Numero) <> 13 then
    raise Exception.Create('N�mero Inv�lido');
  TamBarra := ConvX(0.3);
  for i := 1 to Length(InicioFim) do begin
    if InicioFim[i] = '1' then
      Canvas.FillRect(Rect(PosX, PosY, PosX + TamBarra, PosY + ConvY(Altura+3)));
    PosX := PosX + TamBarra;
  end;
  for i := 2 to length(Numero) do begin
    if i <= 7 then
      TabAtu := Ord(TabSel[Ord(Numero[1]) - Ord('0')][i - 1]) - Ord('0')
    else
      TabAtu := 3;
    for j := 1 to 7 do begin
      if Barras[TabAtu, Ord(Numero[i]) - Ord('0')][j] = '1' then
        Canvas.FillRect(Rect(PosX, PosY, PosX + TamBarra, PosY + ConvY(Altura)));
      PosX := PosX + TamBarra;
    end;
    if i = 7 then
      for j := 1 to Length(Meio) do begin
        if Meio[j] = '1' then
          Canvas.FillRect(Rect(PosX, PosY, PosX + TamBarra,PosY + ConvY(Altura + 3)));
        PosX := PosX + TamBarra;
      end;
  end;
  for i := 1 to Length(InicioFim) do begin
    if InicioFim[i] = '1' then
      Canvas.FillRect(Rect(PosX, PosY, PosX + TamBarra, PosY + ConvY(Altura + 3)));
    PosX := PosX + TamBarra;
  end;
end;

function CalculaDigito(Numero : String): Char;
var
  i : Integer;
  Soma : Integer;
  Mult : Integer;
begin
  Soma := 0;
  Mult := 3;
  for i := Length(Numero) downto 1 do begin
    Soma := Soma + (Ord(Numero[i])-Ord('0'))*Mult;
    if Mult = 3 then
      Mult := 1
    else
      Mult := 3;
  end;
  if Soma mod 10 <> 0 then
    Result := Chr(10 - Soma mod 10 + Ord('0'))
  else
    Result := '0';
end;

procedure AutocompletarCampo(Sender: TOBject; Const Tabela,
  Mascara : String; Graus : Word);
var
  Codigos, Resultado, Masc, SqlWhere: Array of String;
  CodConcat, Where : String;
  i, j, temp : Word;
  SugereCodigo : TZQueryMC;
begin
  if (Mascara = '') or (not Pos('.', Mascara) > 0) then
    raise Exception.Create('Mascara Inv�lida');

  //setando o tamanho da array de acordo com a quantidade de graus (ierarquia)
  SetLength(Codigos, Graus);
  SetLength(Resultado, Graus);//receber� o resultado
  SetLength(Masc, Graus);
  SetLength(SqlWhere, Graus); //Monta a clausula where da sql

  //pegando o c�digo atual
  if Sender is TDBEdit then
    CodConcat := TDBEdit(Sender).Text
  else
    if Sender is TEdit then
      CodConcat := TEdit(Sender).Text;

  SepararCodigo(CodConcat, Codigos);
  SepararCodigo(Mascara, Masc);

  //criando o SugereCodigo
  SugereCodigo := TZQueryMC.Create(Application);
  SugereCodigo.Conexao := DM.db;

  //primeiro � nescess�rio checar se o cara digitou o c�digo no mesmo comprimento
  //da mascara
  for i := 0 to Length(Codigos) - 1 do
  begin
    Codigos[i] := Completar_Zero_Antes(Codigos[i], Length(Masc[i]));
  end;

  //montar a clausula where do sql
  for i := 0 to Length(Codigos) - 1 do
  begin
    temp := iif(i > 0, 1, 0);
    Where := '';
    if i > 0 then
      for j := 0 to i do
      begin
        temp := iif(j > 0, 1, 0);
        Where := Where + iif(j > 0, QuotedStr(Codigos[j - temp]) + ' AND ', '') + ' Grau' + IntToStr(j + 1) + iif(i = j, '<>', '=');
      end
    else
      Where := Where + ' Grau' + IntToStr(i + 1) + '<>';
    SqlWhere[i] := Where
  end;

  //agora e verificado se o c�digo digitado existe no vanco e fazer a sujest�o
  //no devido lugar
  for i := 0 to Length(Codigos) - 1 do
  begin
    if NumeroRegistro(Tabela, '*', Copy(SqlWhere[i], 1, Length(SqlWhere[i])-2) + '=' + QuotedStr(Codigos[i])) > 0 then
      begin
        //quando o codigo for encontrado � feita a sujest�o para o c�digo da
        //proxima casa hierarquica
        for j := i + 1 to Length(Codigos) - 1 do
        begin
          Resultado[i] := Codigos[i];
          //caso o proximo c�digo hierarquico j� exista sai deste loop
          if ((NumeroRegistro(Tabela, '*', SqlWhere[j] +
            QuotedStr(Codigos[j])) > 0) and (Codigos[j] <> Completar_Zero_Antes('0', Length(Codigos[j])))) then
            Break;
          //procurando o maior codigo
          Filtrar(['SELECT Max(Grau' + IntToStr(j + 1) + ') "Cod" FROM ' + Tabela], [SqlWhere[j] + QuotedStr(Codigos[j])], [SugereCodigo]);
          temp := iif(NULL=SugereCodigo.FieldValues['Cod'], 1, SugereCodigo.FieldValues['Cod'] + 1);
          //temp := MaiorCodigo('Grau' + IntToStr(j + 1), Tabela);
          Resultado[j] := Completar_Zero_Antes(IntToStr(temp), Length(Codigos[j]));
          PreencheArrayAutoComplete(Resultado, Masc);
          PreencheEdit(Sender, Resultado, SqlWhere, Tabela);
          SugereCodigo.Free;
          SugereCodigo := nil;
          Abort;
        end;
      end
    else
      begin //caso o codigo n�o tenha sido encontrado fecha-se o resultado
        Resultado[i] := Codigos[i];
        PreencheArrayAutoComplete(Resultado, Masc);
        PreencheEdit(Sender, Resultado, SqlWhere, Tabela);
        Abort;
      end;
  end;
end;

procedure SepararCodigo(const Codigo : String; var Resultado : array of String);
var
  i, Contador : Word;
  Str : String;
begin
  Str := ''; //variavel que armazena o c�digo
  Contador := 0; //essa variavel auxilia no posicionamento da array
  for i := 1 to Length(Codigo) do
  begin
    //gerando o c�digo
    if Codigo[i] <> '.' then
      begin
        Str := Str + Codigo[i];
      end
    else
      begin
        //devolvendo o c�digo na posi��o correta na array
        Resultado[Contador] := Str;
        //preparando para a array receber o pr�ximo c�digo
        Inc(Contador);
        Str := '';
      end;
  end;
  //nescess�rio para atribuir o ultimo c�digo
  Resultado[Contador] := Str;
end;

procedure PreencheArrayAutoComplete(var Resultado : Array of String;
  const ArrayMascara: Array of String);
var
  i : word;
begin
  for i := 0 to length(Resultado) - 1 do
    if Resultado[i] = '' then
      Resultado[i] := Completar_Zero_Antes(Resultado[i], Length(ArrayMascara[i]));
end;

procedure PreencheEdit(Sender: TOBject; Valores, Where: Array of String; Tabela: String);
var
  Final: String;
  SelStart, i: Word;
begin
  if Sender is TDBEdit then
    SelStart := TDBEdit(Sender).SelStart
  else
    if Sender is TEdit then
      SelStart := TEdit(Sender).SelStart;
  for i := 0 to Length(Valores) - 1 do
  begin

    if i > 0 then
      Final := Final + iif(i > 0, '.', '') +
        iif(NumeroRegistro(Tabela, '*', Substituir('<>', '=', Where[i - 1]) + QuotedStr(Valores[i - 1])) > 0, Valores[i], Completar_Zero_Antes('0', Length(Valores[i])))
    else
      Final := Final + iif(i > 0, '.', '') + Valores[i];
  end;
  if Sender is TDBEdit then
    begin
      TDBEdit(Sender).Text := Final;
      TDBEdit(Sender).SelStart := SelStart;
      TDBEdit(Sender).SelLength := Length(TDBEdit(Sender).Text);
      TDBEdit(Sender).SetFocus;
    end
  else
    if Sender is TEdit then
      begin
        TEdit(Sender).Text := Final;
        TEdit(Sender).SelStart := SelStart;
        TEdit(Sender).SelLength := Length(TEdit(Sender).Text);
        TEdit(Sender).SetFocus;
      end;
  Controle_de_mascara(Sender);
end;

procedure Controle_de_mascara(Sender: TOBject);
begin
  if Sender is TEdit then
    begin
      if TEdit(Sender).Text[TEdit(Sender).SelStart + 1] = '.' then
        begin
          TEdit(Sender).SelStart := TEdit(Sender).SelStart + 1;
          TEdit(Sender).SelLength:= Length(TEdit(Sender).Text);
        end;
    end;
end;

procedure CheckBox(Column: TColumn; Field: TField; DBGrid: TObject;
  Rect: TRect);
begin
  if Column.Field = Field then
  begin
    (DBGrid as TDBGrid).Canvas.FillRect(Rect);
    if Field.Value <> NULL then
      if (Field.Value = 'Sim') or (Field.Value = 'Ativo') then
        DM.imgCheckBox.Draw((DBGRid as TDBGrid).Canvas, Rect.Left + Trunc(Column.Width/2) - 5, Rect.Top + 1, 1)
      else
        DM.imgCheckBox.Draw((DBGRid as TDBGrid).Canvas, Rect.Left + Trunc(Column.Width/2) - 5, Rect.Top + 1, 2)
    else
      DM.imgCheckBox.Draw((DBGRid as TDBGrid).Canvas, Rect.Left + Trunc(Column.Width/2) - 5, Rect.Top + 1, 0);
  end;
end;

function ValidarForm(Form: TForm): boolean;
  procedure ExecutaValidacao(Obj: TComponent);
  begin
    if Obj is TDBEditMC then TDBEditMC(Obj).ValidarDado else
    if Obj is TDBTextMC then TDBTextMC(Obj).ValidarDado else
    if Obj is TDBRichEditMC then TDBRichEditMC(Obj).ValidarDado else
    if Obj is TDBListBoxMC then TDBListBoxMC(Obj).ValidarDado else
    if Obj is TDBComboBoxMC then TDBComboBoxMC(Obj).ValidarDado else
    if Obj is TDBCheckBoxMC then TDBCheckBoxMC(Obj).ValidarDado else
    if Obj is TDBRadioGroupMC then TDBRadioGroupMC(Obj).ValidarDado else
    if Obj is TDBLookupListBoxMC then TDBLookupListBoxMC(Obj).ValidarDado else
    if Obj is TDBLookupComboBoxMC then TDBLookupComboBoxMC(Obj).ValidarDado else
    if Obj is TLookupMC then TLookupMC(Obj).ValidarDado else
    if Obj is TFileStreamMC then TFileStreamMC(Obj).ValidarDado;
  end;
var
  i: integer;
  temp : string;
begin
  for i := 0 to pred(Form.ComponentCount) do
  begin
    {A tag 2 para qualquer componente pertence a valida��o de formul�rio}
    if (Form.Components[i] as TComponent).Tag = 2 then
    begin
      temp := (Form.Components[i] as TComponent).ClassName;
      ExecutaValidacao((Form.Components[i] as TComponent));
    end;
  end;
  result := true;
end;

function Criptografar(valor : string) : string;
var
   saida, tmptexto, tmpchave, R1 : string;
   P, P1, T, tmpC2, tmpT2, cripto2, flag: integer;
begin
    //****************inicio da fun��o**********************
        R1 := FloatToStr(666);
        p := 1;
        P1 := 1;
        T := length(valor);
        saida := '' ;
        flag := length('666');
        while P <= T do
        begin
        tmptexto := copy( valor, P, 1);
        tmpT2 := ord(tmptexto[1]);
        tmpchave := copy ( '666' , P1, 1);
        tmpC2 := strtoint ( tmpchave );
        Cripto2 := (tmpT2 + tmpC2) - StrToInt(R1);
        saida :=  saida + chr(Cripto2);
        P := P + 1;
        P1 := P1 + 1;
           if P1 > flag then P1 := 1;
        end;
    //***************termino da fun��o**********************
    result := saida;
end;

function Descriptografar(valor : string) : string;
var
   saida, tmptexto, tmpchave, R1 : string;
   P, P1, T, tmpC2, tmpT2, cripto2, flag: integer;
begin
    //****************inicio da fun��o**********************
        R1 := FloatToStr(666);//cria o valor chave de criptografia
        p := 1;  //inicializa variavel P
        P1 := 1; //inicializa variavel P
        T := length(valor); //pede o tamanho da variavel valor
        saida := '' ;  //limpa a variavel de retorno
        flag := length('666');  // mede o tamanho da chave
        // inicio do loop de criptografia
        while P <= T do
        begin
          tmptexto := copy( valor, P, 1);
          tmpT2 := ord(tmptexto[1]);
          tmpchave := copy ('666' , P1, 1);
          tmpC2 := strtoint ( tmpchave );
          Cripto2 := (tmpT2 - tmpC2) + StrToInt(R1);
          saida :=  saida + chr(Cripto2);
          P := P + 1;
          P1 := P1 + 1;
          if P1 > flag then P1 := 1;
        end;
    //***************termino da fun��o**********************
    result := saida;
end;

procedure AbrirUrl(Url: String);
 var
  IEApp: Variant;
begin
  try
    IEApp := CreateOLEObject('InternetExplorer.Application');
    IEApp.visible := true;
    IEApp.Top := 0;
    IEApp.Left := 0;
    IEApp.width := screen.width;
    IEApp.height := screen.height;
    IEApp.Navigate(Url);
  finally
    FreeAndNil(IEApp);
  end;
end;

procedure EnviarEmail(Destino: String; hWnd: HWND);
begin
  ShellExecute(hWnd, 'Open',PChar('mailto:' + Destino), nil, '', sw_ShowNormal);
end;

function ExecutaEsperaTerminar(Arquivo: String; WindoState: Integer): Integer;
var
  Programa : array [0..512] of char;
  CurDir : array [0..255] of char;
  WorkDir : String;
  StartupInfo : TStartupInfo;
  ProcessInfo : TProcessInformation;
  Resultado: Cardinal;
begin
  StrPCopy (Programa, Arquivo);
  GetDir (0, WorkDir);
  StrPCopy (CurDir, WorkDir);
  FillChar (StartupInfo, Sizeof (StartupInfo), #0);
  StartupInfo.cb := sizeof (StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := WindoState;
  if not CreateProcess (nil, Programa, nil, nil, false, CREATE_NEW_CONSOLE or
    NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo) then begin
    Resultado := 0;
  end
  else begin
    WaitForSingleObject(ProcessInfo.hProcess, Infinite);
    GetExitCodeProcess(ProcessInfo.hProcess, Resultado);
  end;
  Result := Resultado;
end;

function NomeComputadorRegistro : string;
var
  Registro : tregistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.Openkey('System\CurrentControlSet\Services\VXD\VNETSUP', false);
  Result := registro.readstring('ComputerName');
end;

function GetIP(var NomeComputer: String): string;
var 
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Name: string;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  Gethostname(PChar(Name), 255);
  SetLength(Name, StrLen(PChar(Name)));
  HostEnt := gethostbyname(PChar(Name));
  with HostEnt^ do begin
    Result := Format('%d.%d.%d.%d', [Byte(h_addr^[0]),Byte(h_addr^[1]), Byte(h_addr^[2]),Byte(h_addr^[3])]);
    NomeComputer := Name;
  end;
  WSACleanup;
end;

procedure incGauge(Gauge: TGauge);
begin
  Gauge.Progress := Gauge.Progress + 1;
  //Gauge.Parent.Refresh;
  Application.ProcessMessages;
end;

function PrinterIsOnLine(Porta: Word): Boolean;
const
  Portas :Byte = $02;
var
  Res :Byte;
begin
  { C�digo em Assembler }
  asm
    mov ah,Portas; {Requisita o acesso as portas}
    mov dx,Porta;{Define a porta de teste}
    Int $17; {Chama a interrup��o de Impressora}
    mov Res,ah; {Guarda em Res o resultado da opera��o }
  end;
  Result := (Res and $80) = $80; {Testa o valor de sa�da}
end;

function GetAplicativoNome: string;
begin
  if CompareText(Application.Title, 'Mccontas') = 0 then
    Result := 'MCContas 1.0 beta'
  else if CompareText(Application.Title, 'Mcestoque') = 0 then
    Result := 'MCEstoque 1.0 beta'
  else if CompareText(Application.Title, 'Mclocadora') = 0 then
    Result := 'MCLocadora 2.2';
end;

end.

