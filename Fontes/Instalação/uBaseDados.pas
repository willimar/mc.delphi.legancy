unit uBaseDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, LabelMC, ExtCtrls, Buttons, ToolWin, ComCtrls, ExtDlgs;

type
  T_frmBaseDados = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    lblFechar: TLabelMC;
    Panel4: TPanel;
    Shape4: TShape;
    lblTitulo: TLabelMC;
    Panel3: TPanel;
    Shape3: TShape;
    ToolBar1: TToolBar;
    bitGravar: TSpeedButton;
    bitCancelar: TSpeedButton;
    Panel2: TPanel;
    Shape2: TShape;
    pnlInfo: TPanel;
    LabelMC1: TLabelMC;
    lblPath: TLabelMC;
    LabelMC2: TLabelMC;
    LabelMC3: TLabelMC;
    lblNomeComputador: TLabelMC;
    LabelMC6: TLabelMC;
    lblIp: TLabelMC;
    img: TImage;
    opd: TSavePictureDialog;
    LabelMC4: TLabelMC;
    procedure bitCancelarClick(Sender: TObject);
    procedure bitGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class Procedure Instalar(Path: String);
  end;

var
  _frmBaseDados: T_frmBaseDados;

implementation

uses uToolFunc;

{$R *.dfm}
{$R base_de_dados.res}

{ T_frmBaseDados }

class procedure T_frmBaseDados.Instalar(Path: String);
var
  MemoryStream: TMemoryStream;
  Completa, NomePC: String;
begin
  try
    if Path = '' then exit;
    MemoryStream := TMemoryStream.Create;
    MemoryStream.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Base\MCLocadora.fbd');
    Completa := iif(Copy(Path, Length(Path), 1) = '\', '', '\');
    MemoryStream.SaveToFile(Path + Completa + 'MCLocadora.fbd');
    _frmBaseDados := T_frmBaseDados.Create(nil);
    _frmBaseDados.lblPath.Caption := Path + Completa + 'MCLocadora.fbd';
    _frmBaseDados.lblIp.Caption := GetIP(NomePC);
    _frmBaseDados.lblNomeComputador.Caption := NomePC;
    _frmBaseDados.ShowModal;
  finally
    FreeAndNil(MemoryStream);
  end;
end;

procedure T_frmBaseDados.bitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure T_frmBaseDados.bitGravarClick(Sender: TObject);
begin
  pnlInfo.PaintTo(img.Canvas.Handle, pnlInfo.ClientRect.Left, pnlInfo.ClientRect.Top);
  if opd.Execute then begin
    img.Picture.SaveToFile(opd.FileName + iif(pos('.JPG', UpperCase(opd.FileName)) = 0, '.jpg', ''));
  end;
end;

end.
