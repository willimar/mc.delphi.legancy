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
        'Na versão 1.0 do MCLocadora uma das maiores dificuldades era a instalação do servidor de banco de dados.' +
        'Então nesta versão o MCLocadora vem com um banco de dados mais leve e fácil de instalar. Lembre-se o '+
        'sistema vem com manual de instalação, para caso você tenha dúvidas.';
    end;
    1: begin
      lblDescricao.Caption :=
        'Bem amigos, com a mudança de banco de dados foi possível mudar a dinâmica '+
        'de instalação da base de dados. Na versão 1.0 o usuário nem via a instalação'+
        ' da base, agora o usuário pode escolher o local onde vai instalar o banco de '+
        'dados. Isso pode fazer com que você tenha o sistema rodando em mais de uma '+
        'base, sendo necessário somente ter de trocar a configuração da conexão na estação de trabalho.';
    end;
    2: begin
      lblDescricao.Caption :=
        'A estação de trabalho é o local onde você vai trabalhar com o MCLocadora. '+
        'A estação de trabalho não tem de ficar necessariamente na mesma máquina onde '+
        'está o servidor, desde que tenha uma maneira para que uma máquina possa se '  +
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
