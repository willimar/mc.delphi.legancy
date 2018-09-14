object Form1: TForm1
  Left = 37
  Top = 121
  Width = 731
  Height = 375
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridMC1: TDBGridMC
    Left = 8
    Top = 0
    Width = 249
    Height = 161
    DataSource = DatasourceMC1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 280
    Top = 40
    Width = 75
    Height = 25
    Caption = 'uf'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DBGridMC2: TDBGridMC
    Left = 8
    Top = 168
    Width = 417
    Height = 153
    DataSource = DatasourceMC2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn2: TBitBtn
    Left = 232
    Top = 256
    Width = 75
    Height = 25
    Caption = 'cidade'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object ZConnection1: TZConnection
    Protocol = 'firebird-1.5'
    HostName = 'localhost'
    Port = 0
    Database = 'D:\Programa'#231#227'o\Analize\Folha Pagamento\flivre.gdb'
    User = 'sysdba'
    Password = 'masterkey'
    AutoCommit = True
    ReadOnly = True
    TransactIsolationLevel = tiNone
    Connected = True
    SQLHourGlass = False
    Left = 40
    Top = 24
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
    Left = 80
    Top = 24
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM UF')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 40
    Top = 56
    object ZReadOnlyQuery1IDUF: TStringField
      FieldName = 'IDUF'
      Required = True
      Size = 2
    end
    object ZReadOnlyQuery1NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 30
    end
  end
  object DatasourceMC1: TDatasourceMC
    DataSet = ZReadOnlyQuery1
    Left = 40
    Top = 88
  end
  object ZQuery1: TZQuery
    Connection = ZConnection2
    CachedUpdates = False
    Active = True
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBUF')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 80
    Top = 56
    object ZQuery1CODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object ZQuery1NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  object ZConnection3: TZConnection
    Protocol = 'mysql-4.0'
    HostName = 'localhost'
    Port = 0
    Database = 'mc'
    User = 'root'
    AutoCommit = True
    ReadOnly = True
    TransactIsolationLevel = tiNone
    Connected = True
    SQLHourGlass = False
    Left = 40
    Top = 168
  end
  object ZReadOnlyQuery2: TZReadOnlyQuery
    Connection = ZConnection3
    Active = True
    SQL.Strings = (
      'select * from tbcidade')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 40
    Top = 200
    object ZReadOnlyQuery2CodCidade: TIntegerField
      FieldName = 'CodCidade'
      Required = True
    end
    object ZReadOnlyQuery2CodUf: TStringField
      FieldName = 'CodUf'
      Required = True
      Size = 2
    end
    object ZReadOnlyQuery2Nome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 45
    end
  end
  object DatasourceMC2: TDatasourceMC
    DataSet = ZReadOnlyQuery2
    Left = 40
    Top = 232
  end
  object ZQuery2: TZQuery
    Connection = ZConnection2
    CachedUpdates = False
    Active = True
    RequestLive = True
    SQL.Strings = (
      'select * from tbcidade')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 80
    Top = 88
    object ZQuery2CODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Required = True
    end
    object ZQuery2CODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object ZQuery2NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
end
