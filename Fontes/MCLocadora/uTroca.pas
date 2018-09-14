unit uTroca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, EditMC, Buttons, ComCtrls, ToolWin, LabelMC, ExtCtrls,
  PanelMC, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC,
  DatasourceMC, Grids, DBGrids, DBGridMC;

type
  T_frmTroca = class(TForm)
    PanelMC1: TPanelMC;
    PanelMC2: TPanelMC;
    lblFechar: TLabelMC;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    GroupBox1: TGroupBox;
    txtCodigoDevolvido: TEditMC;
    txtFilmeDevolvido: TEditMC;
    txtPrecoDevolvido: TEditMC;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    txtCodigoRetirado: TEditMC;
    txtFilmeRetirado: TEditMC;
    txtPrecoRetirado: TEditMC;
    LabelMC1: TLabelMC;
    txtmotivo: TEditMC;
    qryItens: TZQueryMC;
    qryItensCODITEMALUG: TIntegerField;
    qryItensCODALUGUEL: TIntegerField;
    qryItensSUBCOD: TStringField;
    qryItensVALOR: TFloatField;
    qryItensDEVOLVE: TStringField;
    qryItensCODFILME: TIntegerField;
    qryFilme: TZQueryMC;
    qryFilmeSUBCOD: TStringField;
    qryFilmeCODFILME: TIntegerField;
    qryFilmeDISPONIVEL: TStringField;
    qryFilmeBARCODE: TStringField;
    qryFilmeFL_NOME: TStringField;
    qryFilmePR_VALOR: TFloatField;
    qryHistorico: TZQueryMC;
    qryHistoricoCODHISTORICO: TIntegerField;
    qryHistoricoCODFICHA: TIntegerField;
    qryHistoricoCODFILME: TIntegerField;
    qryHistoricoDATASAIDA: TDateField;
    qryHistoricoDATAENTRADA: TDateField;
    qryHistoricoATRASO: TStringField;
    qryHistoricoCODSOCIO: TIntegerField;
    qryHistoricoQTD: TIntegerField;
    qryHistoricoTROCA: TStringField;
    qryHistoricoMOTIVO: TStringField;
    qryHistoricoVALOR: TFloatField;
    qryFilmeLocados: TZQueryMC;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    qryItensNome: TStringField;
    procedure lblFecharClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure qryItensAfterOpen(DataSet: TDataSet);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure txtCodigoDevolvidoChange(Sender: TObject);
    procedure txtCodigoRetiradoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmTroca: T_frmTroca;

implementation

uses uMovimento, uDM, uDBFunc, uToolFunc, uPesquisa;

{$R *.dfm}

procedure T_frmTroca.lblFecharClick(Sender: TObject);
begin
  Close;
end;

