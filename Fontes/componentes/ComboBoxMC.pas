unit ComboBoxMC;

interface

uses
  SysUtils, Classes, Controls, StdCtrls;

type
  TComboBoxMC = class(TComboBox)
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
  RegisterComponents('MC Visuais', [TComboBoxMC]);
end;

end.