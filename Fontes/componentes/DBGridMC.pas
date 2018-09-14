unit DBGridMC;

interface

uses
  SysUtils, Classes, Controls, Grids, DBGrids, Types, DB, ClientDataSetMC, Graphics, Forms,
  Variants;

type
  TDBGridMC = class(TDBGrid)
  private
    function GetField: TField;
    procedure SetField(const Value: TField);
    { Private declarations }
  protected
    { Protected declarations }
  public
    FFieldCheckBox: Array of TField;
    constructor Create(Awoner: TComponent);override;
    procedure CheckBox(Column: TColumn; Field: TField; Rect: TRect);
  public
    { Public declarations }
    procedure DrawColumnCell(const Rect: TRect; DataCol: Integer; Column: TColumn;
          State: TGridDrawState);override;
    procedure TitleClick(Column: TColumn);override;
  published
    { Published declarations }
    property FieldCheckBox: TField read GetField write SetField;
  end;

procedure Register;

implementation

uses uDM;

procedure Register;
begin
  RegisterComponents('MC DBVisuais', [TDBGridMC]);
end;

{ TDBGridMC }

constructor TDBGridMC.Create(AWoner: TComponent);
begin
  inherited Create(Awoner);
  Tag := 2;
  Color := $00E0E9EF;
  Options := [dgTitles,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
  BorderStyle := bsNone;
  SetLength(FFieldCheckBox, 1);
end;

procedure TDBGridMC.DrawColumnCell(const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
var
  i : word;
begin
  inherited;
  if not Odd(DataSource.DataSet.RecNo) then // se for ímpar
    // se a célula não está selecionada
    if not (gdSelected in State) then
    begin
      // define a cor de fundo
      Canvas.Brush.Color := $00C5D6D9;
      Canvas.FillRect(Rect);//pinta a célula
      // pinta o texto padrão
      DefaultDrawDataCell(Rect, Column.Field, State);
    end
    else
    begin
      // define a cor de fundo
      Canvas.Brush.Color := $00CFB78F;
      Canvas.FillRect(Rect);//pinta a célula
      // pinta o texto padrão
      DefaultDrawDataCell(rect,column.Field,State);
    end
  else
    if (gdSelected in State) then
    begin
      // define a cor de fundo
      Canvas.Brush.Color := $00CFB78F;
      Canvas.FillRect(Rect);//pinta a célula
      // pinta o texto padrão
      DefaultDrawDataCell(Rect, Column.Field, State);
    end;
  if (FFieldCheckBox[0] <> nil) and (DataCol >= 0) then
  begin
    for i := 0 to pred(Length(FFieldCheckBox)) do
    begin
      CheckBox(Column, FFieldCheckBox[i], Rect);
    end;
  end;
end;

procedure TDBGridMC.TitleClick(Column: TColumn);
var
  i: word;
begin
  inherited;
  if (DataSource.DataSet is TClientDataSetMC) then
  begin
    if Column.Field.FieldKind = fkLookup then
      exit;
    (DataSource.DataSet as TClientDataSetMC).IndexFieldNames := Column.FieldName;
    for i := 0 to pred(Columns.Count) do
      Columns[i].Font.Style := [];
    Column.Font.Style := [fsBold];
  end;
end;

procedure TDBGridMC.CheckBox(Column: TColumn; Field: TField; Rect: TRect);
begin
  if Column.Field = Field then
  begin
    Canvas.FillRect(Rect);
    if Field.Value <> NULL then
      if (Field.Value = 'Sim') or (Field.Value = 'Ativo') or Field.AsBoolean then
        DM.imgCheckBox.Draw(Canvas, Rect.Left + Trunc(Column.Width/2) - 5, Rect.Top + 1, 1)
      else
        DM.imgCheckBox.Draw(Canvas, Rect.Left + Trunc(Column.Width/2) - 5, Rect.Top + 1, 2)
    else
      DM.imgCheckBox.Draw(Canvas, Rect.Left + Trunc(Column.Width/2) - 5, Rect.Top + 1, 0);
  end;
end;

function TDBGridMC.GetField: TField;
begin
  Result := FFieldCheckBox[0];
end;

procedure TDBGridMC.SetField(const Value: TField);
begin
  FFieldCheckBox[0] := value;
end;

end.
