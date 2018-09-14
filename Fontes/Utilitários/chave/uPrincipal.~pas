unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Menus, XPMan, DateUtils, EditMC, LabelMC;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit4: TEdit;
    Label4: TLabel;
    ListBox1: TListBox;
    Button2: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    ListBox2: TListBox;
    PopupMenu1: TPopupMenu;
    sdSalvar: TSaveDialog;
    SalvarCodigos1: TMenuItem;
    Button3: TButton;
    Button4: TButton;
    XPManifest1: TXPManifest;
    text: TListBox;
    Button5: TButton;
    EditMC1: TEditMC;
    LabelMC1: TLabelMC;
    LabelMC2: TLabelMC;
    EditMC2: TEditMC;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure SalvarCodigos1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    procedure GerarArquivoChave;
    function Criptografar(valor : string) : string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  parar : boolean;
implementation

uses uRegistro, IniFiles;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  a : String;
begin
  Parar := False;
  if CalculaCnpjCpf(Copy(StringReplace(StringReplace(StringReplace(Edit2.Text, '.', '', [rfReplaceAll]), '-', '', [rfReplaceAll]), '/', '', [rfReplaceAll]), 1, 12)) <>
  StringReplace(StringReplace(StringReplace(Edit2.Text, '.', '', [rfReplaceAll]), '-', '', [rfReplaceAll]), '/', '', [rfReplaceAll]) then
  begin
    messagedlg('O numero do CGC está errado!', mtError, [mbOk],0);
    exit;
  end;
  Registro(Edit1.text,Edit2.text,Edit3.text,a);
  Edit4.text := a;
  GerarArquivoChave;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i : String;
  j : integer;
begin

  if Edit5.text = '1' then
  begin
     ListBox1.Items.clear;
     ListBox2.Items.clear;
  end;
  ListBox1.Items.Add('Chave');
  ListBox2.Items.Add('Código');
  ListBox1.Items.Add('Controle de Chaves');
  ListBox2.Items.Add('Controle de Chaves');
  i := Edit5.text;
  while StrToInt(Edit5.text) <= StrToInt(Edit6.text) do
  begin
    if parar then
    begin
      parar := false;
      exit;
    end;
    Edit3.text := i;
    Edit5.text := i;
    Button1.click;
    Application.ProcessMessages;
    for j := 0 to pred(StrToInt(i)) DO
    begin
      if Edit4.Text = ListBox1.Items[StrToInt(i)] then
      begin
        Messagedlg('Codigo Repetido na linha ' + i + #13 + Edit4.Text, mtError, [mbOk],0);
        exit;
      end;
    end;
    ListBox1.Items.add(Edit4.Text);
    ListBox2.Items.add(i);
    i := IntToStr(StrToInt(i) + 1)
  end;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  ListBox2.ItemIndex := ListBox1.ItemIndex;
end;

procedure TForm1.SalvarCodigos1Click(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to pred(ListBox1.ItemIndex) do
  begin
    text.items.add(ListBox1.items[i] + '      Código  ' + ListBox2.items[i]);
  end;
  if sdSalvar.Execute then
    text.items.SaveToFile(sdSalvar.FileName);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Parar := True;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ListBox1.Clear;
  ListBox2.clear;
  Edit5.text := '0';
  Edit4.clear;
  Edit3.clear;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
  if Edit5.Text = '0' then Edit5.Text := '1';
end;

procedure TForm1.GerarArquivoChave;
var
  ini: TIniFile;
  vFileName : String;
const
  MCLOCADORA = 'MCLOCADORA';
begin
  vFileName := ExtractFilePath(ParamStr(0)) + StringReplace(StringReplace(StringReplace(Edit2.Text, '.', '', [rfReplaceAll]), '-', '', [rfReplaceAll]), '/', '', [rfReplaceAll]) + '.mc';
  ini := TIniFile.Create(vFileName);

  ini.WriteString(Criptografar(MCLOCADORA), Criptografar('EMPRESA'), Criptografar(Edit1.Text));
  ini.WriteString(Criptografar(MCLOCADORA), Criptografar('CNPJ'), Criptografar(Edit2.Text));
  ini.WriteString(Criptografar(MCLOCADORA), Criptografar('QTDESTACOES'), Criptografar(Edit3.Text));
  ini.WriteString(Criptografar(MCLOCADORA), Criptografar('SERIAL'), Criptografar(Edit4.Text));
  ini.WriteString(Criptografar(MCLOCADORA), Criptografar('DATALICENCA'), Criptografar(DateToStr(Date)));
  ini.WriteString(Criptografar(MCLOCADORA), Criptografar('DATAVALIDADE'), Criptografar(DateToStr(IncDay(Date, StrToInt(EditMC2.Text)))));
  ini.WriteString(Criptografar(MCLOCADORA), Criptografar('VERSAO'), Criptografar(EditMC1.Text));
  ini.Free;
end;

function TForm1.Criptografar(valor: string): string;
var
  saida, tmptexto, tmpchave, R1 : string;
  P, P1, T, tmpC2, tmpT2, cripto2, flag: integer;
begin
  //****************inicio da função**********************
  R1 := FloatToStr(666);
  p := 1;
  P1 := 1;
  T := length(valor);
  saida := '' ;
  flag := length('666');
  while P <= T do begin
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
  //***************termino da função**********************
  result := saida;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  GerarArquivoChave;
end;

end.
