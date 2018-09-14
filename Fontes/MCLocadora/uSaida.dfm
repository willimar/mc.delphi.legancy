object _frmSaida: T_frmSaida
  Left = 188
  Top = 118
  BorderIcons = [biSystemMenu]
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
  KeyPreview = True
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
      Caption = 'Sa'#237'das'
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
        OnClick = btnCancelarClick
        Botao = tlBotao
      end
    end
    inline fraDadosCliente1: TfraDadosCliente
      Left = 25
      Top = 27
      Width = 376
      Height = 109
      TabOrder = 1
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
    object PanelMC3: TPanelMC
      Left = 4
      Top = 144
      Width = 425
      Height = 203
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      object bitCidade: TSpeedButton
        Left = 89
        Top = 6
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
        OnClick = bitCidadeClick
      end
      object btnInserir: TSpeedButtonMC
        Left = 376
        Top = 4
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A846606161F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836A707B717B4E7B2B7708770616681606161F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AB47F947F717B4D7B0A770616691606161F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AB67FB87F957F707B2B7B0616691A06161F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AD77F11530616061606160616A81E06160616
          061606161F7C1F7C1F7C1F7C836AD77F06162B3F28330833E82AC622A822A822
          881E691E06161F7C1F7C1F7C836AD77F32570616061606160616083306160616
          061606161F7C1F7C1F7C1F7C836AD77FDB7FDA7FD67FB17F0616283B06161F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FDA7FD67FB17F0616483B06161F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FDA7FD67FB17F06164A3F06161F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AD77FFB7FFB7FD77FB17FB17F0616836A1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AD67FD97FB77B937B6E7B8F7FB17F836A1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836A4F7750774F772E772C772B772B77836A1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836A937BB57FB57FB37FB27F907F6E7B836A1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A836A1F7C1F7C
          1F7C1F7C1F7C}
        OnClick = btnInserirClick
      end
      object btnExcluir: TSpeedButtonMC
        Left = 400
        Top = 4
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A836A2B771F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836A707B717B0772EA760877E876E772836A1F7C
          C0701F7C1F7C1F7C1F7C1F7C836AB47F947F23718471E9760877E876636AA070
          C0701F7C1F7C1F7C1F7C1F7C836AB67FB87FF07A64718475C9766676E178A074
          1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDA7FB87F517BA57522752275E1781F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FDA7FB57F287AE1784279436E1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FB97F4B7E2279897A697EE1781F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7F0B7E0279AB7EB07FB07F236EE178
          1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7F027DAE7EB17FB07FB17F836A1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FDA7FD67FB17FB07FB17F836A1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AD77FFB7FFB7FD77FB17FB17FB17F836A1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836AD67FD97FB77B937B6E7B8F7FB17F836A1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836A4F7750774F772E772C772B772B77836A1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C836A937BB57FB57FB37FB27F907F6E7B836A1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A836A1F7C1F7C
          1F7C1F7C1F7C}
        OnClick = btnExcluirClick
      end
      object txtCodigo: TEditMC
        Tag = 2
        Left = 3
        Top = 5
        Width = 85
        Height = 21
        MaxLength = 13
        TabOrder = 0
        OnChange = txtCodigoChange
        OnKeyPress = txtCodigoKeyPress
      end
      object txtFilme: TEditMC
        Tag = 2
        Left = 112
        Top = 5
        Width = 223
        Height = 21
        TabStop = False
        Color = 14743551
        ReadOnly = True
        TabOrder = 1
      end
      object txtPreco: TEditMC
        Tag = 2
        Left = 337
        Top = 5
        Width = 37
        Height = 21
        TabStop = False
        Color = 14743551
        ReadOnly = True
        TabOrder = 2
      end
      object DBGridMC1: TDBGridMC
        Tag = 2
        Left = 1
        Top = 31
        Width = 423
        Height = 171
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        BorderStyle = bsNone
        Color = 14739951
        DataSource = dsrItens
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SUBCOD'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Filme'
            ReadOnly = True
            Width = 266
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
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
      TabOrder = 3
      DesignSize = (
        430
        141)
      object Panel2: TPanel
        Left = 30
        Top = 2
        Width = 373
        Height = 108
        BevelInner = bvLowered
        BevelOuter = bvSpace
        Caption = 'Panel1'
        TabOrder = 0
        object Shape2: TShape
          Left = 2
          Top = 2
          Width = 369
          Height = 104
          Align = alClient
          Brush.Color = clCream
          Pen.Color = 13882323
        end
        object Label11: TLabel
          Left = 5
          Top = 5
          Width = 181
          Height = 13
          AutoSize = False
          Caption = 'Data para devolu'#231#227'o: '
          Transparent = False
        end
        object DBText14: TDBText
          Left = 94
          Top = 41
          Width = 92
          Height = 13
          DataField = 'Total'
          DataSource = dsrItens
          Transparent = False
        end
        object Label25: TLabel
          Left = 5
          Top = 41
          Width = 89
          Height = 13
          Caption = 'Valor total '#224' pagar:'
          Transparent = False
        end
        object Label26: TLabel
          Left = 6
          Top = 55
          Width = 74
          Height = 13
          Caption = 'Valor pago: R$ '
          Transparent = False
        end
        object Label27: TLabel
          Left = 188
          Top = 5
          Width = 76
          Height = 13
          AutoSize = False
          Caption = 'Data de sa'#237'da: '
          Transparent = False
        end
        object txtSaida: TDBText
          Left = 261
          Top = 5
          Width = 107
          Height = 13
          DataField = 'RETIRADA'
          Transparent = False
        end
        object Label1: TLabel
          Left = 188
          Top = 20
          Width = 180
          Height = 83
          AutoSize = False
          Transparent = False
        end
        object Label2: TLabel
          Left = 128
          Top = 20
          Width = 58
          Height = 19
          AutoSize = False
          Transparent = False
        end
        object Label3: TLabel
          Left = 81
          Top = 55
          Width = 105
          Height = 13
          AutoSize = False
          Transparent = False
        end
        object Label4: TLabel
          Left = 6
          Top = 90
          Width = 180
          Height = 13
          AutoSize = False
          Transparent = False
        end
        object Label5: TLabel
          Left = 128
          Top = 69
          Width = 58
          Height = 20
          AutoSize = False
          Transparent = False
        end
        object txtDevolucao: TDBEdit
          Left = 6
          Top = 21
          Width = 121
          Height = 21
          Hint = 'Digite neste local a data em que o filme deve ser entregue'
          Color = clWhite
          Ctl3D = True
          DataField = 'ENTREGA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object dbeValorPago: TDBEdit
          Left = 6
          Top = 70
          Width = 121
          Height = 21
          Hint = 'Digite neste local o valor pago pelo cliente'
          Color = clWhite
          Ctl3D = True
          DataField = 'PAGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
      end
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
          OnClick = btnCancelarClick
        end
      end
    end
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
      OnChange = cdsItensVALORChange
      currency = True
    end
    object cdsItensDEVOLVE: TStringField
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
      FieldName = 'Filme'
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
  object dspItens: TDataSetProviderMC
    DataSet = qryItens
    ResolveToDataSet = True
    Options = [poAllowMultiRecordUpdates]
    Left = 52
    Top = 224
  end
  object qryFilme1: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'SELECT FT.*, FL.NOME AS FL_NOME, PR.VALOR AS PR_VALOR FROM TBFIT' +
        'A FT, TBFILME FL, TBPRECO PR'
      'WHERE FT.CODFILME=FL.CODFILME AND PR.CODPRECO=FL.CODPRECO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 356
    Top = 376
    object qryFilme1DISPONIVEL: TStringField
      DisplayLabel = 'Dispon'#237'vel'
      FieldName = 'DISPONIVEL'
      Origin = 'CHECK'
      Required = True
      Visible = False
      Size = 3
    end
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
    object qryFilme1FL_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'FL_NOME'
      Required = True
      Size = 50
    end
    object qryFilme1BARCODE: TStringField
      DisplayLabel = 'C'#243'digo de barras'
      FieldName = 'BARCODE'
      Visible = False
      Size = 40
    end
    object qryFilme1PR_VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'PR_VALOR'
      Required = True
      currency = True
    end
  end
  object dsrItens: TDatasourceMC
    DataSet = cdsItens
    Left = 110
    Top = 224
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
      currency = True
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
  object ImageList1: TImageList
    Left = 180
    Top = 312
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018A5D60018A5D60018A5D60018A5D60018A5D60018A5D60018A5D6005ACE
      EF00000000000000000000000000000000000000000000000000000000000000
      000018A5D60018A5D60018A5D60018A5D60018A5D60021A5CE00318429000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60084DEF7008CDEF7003984E70052BDEF0042C6EF0042BDEF0039BDE70018A5
      D600000000000031E700000000000000000000000000000000000000000018A5
      D60084DEF7008CDEF70073D6F7005ACEEF0042C6EF0031842900429C29003184
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D600A5EFFF00A5E7FF00184AE7002163E7004ABDEF0042C6EF0042BDEF00189C
      D6000029E7000031E700000000000000000000000000000000000000000018A5
      D600A5EFFF00A5E7FF008CDEF7006BD6F70052C6EF00318429004A9C29003184
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D600B5EFFF00C6EFFF0084BDF700215AE7002163EF004AB5EF00319CEF000839
      F7000029EF0000000000000000000000000000000000000000000000000018A5
      D600B5EFFF00C6EFFF00ADE7FF0084DEF7005ACEF700318429004A9C31003184
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF00D6F7FF00C6EFFF008CD6F700296BEF00104AEF00104AEF000839
      F7000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF008CC6A5003184290031842900318429003184290042AD39003184
      2900318429003184290031842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF00DEF7FF00D6F7FF00ADEFFF00428CF7000839F7001052F7001894
      DE000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF00318429005ACE7B0042CE630042C6630042BD520031B5420042AD
      420042AD420042A539004A9C3900318429000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF00DEF7FF00CEEFFF005A94FF00104AF7004AA5F7004A9CFF000839
      F7000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF0094CEAD003184290031842900318429003184290042C663003184
      2900318429003184290031842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF00DEF7FF005A84FF001042F7005AADFF0084EFFF0084EFFF00188C
      DE000839F70000000000000000000000000000000000000000000000000018A5
      D600BDF7FF00DEF7FF00D6F7FF00B5F7FF008CEFFF003184290042CE73003184
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF00DEF7FF001042FF0073ADFF008CEFFF0084EFFF008CEFFF0018A5
      D6000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF00DEF7FF00D6F7FF00B5F7FF008CEFFF003184290042D673003184
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF00DEF7FF00D6F7FF00B5F7FF008CEFFF0084EFFF008CEFFF0018A5
      D6000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF00DEF7FF00D6F7FF00B5F7FF008CEFFF003184290052D67B003184
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF00DEFFFF00DEFFFF00BDF7FF008CEFFF008CEFFF008CEFFF0018A5
      D6000000000000000000000000000000000000000000000000000000000018A5
      D600BDF7FF00DEFFFF00DEFFFF00BDF7FF008CEFFF008CEFFF003184290018A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D600B5F7FF00CEF7FF00BDEFF7009CE7F70073DEF7007BE7FF008CEFFF0018A5
      D6000000000000000000000000000000000000000000000000000000000018A5
      D600B5F7FF00CEF7FF00BDEFF7009CE7F70073DEF7007BE7FF008CEFFF0018A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D6007BD6EF0084D6EF007BD6EF0073CEEF0063CEEF005ACEEF005ACEEF0018A5
      D6000000000000000000000000000000000000000000000000000000000018A5
      D6007BD6EF0084D6EF007BD6EF0073CEEF0063CEEF005ACEEF005ACEEF0018A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D6009CE7F700ADEFFF00ADEFFF009CEFFF0094EFFF0084E7FF0073DEF70018A5
      D6000000000000000000000000000000000000000000000000000000000018A5
      D6009CE7F700ADEFFF00ADEFFF009CEFFF0094EFFF0084E7FF0073DEF70018A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018A5D60018A5D60018A5D60018A5D60018A5D60018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018A5D60018A5D60018A5D60018A5D60018A5D60018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F00FF01F00000000
      E00BE00F00000000E003E00F00000000E007E00F00000000E00FE00100000000
      E00FE00000000000E00FE00100000000E007E00F00000000E00FE00F00000000
      E00FE00F00000000E00FE00F00000000E00FE00F00000000E00FE00F00000000
      E00FE00F00000000F01FF01F0000000000000000000000000000000000000000
      000000000000}
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
    Left = 276
    Top = 232
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
