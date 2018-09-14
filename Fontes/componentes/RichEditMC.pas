unit RichEditMC;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, ComCtrls;

type
  TRichEditMC = class(TRichEdit)
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
  RegisterComponents('MC Visuais', [TRichEditMC]);
end;

end.
