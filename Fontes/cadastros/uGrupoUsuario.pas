unit uGrupoUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC, Mask, DBCtrls, DBEditMC, Menus,
  SpeedButtonMC;

type
  T_frmCadGridGrupoUsuario = class(T_frmCadGrid)
    qryGridCODGRUPOUSUARIO: TIntegerField;
    qryGridNOME: TStringField;
    cdsGridCODGRUPOUSUARIO: TIntegerField;
    cdsGridNOME: TStringField;
    LabelMC1: TLabelMC;
    txtCodigo: TDBEditMC;
    txtNome: TDBEditMC;
    LabelMC2: TLabelMC;
    dgcPermissoes: TPageControl;
    tabInterface: TTabSheet;
    cdsInterface: TClientDataSetMC;
    dsrInterface: TDatasourceMC;
    dspInterface: TDataSetProviderMC;
    qryInterface: TZQueryMC;
    qryInterfaceCODGRUPOUSUARIO: TIntegerField;
    qryInterfaceCAPTION: TStringField;
    qryInterfaceNOME: TStringField;
    qryInterfaceSOMENTELEITURA: TStringField;
    qryInterfaceINSERIR: TStringField;
    qryInterfaceALTERAR: TStringField;
    qryInterfaceIMPRIMIR: TStringField;
    qryInterfaceEXCLUIR: TStringField;
    cdsInterfaceCODGRUPOUSUARIO: TIntegerField;
    cdsInterfaceCAPTION: TStringField;
    cdsInterfaceNOME: TStringField;
    cdsInterfaceSOMENTELEITURA: TStringField;
    cdsInterfaceINSERIR: TStringField;
    cdsInterfaceALTERAR: TStringField;
    cdsInterfaceIMPRIMIR: TStringField;
    cdsInterfaceEXCLUIR: TStringField;
    PanelMC1: TPanelMC;
    PanelMC2: TPanelMC;
    dbgInterfaces: TDBGridMC;
    qryCadCODGRUPOUSUARIO: TIntegerField;
    qryCadNOME: TStringField;
    tabImpressoes: TTabSheet;
    qryImpressao: TZQueryMC;
    dspImpressoa: TDataSetProviderMC;
    cdsImpressao: TClientDataSetMC;
    dsrImpressao: TDatasourceMC;
    qryImpressaoCODGRUPOUSUARIO: TIntegerField;
    qryImpressaoCAPTION: TStringField;
    qryImpressaoNOME: TStringField;
    qryImpressaoIMPRIMIR: TStringField;
    cdsImpressaoCODGRUPOUSUARIO: TIntegerField;
    cdsImpressaoCAPTION: TStringField;
    cdsImpressaoNOME: TStringField;
    cdsImpressaoIMPRIMIR: TStringField;
    PanelMC3: TPanelMC;
    PanelMC4: TPanelMC;
    dbgImpressao: TDBGridMC;
    procedure tbsDetalhesShow(Sender: TObject);
    procedure dbgInterfacesCellClick(Column: TColumn);
    procedure bitGravarClick(Sender: TObject);
    procedure qryCadAfterCancel(DataSet: TDataSet);
    procedure dbgImpressaoCellClick(Column: TColumn);
    procedure qryCadAfterEdit(DataSet: TDataSet);
    procedure bitInserirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure qryCadBeforeEdit(DataSet: TDataSet);
    procedure bitExcluirClick(Sender: TObject);
  private
    { Private declarations }
    function PegarInterfaces: String;
    function PegarImpressao: String;
    procedure PegarImpressaoAlterar;
    procedure PegarInTerfaceAlterar;
  public
    { Public declarations }
  end;

var
  _frmCadGridGrupoUsuario: T_frmCadGridGrupoUsuario;

implementation

uses uDM, uPrincipal, uToolFunc;

{$R *.dfm}

function T_frmCadGridGrupoUsuario.PegarInterfaces: String;
var
  i: integer;
  cdsApoio: TClientDataSetMC;
begin
  try
    cdsApoio := TClientDataSetMC.Create(self);
    cdsApoio.FieldDefs.Add('CODGRUPOUSUARIO', ftInteger);
    cdsApoio.FieldDefs.Add('CAPTION', ftString, 50, true);
    cdsApoio.FieldDefs.Add('NOME', ftString, 50, true);
    cdsApoio.FieldDefs.Add('SOMENTELEITURA', ftString, 3, true);
    cdsApoio.FieldDefs.Add('INSERIR', ftString, 3, true);
    cdsApoio.FieldDefs.Add('ALTERAR', ftString, 3, true);
    cdsApoio.FieldDefs.Add('IMPRIMIR', ftString, 3, true);
    cdsApoio.FieldDefs.Add('EXCLUIR', ftString, 3, true);
    cdsApoio.CreateDataSet;
    for i := 0 to pred(_frmPrincipal.ComponentCount) do begin
      if _frmPrincipal.Components[i] is TMenuItem then begin
        if (_frmPrincipal.Components[i] as TMenuItem).Tag = 1 then begin
          cdsApoio.InsertRecord([qryCadCODGRUPOUSUARIO.AsInteger,
                                 Substituir('&', '', (_frmPrincipal.Components[i] as TMenuItem).Caption),
                                 (_frmPrincipal.Components[i] as TMenuItem).Name,
                                 'Não', 'Não', 'Não', 'Não', 'Não']);
        end;
      end;
    end;
    Result := cdsApoio.XMLData;
  finally
    FreeAndNil(cdsApoio);
  end;
