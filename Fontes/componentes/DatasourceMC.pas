unit DatasourceMC;

interface

uses
  SysUtils, Classes, DB;

type
  TDatasourceMC = class(TDataSource)
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
  RegisterComponents('MC Kernel', [TDatasourceMC]);
end;

end.
