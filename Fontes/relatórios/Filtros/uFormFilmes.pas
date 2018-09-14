unit uFormFilmes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPreReport, Buttons, ToolWin, ComCtrls, StdCtrls, ExtCtrls,
  LabelMC;

type
  T_frmFormFilme = class(T_frmPreReport)
    rdgTipo: TRadioGroup;
    procedure bitImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    FCodFilme: Integer;
  private
    { Private declarations }
    property CodFilme: Integer read FCodFilme write FCodFilme;
  public
    { Public declarations }
    class procedure Abrir(CodFilme: Integer; FormPai: TForm);
  end;

var
  _frmFormFilme: T_frmFormFilme;

implementation

uses uRptFilme, uToolFunc, uDM;

{$R *.dfm}

class procedure T_frmFormFilme.Abrir(CodFilme: Integer; FormPai: TForm);
begin
  FormularioPai := FormPai;
  _frmFormFilme := T_frmFormFilme.Create(FormPai);
  fMenu(FormPai);
  if FormularioPai.FormStyle = fsMDIChild then begin
    FormularioPai.FormStyle := fsNormal;
    FormularioPai.Hide;
  end;
  _frmFormFilme.CodFilme := CodFilme;
end;

procedure T_frmFormFilme.bitImprimirClick(Sender: TObject);
const
  cSql =
    'SELECT '+
       'FO.NOME AS FORNECEDOR, P.NOME AS PRECO, P.VALOR, G.NOME AS GENERO, F.NOME AS FILME, AUTOR, DVD, DATAAQU, QUANTIDADE, '+
       'SINOPSE, ESTANTE, PRATELEIRA, VALORCOMPRA, PARTICIP1, PARTICIP2, PARTICIP3 '+
    'FROM TBFILME F '                                       +
    'LEFT JOIN TBPRECO P ON F.CODPRECO=P.CODPRECO '         +
    'LEFT JOIN TBGENERO G ON F.CODGENERO=G.CODGENERO '      +
    'LEFT JOIN TBCLIENTE C ON C.CODCLIENTE=F.CODFORNECEDOR '+
    'LEFT JOIN TBPESSOA FO ON FO.CODPESSOA=C.CODPESSOA ';
  cOrdem =
    ' ORDER BY G.NOME, F.NOME, P.NOME';
begin
  case rdgTipo.ItemIndex of
    0: begin
      _frmRptFilme.qryFilmesAnalitico.Close;
      _frmRptFilme.qryFilmesAnalitico.SQL.Text := cSql + cOrdem;
      _frmRptFilme.qryFilmesAnalitico.Open;
      rpt := _frmRptFilme.rptAnalitica;
    end;
    1: begin
      _frmRptFilme.qryLista.Close;
      _frmRptFilme.qryLista.Open;
      rpt := _frmRptFilme.rpt;
    end;
    2: begin
      _frmRptFilme.qryFilmesAnalitico.Close;
      _frmRptFilme.qryFilmesAnalitico.SQL.Text := cSql + ' WHERE F.CODFILME=' + IntToStr(CodFilme) + cOrdem;
      _frmRptFilme.qryFilmesAnalitico.Open;
      rpt := _frmRptFilme.rptAnalitica;
    end;
  end;
  inherited;
end;

procedure T_frmFormFilme.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //FreeAndNil(_frmRptFilme);
end;

procedure T_frmFormFilme.FormCreate(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(_frmRptFilme) then
      _frmRptFilme := T_frmRptFilme.Create(FormularioPai);
  except

  end;
end;

end.
