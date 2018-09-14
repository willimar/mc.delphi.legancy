unit uDadosCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, DataSourceMC;

type
  TfraDadosCliente = class(TFrame)
    Panel1: TPanel;
    Shape1: TShape;
    Nome: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label15: TLabel;
    Label16: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    Label22: TLabel;
    Label23: TLabel;
    lblEmail: TDBText;
    lblWeb: TDBText;
    Label24: TLabel;
    Label18: TLabel;
    DBText8: TDBText;
    DBImage1: TDBImage;
  private
    FDataDource: TdataSourceMC;
    procedure SetDataSource(const Value: TdataSourceMC);
    { Private declarations }
  public
    { Public declarations }
  published
    property DataSource: TdataSourceMC read FDataDource write SetDataSource;
  end;

implementation

{$R *.dfm}

{ TfraDadosCliente }

procedure TfraDadosCliente.SetDataSource(const Value: TdataSourceMC);
var
  i: integer;
begin
  for i := 0 to Pred(Self.ComponentCount) do begin
    if Self.Components[i] is TDBText then
      (Self.Components[i] as TDBText).DataSource := Value;
    if Self.Components[i] is TDBImage then
      (Self.Components[i] as TDBImage).DataSource := Value;
  end;
  FDataDource := Value;

end;

end.
