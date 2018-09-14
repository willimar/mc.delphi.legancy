unit uDevolucao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, uDadosCliente, Buttons,
  SpeedButtonMC, PanelMC, Grids, DBGrids, DBGridMC;

type
  T_frmDevolucao = class(TForm)
    PanelMC1: TPanelMC;
    SpeedButtonMC1: TSpeedButtonMC;
    SpeedButtonMC2: TSpeedButtonMC;
    PanelMC2: TPanelMC;
    fraDadosCliente1: TfraDadosCliente;
    PanelMC3: TPanelMC;
    PanelMC4: TPanelMC;
    Panel2: TPanel;
    Shape2: TShape;
    Label11: TLabel;
    DBText14: TDBText;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBText15: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    Label3: TLabel;
    edtValor: TEdit;
    DBGridMC1: TDBGridMC;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmDevolucao: T_frmDevolucao;

implementation

{$R *.dfm}

end.
