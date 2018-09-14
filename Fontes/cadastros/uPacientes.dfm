inherited _frmCadPaciente: T_frmCadPaciente
  Left = -1
  Top = 16
  Width = 798
  Height = 547
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 790
    inherited Shape1: TShape
      Width = 612
    end
    inherited lblFechar: TLabel
      Left = 778
    end
    inherited Panel4: TPanel
      inherited Label1: TLabel
        Hint = 'MedCli - Cadatro de Pacientes'
        Caption = 'Pacientes'
      end
    end
  end
  inherited Panel2: TPanel
    Height = 439
    inherited Shape2: TShape
      Height = 439
    end
    inherited Panel7: TPanel
      Top = 267
    end
  end
  inherited Panel3: TPanel
    Top = 468
    Width = 790
    inherited Shape3: TShape
      Width = 790
    end
    inherited tbPadrao: TToolBar
      Left = 270
    end
  end
  inherited Panel5: TPanel
    Width = 613
    Height = 439
    inherited Shape5: TShape
      Width = 611
      Height = 437
    end
    inherited PageControl1: TPageControl
      Width = 611
      Height = 437
      ActivePage = tbsDetalhes
      inherited tbsGrid: TTabSheet
        inherited DBGridMC1: TDBGridMC
          Width = 603
          Height = 406
        end
      end
      inherited tbsDetalhes: TTabSheet
        inherited Panel8: TPanel
          Width = 603
          Height = 406
          object PageControl2: TPageControl
            Left = 1
            Top = 1
            Width = 601
            Height = 404
            ActivePage = TabSheet2
            Align = alClient
            TabOrder = 0
            object tbsGeral: TTabSheet
              Caption = 'Geral'
              object Label3: TLabel
                Left = 0
                Top = 10
                Width = 33
                Height = 13
                Caption = 'C'#243'digo'
              end
              object Label5: TLabel
                Left = 75
                Top = 10
                Width = 28
                Height = 13
                Caption = 'Nome'
              end
              object Label6: TLabel
                Left = 335
                Top = 10
                Width = 16
                Height = 13
                Caption = 'RG'
              end
              object Label7: TLabel
                Left = 426
                Top = 10
                Width = 20
                Height = 13
                Caption = 'CPF'
              end
              object Label8: TLabel
                Left = 508
                Top = 10
                Width = 56
                Height = 13
                Caption = 'Nascimento'
              end
              object Label9: TLabel
                Left = 0
                Top = 50
                Width = 46
                Height = 13
                Caption = 'Endere'#231'o'
              end
              object Label10: TLabel
                Left = 224
                Top = 50
                Width = 27
                Height = 13
                Caption = 'Bairro'
              end
              object Label11: TLabel
                Left = 330
                Top = 50
                Width = 14
                Height = 13
                Caption = 'UF'
              end
              object Label12: TLabel
                Left = 375
                Top = 50
                Width = 33
                Height = 13
                Caption = 'Cidade'
              end
              object Label13: TLabel
                Left = 520
                Top = 50
                Width = 21
                Height = 13
                Caption = 'CEP'
              end
              object Label14: TLabel
                Left = 0
                Top = 90
                Width = 42
                Height = 13
                Caption = 'Telefone'
              end
              object Label15: TLabel
                Left = 107
                Top = 90
                Width = 32
                Height = 13
                Caption = 'Celular'
              end
              object Label16: TLabel
                Left = 383
                Top = 90
                Width = 43
                Height = 13
                Caption = 'Profiss'#227'o'
              end
              object DBEditMC1: TDBEditMC
                Left = 0
                Top = 24
                Width = 73
                Height = 21
                TabOrder = 0
              end
              object DBEditMC2: TDBEditMC
                Left = 75
                Top = 24
                Width = 259
                Height = 21
                TabOrder = 1
              end
              object DBEditMC3: TDBEditMC
                Left = 335
                Top = 24
                Width = 89
                Height = 21
                TabOrder = 2
              end
              object DBEditMC4: TDBEditMC
                Left = 426
                Top = 24
                Width = 81
                Height = 21
                TabOrder = 3
              end
              object DBEditMC5: TDBEditMC
                Left = 508
                Top = 24
                Width = 83
                Height = 21
                TabOrder = 4
              end
              object DBEditMC6: TDBEditMC
                Left = 0
                Top = 64
                Width = 222
                Height = 21
                TabOrder = 5
              end
              object DBEditMC7: TDBEditMC
                Left = 224
                Top = 64
                Width = 104
                Height = 21
                TabOrder = 6
              end
              object DBLookupComboBoxMC1: TDBLookupComboBoxMC
                Left = 374
                Top = 64
                Width = 145
                Height = 21
                TabOrder = 7
              end
              object DBLookupComboBoxMC2: TDBLookupComboBoxMC
                Left = 330
                Top = 64
                Width = 42
                Height = 21
                TabOrder = 8
              end
              object DBEditMC8: TDBEditMC
                Left = 520
                Top = 64
                Width = 71
                Height = 21
                TabOrder = 9
              end
              object DBEditMC9: TDBEditMC
                Left = 0
                Top = 104
                Width = 105
                Height = 21
                TabOrder = 10
              end
              object DBEditMC10: TDBEditMC
                Left = 107
                Top = 104
                Width = 105
                Height = 21
                TabOrder = 11
              end
              object DBRadioGroupMC1: TDBRadioGroupMC
                Left = 216
                Top = 95
                Width = 162
                Height = 32
                Caption = ' Sexo '
                Columns = 2
                Items.Strings = (
                  '&Masculino'
                  '&Feminino')
                TabOrder = 12
                Values.Strings = (
                  'M'
                  'F')
              end
              object DBLookupComboBoxMC3: TDBLookupComboBoxMC
                Left = 382
                Top = 104
                Width = 210
                Height = 21
                TabOrder = 13
              end
              object GroupBox1: TGroupBox
                Left = 0
                Top = 136
                Width = 593
                Height = 169
                Caption = ' Observa'#231#245'es '
                TabOrder = 14
                object DBRichEditMC1: TDBRichEditMC
                  Left = 8
                  Top = 16
                  Width = 577
                  Height = 145
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Dados Cl'#237'nicos'
              ImageIndex = 1
            end
            object TabSheet2: TTabSheet
              Caption = 'Rem'#233'dios'
              ImageIndex = 2
            end
            object TabSheet3: TTabSheet
              Caption = 'Alergias'
              ImageIndex = 3
            end
            object TabSheet4: TTabSheet
              Caption = 'Conv'#234'nios'
              ImageIndex = 4
            end
            object TabSheet5: TTabSheet
              Caption = 'Exames'
              ImageIndex = 5
            end
            object TabSheet6: TTabSheet
              Caption = 'Hist'#243'rico Cl'#237'nico'
              ImageIndex = 6
            end
          end
        end
      end
    end
  end
  inherited cdsGrid: TClientDataSetMC
    object cdsGridCODPACIENTE: TIntegerField
      FieldName = 'CODPACIENTE'
      Required = True
      Visible = False
    end
    object cdsGridCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
      Visible = False
    end
    object cdsGridNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object cdsGridCPFCNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
    object cdsGridRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object cdsGridEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 70
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT'
      '    PA.CODPACIENTE, PA.CODPESSOA, NOME, CPFCNPJ, RG, EMAIL'
      'FROM TBPACIENTE PA, TBPESSOA PE'
      'WHERE PA.CODPESSOA=PE.CODPESSOA')
    object qryGridCODPACIENTE: TIntegerField
      FieldName = 'CODPACIENTE'
      Required = True
    end
    object qryGridCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryGridCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
    object qryGridRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object qryGridEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 70
    end
  end
  inherited qryCad: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBPACIENTE')
    Left = 4
    object qryCadCODPACIENTE: TIntegerField
      FieldName = 'CODPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
  end
  inherited dsrCad: TDatasourceMC
    Left = 4
  end
  object qryPessoa: TZQueryMC
    Tag = 1
    Connection = DM.db
    CachedUpdates = False
    Active = True
    RequestLive = False
    SQL.Strings = (
      'SELECT * FROM TBPESSOA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 33
    Top = 104
    object qryPessoaCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPessoaCODCIDRESID: TIntegerField
      FieldName = 'CODCIDRESID'
      Required = True
    end
    object qryPessoaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object qryPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 45
    end
    object qryPessoaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 25
    end
    object qryPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 35
    end
    object qryPessoaTEL: TStringField
      FieldName = 'TEL'
      Size = 13
    end
    object qryPessoaCEL: TStringField
      FieldName = 'CEL'
      Size = 13
    end
    object qryPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qryPessoaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryPessoaTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Required = True
      Size = 1
    end
    object qryPessoaCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
    object qryPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 70
    end
    object qryPessoaWEB: TStringField
      FieldName = 'WEB'
      Size = 70
    end
    object qryPessoaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object qryPessoaDATATUALIZACAO: TDateField
      FieldName = 'DATATUALIZACAO'
      Required = True
    end
    object qryPessoaRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object qryPessoaDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object qryPessoaSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
  end
  object dsrPessoa: TDatasourceMC
    DataSet = qryPessoa
    Left = 33
    Top = 132
  end
end
