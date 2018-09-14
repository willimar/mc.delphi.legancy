unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, DBClient, ClientDataSetMC;

type
  TForm1 = class(TForm)
    ClientDataSetMC1: TClientDataSetMC;
    ClientDataSetMC1protocolo: TStringField;
    ClientDataSetMC1host: TStringField;
    ClientDataSetMC1enrecofisico: TStringField;
    ClientDataSetMC1user: TStringField;
    ClientDataSetMC1senha: TStringField;
    ClientDataSetMC1porta: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
