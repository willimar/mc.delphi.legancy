unit uInstalarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DBEditMC, LabelMC, EditMC, Buttons, DB,
  DatasourceMC, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC;

type
  T_frmInserirSenha = class(TForm)
    LabelMC1: TLabelMC;
    LabelMC2: TLabelMC;
    LabelMC3: TLabelMC;
    txtUsuario: TDBEditMC;
    txtSenha: TDBEditMC;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    txtRSenha: TEditMC;
    qrySenha: TZQueryMC;
    qrySenhaLOGIN: TStringField;
    qrySenhaSENHA: TStringField;
    dsrSenha: TDatasourceMC;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrySenhaSENHAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qrySenhaSENHASetText(Sender: TField; const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmInserirSenha: T_frmInserirSenha;

implementation

uses uDM, uToolFunc;

{$R *.dfm}

procedure T_frmInserirSenha.FormShow(Sender: TObject);
begin
  qrySenha.Open;
  qrySenha.Edit;
end;

procedure T_frmInserirSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModalResult = mrOK then begin
    if txtSenha.Text <> txtRSenha.Text then begin
      Alerta('As senhas digitadas não são iguais.');
      Action := caNone;
      Abort;
    end;
    if TRIM(txtUsuario.Text) = '' then begin
      Alerta('Favor digitar o login.');
      txtUsuario.SetFocus;
      Action := caNone;
      Abort;
    end;
    if TRIM(txtSenha.Text) = '' then begin
      Alerta('Favor digitar a senha.');
      txtSenha.SetFocus;
      Action := caNone;
      Abort;
    end;
    qrySenha.Post;
    Action := caFree;
    Self := nil;
  end
  else begin
    qrySenha.Cancel;
    DeleteFile(path + 'conexão.mc');
    Action := caFree;
    Self := nil;
  end;
end;

procedure T_frmInserirSenha.qrySenhaSENHAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := Descriptografar(Sender.AsString);
end;

procedure T_frmInserirSenha.qrySenhaSENHASetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Criptografar(Text);
end;

end.
