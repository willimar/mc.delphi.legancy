object DMMCLocadora: TDMMCLocadora
  OldCreateOrder = False
  Left = 159
  Top = 207
  Height = 215
  Width = 616
  object qryCliente: TZQueryMC
    Connection = _frmMigraBase.SourceDB
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      
        '      F.CODFICHA, P.CODPESSOA, P.NOME, NULL AS CORE, NULL AS CON' +
        'TATONOME, NULL AS CONTATORAMAL,'
      
        '      NULL AS CONTATOENDERECO, NULL AS CONTATOBAIRRO, NULL AS CO' +
        'NTATOCOMPLEMENTO, NULL AS CONTATOCIDADE,'
      
        '      NULL AS CONTATOCEP, NULL AS CODGERCONTA, NULL AS CONTA, NU' +
        'LL AS FAVORECIDO,'
      '      '#39'N'#227'o'#39' AS PROPRIETARIO, '#39'N'#227'o'#39' AS FIADOR,'
      
        '      CASE TIPOFICHA WHEN '#39'F'#39' THEN '#39'Sim'#39' ELSE '#39'N'#227'o'#39' END AS FORNE' +
        'CEDOR,'
      
        '      CASE TIPOFICHA WHEN '#39'U'#39' THEN '#39'Sim'#39' ELSE '#39'N'#227'o'#39' END AS FUNCI' +
        'ONARIO,'
      
        '      '#39'N'#227'o'#39' AS LOCADOR, '#39'N'#227'o'#39' AS COMPRADOR, NULL AS CONTATOTEL, ' +
        #39'N'#227'o'#39' AS INTERESSADO,'
      
        '      TITULAR, '#39'N'#227'o'#39' AS ENVIAREMAIL, PROFISSAO, CASE CODTITULAR ' +
        'WHEN 0 THEN NULL ELSE CODTITULAR END AS '#39'CODTITULAR'#39', P.ATIVO, '#39 +
        'N'#227'o'#39' AS EMPRESA, '#39'N'#227'o'#39' AS VENDEDOR,'
      '      '#39'N'#227'o'#39' AS REPRESENTANTE, '#39'N'#227'o'#39' AS TRANSPORTADOR'
      'FROM TBFICHA F, TBPESSOA P'
      'WHERE P.CODPESSOA=F.CODFICHA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 72
    Top = 8
    object qryClienteCODFICHA: TIntegerField
      FieldName = 'CODFICHA'
      Required = True
    end
    object qryClienteCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object qryClienteNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryClienteCORE: TStringField
      FieldName = 'CORE'
      Size = 4
    end
    object qryClienteCONTATONOME: TStringField
      FieldName = 'CONTATONOME'
      Size = 4
    end
    object qryClienteCONTATORAMAL: TStringField
      FieldName = 'CONTATORAMAL'
      Size = 4
    end
    object qryClienteCONTATOENDERECO: TStringField
      FieldName = 'CONTATOENDERECO'
      Size = 4
    end
    object qryClienteCONTATOBAIRRO: TStringField
      FieldName = 'CONTATOBAIRRO'
      Size = 4
    end
    object qryClienteCONTATOCOMPLEMENTO: TStringField
      FieldName = 'CONTATOCOMPLEMENTO'
      Size = 4
    end
    object qryClienteCONTATOCIDADE: TStringField
      FieldName = 'CONTATOCIDADE'
      Size = 4
    end
    object qryClienteCONTATOCEP: TStringField
      FieldName = 'CONTATOCEP'
      Size = 4
    end
    object qryClienteCODGERCONTA: TStringField
      FieldName = 'CODGERCONTA'
      Size = 4
    end
    object qryClienteCONTA: TStringField
      FieldName = 'CONTA'
      Size = 4
    end
    object qryClienteFAVORECIDO: TStringField
      FieldName = 'FAVORECIDO'
      Size = 4
    end
    object qryClientePROPRIETARIO: TStringField
      FieldName = 'PROPRIETARIO'
      Required = True
      Size = 3
    end
    object qryClienteFIADOR: TStringField
      FieldName = 'FIADOR'
      Required = True
      Size = 3
    end
    object qryClienteFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Required = True
      Size = 3
    end
    object qryClienteFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Required = True
      Size = 3
    end
    object qryClienteLOCADOR: TStringField
      FieldName = 'LOCADOR'
      Required = True
      Size = 3
    end
    object qryClienteCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Required = True
      Size = 3
    end
    object qryClienteCONTATOTEL: TStringField
      FieldName = 'CONTATOTEL'
      Size = 4
    end
    object qryClienteINTERESSADO: TStringField
      FieldName = 'INTERESSADO'
      Required = True
      Size = 3
    end
    object qryClienteTITULAR: TStringField
      FieldName = 'TITULAR'
      Required = True
      Size = 3
    end
    object qryClienteENVIAREMAIL: TStringField
      FieldName = 'ENVIAREMAIL'
      Required = True
      Size = 3
    end
    object qryClientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 25
    end
    object qryClienteCODTITULAR: TIntegerField
      FieldName = 'CODTITULAR'
    end
    object qryClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 3
    end
    object qryClienteEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 3
    end
    object qryClienteVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Required = True
      Size = 3
    end
    object qryClienteREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Required = True
      Size = 3
    end
    object qryClienteTRANSPORTADOR: TStringField
      FieldName = 'TRANSPORTADOR'
      Required = True
      Size = 3
    end
  end
  object qryPessoa: TZQueryMC
    Connection = _frmMigraBase.SourceDB
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      
        '      CODPESSOA, 2121 AS CODCIDRESID, 1 AS CODUSUARIO, RUA, BAIR' +
        'RO, CEP, NOME,'
      
        '      CASE WHEN LENGTH(CPFCNPJ) > 11 THEN '#39'J'#39' ELSE '#39'F'#39' END TIPOP' +
        'ESSOA, CPFCNPJ, EMAIL, URL, DATACADASTRO,'
      
        '      DATACADASTRO AS DATAATUALIZACAO, DATANASC, NULL AS SEXO, N' +
        'ULL AS OBS, RAMAL, 2121 AS CIDNASCIM,'
      
        '      NULL AS DEFICIENCIA, NULL AS ESTADOCIVIL, RG, COMPLEMENTO,' +
        ' TEL1, TEL2'
      'FROM TBPESSOA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 16
    Top = 8
    object qryPessoaCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object qryPessoaCODCIDRESID: TLargeintField
      FieldName = 'CODCIDRESID'
      Required = True
    end
    object qryPessoaCODUSUARIO: TLargeintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object qryPessoaRUA: TStringField
      FieldName = 'RUA'
      Required = True
      Size = 45
    end
    object qryPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 45
    end
    object qryPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object qryPessoaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryPessoaTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Size = 1
    end
    object qryPessoaCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 18
    end
    object qryPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 75
    end
    object qryPessoaURL: TStringField
      FieldName = 'URL'
      Size = 75
    end
    object qryPessoaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object qryPessoaDATAATUALIZACAO: TDateField
      FieldName = 'DATAATUALIZACAO'
      Required = True
    end
    object qryPessoaDATANASC: TDateField
      FieldName = 'DATANASC'
      Required = True
    end
    object qryPessoaSEXO: TStringField
      FieldName = 'SEXO'
      Size = 4
    end
    object qryPessoaOBS: TStringField
      FieldName = 'OBS'
      Size = 4
    end
    object qryPessoaRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 10
    end
    object qryPessoaCIDNASCIM: TLargeintField
      FieldName = 'CIDNASCIM'
      Required = True
    end
    object qryPessoaDEFICIENCIA: TStringField
      FieldName = 'DEFICIENCIA'
      Size = 4
    end
    object qryPessoaESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 4
    end
    object qryPessoaRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object qryPessoaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 45
    end
    object qryPessoaTEL1: TStringField
      FieldName = 'TEL1'
      Size = 14
    end
    object qryPessoaTEL2: TStringField
      FieldName = 'TEL2'
      Size = 14
    end
  end
  object qryGenero: TZQueryMC
    Connection = _frmMigraBase.SourceDB
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
    Left = 136
    Top = 8
    object qryGeneroCodGenero: TIntegerField
      FieldName = 'CodGenero'
      Required = True
    end
    object qryGeneroTipo: TStringField
      FieldName = 'Tipo'
      Required = True
    end
  end
  object qryPreco: TZQueryMC
    Connection = _frmMigraBase.SourceDB
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBPRECO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 200
    Top = 8
    object qryPrecoCodPreco: TIntegerField
      FieldName = 'CodPreco'
      Required = True
    end
    object qryPrecoTipo: TStringField
      FieldName = 'Tipo'
      Required = True
      Size = 45
    end
    object qryPrecoValor: TFloatField
      FieldName = 'Valor'
      Required = True
    end
  end
  object qryFilme: TZQueryMC
    Connection = _frmMigraBase.SourceDB
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      
        '      CODFILME,  P.CODFICHA AS '#39'CODFORNECEDOR'#39', CODPRECO, CODGEN' +
        'ERO, F.NOME,'
      
        '      AUTOR, DVD, DATAAQU, QUANTIDADE, SINOPSE, ESTANTE, VALORCO' +
        'MPRA, PARTICIP1, PARTICIP2, PARTICIP3, PRTELEIRA'
      'FROM TBFILME F, TBPESSOA P'
      'WHERE P.CODPESSOA=F.CODFORNECEDOR')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 16
    Top = 64
    object qryFilmeCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
    end
    object qryFilmeCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object qryFilmeCODPRECO: TIntegerField
      FieldName = 'CODPRECO'
      Required = True
    end
    object qryFilmeCODGENERO: TIntegerField
      FieldName = 'CODGENERO'
      Required = True
    end
    object qryFilmeNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object qryFilmeAUTOR: TStringField
      FieldName = 'AUTOR'
      Size = 30
    end
    object qryFilmeDVD: TStringField
      FieldName = 'DVD'
      Required = True
      Size = 3
    end
    object qryFilmeDATAAQU: TDateField
      FieldName = 'DATAAQU'
      Required = True
    end
    object qryFilmeQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object qryFilmeSINOPSE: TMemoField
      FieldName = 'SINOPSE'
      BlobType = ftMemo
    end
    object qryFilmeESTANTE: TStringField
      FieldName = 'ESTANTE'
      Size = 10
    end
    object qryFilmeVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
    end
    object qryFilmePARTICIP1: TStringField
      FieldName = 'PARTICIP1'
      Size = 30
    end
    object qryFilmePARTICIP2: TStringField
      FieldName = 'PARTICIP2'
      Size = 30
    end
    object qryFilmePARTICIP3: TStringField
      FieldName = 'PARTICIP3'
      Size = 30
    end
    object qryFilmePRTELEIRA: TStringField
      FieldName = 'PRTELEIRA'
      Size = 10
    end
  end
  object qryFita: TZQueryMC
    Connection = _frmMigraBase.SourceDB
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT SUBCOD, CODFILME, DISPONIVEL, BARCODE FROM TBFITA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 72
    Top = 64
    object qryFitaSUBCOD: TStringField
      FieldName = 'SUBCOD'
      Required = True
      Size = 10
    end
    object qryFitaCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
    end
    object qryFitaDISPONIVEL: TStringField
      FieldName = 'DISPONIVEL'
      Required = True
      Size = 3
    end
    object qryFitaBARCODE: TStringField
      FieldName = 'BARCODE'
      Size = 40
    end
  end
  object qryAluguel: TZQueryMC
    Connection = _frmMigraBase.SourceDB
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'SELECT CODALUGUEL, CODPESSOA, RETIRADA, ENTREGA, VALOR, PAGO FRO' +
        'M TBALUGUEL')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 128
    Top = 64
    object qryAluguelCODALUGUEL: TIntegerField
      FieldName = 'CODALUGUEL'
      Required = True
    end
    object qryAluguelCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object qryAluguelRETIRADA: TDateField
      FieldName = 'RETIRADA'
      Required = True
    end
    object qryAluguelENTREGA: TDateField
      FieldName = 'ENTREGA'
      Required = True
    end
    object qryAluguelVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object qryAluguelPAGO: TFloatField
      FieldName = 'PAGO'
      Required = True
    end
  end
  object qryItemAluguel: TZQueryMC
    Connection = _frmMigraBase.SourceDB
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'SELECT CODITEMALUG, CODALUGUEL, VALOR, DEVOLVE, CODFILME, CODFIT' +
        'A from tbitemaluguel')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 200
    Top = 64
    object qryItemAluguelCODITEMALUG: TIntegerField
      FieldName = 'CODITEMALUG'
      Required = True
    end
    object qryItemAluguelCODALUGUEL: TIntegerField
      FieldName = 'CODALUGUEL'
      Required = True
    end
    object qryItemAluguelVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object qryItemAluguelDEVOLVE: TStringField
      FieldName = 'DEVOLVE'
      Required = True
      Size = 3
    end
    object qryItemAluguelCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
    end
    object qryItemAluguelCODFITA: TStringField
      FieldName = 'CODFITA'
      Required = True
      Size = 10
    end
  end
  object qryResreva: TZQueryMC
    Connection = _frmMigraBase.SourceDB
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'SELECT CODRESERVA, CODFITA, CODPESSOA, RESERVA, CODFICHA FROM TB' +
        'RESERVA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 16
    Top = 120
    object qryResrevaCODRESERVA: TIntegerField
      FieldName = 'CODRESERVA'
      Required = True
    end
    object qryResrevaCODFITA: TStringField
      FieldName = 'CODFITA'
      Required = True
      Size = 10
    end
    object qryResrevaCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object qryResrevaRESERVA: TDateField
      FieldName = 'RESERVA'
      Required = True
    end
    object qryResrevaCODFICHA: TSmallintField
      FieldName = 'CODFICHA'
    end
  end
  object qryDebito: TZQueryMC
    Connection = _frmMigraBase.SourceDB
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBDEBITO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 72
    Top = 120
    object qryDebitoCodDebito: TIntegerField
      FieldName = 'CodDebito'
      Required = True
    end
    object qryDebitoCodFicha: TIntegerField
      FieldName = 'CodFicha'
      Required = True
    end
    object qryDebitoValor: TFloatField
      FieldName = 'Valor'
      Required = True
    end
    object qryDebitoVencimento: TDateField
      FieldName = 'Vencimento'
      Required = True
    end
  end
  object qryCaixa: TZQueryMC
    Connection = _frmMigraBase.SourceDB
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBCAIXA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 128
    Top = 120
    object qryCaixaCodCaixa: TIntegerField
      FieldName = 'CodCaixa'
    end
    object qryCaixaCodEmp: TIntegerField
      FieldName = 'CodEmp'
      Required = True
    end
    object qryCaixaCodDescricao: TIntegerField
      FieldName = 'CodDescricao'
      Required = True
    end
    object qryCaixaValor: TFloatField
      FieldName = 'Valor'
      Required = True
    end
    object qryCaixaTipo: TStringField
      FieldName = 'Tipo'
      Required = True
      Size = 1
    end
    object qryCaixaLancamento: TDateField
      FieldName = 'Lancamento'
      Required = True
    end
  end
  object sqlCliente: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      ''
      'SELECT * FROM TBCLIENTE')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 416
    Top = 8
    object sqlClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sqlClienteCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object sqlClienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 35
    end
    object sqlClienteCORE: TStringField
      FieldName = 'CORE'
    end
    object sqlClienteCONTATONOME: TStringField
      FieldName = 'CONTATONOME'
      Size = 45
    end
    object sqlClienteCONTATORAMAL: TStringField
      FieldName = 'CONTATORAMAL'
      Size = 5
    end
    object sqlClienteCONTATOENDERECO: TStringField
      FieldName = 'CONTATOENDERECO'
      Size = 45
    end
    object sqlClienteCONTATONBAIRRO: TStringField
      FieldName = 'CONTATONBAIRRO'
      Size = 35
    end
    object sqlClienteCONTATOCOMPLEMENTO: TStringField
      FieldName = 'CONTATOCOMPLEMENTO'
      Size = 35
    end
    object sqlClienteCONTATOCIDADEID: TIntegerField
      FieldName = 'CONTATOCIDADEID'
    end
    object sqlClienteCONTATOCEP: TStringField
      FieldName = 'CONTATOCEP'
      Size = 10
    end
    object sqlClienteCODGERCONTA: TIntegerField
      FieldName = 'CODGERCONTA'
    end
    object sqlClienteCONTA: TStringField
      FieldName = 'CONTA'
      Size = 25
    end
    object sqlClienteFAVORECIDO: TStringField
      FieldName = 'FAVORECIDO'
      Size = 35
    end
    object sqlClientePROPRIETARIO: TStringField
      FieldName = 'PROPRIETARIO'
      Required = True
      Size = 3
    end
    object sqlClienteFIADOR: TStringField
      FieldName = 'FIADOR'
      Required = True
      Size = 3
    end
    object sqlClienteFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Required = True
      Size = 3
    end
    object sqlClienteFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Required = True
      Size = 3
    end
    object sqlClienteLOCADOR: TStringField
      FieldName = 'LOCADOR'
      Required = True
      Size = 3
    end
    object sqlClienteCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Required = True
      Size = 3
    end
    object sqlClienteCONTATOTEL: TStringField
      FieldName = 'CONTATOTEL'
      Size = 13
    end
    object sqlClienteINTERESSADO: TStringField
      FieldName = 'INTERESSADO'
      Required = True
      Size = 3
    end
    object sqlClienteTITULAR: TStringField
      FieldName = 'TITULAR'
      Required = True
      Size = 3
    end
    object sqlClienteRECEBEEMAIL: TStringField
      FieldName = 'RECEBEEMAIL'
      Size = 3
    end
    object sqlClientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 35
    end
    object sqlClienteCODTITULAR: TIntegerField
      FieldName = 'CODTITULAR'
    end
    object sqlClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 3
    end
    object sqlClienteEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 3
    end
    object sqlClienteVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Required = True
      Size = 3
    end
    object sqlClienteREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Required = True
      Size = 3
    end
    object sqlClienteTRANSPORTADOR: TStringField
      FieldName = 'TRANSPORTADOR'
      Required = True
      Size = 3
    end
  end
  object sqlPessoa: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      ''
      'SELECT * FROM TBPESSOA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 360
    Top = 8
    object sqlPessoaCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object sqlPessoaCODCIDRESID: TIntegerField
      FieldName = 'CODCIDRESID'
      Required = True
    end
    object sqlPessoaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sqlPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 45
    end
    object sqlPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 35
    end
    object sqlPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlPessoaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object sqlPessoaTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Required = True
      Size = 1
    end
    object sqlPessoaCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
    object sqlPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 70
    end
    object sqlPessoaWEB: TStringField
      FieldName = 'WEB'
      Size = 70
    end
    object sqlPessoaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object sqlPessoaDATATUALIZACAO: TDateField
      FieldName = 'DATATUALIZACAO'
      Required = True
    end
    object sqlPessoaDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object sqlPessoaSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object sqlPessoaOBS: TBlobField
      FieldName = 'OBS'
    end
    object sqlPessoaTELRAMAL: TStringField
      FieldName = 'TELRAMAL'
      Size = 5
    end
    object sqlPessoaCODCIDADENACIMENTO: TIntegerField
      FieldName = 'CODCIDADENACIMENTO'
    end
    object sqlPessoaDEFICIECIA: TStringField
      FieldName = 'DEFICIECIA'
      Size = 255
    end
    object sqlPessoaESTADOCIVIL: TIntegerField
      FieldName = 'ESTADOCIVIL'
    end
    object sqlPessoaRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object sqlPessoaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object sqlPessoaTEL: TStringField
      FieldName = 'TEL'
      Size = 18
    end
    object sqlPessoaCEL: TStringField
      FieldName = 'CEL'
      Size = 18
    end
  end
  object sqlGenero: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      ''
      'SELECT * FROM TBGENERO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 480
    Top = 8
    object sqlGeneroCODGENERO: TIntegerField
      FieldName = 'CODGENERO'
      Required = True
    end
    object sqlGeneroNOME: TStringField
      FieldName = 'NOME'
      Required = True
    end
  end
  object sqlPreco: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      ''
      'SELECT * FROM TBPRECO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 544
    Top = 8
    object sqlPrecoCODPRECO: TIntegerField
      FieldName = 'CODPRECO'
      Required = True
    end
    object sqlPrecoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object sqlPrecoVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
  end
  object sqlFilme: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      ''
      'SELECT * FROM TBFILME')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 360
    Top = 64
    object sqlFilmeCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
    end
    object sqlFilmeCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object sqlFilmeCODPRECO: TIntegerField
      FieldName = 'CODPRECO'
      Required = True
    end
    object sqlFilmeCODGENERO: TIntegerField
      FieldName = 'CODGENERO'
      Required = True
    end
    object sqlFilmeNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object sqlFilmeAUTOR: TStringField
      FieldName = 'AUTOR'
      Size = 30
    end
    object sqlFilmeDVD: TStringField
      FieldName = 'DVD'
      Required = True
      Size = 3
    end
    object sqlFilmeDATAAQU: TDateField
      FieldName = 'DATAAQU'
      Required = True
    end
    object sqlFilmeQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object sqlFilmeSINOPSE: TBlobField
      FieldName = 'SINOPSE'
    end
    object sqlFilmeESTANTE: TStringField
      FieldName = 'ESTANTE'
      Size = 10
    end
    object sqlFilmeVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
    end
    object sqlFilmePARTICIP1: TStringField
      FieldName = 'PARTICIP1'
      Size = 30
    end
    object sqlFilmePARTICIP2: TStringField
      FieldName = 'PARTICIP2'
      Size = 30
    end
    object sqlFilmePARTICIP3: TStringField
      FieldName = 'PARTICIP3'
      Size = 30
    end
    object sqlFilmePRATELEIRA: TStringField
      FieldName = 'PRATELEIRA'
      Size = 10
    end
  end
  object sqlFita: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBFITA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 416
    Top = 64
    object sqlFitaSUBCOD: TStringField
      FieldName = 'SUBCOD'
      Required = True
      Size = 13
    end
    object sqlFitaCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
    end
    object sqlFitaDISPONIVEL: TStringField
      FieldName = 'DISPONIVEL'
      Required = True
      Size = 3
    end
    object sqlFitaBARCODE: TStringField
      FieldName = 'BARCODE'
      Size = 40
    end
  end
  object sqlAluguel: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      ''
      'SELECT * FROM TBALUGUEL')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 472
    Top = 64
    object sqlAluguelCODALUGUEL: TIntegerField
      FieldName = 'CODALUGUEL'
      Required = True
    end
    object sqlAluguelCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object sqlAluguelRETIRADA: TDateField
      FieldName = 'RETIRADA'
      Required = True
    end
    object sqlAluguelENTREGA: TDateField
      FieldName = 'ENTREGA'
      Required = True
    end
    object sqlAluguelVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object sqlAluguelPAGO: TFloatField
      FieldName = 'PAGO'
      Required = True
    end
  end
  object sqlItemAluguel: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      ''
      'SELECT * FROM TBITEMALUGUEL')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 544
    Top = 64
    object sqlItemAluguelCODITEMALUG: TIntegerField
      FieldName = 'CODITEMALUG'
      Required = True
    end
    object sqlItemAluguelCODALUGUEL: TIntegerField
      FieldName = 'CODALUGUEL'
      Required = True
    end
    object sqlItemAluguelVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object sqlItemAluguelDEVOLVE: TStringField
      FieldName = 'DEVOLVE'
      Required = True
      Size = 3
    end
    object sqlItemAluguelCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
    end
    object sqlItemAluguelSUBCOD: TStringField
      FieldName = 'SUBCOD'
      Required = True
      Size = 13
    end
  end
  object sqlReserva: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      ''
      'SELECT * FROM TBRESERVA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 360
    Top = 120
    object sqlReservaCODRESERVA: TIntegerField
      FieldName = 'CODRESERVA'
      Required = True
    end
    object sqlReservaSUBCOD: TStringField
      FieldName = 'SUBCOD'
      Required = True
      Size = 13
    end
    object sqlReservaCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object sqlReservaRESERVA: TDateField
      FieldName = 'RESERVA'
      Required = True
    end
    object sqlReservaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
  end
  object sqlDebito: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      ''
      'SELECT * FROM TBDEBITO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 416
    Top = 120
    object sqlDebitoCODDEBITO: TIntegerField
      FieldName = 'CODDEBITO'
      Required = True
    end
    object sqlDebitoCODFICHA: TIntegerField
      FieldName = 'CODFICHA'
      Required = True
    end
    object sqlDebitoVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object sqlDebitoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Required = True
    end
  end
  object sqlCaixa: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      ''
      'SELECT * FROM TBCAIXA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 472
    Top = 120
    object sqlCaixaCODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      Required = True
    end
    object sqlCaixaCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      Required = True
    end
    object sqlCaixaCODDESCRICAO: TIntegerField
      FieldName = 'CODDESCRICAO'
      Required = True
    end
    object sqlCaixaVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object sqlCaixaTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 1
    end
    object sqlCaixaLANCAMENTO: TDateField
      FieldName = 'LANCAMENTO'
      Required = True
    end
  end
end
