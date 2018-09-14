inherited _frmRptPreco: T_frmRptPreco
  Left = 68
  Top = 128
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited rpt: TRLReport
    DataSource = dsrPreco
    inherited RLBand1: TRLBand
      object RLLabel1: TRLLabel
        Left = 8
        Top = 82
        Width = 35
        Height = 13
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 616
        Top = 82
        Width = 32
        Height = 13
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBand2: TRLBand
      Top = 150
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 134
      Width = 718
      Height = 16
      object RLDBText1: TRLDBText
        Left = 8
        Top = 0
        Width = 569
        Height = 14
        AutoSize = False
        DataField = 'NOME'
        DataSource = dsrPreco
      end
      object RLDBText2: TRLDBText
        Left = 616
        Top = 0
        Width = 89
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = dsrPreco
      end
    end
  end
  object qryPreco: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBPRECO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 472
    Top = 307
    object qryPrecoCODPRECO: TIntegerField
      FieldName = 'CODPRECO'
      Required = True
    end
    object qryPrecoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryPrecoVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
      currency = True
    end
  end
  object dsrPreco: TDatasourceMC
    DataSet = qryPreco
    Left = 472
    Top = 339
  end
end
