inherited _frmFormCodeBarFitas: T_frmFormCodeBarFitas
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel5: TPanel
    object LabelMC5: TLabelMC
      Left = 338
      Top = 25
      Width = 67
      Height = 13
      Caption = 'N'#186' de colunas'
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 305
      Height = 65
      Caption = ' Margens '
      TabOrder = 0
      object LabelMC1: TLabelMC
        Left = 16
        Top = 16
        Width = 45
        Height = 13
        Caption = 'Esquerda'
      end
      object LabelMC2: TLabelMC
        Left = 161
        Top = 17
        Width = 38
        Height = 13
        Caption = 'Rodap'#233
      end
      object LabelMC3: TLabelMC
        Left = 91
        Top = 17
        Width = 30
        Height = 13
        Caption = 'Direita'
      end
      object LabelMC4: TLabelMC
        Left = 234
        Top = 18
        Width = 25
        Height = 13
        Caption = 'Topo'
      end
      object DBEditMC1: TDBEditMC
        Tag = 2
        Left = 16
        Top = 32
        Width = 46
        Height = 21
        DataField = 'Esq'
        DataSource = dsrConfig
        TabOrder = 0
      end
      object DBEditMC2: TDBEditMC
        Tag = 2
        Left = 160
        Top = 32
        Width = 46
        Height = 21
        DataField = 'Rodape'
        DataSource = dsrConfig
        TabOrder = 1
      end
      object DBEditMC3: TDBEditMC
        Tag = 2
        Left = 88
        Top = 32
        Width = 46
        Height = 21
        DataField = 'Dir'
        DataSource = dsrConfig
        TabOrder = 2
      end
      object DBEditMC4: TDBEditMC
        Tag = 2
        Left = 232
        Top = 32
        Width = 46
        Height = 21
        DataField = 'Topo'
        DataSource = dsrConfig
        TabOrder = 3
      end
    end
    object DBEditMC5: TDBEditMC
      Tag = 2
      Left = 338
      Top = 41
      Width = 65
      Height = 21
      DataField = 'Colunas'
      DataSource = dsrConfig
      TabOrder = 1
    end
    object Filmes: TDuploGridMC
      Left = 8
      Top = 103
      Width = 408
      Height = 159
      TabOrder = 2
      DataSetOrigem = qryFilmes
      DataSetDestino = qryDestino
      GridOrigem.Tag = 2
      GridOrigem.Left = 1
      GridOrigem.Top = 1
      GridOrigem.Width = 192
      GridOrigem.Height = 157
      GridOrigem.Align = alLeft
      GridOrigem.BorderStyle = bsNone
      GridOrigem.Color = 14739951
      GridOrigem.DataSource.DataSet.Aggregates = <>
      GridOrigem.DataSource.DataSet.Params = <>
      GridOrigem.DataSource.DataSet.ProviderName = 'dspOrigem'
      GridOrigem.Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      GridOrigem.TabOrder = 0
      GridOrigem.TitleFont.Charset = DEFAULT_CHARSET
      GridOrigem.TitleFont.Color = clWindowText
      GridOrigem.TitleFont.Height = -11
      GridOrigem.TitleFont.Name = 'MS Sans Serif'
      GridOrigem.TitleFont.Style = []
      GridDestino.Tag = 2
      GridDestino.Left = 215
      GridDestino.Top = 1
      GridDestino.Width = 192
      GridDestino.Height = 157
      GridDestino.Align = alRight
      GridDestino.BorderStyle = bsNone
      GridDestino.Color = 14739951
      GridDestino.DataSource.DataSet.Aggregates = <>
      GridDestino.DataSource.DataSet.IndexFieldNames = 'NOME'
      GridDestino.DataSource.DataSet.Params = <>
      GridDestino.DataSource.DataSet.ProviderName = 'dspDestino'
      GridDestino.Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      GridDestino.TabOrder = 1
      GridDestino.TitleFont.Charset = DEFAULT_CHARSET
      GridDestino.TitleFont.Color = clWindowText
      GridDestino.TitleFont.Height = -11
      GridDestino.TitleFont.Name = 'MS Sans Serif'
      GridDestino.TitleFont.Style = []
      BtnLeft = 194
      BtnTop = 41
      LarguraGridOrigem = 192
      LarguraGridDestino = 192
      KeyField = 'NOME'
      IndexKey = 'NOME'
      LoookupField = 'NOME'
      KeyFieldDestino = 'NOME'
    end
    object txtFilme: TEditMC
      Tag = 2
      Left = 8
      Top = 78
      Width = 405
      Height = 21
      TabOrder = 3
      OnChange = txtFilmeChange
    end
  end
  object qryFilmes: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT CODFILME, NOME FROM TBFILME'
      'WHERE NOME <> :NOME')
    ParamCheck = True
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 264
    Top = 164
    ParamData = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end>
    object qryFilmesCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
      Visible = False
    end
    object qryFilmesNOME: TStringField
      DisplayLabel = 'Filme'
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
  end
  object qryDestino: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT CODFILME, NOME FROM TBFILME'
      'WHERE CODFILME=0 AND'
      'NOME=:NOME')
    ParamCheck = True
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 296
    Top = 164
    ParamData = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end>
    object qryDestinoCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
      Visible = False
    end
    object StringField1: TStringField
      DisplayLabel = 'Filme'
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
  end
  object cdsConfig: TClientDataSetMC
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 61
    object cdsConfigEsq: TIntegerField
      FieldName = 'Esq'
    end
    object cdsConfigDir: TIntegerField
      FieldName = 'Dir'
    end
    object cdsConfigRodape: TIntegerField
      FieldName = 'Rodape'
    end
    object cdsConfigTopo: TIntegerField
      FieldName = 'Topo'
    end
    object cdsConfigColunas: TIntegerField
      FieldName = 'Colunas'
    end
  end
  object dsrConfig: TDatasourceMC
    DataSet = cdsConfig
    Left = 368
    Top = 85
  end
end
