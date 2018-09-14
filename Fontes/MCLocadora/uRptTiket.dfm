object _frmTiket: T_frmTiket
  Left = 469
  Top = 178
  Width = 274
  Height = 414
  Caption = '_frmTiket'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rptTiket: TRLReport
    Left = 0
    Top = 0
    Width = 265
    Height = 378
    DataSource = dsrTiket
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 0.000000000000000000
    Margins.TopMargin = 0.000000000000000000
    Margins.RightMargin = 0.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 70.000000000000000000
    PageSetup.PaperHeight = 100.000000000000000000
    PageSetup.ForceEmulation = True
    PrintDialog = False
    BeforePrint = rptTiketBeforePrint
    object RLBand1: TRLBand
      Left = 0
      Top = 0
      Width = 265
      Height = 116
      BandType = btHeader
      object RLLabel2: TRLLabel
        Left = 1
        Top = 97
        Width = 36
        Height = 13
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 73
        Top = 97
        Width = 27
        Height = 13
        Caption = 'Filme'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object txtEmpresa: TRLLabel
        Left = 0
        Top = 3
        Width = 266
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'Mundo Conecto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object txtTelefone: TRLLabel
        Left = 54
        Top = 23
        Width = 209
        Height = 13
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 0
        Top = 23
        Width = 49
        Height = 13
        Caption = 'Telefone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 1
        Top = 40
        Width = 46
        Height = 13
        Caption = 'Socio(a):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 56
        Top = 40
        Width = 209
        Height = 13
        AutoSize = False
        DataField = 'SOCIO'
        DataSource = dsrTiket
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 1
        Top = 59
        Width = 33
        Height = 13
        Caption = 'Saida:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 53
        Top = 59
        Width = 212
        Height = 13
        AutoSize = False
        DataField = 'RETIRADA'
        DataSource = dsrTiket
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 1
        Top = 78
        Width = 45
        Height = 13
        Caption = 'Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 53
        Top = 78
        Width = 212
        Height = 13
        AutoSize = False
        DataField = 'ENTREGA'
        DataSource = dsrTiket
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 0
      Top = 143
      Width = 265
      Height = 70
      BandType = btSummary
      object RLLabel1: TRLLabel
        Left = 1
        Top = 2
        Width = 65
        Height = 13
        Caption = 'Valor total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 1
        Top = 19
        Width = 66
        Height = 13
        Caption = 'Valor pago:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 1
        Top = 37
        Width = 76
        Height = 13
        Caption = 'Valor devido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 0
        Top = 60
        Width = 265
        Height = 10
        Align = faBottom
        Alignment = taCenter
        Caption = 'www.mundoconecto.eti.br'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtTotal: TRLLabel
        Left = 80
        Top = 2
        Width = 186
        Height = 13
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object txtPago: TRLLabel
        Left = 80
        Top = 19
        Width = 186
        Height = 13
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object txtDevido: TRLLabel
        Left = 80
        Top = 37
        Width = 186
        Height = 13
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 0
      Top = 116
      Width = 265
      Height = 27
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 66
        Height = 11
        AutoSize = False
        DataField = 'SUBCOD'
        DataSource = dsrTiket
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 72
        Top = 0
        Width = 193
        Height = 11
        AutoSize = False
        DataField = 'FILME'
        DataSource = dsrTiket
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 0
        Top = 14
        Width = 265
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALORFILME'
        DataSource = dsrTiket
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object qryTiket: TZQueryMC
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'SELECT'
      
        '    P.NOME AS SOCIO, RETIRADA, ENTREGA, SUBCOD, FL.NOME AS FILME' +
        ', IA.VALOR AS VALORFILME,'
      '    A.VALOR AS TOTAL, PAGO'
      'FROM TBITEMALUGUEL IA, TBALUGUEL A, TBPESSOA P, TBFILME FL'
      
        'WHERE A.CODALUGUEL=IA.CODALUGUEL AND P.CODPESSOA=A.CODPESSOA AND' +
        ' FL.CODFILME=IA.CODFILME'
      'AND IA.CODALUGUEL=:CODALUGUEL')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODALUGUEL'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 120
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODALUGUEL'
        ParamType = ptUnknown
      end>
    object qryTiketSOCIO: TStringField
      FieldName = 'SOCIO'
      Required = True
      Size = 45
    end
    object qryTiketRETIRADA: TDateField
      FieldName = 'RETIRADA'
      Required = True
      DisplayFormat = 'dddd, dd "de" MMMM "de" yyyy'
    end
    object qryTiketENTREGA: TDateField
      FieldName = 'ENTREGA'
      Required = True
      DisplayFormat = 'dddd, dd "de" MMMM "de" yyyy'
    end
    object qryTiketSUBCOD: TStringField
      FieldName = 'SUBCOD'
      Required = True
      Size = 13
    end
    object qryTiketFILME: TStringField
      FieldName = 'FILME'
      Required = True
      Size = 50
    end
    object qryTiketVALORFILME: TFloatField
      FieldName = 'VALORFILME'
      Required = True
      currency = True
    end
    object qryTiketTOTAL: TFloatField
      FieldName = 'TOTAL'
      Required = True
      currency = True
    end
    object qryTiketPAGO: TFloatField
      FieldName = 'PAGO'
      Required = True
      currency = True
    end
  end
  object dsrTiket: TDatasourceMC
    AutoEdit = False
    DataSet = qryTiket
    Left = 120
    Top = 176
  end
  object Filtro: TRLDraftFilter
    DeviceKind = dkPrinterPort
    DevicePath = 'C:\novo.txt'
    Left = 120
    Top = 112
  end
end
