unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, SpeedButtonMC, StdCtrls, EditMC;

type
  T_frmPrincipal = class(TForm)
    EditMC1: TEditMC;
    EditMC2: TEditMC;
    SpeedButtonMC1: TSpeedButtonMC;
    SpeedButtonMC2: TSpeedButtonMC;
    procedure SpeedButtonMC1Click(Sender: TObject);
    procedure SpeedButtonMC2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmPrincipal: T_frmPrincipal;

implementation

uses uToolFunc;

{$R *.dfm}

procedure T_frmPrincipal.SpeedButtonMC1Click(Sender: TObject);
begin
  EditMC2.Text := Criptografar(EditMC1.Text);
end;

procedure T_frmPrincipal.SpeedButtonMC2Click(Sender: TObject);
begin
  EditMC1.Text := Descriptografar(EditMC2.Text);
end;

end.
