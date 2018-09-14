inherited _frmRptAniverssariantes: T_frmRptAniverssariantes
  Left = 103
  Top = 220
  Caption = '_frmRptAniverssariantes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited rpt: TRLReport
    DataSource = dsrAniverssariantes
    inherited RLBand1: TRLBand
      inherited txtTitulo: TRLLabel
        Caption = 'Lista de aniverss'#225'riantes'
      end
      object RLLabel4: TRLLabel
        Left = 6
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
        Left = 86
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
        Left = 406
        Top = 80
        Width = 28
        Height = 14
        Caption = 'M'#234's'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 526
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
      object RLLabel8: TRLLabel
        Left = 622
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
    end
    inherited RLBand2: TRLBand
      Top = 148
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 134
      Width = 718
      Height = 14
      object txtCodigo: TRLDBText
        Left = 7
        Top = -1
        Width = 74
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'CODCLIENTE'
        DataSource = dsrAniverssariantes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object txtNome: TRLDBText
        Left = 85
        Top = -1
        Width = 316
        Height = 14
        AutoSize = False
        DataField = 'NOME'
        DataSource = dsrAniverssariantes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        BeforePrint = txtNomeBeforePrint
      end
      object txtDataNacimento: TRLDBText
        Left = 407
        Top = -1
        Width = 114
        Height = 14
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'DATANASCIMENTO'
        DataSource = dsrAniverssariantes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object txtTel: TRLDBText
        Left = 527
        Top = -1
        Width = 90
        Height = 14
        AutoSize = False
        DataField = 'TEL'
        DataSource = dsrAniverssariantes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object txtCel: TRLDBText
        Left = 623
        Top = -1
        Width = 90
        Height = 14
        AutoSize = False
        DataField = 'CEL'
        DataSource = dsrAniverssariantes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object qryAniverssariantes: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      
        '   C.CODCLIENTE, P.NOME, C.APELIDO, P.TEL, P.CEL, DATANASCIMENTO' +
        ', TIPOPESSOA'
      'FROM TBPESSOA P, TBCLIENTE C'
      'WHERE C.CODPESSOA=P.CODPESSOA AND EMPRESA = '#39'N'#227'o'#39
      'AND EXTRACT(MONTH FROM DATANASCIMENTO) BETWEEN :INICIO AND :FIM'
      'ORDER BY EXTRACT(MONTH FROM DATANASCIMENTO)')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'INICIO'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'FIM'
        ParamType = ptUnknown
        Value = 12
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 136
    Top = 197
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INICIO'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'FIM'
        ParamType = ptUnknown
        Value = 12
      end>
    object qryAniverssariantesCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
      DisplayFormat = '000000'
    end
    object qryAniverssariantesNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryAniverssariantesAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 35
    end
    object qryAniverssariantesTEL: TStringField
      FieldName = 'TEL'
      Size = 13
    end
    object qryAniverssariantesCEL: TStringField
      FieldName = 'CEL'
      Size = 13
    end
    object qryAniverssariantesDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      DisplayFormat = 'MMMM'
    end
    object qryAniverssariantesTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Required = True
      Size = 1
    end
  end
  object dsrAniverssariantes: TDatasourceMC
    DataSet = qryAniverssariantes
    Left = 136
    Top = 226
  end
end
