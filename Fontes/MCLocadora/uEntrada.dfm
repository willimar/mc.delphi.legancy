object _frmEntrada: T_frmEntrada
  Left = 293
  Top = 157
  BorderStyle = bsNone
  ClientHeight = 491
  ClientWidth = 432
  Color = clSkyBlue
  Constraints.MaxHeight = 525
  Constraints.MaxWidth = 440
  Constraints.MinHeight = 525
  Constraints.MinWidth = 440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMC1: TPanelMC
    Left = 0
    Top = 0
    Width = 432
    Height = 491
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      432
      491)
    object PanelMC2: TPanelMC
      Left = 1
      Top = 1
      Width = 430
      Height = 24
      Align = alTop
      Caption = 'Entrada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        430
        24)
      object lblFechar: TLabelMC
        Left = 415
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
    object PanelMC3: TPanelMC
      Left = 4
      Top = 144
      Width = 425
      Height = 203
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      object dbgFitas: TDBGridMC
        Tag = 2
        Left = 1
        Top = 1
        Width = 423
        Height = 201
        Align = alClient
        BorderStyle = bsNone
        Color = 14739951
        DataSource = dsrItens
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgFitasDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'SUBCOD'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fime'
            ReadOnly = True
            Width = 275
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEVOLVE'
            Width = 57
            Visible = True
          end>
      end
    end
    object PanelMC5: TPanelMC
      Left = 1
      Top = 349
      Width = 430
      Height = 141
      Align = alBottom
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        430
        141)
      object ToolBar1: TToolBar
        Left = 268
        Top = 115
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
        TabOrder = 0
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
      object Panel2: TPanel
        Left = 31
        Top = 1
        Width = 372
        Height = 108
        BevelInner = bvLowered
        BevelOuter = bvSpace
        Caption = 'Panel1'
        TabOrder = 1
        object Shape2: TShape
          Left = 2
          Top = 2
          Width = 368
          Height = 104
          Align = alClient
          Brush.Color = clCream
          Pen.Color = 13882323
        end
        object Label11: TLabel
          Left = 4
          Top = 5
          Width = 108
          Height = 13
          AutoSize = False
          Caption = 'Data para devolu'#231#227'o: '
          Transparent = False
        end
        object lblValorLoc: TDBText
          Left = 96
          Top = 41
          Width = 89
          Height = 13
          DataField = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object Label25: TLabel
          Left = 4
          Top = 41
          Width = 93
          Height = 13
          AutoSize = False
          Caption = 'Valor da Loca'#231#227'o: '
          Transparent = False
        end
        object Label26: TLabel
          Left = 5
          Top = 55
          Width = 57
          Height = 13
          AutoSize = False
          Caption = 'Valor pago: '
          Transparent = False
        end
        object Label27: TLabel
          Left = 187
          Top = 5
          Width = 76
          Height = 13
          AutoSize = False
          Caption = 'Data de sa'#237'da: '
          Transparent = False
        end
        object lblSaida: TDBText
          Left = 262
          Top = 5
          Width = 105
          Height = 13
          DataField = 'RETIRADA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object Label1: TLabel
          Left = 187
          Top = 35
          Width = 180
          Height = 68
          AutoSize = False
          Transparent = False
        end
        object Label2: TLabel
          Left = 5
          Top = 20
          Width = 180
          Height = 19
          AutoSize = False
          Transparent = False
        end
        object Label4: TLabel
          Left = 5
          Top = 90
          Width = 66
          Height = 13
          AutoSize = False
          Caption = 'Valor devido: '
          Transparent = False
        end
        object Label5: TLabel
          Left = 5
          Top = 69
          Width = 180
          Height = 20
          AutoSize = False
          Transparent = False
        end
        object lblDevolucao: TDBText
          Left = 110
          Top = 5
          Width = 75
          Height = 13
          DataField = 'ENTREGA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object lblValorPago: TDBText
          Left = 62
          Top = 55
          Width = 123
          Height = 13
          DataField = 'PAGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object lblValorDevido: TDBText
          Left = 71
          Top = 90
          Width = 114
          Height = 13
          DataField = 'ValorDevido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object Label3: TLabel
          Left = 190
          Top = 80
          Width = 54
          Height = 13
          Caption = 'Valor pago:'
          Transparent = False
        end
        object Label6: TLabel
          Left = 186
          Top = 20
          Width = 87
          Height = 13
          AutoSize = False
          Caption = 'D'#233'bitos anteriores:'
          Transparent = False
        end
        object lblAnterio: TLabelMC
          Left = 275
          Top = 20
          Width = 92
          Height = 13
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object txtValor: TDBEditMC
          Tag = 2
          Left = 248
          Top = 77
          Width = 115
          Height = 21
          DataField = 'Valor'
          DataSource = dsrValorPago
          TabOrder = 0
          Requerido = True
        end
      end
    end
    inline fraDadosCliente1: TfraDadosCliente
      Left = 26
      Top = 30
      Width = 376
      Height = 109
      TabOrder = 3
      inherited Panel1: TPanel
        inherited DBText1: TDBText
          DataField = 'P_NOME'
        end
        inherited DBText2: TDBText
          DataField = 'ENDERECO'
        end
        inherited DBText3: TDBText
          DataField = 'BAIRRO'
        end
        inherited DBText4: TDBText
          DataField = 'CID_NOME'
        end
        inherited DBText5: TDBText
          DataField = 'CODUF'
        end
        inherited Label21: TLabel
          AutoSize = False
          Caption = ''
        end
        inherited DBText9: TDBText
          DataField = 'TEL'
        end
        inherited DBText10: TDBText
          DataField = 'CEL'
        end
        inherited DBText11: TDBText
          DataField = ''
        end
        inherited lblEmail: TDBText
          DataField = 'EMAIL'
        end
        inherited lblWeb: TDBText
          DataField = 'WEB'
        end
        inherited DBText8: TDBText
          DataField = 'DATANASCIMENTO'
        end
      end
    end
  end
  object qryFilme1: TZQueryMC
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
    Left = 356
    Top = 376
    object qryFilme1SUBCOD: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'SUBCOD'
      Required = True
      Size = 13
    end
    object qryFilme1CODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
      Visible = False
    end
    object qryFilme1DISPONIVEL: TStringField
      DisplayLabel = 'Dispon'#237'vel'
      FieldName = 'DISPONIVEL'
      Required = True
      Visible = False
      Size = 3
    end
    object qryFilme1BARCODE: TStringField
      DisplayLabel = 'C'#243'digo de barras'
      FieldName = 'BARCODE'
      Visible = False
      Size = 40
    end
    object qryFilme1FL_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'FL_NOME'
      Required = True
      Size = 50
    end
    object qryFilme1PR_VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'PR_VALOR'
      Required = True
      DisplayFormat = '#,##0.00'
      currency = True
    end
  end
  object dspFilme: TDataSetProviderMC
    DataSet = qryFilme1
    Left = 356
    Top = 406
  end
  object qryFilme: TClientDataSetMC
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilme'
    Left = 356
    Top = 437
    object qryFilmeSUBCOD: TStringField
      FieldName = 'SUBCOD'
      Required = True
      Size = 13
    end
    object qryFilmeCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
    end
    object qryFilmeDISPONIVEL: TStringField
      FieldName = 'DISPONIVEL'
      Required = True
      Size = 3
    end
    object qryFilmeBARCODE: TStringField
      FieldName = 'BARCODE'
      Visible = False
      Size = 40
    end
    object qryFilmeFL_NOME: TStringField
      FieldName = 'FL_NOME'
      Required = True
      Size = 50
    end
    object qryFilmePR_VALOR: TFloatField
      FieldName = 'PR_VALOR'
      Required = True
    end
  end
  object qryItens: TZQueryMC
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
    Left = 23
    Top = 224
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
  end
  object dspItens: TDataSetProviderMC
    DataSet = qryItens
    ResolveToDataSet = True
    Options = [poAllowMultiRecordUpdates]
    Left = 52
    Top = 224
  end
  object cdsItens: TClientDataSetMC
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspItens'
    Left = 81
    Top = 224
    object cdsItensCODITEMALUG: TIntegerField
      FieldName = 'CODITEMALUG'
      Required = True
      Visible = False
    end
    object cdsItensCODALUGUEL: TIntegerField
      FieldName = 'CODALUGUEL'
      Required = True
      Visible = False
    end
    object cdsItensSUBCOD: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'SUBCOD'
      Required = True
      Size = 13
    end
    object cdsItensVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      currency = True
    end
    object cdsItensDEVOLVE: TStringField
      DisplayLabel = 'Devolve'
      FieldName = 'DEVOLVE'
      Required = True
      Visible = False
      Size = 3
    end
    object cdsItensCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
      Visible = False
    end
    object cdsItensFime: TStringField
      FieldKind = fkLookup
      FieldName = 'Fime'
      LookupDataSet = qryLookupsFilmes
      LookupKeyFields = 'CODFILME'
      LookupResultField = 'NOME'
      KeyFields = 'CODFILME'
      Size = 45
      Lookup = True
    end
    object cdsItensTotal: TAggregateField
      FieldName = 'Total'
      Active = True
      currency = True
      Expression = 'SUM(VALOR)'
    end
  end
  object dsrItens: TDatasourceMC
    DataSet = cdsItens
    Left = 110
    Top = 224
  end
  object cdsValorPago: TClientDataSetMC
    Aggregates = <>
    Params = <>
    Left = 188
    Top = 384
    object cdsValorPagoValor: TFloatField
      DisplayLabel = 'Valor pago'
      FieldName = 'Valor'
      currency = True
    end
  end
  object dsrValorPago: TDatasourceMC
    DataSet = cdsValorPago
    Left = 188
    Top = 413
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
    Left = 324
    Top = 280
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
  object qryLookupsFilmes: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT CODFILME, NOME FROM TBFILME')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 284
    Top = 280
    object qryLookupsFilmesCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
    end
    object qryLookupsFilmesNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
  end
end
