unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZConnection, Grids, DBGrids, DBGridMC, DB, DatasourceMC,
  ZAbstractRODataset, ZDataset, StdCtrls, Buttons, ZAbstractDataset;

type
  TForm1 = class(TForm)
    ZConnection1: TZConnection;
    ZConnection2: TZConnection;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    ZReadOnlyQuery1IDUF: TStringField;
    ZReadOnlyQuery1NOME: TStringField;
    DatasourceMC1: TDatasourceMC;
    DBGridMC1: TDBGridMC;
    BitBtn1: TBitBtn;
    ZQuery1: TZQuery;
    ZQuery1CODUF: TStringField;
    ZQuery1NOME: TStringField;
    ZConnection3: TZConnection;
    ZReadOnlyQuery2: TZReadOnlyQuery;
    DatasourceMC2: TDatasourceMC;
    DBGridMC2: TDBGridMC;
    ZReadOnlyQuery2CodCidade: TIntegerField;
    ZReadOnlyQuery2CodUf: TStringField;
    ZReadOnlyQuery2Nome: TStringField;
    BitBtn2: TBitBtn;
    ZQuery2: TZQuery;
    ZQuery2CODCIDADE: TIntegerField;
    ZQuery2CODUF: TStringField;
    ZQuery2NOME: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  ZReadOnlyQuery1.First;
  WHILE NOT ZReadOnlyQuery1.Eof DO
  BEGIN
    ZQuery1.InsertRecord([ZReadOnlyQuery1IDUF.AsString, ZReadOnlyQuery1NOME.AsString]);
    ZReadOnlyQuery1.Next;
    Application.ProcessMessages;
  END;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  ZReadOnlyQuery2.First;
  WHILE NOT ZReadOnlyQuery2.Eof DO
  BEGIN
    ZQuery2.InsertRecord([ZReadOnlyQuery2CodCidade.AsString, ZReadOnlyQuery2CodUf.AsString, ZReadOnlyQuery2Nome.AsString]);
    ZReadOnlyQuery2.Next;
    Application.ProcessMessages;
  END;
end;

end.
