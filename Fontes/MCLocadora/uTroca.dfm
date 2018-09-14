object _frmTroca: T_frmTroca
  Left = 116
  Top = 171
  BorderStyle = bsNone
  ClientHeight = 201
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMC1: TPanelMC
    Left = 0
    Top = 0
    Width = 455
    Height = 201
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      455
      201)
    object LabelMC1: TLabelMC
      Left = 5
      Top = 137
      Width = 32
      Height = 13
      Caption = 'Motivo'
    end
    object PanelMC2: TPanelMC
      Left = 1
      Top = 1
      Width = 453
      Height = 24
      Align = alTop
      Caption = 'Troca'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        453
        24)
      object lblFechar: TLabelMC
        Left = 438
        Top = 1
        Width = 12
        Height = 23
        Cursor = crHandPoint
        Hint = 'Fecha a janela'
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = 'X'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        OnClick = lblFecharClick
        Botao = tlBotao
      end
    end
    object ToolBar1: TToolBar
      Left = 293
      Top = 177
      Width = 160
      Height = 22
      Align = alNone
      Anchors = [akTop, akRight]
      ButtonHeight = 21
      ButtonWidth = 79
      Customizable = True
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      ShowCaptions = True
      TabOrder = 1
      Transparent = False
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Cursor = crHandPoint
        Caption = '&OK'
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 79
        Top = 0
        Cursor = crHandPoint
        Caption = '    &Cancelar    '
        ImageIndex = 1
        OnClick = ToolButton2Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 3
      Top = 28
      Width = 446
      Height = 50
      Caption = ' Filme devolvido '
      TabOrder = 2
      object txtCodigoDevolvido: TEditMC
        Tag = 2
        Left = 3
        Top = 21
        Width = 85
        Height = 21
        TabOrder = 0
        OnChange = txtCodigoDevolvidoChange
      end
      object txtFilmeDevolvido: TEditMC
        Tag = 2
        Left = 91
        Top = 21
        Width = 271
        Height = 21
        TabStop = False
        Color = 14743551
        ReadOnly = True
        TabOrder = 1
        Requerido = True
      end
      object txtPrecoDevolvido: TEditMC
        Tag = 2
        Left = 365
        Top = 21
        Width = 73
        Height = 21
        TabStop = False
        Color = 14743551
        ReadOnly = True
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 3
      Top = 84
      Width = 446
      Height = 50
      Caption = ' Filme retirado '
      TabOrder = 3
      object SpeedButton1: TSpeedButton
        Left = 89
        Top = 22
        Width = 22
        Height = 19
        Cursor = crHandPoint
        Hint = 'Localiza e insere nova cidade'
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C583E383E373A173A163AF639F539D435D435B435
          B331CE391F7C1F7CCE3914525B67BF6B9F679F637F637F5F7F5B5F575F575F53
          3F57CE391F7C1F7C0B7FAA591452BF6BBF6B9F679F637F637F5F7F5B5F575F57
          5F57CE391F7C1F7C1F7C887EAA597452BF6BBF6B9F679F637F637F5F7F5B5F57
          5F5BCE391F7C1F7C1F7C1F7C0B7FAA595B67BF6B1C5B7E639F637F637F5F7F5B
          5F5BCE391F7C1F7C1F7C1F7C7B6FF76235465F57FF67FF6B9F671C5B7F637F5F
          5F5FCE391F7C1F7C1F7C1F7C9D73BF735F57BF5BFF6FFF77FF7F9E5F9F637F5F
          7F5FCE391F7C1F7C1F7C1F7CBD771B5BFF639F5BFF6FFF7BFF7BFF6B1C5B9F63
          7F63CE391F7C1F7C1F7C1F7CBD77BA56FF63BF5FFF67FF6FFF6FFF671C5B9F67
          7F63CE391F7C1F7C1F7C1F7CDE7B9D6FFF73DF779F5B9F5B9F5B7F57BF6B9F6B
          7F63CE391F7C1F7C1F7C1F7CDE7BFF7F784EFF7FFF67BF5F9F5B784EBF6FBF6B
          7F63CE391F7C1F7C1F7C1F7CDE7BFF7FFF7F3C633642BA527E6BDF73BF6F7F63
          FF5ECE391F7C1F7C1F7C1F7CFF7FFF7FFF7FFF7FFF7FFF7FFF7BDF77B335B335
          B335CE391F7C1F7C1F7C1F7CFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7BD4359B42
          57461F7C1F7C1F7C1F7C1F7CFF7FFF7FFF7FFF7FFF7FFF7FDE7BDF7BB335984A
          1F7C1F7C1F7C}
        OnClick = SpeedButton1Click
      end
      object txtCodigoRetirado: TEditMC
        Tag = 2
        Left = 3
        Top = 21
        Width = 85
        Height = 21
        TabOrder = 0
        OnChange = txtCodigoRetiradoChange
      end
      object txtFilmeRetirado: TEditMC
        Tag = 2
        Left = 112
        Top = 21
        Width = 253
        Height = 21
        TabStop = False
        Color = 14743551
        ReadOnly = True
        TabOrder = 1
        Requerido = True
      end
      object txtPrecoRetirado: TEditMC
        Tag = 2
        Left = 368
        Top = 21
        Width = 72
        Height = 21
        TabStop = False
        Color = 14743551
        ReadOnly = True
        TabOrder = 2
      end
    end
    object txtmotivo: TEditMC
      Tag = 2
      Left = 3
      Top = 151
      Width = 444
      Height = 21
      TabOrder = 4
      Requerido = True
      Rotulo = LabelMC1
    end
  end
  object qryItens: TZQueryMC
    AfterOpen = qryItensAfterOpen
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBITEMALUGUEL'
      'WHERE CODALUGUEL=:CODALUGUEL')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODALUGUEL'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted, usDeleted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 24
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODALUGUEL'
        ParamType = ptUnknown
      end>
    object qryItensCODITEMALUG: TIntegerField
      FieldName = 'CODITEMALUG'
      Required = True
    end
    object qryItensCODALUGUEL: TIntegerField
      FieldName = 'CODALUGUEL'
      Required = True
    end
    object qryItensSUBCOD: TStringField
      FieldName = 'SUBCOD'
      Required = True
      Size = 13
    end
    object qryItensVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object qryItensDEVOLVE: TStringField
      FieldName = 'DEVOLVE'
      Required = True
      Size = 3
    end
    object qryItensCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
    end
    object qryItensNome: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome'
      LookupDataSet = qryFilmeLocados
      LookupKeyFields = 'CODFILME'
      LookupResultField = 'FL_NOME'
      KeyFields = 'CODFILME'
      Size = 45
      Lookup = True
    end
  end
  object qryFilme: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'SELECT FT.*, FL.NOME AS FL_NOME, PR.VALOR AS PR_VALOR FROM TBFIT' +
        'A FT, TBFILME FL, TBPRECO PR'
      
        'WHERE FT.CODFILME=FL.CODFILME AND PR.CODPRECO=FL.CODPRECO AND DI' +
        'SPONIVEL=:DISPONIVEL')
    ParamCheck = True
    Params = <
      item
        DataType = ftString
        Name = 'DISPONIVEL'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 52
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'DISPONIVEL'
        ParamType = ptUnknown
      end>
    object qryFilmeSUBCOD: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'SUBCOD'
      Required = True
      Size = 13
    end
    object qryFilmeCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
      Visible = False
    end
    object qryFilmeDISPONIVEL: TStringField
      DisplayLabel = 'Dispon'#237'vel'
      FieldName = 'DISPONIVEL'
      Required = True
      Visible = False
      Size = 3
    end
    object qryFilmeBARCODE: TStringField
      DisplayLabel = 'C'#243'digo de barras'
      FieldName = 'BARCODE'
      Visible = False
      Size = 40
    end
    object qryFilmeFL_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'FL_NOME'
      Required = True
      Size = 50
    end
    object qryFilmePR_VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'PR_VALOR'
      Required = True
      currency = True
    end
  end
  object qryHistorico: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBHISTORICO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    TableName = 'TBHISTORICO'
    FieldKey = 'CODHISTORICO'
    Conexao = DM.db
    Left = 82
    Top = 8
    object qryHistoricoCODHISTORICO: TIntegerField
      FieldName = 'CODHISTORICO'
      Required = True
    end
    object qryHistoricoCODFICHA: TIntegerField
      FieldName = 'CODFICHA'
      Required = True
    end
    object qryHistoricoCODFILME: TIntegerField
      FieldName = 'CODFILME'
    end
    object qryHistoricoDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
    end
    object qryHistoricoDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
    end
    object qryHistoricoATRASO: TStringField
      FieldName = 'ATRASO'
      Size = 3
    end
    object qryHistoricoCODSOCIO: TIntegerField
      FieldName = 'CODSOCIO'
    end
    object qryHistoricoQTD: TIntegerField
      FieldName = 'QTD'
    end
    object qryHistoricoTROCA: TStringField
      FieldName = 'TROCA'
      Size = 3
    end
    object qryHistoricoMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 255
    end
    object qryHistoricoVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object qryFilmeLocados: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'SELECT FT.*, FL.NOME AS FL_NOME, PR.VALOR AS PR_VALOR FROM TBFIT' +
        'A FT, TBFILME FL, TBPRECO PR'
      
        'WHERE FT.CODFILME=FL.CODFILME AND PR.CODPRECO=FL.CODPRECO AND DI' +
        'SPONIVEL='#39'N'#227'o'#39)
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 24
    Top = 40
    object StringField1: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'SUBCOD'
      Required = True
      Size = 13
    end
    object IntegerField1: TIntegerField
      FieldName = 'CODFILME'
      Required = True
      Visible = False
    end
    object StringField2: TStringField
      DisplayLabel = 'Dispon'#237'vel'
      FieldName = 'DISPONIVEL'
      Required = True
      Visible = False
      Size = 3
    end
    object StringField3: TStringField
      DisplayLabel = 'C'#243'digo de barras'
      FieldName = 'BARCODE'
      Size = 40
    end
    object StringField4: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'FL_NOME'
      Required = True
      Size = 50
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'PR_VALOR'
      Required = True
      DisplayFormat = '#,##0.00'
      currency = True
    end
  end
end
