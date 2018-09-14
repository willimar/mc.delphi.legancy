unit StringGridMC;

interface

uses
  SysUtils, Classes, Controls, Grids;

type
  TStringGridMC = class(TStringGrid)
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
  RegisterComponents('MC Visuais', [TStringGridMC]);
end;

end.
