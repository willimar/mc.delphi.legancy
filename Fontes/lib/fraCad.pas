unit fraCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC,
  DatasourceMC, ExtCtrls, PanelMC, NavigatorMC, Provider,
  DataSetProviderMC, DBClient, ClientDataSetMC;

type
  TFrameCad = class(TFrame)
    NavigatorMC: TNavigatorMC;
    dsrCad: TDatasourceMC;
    qryCad: TZQueryMC;
    dspCad: TDataSetProviderMC;
    cdsCad: TClientDataSetMC;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
