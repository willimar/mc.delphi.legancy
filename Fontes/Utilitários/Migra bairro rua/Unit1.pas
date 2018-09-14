unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZQueryMC, DatasourceMC, Grids, DBGrids, DBGridMC, StdCtrls, DBClient,
  Provider;

type
  TForm1 = class(TForm)
    UF: TZQueryMC;
    ZConnection1: TZConnection;
    UFUF: TStringField;
    CIDADE: TZQueryMC;
    CIDADECIDADE: TStringField;
    BAIRRO: TZQueryMC;
    BAIRROID: TIntegerField;
    BAIRROUF: TStringField;
    BAIRROCIDADE: TStringField;
    BAIRROBAIRRO: TStringField;
    DUF: TDatasourceMC;
    DCIDADE: TDatasourceMC;
    DBAIRRO: TDatasourceMC;
    ZConnection2: TZConnection;
    ZQueryMC1: TZQueryMC;
    ZQueryMC2: TZQueryMC;
    ZQueryMC3: TZQueryMC;
    DatasourceMC1: TDatasourceMC;
    DatasourceMC2: TDatasourceMC;
    DatasourceMC3: TDatasourceMC;
    ZQueryMC1CODUF: TStringField;
    ZQueryMC1NOME: TStringField;
    ZQueryMC2CODCIDADE: TIntegerField;
    ZQueryMC2CODUF: TStringField;
    ZQueryMC2NOME: TStringField;
    ZQueryMC3CODBAIRRO: TIntegerField;
    ZQueryMC3CODCIDADE: TIntegerField;
    ZQueryMC3NOME: TStringField;
    DBGridMC1: TDBGridMC;
    DBGridMC2: TDBGridMC;
    BAIRROCODcIDADE: TIntegerField;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    ZQueryMC4: TZQueryMC;
    DatasourceMC4: TDatasourceMC;
    ZQueryMC4UF: TStringField;
    ZQueryMC4CIDADE: TStringField;
    ZQueryMC4BAIRRO: TStringField;
    ZQueryMC4RUA: TStringField;
    ZQueryMC4CEP: TStringField;
    ZQueryMC4COMPLEMENTO: TStringField;
    DBGridMC3: TDBGridMC;
    ZQueryMC4CODBAIRRO: TIntegerField;
    ZQueryMC5: TZQueryMC;
    DatasourceMC5: TDatasourceMC;
    ZQueryMC5CODRUA: TIntegerField;
    ZQueryMC5CODBAIRRO: TIntegerField;
    ZQueryMC5NOME: TStringField;
    ZQueryMC5CEP: TStringField;
    Button3: TButton;
    Edit7: TEdit;
    Edit8: TEdit;
    DBGridMC4: TDBGridMC;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CODRUA: TIntegerField;
    ClientDataSet1CODBAIRRO: TIntegerField;
    ClientDataSet1NOME: TStringField;
    ClientDataSet1CEP: TStringField;
    ZQueryMC6: TZQueryMC;
    ZQueryMC6CODRUA: TIntegerField;
    ZQueryMC6CODBAIRRO: TIntegerField;
    ZQueryMC6NOME: TStringField;
    ZQueryMC6CEP: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit1.Text := IntToStr(UF.RecordCount);
  Edit2.Text := IntToStr(CIDADE.RecordCount);
  Edit3.Text := IntToStr(BAIRRO.RecordCount);
  Edit7.Text := IntToStr(ZQueryMC4.RecordCount);

  Edit4.Text := IntToStr(ZQueryMC1.RecordCount);
  Edit5.Text := IntToStr(ZQueryMC2.RecordCount);
  Edit6.Text := IntToStr(ZQueryMC3.RecordCount);
  Edit8.Text := IntToStr(ZQueryMC5.RecordCount);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  valor: string;
begin
  DBAIRRO.Enabled := false;
  DatasourceMC3.Enabled := false;
  while not BAIRRO.Eof do begin
    if (BAIRROCODcIDADE.AsString = '') and (valor <> BAIRROCIDADE.AsString) then begin
      ZQueryMC2.Append;
      ZQueryMC2CODUF.AsString := BAIRROUF.AsString;
      ZQueryMC2NOME.AsString := BAIRROCIDADE.AsString;
      ZQueryMC2.Post;
      Valor := BAIRROCIDADE.AsString;

    end;
    Label1.Caption := IntToStr(BAIRRO.RecNo);
    Application.ProcessMessages;
    BAIRRO.Next;
  end;
  ZQueryMC2.Close;
  ZQueryMC2.Open;
  BAIRRO.Close;
  BAIRRO.Open;
  BAIRRO.First;

  while not BAIRRO.Eof do begin
    ZQueryMC3.Append;
    ZQueryMC3CODCIDADE.AsInteger := BAIRROCODcIDADE.AsInteger;
    ZQueryMC3NOME.AsString := BAIRROBAIRRO.AsString;
    ZQueryMC3.Post;
    Label1.Caption := IntToStr(BAIRRO.RecNo);
    Application.ProcessMessages;
    BAIRRO.Next;
  end;
  DBAIRRO.Enabled := true;
  DatasourceMC3.Enabled := true;
end;

procedure TForm1.Button3Click(Sender: TObject);
var i: integer;
begin
  DatasourceMC4.Enabled := FALSE;
  DatasourceMC5.Enabled := FALSE;
  i := 0;
  ZQueryMC4.First;
  WHILE NOT ZQueryMC4.Eof DO BEGIN

    //if not ClientDataSet1.Locate('CEP;NOME;CODBAIRRO', VarArrayOf([ZQueryMC4CEP.AsString, ZQueryMC4RUA.AsString, ZQueryMC4CODBAIRRO.AsInteger]), [loCaseInsensitive]) then begin
      ZQueryMC6.Append;
      ZQueryMC6CODBAIRRO.AsInteger := ZQueryMC4CODBAIRRO.AsInteger;
      ZQueryMC6NOME.AsString := ZQueryMC4RUA.AsString;
      ZQueryMC6CEP.AsString := ZQueryMC4CEP.AsString;
      ZQueryMC6.Post;
    //end;
    ZQueryMC4.Delete;
    inc(i);
    Label1.Caption := IntToStr(i);
    Application.ProcessMessages;
  END;
  DatasourceMC4.Enabled := TRUE;
  DatasourceMC5.Enabled := TRUE;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
end;

end.
