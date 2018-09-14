unit uGerenciadorConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, DBGridMC, ComCtrls, Buttons, ToolWin,
  StdCtrls, ExtCtrls, LabelMC, PanelMC;

type
  T_frmCadGridGerenciadorConta = class(T_frmCadGrid)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmCadGridGerenciadorConta: T_frmCadGridGerenciadorConta;

implementation

{$R *.dfm}

end.
