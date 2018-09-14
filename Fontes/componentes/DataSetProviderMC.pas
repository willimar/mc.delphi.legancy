unit DataSetProviderMC;

interface

uses
  SysUtils, Classes, Provider;

type
  TDataSetProviderMC = class(TDataSetProvider)
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
  RegisterComponents('MC Kernel', [TDataSetProviderMC]);
end;

end.
