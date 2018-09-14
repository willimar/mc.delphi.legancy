unit PanelMC;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls;

type
  TPanelMC = class(TPanel)
  private
    FComponenteFoco: TWinControl;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure SetComponenteFoco;virtual;
    constructor Create(Awoner: TComponent);override;
  published
    { Published declarations }
    property ComponenteFoco: TWinControl read FComponenteFoco write FComponenteFoco;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('MC Visuais', [TPanelMC]);
end;

{ TPanelMC }

constructor TPanelMC.Create(Awoner: TComponent);
begin
  inherited Create(Awoner);
  SetComponenteFoco;
end;

procedure TPanelMC.SetComponenteFoco;
begin
  if ComponenteFoco <> nil then
    ComponenteFoco.SetFocus;
end;

end.
