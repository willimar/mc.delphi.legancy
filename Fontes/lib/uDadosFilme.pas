unit uDadosFilme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZQueryMC, DatasourceMC;

type
  TfraDadosFilme = class(TFrame)
    Panel2: TPanel;
    Shape2: TShape;
    Label12: TLabel;
    DBText20: TDBText;
    Label26: TLabel;
    DBText23: TDBText;
    Label27: TLabel;
    DBText24: TDBText;
    Label28: TLabel;
    DBText25: TDBText;
    Label29: TLabel;
    DBText26: TDBText;
    DBText27: TDBText;
    Label30: TLabel;
    Label31: TLabel;
    DBText28: TDBText;
    Label38: TLabel;
    DBText22: TDBText;
    Label25: TLabel;
    DBText21: TDBText;
    Label17: TLabel;
    qryFilme: TZQueryMC;
    dsrFilmes: TDatasourceMC;
    qryFilmeFL_CODFILME: TIntegerField;
    qryFilmeFL_NOME: TStringField;
    qryFilmeFT_SUBCOD: TStringField;
    qryFilmeFT_BARCODE: TStringField;
    qryFilmeFL_AUTOR: TStringField;
    qryFilmeFT_DISPONIVEL: TStringField;
    qryFilmeFL_QUANTIDADE: TIntegerField;
    qryFilmeP_NOME: TStringField;
    qryFilmePR_VALOR: TFloatField;
    qryFilmeFL_VALORCOMPRA: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDM;

{$R *.dfm}

end.
