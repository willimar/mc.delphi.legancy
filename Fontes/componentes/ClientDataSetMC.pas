unit ClientDataSetMC;

interface

uses
  SysUtils, Classes, DB, DBClient, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Provider, Forms, Controls;


type
  TClientDataSetMC = class(TClientDataSet)
  private
    FAutoApplyUpdate: boolean;
    FFieldKey: string;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(Awoner: TComponent); override;
    procedure doBeforeOpen; override;
    procedure doAfterPost; override;
  published
    { Published declarations }
    property AutoApplyUpdate: boolean read FAutoApplyUpdate write FAutoApplyUpdate default false;
    property FieldKey: string read FFieldKey write FFieldKey;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('MC Kernel', [TClientDataSetMC]);
end;

{ TClientDataSetMC }

constructor TClientDataSetMC.Create(Awoner: TComponent);
begin
  inherited Create(AWoner);

end;

procedure TClientDataSetMC.doAfterPost;
begin
  inherited;
  if FAutoApplyUpdate then Self.ApplyUpdates(0);
end;

procedure TClientDataSetMC.doBeforeOpen;
begin
  inherited;

end;

end.
