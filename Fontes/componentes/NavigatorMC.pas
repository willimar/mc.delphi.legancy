unit NavigatorMC;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, PanelMC, ZQueryMC, SpeedButtonMC, Forms,
  Windows, db;

type
  TNavigatorMC = class(TPanelMC)
  private
    FDataSet: TDataSet;
    FbtnAlterar: TSpeedButtonMC;
    FbtnInserir: TSpeedButtonMC;
    FbtnExcluir: TSpeedButtonMC;
    FDesabilitaExcluir: boolean;
    procedure InserirClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure SetDesabilitaExcluir(const Value: boolean);
    { Private declarations }
  protected
    { Protected declarations }
    property btnInserir: TSpeedButtonMC read FbtnInserir write FbtnInserir;
    property btnAlterar: TSpeedButtonMC read FbtnAlterar write FbtnAlterar;
    property btnExcluir: TSpeedButtonMC read FbtnExcluir write FbtnExcluir;
  public
    { Public declarations }
    constructor Create(AWoner: TComponent);override;
    procedure Resize;override;
  published
    { Published declarations }
    property DataSet: TDataSet read FDataSet write FDataSet;
    property DesabilitaExcluir: boolean read FDesabilitaExcluir write SetDesabilitaExcluir;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('MC Kernel', [TNavigatorMC]);
end;
{$R imgNavigator.res}
{ TNavigatorMC }

constructor TNavigatorMC.Create(AWoner: TComponent);
begin
  inherited Create(AWoner);
  FbtnAlterar := TSpeedButtonMC.Create(Self);
  FbtnInserir := TSpeedButtonMC.Create(Self);
  btnExcluir := TSpeedButtonMC.Create(Self);

  FbtnAlterar.SetSubComponent(true);
  FbtnInserir.SetSubComponent(true);
  FbtnExcluir.SetSubComponent(true);

  FbtnAlterar.Glyph.LoadFromResourceName(HInstance, 'EDITAR');
  FbtnInserir.Glyph.LoadFromResourceName(HInstance, 'INSERIR');
  FbtnExcluir.Glyph.LoadFromResourceName(HInstance, 'EXCLUIR');

  FbtnAlterar.Parent := Self;
  FbtnInserir.Parent := Self;
  FbtnExcluir.Parent := Self;

  FbtnAlterar.Width := 22;
  FbtnInserir.Width := 22;
  FbtnExcluir.Width := 22;

  FbtnInserir.Left := 0;
  FbtnAlterar.Left := 22;
  FbtnExcluir.Left := 44;

  Height := 22;
  Width := 66;

  FbtnInserir.Cursor := crHandPoint;
  FbtnAlterar.Cursor := crHandPoint;
  FbtnExcluir.Cursor := crHandPoint;

  FbtnInserir.OnClick := InserirClick;
  FbtnAlterar.OnClick := EditarClick;
  FbtnExcluir.OnClick := ExcluirClick;

  FbtnInserir.Flat := true;
  FbtnAlterar.Flat := true;
  FbtnExcluir.Flat := true;
end;

procedure TNavigatorMC.EditarClick(Sender: TObject);
begin
  FDataSet.Edit;
end;

procedure TNavigatorMC.ExcluirClick(Sender: TObject);
begin
  if DataSet.IsEmpty then begin
    Application.MessageBox('Não há registro para ser excluído.', PCHAR(Application.Title), MB_ICONEXCLAMATION + MB_OK);
    Exit;
  end;
  FDataSet.Delete;
end;

procedure TNavigatorMC.InserirClick(Sender: TObject);
begin
  FDataSet.Append;
end;

procedure TNavigatorMC.Resize;
begin
  inherited;
  Height := 22;
  Width := 66;
  Caption := '';
end;

procedure TNavigatorMC.SetDesabilitaExcluir(const Value: boolean);
begin
  FDesabilitaExcluir := Value;
  btnExcluir.Enabled := FDesabilitaExcluir;
end;

end.
