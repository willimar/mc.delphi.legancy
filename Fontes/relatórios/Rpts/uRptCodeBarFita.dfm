inherited _frmRptCodeBarFita: T_frmRptCodeBarFita
  Left = 182
  Top = 229
  Caption = '_frmRptCodeBarFita'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited rpt: TRLReport
    Left = 4
    DataSource = dsrCodigos
    inherited RLBand1: TRLBand
      Visible = False
    end
    inherited RLBand2: TRLBand
      Top = 228
      Visible = False
    end
    object rlDetail: TRLDetailGrid
      Left = 38
      Top = 134
      Width = 718
      Height = 94
      ColCount = 6
      object RLDBText1: TRLDBText
        Left = 3
        Top = 77
        Width = 116
        Height = 13
        Alignment = taCenter
        AutoSize = False
        DataField = 'SUBCOD'
        DataSource = dsrCodigos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLDBText1BeforePrint
      end
      object rliBarras: TRLImage
        Left = 11
        Top = 3
        Width = 96
        Height = 73
      end
    end
  end
  object qryCodigos: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT SUBCOD FROM TBFITA ORDER BY CODFILME, SUBCOD')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 192
    Top = 299
    object qryCodigosSUBCOD: TStringField
      FieldName = 'SUBCOD'
      Required = True
      Size = 13
    end
  end
  object dsrCodigos: TDatasourceMC
    DataSet = qryCodigos
    Left = 192
    Top = 328
  end
end