procedure T_frmTroca.ToolButton1Click(Sender: TObject);
var
  cSql: String;
  CodFilme: integer;
  function Assistido: boolean;
  var
    qryApoio: TZQueryMC;
  const
    Historico =
      'SELECT '                                                   +
         'P.NOME, Troca, Motivo '                                                +
      'FROM TBHISTORICO H, TBCLIENTE C, TBPESSOA P '              +
      'WHERE H.CODSOCIO=C.CODPESSOA AND C.CODPESSOA=P.CODPESSOA ';
  begin
    qryApoio := TZQueryMC.Create(Self);
    qryApoio.Conexao := DM.db;
    try
      Result := true;
      //se estiver sido assistido o filme alguma vez exibe o aviso
      //com o nome de quem alugou e se é titular ou dependente
      Filtrar([Historico], ['CODFILME=' + qryFilmeCODFILME.AsString +
        ' AND CODFICHA=' + iif(_frmMovimento.qryClienteCODTITULAR.AsString = '',
        _frmMovimento.qryClienteCODCLIENTE.AsString, _frmMovimento.qryClienteCODTITULAR.AsString)], [qryApoio]);
      if not qryApoio.IsEmpty then
        if Alerta('O filme ' + txtFilmeDevolvido.Text + ' já foi alugado pelo sócio ' +
          qryApoio.FieldByName('NOME').AsString + '. Gostaria de locá-lo novamente?', true) then
          Result := true
        else
          Result := false;

      //verifico se hoive uma troca desta fita ou filme
      // e vaiso
      if qryApoio.FieldByName('Troca').AsString = 'Sim' then
        if not Informacao('Este filme foi trocado.' + #13 + 'Motivo:' + #13 +
                   qryApoio.FieldByName('Motivo').AsString + #13 + 'Locar ainda assim?', true) then begin
          Result := true
        end
        else
          Result := false;
    finally
      FreeAndNil(qryApoio);
    end;
  end;
begin
  txtFilmeDevolvido.ValidarDado;
  txtFilmeRetirado.ValidarDado;
  txtmotivo.ValidarDado;

  //filtra o historico atráz do filme assistido
  Filtrar(['SELECT * FROM TBHISTORICO '],
    ['CODFICHA=' + iif(_frmMovimento.qryClienteCODTITULAR.AsString = '', _frmMovimento.qryClienteCODCLIENTE.AsString, _frmMovimento.qryClienteCODTITULAR.AsString) +
     ' AND CodFilme=' + qryItensCODFILME.AsString],
    [qryHistorico]);

  if not Assistido then exit;
  if not qryHistorico.IsEmpty then begin
    qryHistorico.Edit
  end
  else begin
    qryHistorico.Append;
  end;

  qryHistoricoCODFICHA.AsInteger := iif(_frmMovimento.qryClienteCODTITULAR.AsString = '', _frmMovimento.qryClienteCODCLIENTE.AsString, _frmMovimento.qryClienteCODTITULAR.AsString);
  qryHistoricoCODFILME.AsInteger := qryItensCODFILME.AsInteger;
  qryHistoricoDATASAIDA.AsDateTime := _frmMovimento.qryAluguelRETIRADA.AsDateTime;
  qryHistoricoDATAENTRADA.AsDateTime := Date;
  qryHistoricoATRASO.AsString := 'Não';
  qryHistoricoCODSOCIO.AsInteger := _frmMovimento.qryClienteCODPESSOA.AsInteger;
  qryHistoricoQTD.AsInteger := 0;
  qryHistoricoTROCA.AsString := 'Sim';
  qryHistoricoMOTIVO.AsString := txtmotivo.Text;
  qryHistoricoVALOR.AsFloat := 0;

  qryHistorico.Post;

  cSql := 'UPDATE TBFITA SET DISPONIVEL=''Não'' WHERE SUBCOD=''' + txtCodigoRetirado.Text + ''';';
  cSql := cSql + 'UPDATE TBFITA SET DISPONIVEL=''Sim'' WHERE SUBCOD=''' + txtCodigoDevolvido.Text + ''';';
  qryFilme.Locate('SUBCOD', txtCodigoRetirado.Text, [loCaseInsensitive]);
  cSql := cSql + 'UPDATE TBITEMALUGUEL SET SUBCOD=''' + txtCodigoRetirado.Text + ''', CODFILME=' +
    qryFilmeCODFILME.AsString + ' WHERE SUBCOD=' + QuotedStr(txtCodigoDevolvido.Text);

  ExecutarSql(cSql);
  ModalResult := mrOk;
end;

procedure T_frmTroca.qryItensAfterOpen(DataSet: TDataSet);
begin
  qryFilme.ParamByName('DISPONIVEL').AsString := 'Sim';
  qryFilme.Open;
end;

procedure T_frmTroca.ToolButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure T_frmTroca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult = mrCancel then
    if Pergunta('Deseja cancelar esta operação?') then begin
      Cancelar([_frmMovimento.qryAluguel]);
      Action := caFree;
    end
    else begin
      Action := caNone;
    end;
end;

procedure T_frmTroca.FormDestroy(Sender: TObject);
begin
  Self := nil;
end;

procedure T_frmTroca.SpeedButton1Click(Sender: TObject);
const
  cSql =
    'SELECT FT.*, FL.NOME AS FL_NOME, PR.VALOR AS PR_VALOR FROM TBFITA FT, TBFILME FL, TBPRECO PR '+
    'WHERE FT.CODFILME=FL.CODFILME AND PR.CODPRECO=FL.CODPRECO AND DISPONIVEL=:DISPONIVEL';
begin
  txtCodigoRetirado.Text :=  T_frmPesquisa.AbrePesquisa('SUBCOD', 'Pesquisa de filmes', Self, qryFilme, 10);
  qryFilme.Close;
  qryFilme.SQL.Text := cSql;
  qryFilme.Open;
end;

procedure T_frmTroca.txtCodigoDevolvidoChange(Sender: TObject);
var
  AchouBarCode, AchouSubCod: Boolean;
begin
  //AchouBarCode := qryItens.Locate('BARCODE', txtCodigoDevolvido.Text, [loCaseInsensitive]);
  AchouSubCod := qryItens.Locate('SUBCOD', txtCodigoDevolvido.Text, [loCaseInsensitive]);

  if AchouBarCode or AchouSubCod then begin
    txtFilmeDevolvido.Text := qryItensNOME.AsString;
    txtPrecoDevolvido.Text := FormatFloat('#,##0.00', qryItensVALOR.AsFloat);
  end
  else begin
    txtFilmeDevolvido.Text := '';
    txtPrecoDevolvido.Text := '';
  end;
end;

procedure T_frmTroca.txtCodigoRetiradoChange(Sender: TObject);
var
  AchouBarCode, AchouSubCod: Boolean;
begin
  AchouBarCode := qryFilme.Locate('BARCODE', txtCodigoRetirado.Text, [loCaseInsensitive]);
  AchouSubCod := qryFilme.Locate('SUBCOD', txtCodigoRetirado.Text, [loCaseInsensitive]);

  if AchouBarCode or AchouSubCod then begin
    txtFilmeRetirado.Text := qryFilmeFL_NOME.AsString;
    txtPrecoRetirado.Text := FormatFloat('#,##0.00', qryFilmePR_VALOR.AsFloat);
  end
  else begin
    txtFilmeRetirado.Text := '';
    txtPrecoRetirado.Text := '';
  end;
end;

end.
