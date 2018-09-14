unit uPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadGrid, DB, DatasourceMC, Provider, DataSetProviderMC,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZQueryMC, DBClient,
  ClientDataSetMC, Grids, DBGrids, ComCtrls, Buttons, ToolWin, StdCtrls,
  ExtCtrls, DBGridMC, Mask, DBCtrls, DBEditMC, DBLookupComboBoxMC,
  DBRadioGroupMC, DBRichEditMC;

type
  T_frmCadPaciente = class(T_frmCadGrid)
    qryGridCODPACIENTE: TIntegerField;
    qryGridCODPESSOA: TIntegerField;
    qryGridNOME: TStringField;
    qryGridCPFCNPJ: TStringField;
    qryGridRG: TStringField;
    qryGridEMAIL: TStringField;
    cdsGridCODPACIENTE: TIntegerField;
    cdsGridCODPESSOA: TIntegerField;
    cdsGridNOME: TStringField;
    cdsGridCPFCNPJ: TStringField;
    cdsGridRG: TStringField;
    cdsGridEMAIL: TStringField;
    qryCadCODPACIENTE: TIntegerField;
    qryCadCODPESSOA: TIntegerField;
    qryPessoa: TZQueryMC;
    qryPessoaCODPESSOA: TIntegerField;
    qryPessoaCODCIDRESID: TIntegerField;
    qryPessoaCODUSUARIO: TIntegerField;
    qryPessoaENDERECO: TStringField;
    qryPessoaCOMPLEMENTO: TStringField;
    qryPessoaBAIRRO: TStringField;
    qryPessoaTEL: TStringField;
    qryPessoaCEL: TStringField;
    qryPessoaCEP: TStringField;
    qryPessoaNOME: TStringField;
    qryPessoaTIPOPESSOA: TStringField;
    qryPessoaCPFCNPJ: TStringField;
    qryPessoaEMAIL: TStringField;
    qryPessoaWEB: TStringField;
    qryPessoaDATACADASTRO: TDateField;
    qryPessoaDATATUALIZACAO: TDateField;
    qryPessoaRG: TStringField;
    dsrPessoa: TDatasourceMC;
    PageControl2: TPageControl;
    tbsGeral: TTabSheet;
    qryPessoaDATANASCIMENTO: TDateField;
    DBEditMC1: TDBEditMC;
    Label3: TLabel;
    Label5: TLabel;
    DBEditMC2: TDBEditMC;
    Label6: TLabel;
    DBEditMC3: TDBEditMC;
    Label7: TLabel;
    DBEditMC4: TDBEditMC;
    Label8: TLabel;
    DBEditMC5: TDBEditMC;
    DBEditMC6: TDBEditMC;
    Label9: TLabel;
    DBEditMC7: TDBEditMC;
    Label10: TLabel;
    DBLookupComboBoxMC1: TDBLookupComboBoxMC;
    DBLookupComboBoxMC2: TDBLookupComboBoxMC;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEditMC8: TDBEditMC;
    DBEditMC9: TDBEditMC;
    Label14: TLabel;
    DBEditMC10: TDBEditMC;
    Label15: TLabel;
    DBRadioGroupMC1: TDBRadioGroupMC;
    qryPessoaSEXO: TStringField;
    Label16: TLabel;
    DBLookupComboBoxMC3: TDBLookupComboBoxMC;
    GroupBox1: TGroupBox;
    DBRichEditMC1: TDBRichEditMC;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
  private
    { Private declarations }
  public
    { Public declarations } 
  end;
  

var
  _frmCadPaciente: T_frmCadPaciente;

implementation

uses uToolFunc, uDM;

{$R *.dfm}

end.
