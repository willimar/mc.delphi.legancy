unit DataModuleMC;

interface

uses
  SysUtils, Classes;

type
  TDataModuleMC = class(TDataModule)
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
  RegisterComponents('MC Kernel', [TDataModuleMC]);
end;

end.
 