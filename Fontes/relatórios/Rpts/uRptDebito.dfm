inherited _frmRptDebito: T_frmRptDebito
  Left = 90
  Top = 180
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited rpt: TRLReport
    DataSource = dsrTitular
    inherited RLBand1: TRLBand
      inherited txtTitulo: TRLLabel
        Caption = 'Listagem de s'#243'cios em d'#233'bito'
      end
      object RLLabel4: TRLLabel
        Left = 8
        Top = 80
        Width = 47
        Height = 14
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 62
        Top = 80
        Width = 38
        Height = 14
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 382
        Top = 80
        Width = 56
        Height = 14
        Caption = 'Telefone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 478
        Top = 80
        Width = 45
        Height = 14
        Caption = 'Celular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 629
        Top = 79
        Width = 35
        Height = 14
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBand2: TRLBand
      Top = 265
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 134
      Width = 718
      Height = 82
      object RLDBText20: TRLDBText
        Left = 7
        Top = -1
        Width = 49
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'CODCLIENTE'
        DataSource = dsrTitular
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText21: TRLDBText
        Left = 61
        Top = -1
        Width = 315
        Height = 14
        AutoSize = False
        DataField = 'Nome'
        DataSource = dsrTitular
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText22: TRLDBText
        Left = 383
        Top = -1
        Width = 92
        Height = 14
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'TEL'
        DataSource = dsrTitular
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText23: TRLDBText
        Left = 479
        Top = -1
        Width = 92
        Height = 14
        AutoSize = False
        DataField = 'CEL'
        DataSource = dsrTitular
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText26: TRLDBText
        Left = 61
        Top = 27
        Width = 193
        Height = 14
        AutoSize = False
        DataField = 'ENDERECO'
        DataSource = dsrTitular
      end
      object RLDBText27: TRLDBText
        Left = 257
        Top = 27
        Width = 137
        Height = 14
        AutoSize = False
        DataField = 'BAIRRO'
        DataSource = dsrTitular
      end
      object RLDBText28: TRLDBText
        Left = 397
        Top = 27
        Width = 129
        Height = 14
        AutoSize = False
        DataField = 'NOME_1'
        DataSource = dsrTitular
      end
      object RLDBText29: TRLDBText
        Left = 529
        Top = 27
        Width = 29
        Height = 14
        AutoSize = False
        DataField = 'CODUF'
        DataSource = dsrTitular
      end
      object RLDBText30: TRLDBText
        Left = 562
        Top = 27
        Width = 85
        Height = 14
        AutoSize = False
        DataField = 'CEP'
        DataSource = dsrTitular
      end
      object RLLabel17: TRLLabel
        Left = 61
        Top = 13
        Width = 59
        Height = 14
        AutoSize = False
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 61
        Top = 41
        Width = 96
        Height = 14
        AutoSize = False
        Caption = 'Documenta'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText31: TRLDBText
        Left = 61
        Top = 55
        Width = 113
        Height = 14
        AutoSize = False
        DataField = 'RG'
        DataSource = dsrTitular
        Text = 'RG: '
      end
      object RLDBText32: TRLDBText
        Left = 175
        Top = 55
        Width = 178
        Height = 14
        AutoSize = False
        DataField = 'CPFCNPJ'
        DataSource = dsrTitular
        Text = 'CPF/CNPJ: '
      end
      object RLDBText33: TRLDBText
        Left = 357
        Top = 55
        Width = 348
        Height = 14
        AutoSize = False
        DataField = 'EMAIL'
        DataSource = dsrTitular
        Text = 'email: '
      end
      object RLLabel20: TRLLabel
        Left = 139
        Top = 67
        Width = 96
        Height = 14
        AutoSize = False
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object RLLabel21: TRLLabel
        Left = 429
        Top = 67
        Width = 48
        Height = 14
        AutoSize = False
        Caption = 'Sa'#237'da'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object RLLabel22: TRLLabel
        Left = 509
        Top = 67
        Width = 49
        Height = 14
        AutoSize = False
        Caption = 'Entrega'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object RLLabel23: TRLLabel
        Left = 589
        Top = 67
        Width = 36
        Height = 14
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object RLDBText1: TRLDBText
        Left = 630
        Top = 3
        Width = 85
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = dsrTitular
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 216
      Width = 718
      Height = 49
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        Visible = False
        object RLDBText2: TRLDBText
          Left = 138
          Top = 1
          Width = 287
          Height = 14
          AutoSize = False
          DataField = 'NOME'
          DataSource = dsrLocacao
        end
        object RLDBText3: TRLDBText
          Left = 429
          Top = 1
          Width = 76
          Height = 14
          AutoSize = False
          DataField = 'RETIRADA'
          DataSource = dsrLocacao
          DisplayMask = 'dd/MM/yyyy'
        end
        object RLDBText4: TRLDBText
          Left = 509
          Top = 1
          Width = 76
          Height = 14
          AutoSize = False
          DataField = 'ENTREGA'
          DataSource = dsrLocacao
          DisplayMask = 'dd/MM/yyyy'
        end
        object RLDBText5: TRLDBText
          Left = 589
          Top = 1
          Width = 116
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR'
          DataSource = dsrLocacao
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 16
        Width = 718
        Height = 15
        BandType = btColumnFooter
        object RLDBResult1: TRLDBResult
          Left = 625
          Top = 0
          Width = 80
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR'
          DataSource = dsrLocacao
          Info = riSum
        end
        object RLLabel10: TRLLabel
          Left = 573
          Top = 0
          Width = 34
          Height = 14
          AutoSize = False
          Caption = 'Total: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object qryTitular: TZQueryMC
    AfterScroll = qryTitularAfterScroll
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'SELECT'
      
        '    CODCLIENTE, P.NOME, P.ENDERECO, P.BAIRRO, CE.NOME, CE.CODUF,' +
        ' P.COMPLEMENTO, P.CEP,'
      
        '    P.TEL, P.CEL, P.RG, P.CPFCNPJ, P.EMAIL, P.DATACADASTRO, P.DA' +
        'TANASCIMENTO, P.SEXO,'
      '    D.VALOR'
      'FROM TBCLIENTE C'
      'LEFT JOIN TBPESSOA P ON P.CODPESSOA=C.CODPESSOA'
      'LEFT JOIN TBCIDADE CE ON CE.CODCIDADE=P.CODCIDRESID'
      'LEFT JOIN TBDEBITO D ON CODFICHA=CODCLIENTE'
      'WHERE TITULAR='#39'Sim'#39' AND D.VALOR > :VALOR')
    ParamCheck = True
    Params = <
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptUnknown
        Value = 0.000000000000000000
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 512
    Top = 291
    ParamData = <
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptUnknown
        Value = 0.000000000000000000
      end>
    object qryTitularCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object qryTitularNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryTitularENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 45
    end
    object qryTitularBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 35
    end
    object qryTitularNOME_1: TStringField
      FieldName = 'NOME_1'
      Required = True
      Size = 35
    end
    object qryTitularCODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object qryTitularCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 25
    end
    object qryTitularCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qryTitularTEL: TStringField
      FieldName = 'TEL'
      Size = 13
    end
    object qryTitularCEL: TStringField
      FieldName = 'CEL'
      Size = 13
    end
    object qryTitularRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object qryTitularCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
    object qryTitularEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 70
    end
    object qryTitularDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object qryTitularDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object qryTitularSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qryTitularVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
      currency = True
    end
  end
  object dsrTitular: TDatasourceMC
    DataSet = qryTitular
    Left = 512
    Top = 321
  end
  object qryLocacao: TZQueryMC
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'SELECT'
      '    P.NOME, A.RETIRADA, A.ENTREGA, (A.VALOR - PAGO) AS VALOR'
      'FROM TBALUGUEL A'
      'LEFT JOIN TBPESSOA P ON P.CODPESSOA=A.CODPESSOA'
      'LEFT JOIN TBCLIENTE C ON C.CODPESSOA=P.CODPESSOA'
      'WHERE COALESCE(CODTITULAR, CODCLIENTE)=:CODCLIENTE'
      'ORDER BY NOME')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCLIENTE'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 544
    Top = 291
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODCLIENTE'
        ParamType = ptUnknown
      end>
    object qryLocacaoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryLocacaoRETIRADA: TDateField
      FieldName = 'RETIRADA'
      Required = True
    end
    object qryLocacaoENTREGA: TDateField
      FieldName = 'ENTREGA'
      Required = True
    end
    object qryLocacaoVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
      Required = True
      currency = True
    end
  end
  object dsrLocacao: TDatasourceMC
    DataSet = qryLocacao
    Left = 544
    Top = 321
  end
end
