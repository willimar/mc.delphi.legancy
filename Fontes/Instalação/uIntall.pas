unit uIntall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Provider, DB, DBClient,
  Mask, DBCtrls, DataSetProviderMC, ZQueryMC, ClientDataSetMC, DatasourceMC,
  DBEditMC, LabelMC, DBGridMC, ImgList;

type
  T_frmInstalacao = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    lblFechar: TLabelMC;
    Panel4: TPanel;
    Shape4: TShape;
    lblTitulo: TLabelMC;
    Panel2: TPanel;
    Shape2: TShape;
    Panel3: TPanel;
    Shape3: TShape;
    ToolBar1: TToolBar;
    bitGravar: TSpeedButton;
    bitCancelar: TSpeedButton;
    Panel5: TPanel;
    rdgInstalar: TRadioGroup;
    lblDescricao: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure rdgInstalarClick(Sender: TObject);
    procedure bitGravarClick(Sender: TObject);
    procedure bitCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmInstalacao: T_frmInstalacao;

implementation

uses uDM, uToolFunc, uBaseDados, uDiretorio;

{$R *.dfm}

procedure T_frmInstalacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

procedure T_frmInstalacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then begin
    Key := #0;
  end;
  if Key = #13 then begin
    Key := #0;
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure T_frmInstalacao.FormShow(Sender: TObject);
begin
  lblTitulo.Hint := DM.SisControl.ApplicationNome + ' - ' + lblTitulo.Caption;
  Self.Hint := DM.SisControl.ApplicationNome;
end;

procedure T_frmInstalacao.rdgInstalarClick(Sender: TObject);
begin
  case rdgInstalar.ItemIndex of
    0: begin
      lblDescricao.Caption :=
        'Na vers�o 1.0 do MCLocadora uma das maiores dificuldades era a instala��o do servidor de banco de dados.' +
        'Ent�o nesta vers�o o MCLocadora vem com um banco de dados mais leve e f�cil de instalar. Lembre-se o '+
        'sistema vem com manual de instala��o, para caso voc� tenha d�vidas.';
    end;
    1: begin
      lblDescricao.Caption :=
        'Bem amigos, com a mudan�a de banco de dados foi poss�vel mudar a din�mica '+
        'de instala��o da base de dados. Na vers�o 1.0 o usu�rio nem via a instala��o'+
        ' da base, agora o usu�rio pode escolher o local onde vai instalar o banco de '+
        'dados. Isso pode fazer com que voc� tenha o sistema rodando em mais de uma '+
        'base, sendo necess�rio somente ter de trocar a configura��o da conex�o na esta��o de trabalho.';
    end;
    2: begin
      lblDescricao.Caption :=
        'A esta��o de trabalho � o local onde voc� vai trabalhar com o MCLocadora. '+
        'A esta��o de trabalho n�o tem de ficar necessariamente na mesma m�quina onde '+
        'est� o servidor, desde que tenha uma maneira para que uma m�quina possa se '  +
        'comunicar com a outra. Uma das maneiras seria uma rede "Internet ou Intranet".';
    end;
  end;
end;

procedure T_frmInstalacao.bitGravarClick(Sender: TObject);
begin
  case rdgInstalar.ItemIndex of
    0: begin
      ExecutaEsperaTerminar(ExtractFilePath(ParamStr(0)) + 'Bancos\Firebird.exe', SW_SHOWNORMAL);
    end;
    1: begin
      T_frmBaseDados.Instalar(T_frmDiretorio.Execute);
    end;
    2: begin
      ExecutaEsperaTerminar(ExtractFilePath(ParamStr(0)) + 'MCLocadora\Setup.exe', SW_SHOWNORMAL);
    end;
  end;
end;

procedure T_frmInstalacao.bitCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
