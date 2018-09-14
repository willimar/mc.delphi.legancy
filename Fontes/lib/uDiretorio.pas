unit uDiretorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, LabelMC, Buttons;

type
  T_frmDiretorio = class(TForm)
    OpenDialog1: TOpenDialog;
    DirectoryListBox1: TDirectoryListBox;
    dcb: TDriveComboBox;
    lblCaminho: TLabelMC;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
    class function Execute: string;
  end;

var
  _frmDiretorio: T_frmDiretorio;

implementation

{$R *.dfm}

{ T_frmDiretorio }

class function T_frmDiretorio.Execute: string;
begin
  _frmDiretorio := T_frmDiretorio.Create(nil);
  _frmDiretorio.dcb.Drive := 'C';
  if _frmDiretorio.ShowModal = mrOk then begin
    Result := _frmDiretorio.lblCaminho.Caption;
  end
  else begin
    Result := '';
  end;
  FreeAndNil(_frmDiretorio);
end;

end.
