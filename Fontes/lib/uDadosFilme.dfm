object fraDadosFilme: TfraDadosFilme
  Left = 0
  Top = 0
  Width = 369
  Height = 97
  TabOrder = 0
  object Panel2: TPanel
    Left = -1
    Top = 0
    Width = 370
    Height = 97
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Caption = '`'
    TabOrder = 0
    object Shape2: TShape
      Left = 2
      Top = 2
      Width = 366
      Height = 93
      Align = alClient
      Brush.Color = clCream
      Pen.Color = 13882323
    end
    object Label12: TLabel
      Left = 5
      Top = 20
      Width = 34
      Height = 13
      Caption = 'Nome: '
      Transparent = False
    end
    object DBText20: TDBText
      Left = 39
      Top = 20
      Width = 263
      Height = 13
      DataField = 'FL_NOME'
      DataSource = dsrFilmes
      Transparent = False
    end
    object Label26: TLabel
      Left = 5
      Top = 50
      Width = 77
      Height = 13
      Caption = 'Disponibilidade: '
      Transparent = False
    end
    object DBText23: TDBText
      Left = 82
      Top = 50
      Width = 146
      Height = 13
      DataField = 'FT_DISPONIVEL'
      DataSource = dsrFilmes
      Transparent = False
    end
    object Label27: TLabel
      Left = 229
      Top = 50
      Width = 23
      Height = 13
      Caption = 'Qtd: '
      Transparent = False
    end
    object DBText24: TDBText
      Left = 252
      Top = 50
      Width = 50
      Height = 13
      DataField = 'FT_DISPONIVEL'
      DataSource = dsrFilmes
      Transparent = False
    end
    object Label28: TLabel
      Left = 5
      Top = 65
      Width = 60
      Height = 13
      Caption = 'Fornecedor: '
      Transparent = False
    end
    object DBText25: TDBText
      Left = 65
      Top = 65
      Width = 237
      Height = 13
      DataField = 'P_NOME'
      DataSource = dsrFilmes
      Transparent = False
    end
    object Label29: TLabel
      Left = 5
      Top = 80
      Width = 90
      Height = 13
      Caption = 'Valor de Loca'#231#227'o: '
      Transparent = False
    end
    object DBText26: TDBText
      Left = 95
      Top = 80
      Width = 49
      Height = 13
      DataField = 'PR_VALOR'
      DataSource = dsrFilmes
      Transparent = False
    end
    object DBText27: TDBText
      Left = 229
      Top = 80
      Width = 73
      Height = 13
      DataField = 'FL_VALORCOMPRA'
      DataSource = dsrFilmes
      Transparent = False
    end
    object Label30: TLabel
      Left = 146
      Top = 80
      Width = 84
      Height = 13
      Caption = 'Valor de Compra: '
      Transparent = False
    end
    object Label31: TLabel
      Left = 5
      Top = 35
      Width = 31
      Height = 13
      Caption = 'Autor: '
      Transparent = False
    end
    object DBText28: TDBText
      Left = 36
      Top = 35
      Width = 266
      Height = 13
      DataField = 'FL_AUTOR'
      DataSource = dsrFilmes
      Transparent = False
    end
    object Label38: TLabel
      Left = 304
      Top = 5
      Width = 62
      Height = 88
      AutoSize = False
      Transparent = False
    end
    object DBText22: TDBText
      Left = 200
      Top = 5
      Width = 102
      Height = 13
      DataField = 'FT_BARCODE'
      DataSource = dsrFilmes
      Transparent = False
    end
    object Label25: TLabel
      Left = 151
      Top = 5
      Width = 50
      Height = 13
      Caption = 'C'#243'd. Bar.: '
      Transparent = False
    end
    object DBText21: TDBText
      Left = 43
      Top = 5
      Width = 106
      Height = 13
      DataField = 'FT_SUBCOD'
      DataSource = dsrFilmes
      Transparent = False
    end
    object Label17: TLabel
      Left = 5
      Top = 5
      Width = 39
      Height = 13
      Caption = 'C'#243'digo: '
      Transparent = False
    end
  end
  object qryFilme: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      
        '    FL.CODFILME AS FL_CODFILME, FL.NOME AS FL_NOME, FT.SUBCOD AS' +
        ' FT_SUBCOD, FT.BARCODE AS FT_BARCODE,'
      
        '    FL.AUTOR AS FL_AUTOR, FT.DISPONIVEL AS FT_DISPONIVEL, FL.QUA' +
        'NTIDADE AS FL_QUANTIDADE, P.NOME AS P_NOME,'
      '    PR.VALOR AS PR_VALOR, FL.VALORCOMPRA AS FL_VALORCOMPRA'
      'FROM TBFILME FL, TBFITA FT, TBCLIENTE C, TBPRECO PR, TBPESSOA P'
      
        'WHERE FL.CODFILME=FT.CODFILME AND C.CODCLIENTE=FL.CODFORNECEDOR ' +
        'AND PR.CODPRECO=FL.CODPRECO AND C.CODPESSOA=P.CODPESSOA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 152
    Top = 40
    object qryFilmeFL_CODFILME: TIntegerField
      FieldName = 'FL_CODFILME'
      Required = True
      Visible = False
    end
    object qryFilmeFT_SUBCOD: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FT_SUBCOD'
      Required = True
      Size = 13
    end
    object qryFilmeFT_BARCODE: TStringField
      DisplayLabel = 'Codigo de barras'
      FieldName = 'FT_BARCODE'
      Size = 40
    end
    object qryFilmeFL_NOME: TStringField
      DisplayLabel = 'Filme'
      FieldName = 'FL_NOME'
      Required = True
      Size = 50
    end
    object qryFilmeFL_AUTOR: TStringField
      DisplayLabel = 'Autor'
      FieldName = 'FL_AUTOR'
      Size = 30
    end
    object qryFilmeFL_QUANTIDADE: TIntegerField
      DisplayLabel = 'Qtd'
      FieldName = 'FL_QUANTIDADE'
      Required = True
    end
    object qryFilmeP_NOME: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'P_NOME'
      Required = True
      Size = 45
    end
    object qryFilmePR_VALOR: TFloatField
      DisplayLabel = 'Valor de loca'#231#227'o'
      FieldName = 'PR_VALOR'
      Required = True
      currency = True
    end
    object qryFilmeFL_VALORCOMPRA: TFloatField
      DisplayLabel = 'Valor de compra'
      FieldName = 'FL_VALORCOMPRA'
      currency = True
    end
    object qryFilmeFT_DISPONIVEL: TStringField
      DisplayLabel = 'Dispon'#237'vel'
      FieldName = 'FT_DISPONIVEL'
      Required = True
      Size = 3
    end
  end
  object dsrFilmes: TDatasourceMC
    DataSet = qryFilme
    Left = 184
    Top = 40
  end
end
