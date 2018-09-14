unit uFrameCadGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fraCad, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZQueryMC, DatasourceMC, ExtCtrls, PanelMC, NavigatorMC, Grids, DBGrids,
  DBGridMC, Provider, DataSetProviderMC, DBClient, ClientDataSetMC;

type
  TfraCadGrid = class(TFrameCad)
    DBGridMC1: TDBGridMC;
    procedure cdsCadAfterInsert(DataSet: TDataSet);
  private
    FParamName: String;
    FKeyField: String;
    FTabela: String;
    { Private declarations }
  public
    { Public declarations }
    procedure Open(KeyValue: Variant);
    procedure ApplyUpdate;
    property ParamName: String read FParamName write FParamName;
    property KeyField: String read FKeyField write FKeyField;
    property Tabela: String read FTabela write FTabela;
  end;

var
  fraCadGrid: TfraCadGrid;

implementation

uses uDM, uDBFunc;

{$R *.dfm}

{ TfraCadGrid }

procedure TfraCadGrid.Open(KeyValue: Variant);
begin
  qryCad.Close;
  qryCad.ParamByName(ParamName).Value := KeyValue;
  qryCad.Open;
  cdsCad.Close;
  cdsCad.Open;
end;

procedure TfraCadGrid.cdsCadAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if KeyField <> '' then
    cdsCad.FieldByName(KeyField).AsInteger := Codigo;
end;

procedure TfraCadGrid.ApplyUpdate;
var
  Flag: Integer;
begin
  if cdsCad.state in [dsInactive] then exit;
  Flag := Codigo;

  cdsCad.IndexFieldNames := '';
  cdsCad.First;
  while not cdsCad.Eof do begin
    cdsCad.Edit;
    cdsCad.FieldByName(qryCad.FieldKey).AsInteger := Flag;
    cdsCad.Post;
    cdsCad.Next;
    Inc(Flag);
  end;
  if not (cdsCad.State in [dsInactive]) then
    cdsCad.ApplyUpdates(0);
end;

end.
