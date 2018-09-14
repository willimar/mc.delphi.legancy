inherited _frmRptGenero: T_frmRptGenero
  Left = 80
  Top = 146
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited rpt: TRLReport
    DataSource = dsrGenero
    inherited RLBand1: TRLBand
      inherited txtTitulo: TRLLabel
        Height = 24
        Caption = 'Listagem de g'#234'neros'
      end
      inherited RLLabel3: TRLLabel
        Top = 23
      end
    end
    inherited RLBand2: TRLBand
      Top = 174
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 134
      Width = 718
      Height = 40
      object RLDBText1: TRLDBText
        Left = 8
        Top = 4
        Width = 697
        Height = 29
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object qryGenero: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBGENERO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 472
    Top = 347
    object qryGeneroCODGENERO: TIntegerField
      FieldName = 'CODGENERO'
      Required = True
    end
    object qryGeneroNOME: TStringField
      FieldName = 'NOME'
      Required = True
    end
  end
  object dsrGenero: TDatasourceMC
    DataSet = qryGenero
    Left = 472
    Top = 376
  end
end
