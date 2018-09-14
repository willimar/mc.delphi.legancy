unit uPreReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Provider, DB, DBClient,
  Mask, DBCtrls, DataSetProviderMC, ZQueryMC, ClientDataSetMC, DatasourceMC,
  DBEditMC, LabelMC, DBGridMC, RLSaveDialog, RLPreviewForm, RLHTMLFilter,
  RLFilters, RLDraftFilter, RLRichFilter, RLXLSFilter, RLPDFFilter,
  RLReport;

type
  T_frmPreReport = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    Panel4: TPanel;
    Shape4: TShape;
    lblTitulo: TLabelMC;
    Panel2: TPanel;
    Shape2: TShape;
    Panel3: TPanel;
    Shape3: TShape;
    ToolBar1: TToolBar;
    bitInserir: TSpeedButton;
    bitImprimir: TSpeedButton;
    Panel5: TPanel;
    rdgImprimir: TRadioGroup;
    sd: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bitImprimirClick(Sender: TObject);
    procedure rdgImprimirClick(Sender: TObject);
    procedure bitInserirClick(Sender: TObject);
  private
    FSqlPadrao: string;
    Frpt: TRLReport;
    FTitulo: string;
    { Private declarations }
  public
    { Public declarations }
    property SqlPadrao: string read FSqlPadrao write FSqlPadrao;
    property Titulo: string read FTitulo write FTitulo;
    property rpt: TRLReport read Frpt write Frpt;
    class procedure AbreJanela(FormPai: TForm);virtual;

  end;

var
  _frmPreReport: T_frmPreReport;
  FormularioPai: TForm;
implementation

uses uDM, uDBFunc, uToolFunc, Math, uPrincipal, uErro, uReportFunc;

{$R *.dfm}

procedure T_frmPreReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fMenu(FormularioPai);
  if FormularioPai.FormStyle = fsNormal then begin
    FormularioPai.FormStyle := fsMDIChild;
    FormularioPai.Show;
    if FormularioPai.BorderIcons = [] then
      FormularioPai.WindowState := wsMaximized
    else
      FormularioPai.Position := poScreenCenter;
  end;
  Action := caFree;
  Self := nil;
end;

procedure T_frmPreReport.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then begin
    Key := #0;
    ModalResult := mrCancel;
  end;
  if Key = #13 then begin
    Key := #0;
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure T_frmPreReport.FormShow(Sender: TObject);
var
  i, J: word;
begin
  lblTitulo.Hint := DM.SisControl.ApplicationNome + ' - ' + lblTitulo.Caption;
  Self.Hint := DM.SisControl.ApplicationNome;
end;

procedure T_frmPreReport.FormCreate(Sender: TObject);
begin
  Height := 375;
  Width := 601;
end;

class procedure T_frmPreReport.AbreJanela(FormPai: TForm);
begin
  with Self.Create(FormPai) do begin
    Show;
    FormularioPai := FormPai;
    fMenu(FormPai);
    if FormularioPai.FormStyle = fsMDIChild then begin
      FormularioPai.FormStyle := fsNormal;
      FormularioPai.Hide;
    end;
  end;
end;

procedure T_frmPreReport.FormDestroy(Sender: TObject);
begin
  rpt := nil;
  Self := nil;
end;

procedure T_frmPreReport.bitImprimirClick(Sender: TObject);
begin
  rpt.PreviewOptions.FormStyle := fsMDIChild;
  case rdgImprimir.ItemIndex of
    0: begin
       ExecutarReport(rpt, Titulo);
    end;
    1: begin
      ImprimirReport(rpt, Titulo);
    end;
    2, 3, 4, 5: begin
      ImprimirParaArquivo(rpt, Titulo, sd);
    end;
  end;
end;

procedure T_frmPreReport.rdgImprimirClick(Sender: TObject);
begin
  sd.Filter := '';
  case rdgImprimir.ItemIndex of
    2: begin
       sd.Filter := 'Arquivos PDF|*.pdf';
    end;
    3: begin
       sd.Filter := 'Arquivos de texto formatado|*.rtf';
    end;
    4: begin
       sd.Filter := 'Arquivos HTML|*.htm';
    end;
    5: begin
       sd.Filter := 'Planilha de cálculo|*.xls';
    end;
  end;
end;

procedure T_frmPreReport.bitInserirClick(Sender: TObject);
begin
  Close;
end;

end.
