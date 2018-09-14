unit DBImageMC;

interface

uses
  SysUtils, Classes, Controls, DBCtrls;

type
  TDBImageMC = class(TDBImage)
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
  RegisterComponents('MC DBVisuais', [TDBImageMC]);
end;

end.
