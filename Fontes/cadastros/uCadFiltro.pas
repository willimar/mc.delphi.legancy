unit uCadFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid2, Provider, DataSetProviderMC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DB, DBClient, ClientDataSetMC,
  DatasourceMC, Grids, DBGrids, DBGridMC, Mask, DBCtrls, DBEditMC,
  ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, LabelMC, DBRichEditMC,
  DBMemoMC;

type
  T_frmCadGridComandoSQL = class(T_frmCadGrid2)
    LabelMC1: TLabelMC;
    qryGridCODCOMANDO: TIntegerField;
    qryGridNOME: TStringField;
    cdsGridCODCOMANDO: TIntegerField;
    cdsGridNOME: TStringField;
    qryCadCODCOMANDO: TIntegerField;
    qryCadNOME: TStringField;
    qryCadCOMANDO: TBlobField;
    Query: TZQueryMC;
    DBMemoMC1: TDBMemoMC;
    procedure bitGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridComandoSQL: T_frmCadGridComandoSQL;

implementation

uses uDBFunc, uDM;

{$R *.dfm}

procedure T_frmCadGridComandoSQL.bitGravarClick(Sender: TObject);
var
  ComandoSql : String;
  i: word;
begin
  Query.Close;
  Query.SQL.Text := qryCadCOMANDO.AsString;
  Query.Open;
  ComandoSql := 'DELETE FROM TBCOMANDCAMPOS WHERE CODCOMANDO=' + qryCadCODCOMANDO.AsString + ';';
  for i := 0 to pred(Query.FieldCount) do begin
    ComandoSql := ComandoSql + 'INSERT INTO TBCOMANDCAMPOS (CODCOMANDO, CAMPO, ORDEM) VALUES (' +
      qryCadCODCOMANDO.AsString + ', ''' + Query.Fields[i].DisplayName + ''', ' + IntToStr(i) + ');';
  end;
  inherited;
  ExecutarSql(ComandoSql);
end;

end.
