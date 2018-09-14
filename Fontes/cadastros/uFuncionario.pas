unit uFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCliente, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, StdCtrls, ComCtrls, DBCtrls, DBRichEditMC, CheckBoxMC,
  DBComboBoxMC, DBLookupComboBoxMC, Mask, DBEditMC, Grids, DBGrids,
  DBGridMC, Buttons, ToolWin, ExtCtrls, LabelMC, PanelMC, DBCheckBoxMC,
  fraCad, uFrameCadGrid, EditMC, DBMemoMC, DBTextMC, NavigatorMC,
  DBRadioGroupMC, DuploGrid, ExtDlgs, DBImageMC, SpeedButtonMC;

type
  T_frmCadGridFuncionario = class(T_frmCadGridCliente)
    tabGrupoUsuario: TTabSheet;
    DBEditMC1: TDBEditMC;
    qryUsuario: TZQueryMC;
    qryUsuarioCODUSUARIO: TIntegerField;
    qryUsuarioCODPESSOA: TIntegerField;
    qryUsuarioLOGIN: TStringField;
    qryUsuarioSENHA: TStringField;
    qryUsuarioULTIMASENHA: TStringField;
    qryUsuarioDATAEXPIRACAO: TDateField;
    qryUsuarioATIVO: TStringField;
    dsrUsuario: TDatasourceMC;
    DBEditMC2: TDBEditMC;
    LabelMC15: TLabelMC;
    qryDestino: TZQueryMC;
    qryDestinoCODUSUARIO: TIntegerField;
    qryDestinoCODGRUPOUSUARIO: TIntegerField;
    qryOrigem: TZQueryMC;
    qryOrigemCODGRUPOUSUARIO: TIntegerField;
    qryOrigemNOME: TStringField;
    qryOrigemCODUSUARIO: TIntegerField;
    qryGrupoUsuario: TZQueryMC;
    qryGrupoUsuarioCODGRUPOUSUARIO: TIntegerField;
    qryGrupoUsuarioNOME: TStringField;
    DBEditMC4: TDBEditMC;
    LabelMC22: TLabelMC;
    DBCheckBoxMC2: TDBCheckBoxMC;
    qryDestinoNOME: TStringField;
    dgGrupoUsuario: TDuploGridMC;
    LabelMC25: TLabelMC;
    procedure qryClienteAfterInsert(DataSet: TDataSet);
    procedure qryClienteAfterEdit(DataSet: TDataSet);
    procedure tabGrupoUsuarioShow(Sender: TObject);
    procedure qryUsuarioAfterInsert(DataSet: TDataSet);
    procedure qryUsuarioBeforePost(DataSet: TDataSet);
    procedure qryUsuarioAfterEdit(DataSet: TDataSet);
    procedure qryUsuarioAfterPost(DataSet: TDataSet);
    procedure tbsDetalhesShow(Sender: TObject);
    procedure bitImprimirClick(Sender: TObject);
    procedure bitExcluirClick(Sender: TObject);
    procedure qryClienteAfterPost(DataSet: TDataSet);
    procedure qryClienteBeforeCancel(DataSet: TDataSet);
    procedure qryUsuarioNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridFuncionario: T_frmCadGridFuncionario;

implementation

uses uDM, uToolFunc, uCadGrid;

{$R *.dfm}

procedure T_frmCadGridFuncionario.qryClienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryClienteFUNCIONARIO.AsString := 'Sim';
end;

procedure T_frmCadGridFuncionario.qryClienteAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryClienteFUNCIONARIO.AsString := 'Sim';
  if qryClienteCODCLIENTE.AsInteger = 1 then begin
    tabObs.Show;
    tabGerais.TabVisible := false;
    tabEndereco.TabVisible := false;
    tabProfissional.TabVisible := false;
    tabListaDependente.TabVisible := false;
    tabHistorico.TabVisible := false;
    dgGrupoUsuario.Visible := false;
    Informacao('A alteração dos dados deste usuário é limitada.');
  end;
end;

procedure T_frmCadGridFuncionario.tabGrupoUsuarioShow(Sender: TObject);
begin
  inherited;
  if tabGrupoUsuario.Tag <> qryUsuarioCODUSUARIO.AsInteger then begin
    dgGrupoUsuario.Open(qryUsuarioCODUSUARIO.AsInteger);
    tabGrupoUsuario.Tag := qryUsuarioCODUSUARIO.AsInteger;
    dgGrupoUsuario.Height := tabGrupoUsuario.Height - 50;
    dgGrupoUsuario.Width := tabGrupoUsuario.Width - 10;
  end;
end;

procedure T_frmCadGridFuncionario.qryUsuarioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryUsuarioATIVO.AsString := 'Sim';
end;

procedure T_frmCadGridFuncionario.qryUsuarioBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryUsuarioSENHA.AsString := Criptografar(qryUsuarioSENHA.AsString);
  if qryUsuario.State in [dsInsert] then
    qryUsuarioULTIMASENHA.AsString := qryUsuarioSENHA.AsString
  else
    qryUsuarioULTIMASENHA.AsString := qryUsuarioSENHA.OldValue;

end;

procedure T_frmCadGridFuncionario.qryUsuarioAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryUsuarioSENHA.AsString := Descriptografar(qryUsuarioSENHA.AsString);
end;

procedure T_frmCadGridFuncionario.qryUsuarioAfterPost(DataSet: TDataSet);
begin
  inherited;
  dgGrupoUsuario.ApplyUpdates(qryUsuarioCODUSUARIO.AsInteger);
end;

procedure T_frmCadGridFuncionario.tbsDetalhesShow(Sender: TObject);
begin
  if (pgcDetalhes.ActivePage = tabGrupoUsuario) then begin
    pgcDetalhes.ActivePageIndex := 0;
  end;
  inherited;
end;

procedure T_frmCadGridFuncionario.bitImprimirClick(Sender: TObject);
begin
  inherited;
  _frmFormCliente.SqlComplemento := ' AND FUNCIONARIO=''Sim''';
end;

procedure T_frmCadGridFuncionario.bitExcluirClick(Sender: TObject);
begin
  if qryClienteCODCLIENTE.AsInteger = 1 then begin
    Alerta('Este é o usuário padão do sistema e não pode ser exluído.');
    Abort;
  end;
  inherited;
end;

procedure T_frmCadGridFuncionario.qryClienteAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryClienteCODCLIENTE.AsInteger = 1 then begin
    tabGerais.TabVisible := true;
    tabEndereco.TabVisible := true;
    tabProfissional.TabVisible := true;
    tabListaDependente.TabVisible := true;
    tabHistorico.TabVisible := true;
    dgGrupoUsuario.Visible := true;
  end;
end;

procedure T_frmCadGridFuncionario.qryClienteBeforeCancel(
  DataSet: TDataSet);
begin
  inherited;
  if qryClienteCODCLIENTE.AsInteger = 1 then begin
    tabGerais.TabVisible := true;
    tabEndereco.TabVisible := true;
    tabProfissional.TabVisible := true;
    tabListaDependente.TabVisible := true;
    tabHistorico.TabVisible := true;
    dgGrupoUsuario.Visible := true;
  end;
end;

procedure T_frmCadGridFuncionario.qryUsuarioNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryUsuarioDATAEXPIRACAO.AsDateTime := Date;
end;

end.
