unit CheckBoxMC;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, graphics;

type
  TCheckBoxMC = class(TCheckBox)
  private
    FControle: TWinControl;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Click; override;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('MC Visuais', [TCheckBoxMC]);
end;

{ TCheckBoxMC }

procedure TCheckBoxMC.Click;
begin
  inherited;
  
end;

end.
