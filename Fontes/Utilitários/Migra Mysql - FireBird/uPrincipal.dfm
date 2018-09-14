object Form1: TForm1
  Left = 170
  Top = 169
  Width = 696
  Height = 480
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
  object Gauge1: TGauge
    Left = 8
    Top = 96
    Width = 257
    Height = 25
    Progress = 0
  end
  object SpeedButtonMC1: TSpeedButtonMC
    Left = 88
    Top = 72
    Width = 89
    Height = 22
    Caption = 'Iniciar'
  end
  object mysql: TZConnection
    Protocol = 'mysql-4.0'
    Port = 0
    Database = 'mclocadora'
    User = 'root'
    AutoCommit = True
    ReadOnly = True
    TransactIsolationLevel = tiNone
    Connected = True
    SQLHourGlass = False
    Left = 32
    Top = 8
  end
  object fbird: TZConnection
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
    Left = 32
    Top = 40
  end
  object fbPessoa: TZQueryMC
    Connection = fbird
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from tbpessoa')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 80
    Top = 8
    object fbPessoaCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object fbPessoaCODCIDRESID: TIntegerField
      FieldName = 'CODCIDRESID'
      Required = True
    end
    object fbPessoaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object fbPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 45
    end
    object fbPessoaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 25
    end
    object fbPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 35
    end
    object fbPessoaTEL: TStringField
      FieldName = 'TEL'
      Size = 13
    end
    object fbPessoaCEL: TStringField
      FieldName = 'CEL'
      Size = 13
    end
    object fbPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object fbPessoaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object fbPessoaTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Required = True
      Size = 1
    end
    object fbPessoaCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
    object fbPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 70
    end
    object fbPessoaWEB: TStringField
      FieldName = 'WEB'
      Size = 70
    end
    object fbPessoaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object fbPessoaDATATUALIZACAO: TDateField
      FieldName = 'DATATUALIZACAO'
      Required = True
    end
    object fbPessoaRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object fbPessoaDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
  end
  object ZQueryMC2: TZQueryMC
    Connection = mysql
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from tbpessoa')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 80
    Top = 40
    object ZQueryMC2CodPessoa: TIntegerField
      FieldName = 'CodPessoa'
      Required = True
    end
    object ZQueryMC2CODCIDRESID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CODCIDRESID'
      Calculated = True
    end
    object ZQueryMC2CODUSUARIO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CODUSUARIO'
      Calculated = True
    end
    object ZQueryMC2Rua: TStringField
      FieldName = 'Rua'
      Required = True
      Size = 45
    end
    object ZQueryMC2Complemento: TStringField
      FieldName = 'Complemento'
      Size = 45
    end
    object ZQueryMC2Bairro: TStringField
      FieldName = 'Bairro'
      Size = 45
    end
    object ZQueryMC2Tel1: TStringField
      FieldName = 'Tel1'
      Size = 14
    end
    object ZQueryMC2Tel2: TStringField
      FieldName = 'Tel2'
      Size = 14
    end
    object ZQueryMC2Cep: TStringField
      FieldName = 'Cep'
      Size = 8
    end
    object ZQueryMC2Nome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 45
    end
    object ZQueryMC2TIPOPESSOA: TStringField
      FieldKind = fkCalculated
      FieldName = 'TIPOPESSOA'
      Size = 1
      Calculated = True
    end
    object ZQueryMC2CPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 18
    end
    object ZQueryMC2Email: TStringField
      FieldName = 'Email'
      Size = 75
    end
    object ZQueryMC2Url: TStringField
      FieldName = 'Url'
      Size = 75
    end
    object ZQueryMC2DataCadastro: TDateField
      FieldName = 'DataCadastro'
      Required = True
    end
    object ZQueryMC2DATAATUALIZACAO: TDateField
      FieldKind = fkCalculated
      FieldName = 'DATAATUALIZACAO'
      Calculated = True
    end
    object ZQueryMC2RG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object ZQueryMC2DataNasc: TDateField
      FieldName = 'DataNasc'
      Required = True
    end
  end
  object TAction
    Caption = 'alNone'
    Checked = True
  end
  object TAction
    Tag = 1
    Caption = 'alTop'
  end
  object TAction
    Tag = 2
    Caption = 'alBottom'
  end
  object TAction
    Tag = 3
    Caption = 'alLeft'
  end
  object TAction
    Tag = 4
    Caption = 'alRight'
  end
  object TAction
    Tag = 5
    Caption = 'alClient'
  end
  object TAction
    Tag = 6
    Caption = 'alCustom'
  end
  object ZSQLProcessor1: TZSQLProcessor
    Script.Strings = (
      'DELETE FROM TBPESSOA;')
    Connection = fbird
    Delimiter = ';'
    Left = 176
    Top = 40
  end
  object fbCliente: TZQueryMC
    Connection = fbird
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBCLIENTE')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 120
    Top = 8
    object fbClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object fbClienteCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object fbClienteRECEBEEMAIL: TStringField
      FieldName = 'RECEBEEMAIL'
      Size = 3
    end
    object fbClienteCODTITULAR: TIntegerField
      FieldName = 'CODTITULAR'
    end
    object fbClientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 35
    end
    object fbClienteTITULAR: TStringField
      FieldName = 'TITULAR'
      Required = True
      Size = 3
    end
    object fbClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 3
    end
    object fbClientePROPRIETARIO: TStringField
      FieldName = 'PROPRIETARIO'
      Required = True
      Size = 3
    end
    object fbClienteFIADOR: TStringField
      FieldName = 'FIADOR'
      Required = True
      Size = 3
    end
    object fbClienteFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Required = True
      Size = 3
    end
    object fbClienteFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Required = True
      Size = 3
    end
    object fbClienteLOCADOR: TStringField
      FieldName = 'LOCADOR'
      Required = True
      Size = 3
    end
    object fbClienteCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Required = True
      Size = 3
    end
    object fbClienteCONTATOTEL: TStringField
      FieldName = 'CONTATOTEL'
      Size = 13
    end
    object fbClienteINTERESSADO: TStringField
      FieldName = 'INTERESSADO'
      Required = True
      Size = 3
    end
  end
  object ZQueryMC1: TZQueryMC
    Connection = mysql
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      '      *'
      'FROM TBFICHA F'
      'LEFT JOIN TBPESSOA P ON P.CODFICHA=F.CODFICHA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 120
    Top = 40
    object ZQueryMC1CODCLIENTE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CODCLIENTE'
      Calculated = True
    end
    object ZQueryMC1CodPessoa: TIntegerField
      FieldName = 'CodPessoa'
      Required = True
    end
    object ZQueryMC1EnviarEmail: TStringField
      FieldName = 'EnviarEmail'
      Required = True
      Size = 3
    end
    object ZQueryMC1CodTitular: TIntegerField
      FieldName = 'CodTitular'
    end
    object ZQueryMC1Profissao: TStringField
      FieldName = 'Profissao'
      Size = 25
    end
    object ZQueryMC1Titular: TStringField
      FieldName = 'Titular'
      Required = True
      Size = 3
    end
    object ZQueryMC1Ativo: TStringField
      FieldName = 'Ativo'
      Required = True
      Size = 3
    end
  end
end
