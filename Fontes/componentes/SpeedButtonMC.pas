unit SpeedButtonMC;

interface

uses
  SysUtils, Classes, Controls, Buttons;

type
  TSpeedButtonMC = class(TSpeedButton)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('MC Visuais', [TSpeedButtonMC]);
end;

end.
