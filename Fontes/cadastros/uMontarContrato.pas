unit uMontarContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, DuploGrid, Mask, DBCtrls, DBEditMC,
  DBRichEditMC, SpeedButtonMC, ImgList, EditMC;

type
  T_frmCadGridMontarContrato = class(T_frmCadGrid)
    qryGridCODCONTRATO: TIntegerField;
    qryGridNOME: TStringField;
    cdsGridCODCONTRATO: TIntegerField;
    cdsGridNOME: TStringField;
    qryCadCODCONTRATO: TIntegerField;
    qryCadNOME: TStringField;
    qryCadDESCRICAO: TBlobField;
    qryCadCOMANDOSQL: TBlobField;
    ImageList1: TImageList;
    qryOrigem: TZQueryMC;
    qryOrigemCODDOCUMENTO: TIntegerField;
    qryOrigemNOME: TStringField;
    qryDestino: TZQueryMC;
    qryDestinoCODCONTRATO: TIntegerField;
    qryDestinoCODDOCUMENTO: TIntegerField;
    qryDocumento: TZQueryMC;
    qryDocumentoCODDOCUMENTO: TIntegerField;
    qryDocumentoNOME: TStringField;
    qryOrigemCODCONTRATO: TIntegerField;
    DataSetProviderMC1: TDataSetProviderMC;
    qryDestinoNOME: TStringField;
    procedure bitGravarClick(Sender: TObject);
    procedure bitCancelarClick(Sender: TObject);
    procedure bitInserirClick(Sender: TObject);
    procedure dsrCadDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridMontarContrato: T_frmCadGridMontarContrato;

implementation

uses uDM;

{$R *.dfm}

procedure T_frmCadGridMontarContrato.bitGravarClick(Sender: TObject);
begin
  dgContrato.Tag := qryCadCODCONTRATO.AsInteger;
  inherited;
  dgContrato.ApplyUpdates(dgContrato.Tag);
end;

procedure T_frmCadGridMontarContrato.bitCancelarClick(Sender: TObject);
begin
  inherited;
  if dgContrato.Modificado then begin
    dgContrato.Close;
    dgContrato.Open(qryCadCODCONTRATO.AsInteger);
  end;
end;

procedure T_frmCadGridMontarContrato.bitInserirClick(Sender: TObject);
begin
  inherited;
  dgContrato.Close;
  dgContrato.Open(qryCadCODCONTRATO.AsInteger);
end;

procedure T_frmCadGridMontarContrato.dsrCadDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (qryCad.State in [dsBrowse]) and not (dgContrato.Modificado) then begin
    dgContrato.Close;
    dgContrato.Open(qryCadCODCONTRATO.AsInteger);
  end;
end;

end.