end;

function T_frmCadGridGrupoUsuario.PegarImpressao: String;
var
  i: integer;
  cdsApoio: TClientDataSetMC;
begin
  try
    cdsApoio := TClientDataSetMC.Create(self);
    cdsApoio.FieldDefs.Add('CODGRUPOUSUARIO', ftInteger);
    cdsApoio.FieldDefs.Add('CAPTION', ftString, 50, true);
    cdsApoio.FieldDefs.Add('NOME', ftString, 50, true);
    cdsApoio.FieldDefs.Add('IMPRIMIR', ftString, 3, true);
    cdsApoio.CreateDataSet;
    for i := 0 to pred(_frmPrincipal.ComponentCount) do begin
      if _frmPrincipal.Components[i] is TMenuItem then begin
        if (_frmPrincipal.Components[i] as TMenuItem).Tag = 2 then begin
          cdsApoio.InsertRecord([qryCadCODGRUPOUSUARIO.AsInteger,
                                 Substituir('&', '', (_frmPrincipal.Components[i] as TMenuItem).Caption),
                                 (_frmPrincipal.Components[i] as TMenuItem).Name,
                                 'Não']);
        end;
      end;
    end;
    Result := cdsApoio.XMLData;
  finally
    FreeAndNil(cdsApoio);
  end;
end;

procedure T_frmCadGridGrupoUsuario.tbsDetalhesShow(Sender: TObject);
begin
  inherited;
  dgcPermissoes.Height := tbsDetalhes.Height - 50;
  SetLength(dbgInterfaces.FFieldCheckBox, 5);
  dbgInterfaces.FFieldCheckBox[0] := cdsInterfaceSOMENTELEITURA;
  dbgInterfaces.FFieldCheckBox[1] := cdsInterfaceINSERIR;
  dbgInterfaces.FFieldCheckBox[2] := cdsInterfaceALTERAR;
  dbgInterfaces.FFieldCheckBox[3] := cdsInterfaceIMPRIMIR;
  dbgInterfaces.FFieldCheckBox[4] := cdsInterfaceEXCLUIR;

  SetLength(dbgImpressao.FFieldCheckBox, 1);
  dbgImpressao.FFieldCheckBox[0] := cdsImpressaoIMPRIMIR;

  if tbsDetalhes.Tag <> qryCadCODGRUPOUSUARIO.AsInteger then begin
    qryInterface.Close;
    qryImpressao.Close;
    qryInterface.ParamByName('CODIGO').AsInteger := qryCadCODGRUPOUSUARIO.AsInteger;
    qryImpressao.ParamByName('CODIGO').AsInteger := qryCadCODGRUPOUSUARIO.AsInteger;
    tbsDetalhes.Tag := qryCadCODGRUPOUSUARIO.AsInteger;
    cdsInterface.Close;
    cdsImpressao.Close;
    cdsInterface.Open;
    cdsImpressao.Open;
  end;
end;

procedure T_frmCadGridGrupoUsuario.dbgInterfacesCellClick(Column: TColumn);
begin
  inherited;
  if qryCad.State in [dsBrowse, dsInactive] then Exit;
  if Column.Index > 0 then begin
    cdsInterface.Edit;
    Column.Field.AsString := iif(Column.Field.AsString = 'Sim', 'Não', 'Sim');
    cdsInterface.Post;
  end;
end;

procedure T_frmCadGridGrupoUsuario.bitGravarClick(Sender: TObject);
begin
  dsrInterface.Enabled := false;
  cdsInterface.First;
  dsrImpressao.Enabled := false;
  cdsImpressao.First;
  while not cdsInterface.Eof do begin
    cdsInterface.Edit;
    cdsInterfaceCODGRUPOUSUARIO.AsInteger := qryCadCODGRUPOUSUARIO.AsInteger;
    cdsInterface.Post;
    cdsInterface.Next;
  end;

  while not cdsImpressao.Eof do begin
    cdsImpressao.Edit;
    cdsImpressaoCODGRUPOUSUARIO.AsInteger := qryCadCODGRUPOUSUARIO.AsInteger;
    cdsImpressao.Post;
    cdsImpressao.Next;
  end;
  dsrImpressao.Enabled := true;
  dsrInterface.Enabled := true;
  inherited;
  cdsInterface.ApplyUpdates(0);
  cdsImpressao.ApplyUpdates(0);
end;

procedure T_frmCadGridGrupoUsuario.qryCadAfterCancel(DataSet: TDataSet);
begin
  inherited;
  cdsInterface.Cancel;
  cdsInterface.CancelUpdates;
  cdsImpressao.Cancel;
  cdsImpressao.CancelUpdates;
  tbsDetalhes.Tag := 0;
  tbsDetalhesShow(tbsDetalhes);
