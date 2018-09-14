object Form1: TForm1
  Left = 17
  Top = 18
  Width = 971
  Height = 411
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 448
    Top = 320
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object DBGridMC1: TDBGridMC
    Tag = 2
    Left = 8
    Top = 8
    Width = 433
    Height = 177
    BorderStyle = bsNone
    Color = 14739951
    DataSource = DBAIRRO
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODcIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Width = 166
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 24
        Visible = True
      end>
  end
  object DBGridMC2: TDBGridMC
    Tag = 2
    Left = 8
    Top = 192
    Width = 433
    Height = 177
    BorderStyle = bsNone
    Color = 14739951
    DataSource = DatasourceMC3
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODBAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 456
    Top = 32
    Width = 64
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 456
    Top = 56
    Width = 64
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 456
    Top = 80
    Width = 64
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object Edit4: TEdit
    Left = 456
    Top = 144
    Width = 64
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
  object Edit5: TEdit
    Left = 456
    Top = 168
    Width = 64
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object Edit6: TEdit
    Left = 456
    Top = 192
    Width = 64
    Height = 21
    TabOrder = 7
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 444
    Top = 248
    Width = 85
    Height = 25
    Caption = 'cONTAR'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 444
    Top = 280
    Width = 85
    Height = 25
    Caption = 'Copiar BAIRRO'
    TabOrder = 9
    OnClick = Button2Click
  end
  object DBGridMC3: TDBGridMC
    Tag = 2
    Left = 520
    Top = 8
    Width = 433
    Height = 177
    BorderStyle = bsNone
    Color = 14739951
    DataSource = DatasourceMC4
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODBAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUA'
        Width = 273
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end>
  end
  object Button3: TButton
    Left = 444
    Top = 344
    Width = 85
    Height = 25
    Caption = 'Copiar RUA'
    TabOrder = 11
    OnClick = Button3Click
  end
  object Edit7: TEdit
    Left = 456
    Top = 104
    Width = 64
    Height = 21
    TabOrder = 12
    Text = 'Edit1'
  end
  object Edit8: TEdit
    Left = 456
    Top = 216
    Width = 64
    Height = 21
    TabOrder = 13
    Text = 'Edit1'
  end
  object DBGridMC4: TDBGridMC
    Tag = 2
    Left = 530
    Top = 192
    Width = 433
    Height = 177
    BorderStyle = bsNone
    Color = 14739951
    DataSource = DatasourceMC5
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODRUA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODBAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end>
  end
  object UF: TZQueryMC
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT UF FROM TB_BAIRROS GROUP BY UF')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 72
    Top = 32
    object UFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
  end
  object ZConnection1: TZConnection
    Protocol = 'firebird-1.5'
    HostName = 'localhost'
    Port = 0
    Database = 'D:\Programa'#231#227'o\Analize\Imobiliario\CADIMOB.GDB'
    User = 'sysdba'
    Password = 'masterkey'
    AutoCommit = True
    ReadOnly = True
    TransactIsolationLevel = tiNone
    Connected = True
    SQLHourGlass = False
    Left = 24
    Top = 24
  end
  object CIDADE: TZQueryMC
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT CIDADE FROM TB_BAIRROS GROUP BY CIDADE')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 104
    Top = 32
    object CIDADECIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 40
    end
  end
  object BAIRRO: TZQueryMC
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TB_BAIRROS')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 136
    Top = 32
    object BAIRROID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object BAIRROUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object BAIRROCIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 40
    end
    object BAIRROBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Required = True
      Size = 40
    end
    object BAIRROCODcIDADE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CODcIDADE'
      LookupDataSet = ZQueryMC2
      LookupKeyFields = 'NOME'
      LookupResultField = 'CODCIDADE'
      KeyFields = 'CIDADE'
      Lookup = True
    end
  end
  object DUF: TDatasourceMC
    DataSet = UF
    Left = 72
    Top = 64
  end
  object DCIDADE: TDatasourceMC
    DataSet = CIDADE
    Left = 104
    Top = 64
  end
  object DBAIRRO: TDatasourceMC
    DataSet = BAIRRO
    Left = 136
    Top = 64
  end
  object ZConnection2: TZConnection
    Protocol = 'firebird-1.5'
    HostName = 'localhost'
    Port = 0
    Database = 'D:\Programa'#231#227'o\NovaGera'#231#227'o\dados\MC.FBD'
    User = 'sysdba'
    Password = 'masterkey'
    AutoCommit = True
    ReadOnly = True
    TransactIsolationLevel = tiNone
    Connected = True
    SQLHourGlass = False
    Left = 24
    Top = 104
  end
  object ZQueryMC1: TZQueryMC
    Connection = ZConnection2
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBUF')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 72
    Top = 120
    object ZQueryMC1CODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object ZQueryMC1NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  object ZQueryMC2: TZQueryMC
    Connection = ZConnection2
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBCIDADE')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    TableName = 'tbcidade'
    FieldKey = 'codcidade'
    Left = 104
    Top = 120
    object ZQueryMC2CODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Required = True
    end
    object ZQueryMC2CODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object ZQueryMC2NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  object ZQueryMC3: TZQueryMC
    Connection = ZConnection2
    CachedUpdates = False
    Active = True
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBBAIRRO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    TableName = 'tbbairro'
    FieldKey = 'codbairro'
    Left = 136
    Top = 120
    object ZQueryMC3CODBAIRRO: TIntegerField
      FieldName = 'CODBAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQueryMC3CODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Required = True
    end
    object ZQueryMC3NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
  end
  object DatasourceMC1: TDatasourceMC
    DataSet = ZQueryMC1
    Left = 72
    Top = 152
  end
  object DatasourceMC2: TDatasourceMC
    DataSet = ZQueryMC2
    Left = 104
    Top = 152
  end
  object DatasourceMC3: TDatasourceMC
    DataSet = ZQueryMC3
    Left = 136
    Top = 152
  end
  object ZQueryMC4: TZQueryMC
    Connection = ZConnection1
    CachedUpdates = False
    Active = True
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TB_CEP')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 280
    Top = 56
    object ZQueryMC4UF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object ZQueryMC4CIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 40
    end
    object ZQueryMC4BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Required = True
      Size = 40
    end
    object ZQueryMC4RUA: TStringField
      FieldName = 'RUA'
      Required = True
      Size = 70
    end
    object ZQueryMC4CEP: TStringField
      FieldName = 'CEP'
      Required = True
      Size = 10
    end
    object ZQueryMC4COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object ZQueryMC4CODBAIRRO: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CODBAIRRO'
      LookupDataSet = ZQueryMC3
      LookupKeyFields = 'NOME'
      LookupResultField = 'CODBAIRRO'
      KeyFields = 'BAIRRO'
      Lookup = True
    end
  end
  object DatasourceMC4: TDatasourceMC
    DataSet = ZQueryMC4
    Left = 280
    Top = 88
  end
  object ZQueryMC5: TZQueryMC
    Connection = ZConnection2
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBRUA ')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    TableName = 'TBRUA'
    FieldKey = 'CODRUA'
    Left = 280
    Top = 120
    object ZQueryMC5CODRUA: TIntegerField
      FieldName = 'CODRUA'
      Required = True
    end
    object ZQueryMC5CODBAIRRO: TIntegerField
      FieldName = 'CODBAIRRO'
    end
    object ZQueryMC5NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object ZQueryMC5CEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
  end
  object DatasourceMC5: TDatasourceMC
    DataSet = ClientDataSet1
    Left = 280
    Top = 152
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ZQueryMC5
    Left = 320
    Top = 120
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 360
    Top = 120
    object ClientDataSet1CODRUA: TIntegerField
      FieldName = 'CODRUA'
      Required = True
    end
    object ClientDataSet1CODBAIRRO: TIntegerField
      FieldName = 'CODBAIRRO'
    end
    object ClientDataSet1NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object ClientDataSet1CEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
  end
  object ZQueryMC6: TZQueryMC
    Connection = ZConnection2
    Filter = '1=2'
    Filtered = True
    CachedUpdates = False
    Active = True
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBRUA  where nome='#39'asdf'#39)
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    TableName = 'TBRUA'
    FieldKey = 'CODRUA'
    Left = 320
    Top = 152
    object ZQueryMC6CODRUA: TIntegerField
      FieldName = 'CODRUA'
      Required = True
    end
    object ZQueryMC6CODBAIRRO: TIntegerField
      FieldName = 'CODBAIRRO'
    end
    object ZQueryMC6NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object ZQueryMC6CEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
  end
end