end;

procedure T_frmCadGridGrupoUsuario.dbgImpressaoCellClick(Column: TColumn);
begin
  inherited;
  if qryCad.State in [dsBrowse, dsInactive] then Exit;
  if Column.Index > 0 then begin
    cdsImpressao.Edit;
    Column.Field.AsString := iif(Column.Field.AsString = 'Sim', 'Não', 'Sim');
    cdsImpressao.Post;
  end;
end;

procedure T_frmCadGridGrupoUsuario.PegarImpressaoAlterar;
var
  i: integer;
  cdsApoio: TClientDataSetMC;
begin
  try
    cdsApoio := TClientDataSetMC.Create(self);
    cdsApoio.FieldDefs.Add('CODGRUPOUSUARIO', ftInteger);
    cdsApoio.FieldDefs.Add('CAPTION', ftString, 50, true);
    cdsApoio.FieldDefs.Add('NOME', ftString, 50, true);
    cdsApoio.FieldDefs.Add('IMPRIMIR', ftString, 3, true);
    cdsApoio.CreateDataSet;
    cdsApoio.XMLData := PegarImpressao;
    dsrImpressao.Enabled := false;
    cdsApoio.First;
    while not cdsApoio.Eof do begin
      if not cdsImpressao.Locate('NOME', cdsApoio.FieldByName('NOME').AsString, [loCaseInsensitive]) then
        cdsImpressao.InsertRecord([cdsApoio.FieldByName('CODGRUPOUSUARIO').AsString,
                                   cdsApoio.FieldByName('CAPTION').AsString,
                                   cdsApoio.FieldByName('NOME').AsString,
                                   cdsApoio.FieldByName('IMPRIMIR').AsString]);
      cdsApoio.Next;
    end;
    cdsImpressao.First;
    dsrImpressao.Enabled := true;
  finally
    FreeAndNil(cdsApoio);
  end;
end;

procedure T_frmCadGridGrupoUsuario.PegarInTerfaceAlterar;
var
  i: integer;
  cdsApoio: TClientDataSetMC;
begin
  try
    cdsApoio := TClientDataSetMC.Create(self);
    cdsApoio.FieldDefs.Add('CODGRUPOUSUARIO', ftInteger);
    cdsApoio.FieldDefs.Add('CAPTION', ftString, 50, true);
    cdsApoio.FieldDefs.Add('NOME', ftString, 50, true);
    cdsApoio.FieldDefs.Add('SOMENTELEITURA', ftString, 3, true);
    cdsApoio.FieldDefs.Add('INSERIR', ftString, 3, true);
    cdsApoio.FieldDefs.Add('ALTERAR', ftString, 3, true);
    cdsApoio.FieldDefs.Add('IMPRIMIR', ftString, 3, true);
    cdsApoio.FieldDefs.Add('EXCLUIR', ftString, 3, true);
    cdsApoio.CreateDataSet;
    cdsApoio.XMLData := PegarInterfaces;
    dsrInterface.Enabled := false;
    cdsApoio.First;
    while not cdsApoio.Eof do begin
      if not cdsInterface.Locate('NOME', cdsApoio.FieldByName('NOME').AsString, [loCaseInsensitive]) then
        cdsInterface.InsertRecord([cdsApoio.FieldByName('CODGRUPOUSUARIO').AsString,
                                   cdsApoio.FieldByName('CAPTION').AsString,
                                   cdsApoio.FieldByName('NOME').AsString,
                                   'Não', 'Não', 'Não', 'Não', 'Não']);
      cdsApoio.Next;
    end;
    cdsInterface.First;
    dsrInterface.Enabled := true;
  finally
    FreeAndNil(cdsApoio);
  end;
end;

procedure T_frmCadGridGrupoUsuario.qryCadAfterEdit(DataSet: TDataSet);
begin
  inherited;
  PegarImpressaoAlterar;
  PegarInTerfaceAlterar;
end;

procedure T_frmCadGridGrupoUsuario.bitInserirClick(Sender: TObject);
begin
  inherited;
  cdsInterface.XMLData := PegarInterfaces;
  cdsImpressao.XMLData := PegarImpressao;
end;

procedure T_frmCadGridGrupoUsuario.FormActivate(Sender: TObject);
begin
  inherited;
  bitImprimir.Visible := false;
end;

procedure T_frmCadGridGrupoUsuario.qryCadBeforeEdit(DataSet: TDataSet);
begin
  if qryCadCODGRUPOUSUARIO.AsInteger = 1 then begin
    Alerta('Não é permitido alterar o nível das permissões deste grupo.');
    abort;
  end;
  inherited;
end;

procedure T_frmCadGridGrupoUsuario.bitExcluirClick(Sender: TObject);
begin
  if qryCadCODGRUPOUSUARIO.AsInteger = 1 then begin
    Alerta('Não é permitido excluir este grupo.');
    abort;
  end;
  inherited;
end;

end.
