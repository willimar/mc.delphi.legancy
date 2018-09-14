inherited _frmCadGridPropriedade: T_frmCadGridPropriedade
  Left = 82
  Top = 131
  Width = 807
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanelMC
    Width = 799
    inherited Shape1: TShape
      Width = 621
    end
    inherited lblFechar: TLabelMC
      Left = 787
    end
    inherited Panel4: TPanelMC
      inherited lblTitulo: TLabelMC
        Caption = 'Propriedade'
      end
    end
  end
  inherited Panel3: TPanelMC
    Width = 799
    inherited Shape3: TShape
      Width = 799
    end
    inherited tbPadrao: TToolBar
      Left = 279
    end
  end
  inherited Panel5: TPanelMC
    Width = 622
    inherited Shape5: TShape
      Width = 620
    end
    inherited pgcCadastro: TPageControl
      Width = 620
      inherited tbsGrid: TTabSheet
        inherited grd: TDBGridMC
          Width = 612
        end
      end
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODPROPRIEDADE'
    object cdsGridCODPROPRIEDADE: TIntegerField
      FieldName = 'CODPROPRIEDADE'
      Required = True
      Visible = False
    end
    object cdsGridP_NOME: TStringField
      DisplayLabel = 'Propriet'#225'rio'
      FieldName = 'P_NOME'
      Required = True
      Size = 45
    end
    object cdsGridR_NOME: TStringField
      DisplayLabel = 'Rua'
      FieldName = 'R_NOME'
      Required = True
      Size = 45
    end
    object cdsGridB_NOME: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'B_NOME'
      Required = True
      Size = 45
    end
    object cdsGridC_NOME: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'C_NOME'
      Required = True
      Size = 35
    end
    object cdsGridCODUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object cdsGridCPFCNPJ: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
  end
  inherited qryGrid: TZQueryMC
    Tag = 0
    SQL.Strings = (
      'SELECT'
      
        '   CODPROPRIEDADE, R.NOME AS R_NOME, B.NOME AS B_NOME, C.NOME AS' +
        ' C_NOME, C.CODUF, P.NOME AS P_NOME, P.CPFCNPJ'
      
        'FROM TBPROPRIEDADE PR, TBRUA R, TBBAIRRO B, TBCIDADE C, TBCLIENT' +
        'E CL, TBPESSOA P'
      
        'WHERE R.CODRUA=PR.CODRUA AND B.CODBAIRRO=R.CODBAIRRO AND C.CODCI' +
        'DADE=B.CODCIDADE AND CL.CODCLIENTE=PR.CODPROPRIETARIO AND P.CODP' +
        'ESSOA=CL.CODPESSOA')
    object qryGridCODPROPRIEDADE: TIntegerField
      FieldName = 'CODPROPRIEDADE'
      Required = True
    end
    object qryGridR_NOME: TStringField
      FieldName = 'R_NOME'
      Required = True
      Size = 45
    end
    object qryGridB_NOME: TStringField
      FieldName = 'B_NOME'
      Required = True
      Size = 45
    end
    object qryGridC_NOME: TStringField
      FieldName = 'C_NOME'
      Required = True
      Size = 35
    end
    object qryGridCODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object qryGridP_NOME: TStringField
      FieldName = 'P_NOME'
      Required = True
      Size = 45
    end
    object qryGridCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
  end
  inherited qryCad: TZQueryMC
    OnNewRecord = qryCadNewRecord
    SQL.Strings = (
      'SELECT * FROM TBPROPRIEDADE WHERE CODPROPRIEDADE=:CODIGO')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    TableName = 'TBPROPRIEDADE'
    FieldKey = 'CODPROPRIEDADE'
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODPROPRIEDADE: TIntegerField
      FieldName = 'CODPROPRIEDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadCODRUA: TIntegerField
      Tag = 1
      FieldName = 'CODRUA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadCODPROPRIETARIO: TIntegerField
      Tag = 1
      FieldName = 'CODPROPRIETARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadDISPONIBILIDADE: TStringField
      FieldName = 'DISPONIBILIDADE'
      Required = True
      Size = 1
    end
    object qryCadVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object qryCadVALORIPTU: TFloatField
      FieldName = 'VALORIPTU'
    end
    object qryCadVALORCONDOMINIO: TFloatField
      FieldName = 'VALORCONDOMINIO'
    end
    object qryCadVALORPRESTACAO: TFloatField
      FieldName = 'VALORPRESTACAO'
    end
    object qryCadVALORPOUPANCA: TFloatField
      FieldName = 'VALORPOUPANCA'
    end
    object qryCadVALORSALDODEVEDOR: TFloatField
      FieldName = 'VALORSALDODEVEDOR'
    end
    object qryCadPRESTACOESRESTANTES: TIntegerField
      FieldName = 'PRESTACOESRESTANTES'
    end
    object qryCadDORMSEMSUITE: TIntegerField
      FieldName = 'DORMSEMSUITE'
      Required = True
    end
    object qryCadDORMCOMSUITE: TIntegerField
      FieldName = 'DORMCOMSUITE'
      Required = True
    end
    object qryCadCLOSET: TIntegerField
      FieldName = 'CLOSET'
      Required = True
    end
    object qryCadBANHSOCIAL: TIntegerField
      FieldName = 'BANHSOCIAL'
      Required = True
    end
    object qryCadBANHSERVICO: TIntegerField
      FieldName = 'BANHSERVICO'
      Required = True
    end
    object qryCadHIDROMASSAGEM: TIntegerField
      FieldName = 'HIDROMASSAGEM'
      Required = True
    end
    object qryCadDEPEMPREGADA: TIntegerField
      FieldName = 'DEPEMPREGADA'
      Required = True
    end
    object qryCadLAVABO: TIntegerField
      FieldName = 'LAVABO'
      Required = True
    end
    object qryCadAMBLIVING: TIntegerField
      FieldName = 'AMBLIVING'
      Required = True
    end
    object qryCadSACADA: TIntegerField
      FieldName = 'SACADA'
      Required = True
    end
    object qryCadVAGAGARAGEM: TIntegerField
      FieldName = 'VAGAGARAGEM'
      Required = True
    end
    object qryCadPISO: TStringField
      FieldName = 'PISO'
      Size = 255
    end
    object qryCadMOBILIADO: TStringField
      FieldName = 'MOBILIADO'
      Required = True
      Size = 3
    end
    object qryCadDESCMOBILIA: TBlobField
      FieldName = 'DESCMOBILIA'
    end
    object qryCadSALAESTAR: TStringField
      FieldName = 'SALAESTAR'
      Required = True
      Size = 3
    end
    object qryCadSALATV: TStringField
      FieldName = 'SALATV'
      Required = True
      Size = 3
    end
    object qryCadTERRACO: TStringField
      FieldName = 'TERRACO'
      Required = True
      Size = 3
    end
    object qryCadCOPA: TStringField
      FieldName = 'COPA'
      Required = True
      Size = 3
    end
    object qryCadCOZINHA: TStringField
      FieldName = 'COZINHA'
      Required = True
      Size = 3
    end
    object qryCadPISCINA: TStringField
      FieldName = 'PISCINA'
      Required = True
      Size = 3
    end
    object qryCadAREASERVICO: TStringField
      FieldName = 'AREASERVICO'
      Required = True
      Size = 3
    end
    object qryCadTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Required = True
      Size = 3
    end
    object qryCadINTERNETCABO: TStringField
      FieldName = 'INTERNETCABO'
      Required = True
      Size = 3
    end
    object qryCadTVCABO: TStringField
      FieldName = 'TVCABO'
      Required = True
      Size = 3
    end
    object qryCadLAVANDERIA: TStringField
      FieldName = 'LAVANDERIA'
      Required = True
      Size = 3
    end
    object qryCadCHURRASQUEIRA: TStringField
      FieldName = 'CHURRASQUEIRA'
      Required = True
      Size = 3
    end
    object qryCadSAUNA: TStringField
      FieldName = 'SAUNA'
      Required = True
      Size = 3
    end
    object qryCadADEGA: TStringField
      FieldName = 'ADEGA'
      Required = True
      Size = 3
    end
    object qryCadALARME: TStringField
      FieldName = 'ALARME'
      Required = True
      Size = 3
    end
    object qryCadARMARIO: TStringField
      FieldName = 'ARMARIO'
      Required = True
      Size = 3
    end
    object qryCadCANIL: TStringField
      FieldName = 'CANIL'
      Required = True
      Size = 3
    end
    object qryCadDESPENSA: TStringField
      FieldName = 'DESPENSA'
      Required = True
      Size = 3
    end
    object qryCadESCRITORIO: TStringField
      FieldName = 'ESCRITORIO'
      Required = True
      Size = 3
    end
    object qryCadGRADESJANELA: TStringField
      FieldName = 'GRADESJANELA'
      Required = True
      Size = 3
    end
    object qryCadINTERFONE: TStringField
      FieldName = 'INTERFONE'
      Required = True
      Size = 3
    end
    object qryCadJARDIM: TStringField
      FieldName = 'JARDIM'
      Required = True
      Size = 3
    end
    object qryCadMESANINO: TStringField
      FieldName = 'MESANINO'
      Required = True
      Size = 3
    end
    object qryCadSOTAO: TStringField
      FieldName = 'SOTAO'
      Required = True
      Size = 3
    end
    object qryCadPORAO: TStringField
      FieldName = 'PORAO'
      Required = True
      Size = 3
    end
    object qryCadVARANDA: TStringField
      FieldName = 'VARANDA'
      Required = True
      Size = 3
    end
    object qryCadFORRO: TStringField
      FieldName = 'FORRO'
      Required = True
      Size = 1
    end
    object qryCadCERCADO: TStringField
      FieldName = 'CERCADO'
      Required = True
      Size = 1
    end
    object qryCadCASAFRENE: TStringField
      FieldName = 'CASAFRENE'
      Required = True
      Size = 3
    end
    object qryCadCASAFUNDO: TStringField
      FieldName = 'CASAFUNDO'
      Required = True
      Size = 3
    end
    object qryCadCASALATERAL: TStringField
      FieldName = 'CASALATERAL'
      Required = True
      Size = 3
    end
    object qryCadBANHEIRO: TStringField
      FieldName = 'BANHEIRO'
      Required = True
      Size = 3
    end
    object qryCadELEVADOR: TStringField
      FieldName = 'ELEVADOR'
      Required = True
      Size = 3
    end
    object qryCadGASCENTRAL: TStringField
      FieldName = 'GASCENTRAL'
      Required = True
      Size = 3
    end
    object qryCadSOBRELOJA: TStringField
      FieldName = 'SOBRELOJA'
      Required = True
      Size = 3
    end
    object qryCadQUITADO: TStringField
      FieldName = 'QUITADO'
      Required = True
      Size = 3
    end
    object qryCadRUACALCADA: TStringField
      FieldName = 'RUACALCADA'
      Required = True
      Size = 3
    end
    object qryCadSALAOFESTA: TStringField
      FieldName = 'SALAOFESTA'
      Required = True
      Size = 3
    end
    object qryCadTERREO: TStringField
      FieldName = 'TERREO'
      Required = True
      Size = 3
    end
    object qryCadVIGIANOTURNO: TStringField
      FieldName = 'VIGIANOTURNO'
      Required = True
      Size = 3
    end
    object qryCadDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object qryCadSALANUMERO: TStringField
      FieldName = 'SALANUMERO'
      Size = 25
    end
    object qryCadQTDSALA: TIntegerField
      FieldName = 'QTDSALA'
    end
    object qryCadAREAPRIVATIVA: TFloatField
      FieldName = 'AREAPRIVATIVA'
    end
    object qryCadIMEDIACAO: TBlobField
      FieldName = 'IMEDIACAO'
    end
    object qryCadAREATERRENO: TFloatField
      FieldName = 'AREATERRENO'
    end
    object qryCadAREAGALPAO: TFloatField
      FieldName = 'AREAGALPAO'
    end
    object qryCadAREAFRENTE: TFloatField
      FieldName = 'AREAFRENTE'
    end
    object qryCadAREALADODIREITO: TFloatField
      FieldName = 'AREALADODIREITO'
    end
    object qryCadAREALADOESQUERDO: TFloatField
      FieldName = 'AREALADOESQUERDO'
    end
    object qryCadAREAFUNDOS: TFloatField
      FieldName = 'AREAFUNDOS'
    end
    object qryCadAREATIPO: TStringField
      FieldName = 'AREATIPO'
      Required = True
      Size = 1
    end
    object qryCadGALPAOMATERIAL: TStringField
      FieldName = 'GALPAOMATERIAL'
      Size = 1
    end
    object qryCadTERRENOTIPO: TStringField
      FieldName = 'TERRENOTIPO'
      Required = True
      Size = 1
    end
    object qryCadANTENACOLETIVA: TStringField
      FieldName = 'ANTENACOLETIVA'
      Required = True
      Size = 3
    end
    object qryCadANTENAPARABOLICA: TStringField
      FieldName = 'ANTENAPARABOLICA'
      Required = True
      Size = 3
    end
    object qryCadAPTOZELADOR: TStringField
      FieldName = 'APTOZELADOR'
      Required = True
      Size = 3
    end
    object qryCadCONDCHURRASQUEIRA: TStringField
      FieldName = 'CONDCHURRASQUEIRA'
      Required = True
      Size = 3
    end
    object qryCadESTACIONAMENTO: TStringField
      FieldName = 'ESTACIONAMENTO'
      Required = True
      Size = 3
    end
    object qryCadPLAYGROUND: TStringField
      FieldName = 'PLAYGROUND'
      Required = True
      Size = 3
    end
    object qryCadCONDPISCINA: TStringField
      FieldName = 'CONDPISCINA'
      Required = True
      Size = 3
    end
    object qryCadPORTARIA: TStringField
      FieldName = 'PORTARIA'
      Required = True
      Size = 3
    end
    object qryCadQUADRAESPORTE: TStringField
      FieldName = 'QUADRAESPORTE'
      Required = True
      Size = 3
    end
    object qryCadSALAMUSCULACAO: TStringField
      FieldName = 'SALAMUSCULACAO'
      Required = True
      Size = 3
    end
    object qryCadNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qryCadAPTOBLOCO: TStringField
      FieldName = 'APTOBLOCO'
      Size = 10
    end
    object qryCadEDIFICIO: TStringField
      FieldName = 'EDIFICIO'
      Size = 10
    end
    object qryCadCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 10
    end
    object qryCadANDAR: TStringField
      FieldName = 'ANDAR'
      Size = 10
    end
    object qryCadAPTOANDAR: TStringField
      FieldName = 'APTOANDAR'
      Size = 10
    end
    object qryCadBLOCO: TStringField
      FieldName = 'BLOCO'
      Size = 10
    end
    object qryCadAPTOSCOND: TStringField
      FieldName = 'APTOSCOND'
      Size = 10
    end
    object qryCadAREATOTAL: TFloatField
      FieldName = 'AREATOTAL'
    end
    object qryCadPAVIMENTOS: TStringField
      FieldName = 'PAVIMENTOS'
      Size = 10
    end
    object qryCadCONDSAUNA: TStringField
      FieldName = 'CONDSAUNA'
      Size = 3
    end
    object qryCadBAR: TStringField
      FieldName = 'BAR'
      Size = 3
    end
    object qryCadMATERIALGALPAO: TStringField
      FieldName = 'MATERIALGALPAO'
      Size = 1
    end
    object qryCadIMOVELTIPO: TStringField
      FieldName = 'IMOVELTIPO'
      OnGetText = qryCadIMOVELTIPOGetText
      OnSetText = qryCadIMOVELTIPOSetText
      Size = 1
    end
  end
  inherited dsrCad: TDatasourceMC
    OnDataChange = dsrCadDataChange
  end
  object qryProprietario: TZQueryMC
    Tag = 3
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      
        '    C.CODCLIENTE AS C_CODCLIENTE, P.CPFCNPJ AS P_CPFCNPJ, P.NOME' +
        ' AS P_NOME, C.APELIDO AS C_APELIDO, P.RG AS P_RG,'
      
        '    C.CORE AS C_CORE, P.DATANASCIMENTO AS P_DATANASCIMENTO, N.NO' +
        'ME AS N_NOME, N.CODUF AS N_CODUF, P.SEXO AS P_SEXO,'
      
        '    P.ESTADOCIVIL AS P_ESTADOCIVIL, P.DEFICIECIA AS P_DEFICIECIA' +
        ', P.ENDERECO AS P_ENDERECO, P.BAIRRO AS P_BAIRRO,'
      
        '    P.COMPLEMENTO AS P_COMPLEMENTO, E.NOME AS E_NOME, E.CODUF AS' +
        ' E_CODUF, P.CEP AS P_CEP, P.TEL AS P_TEL,'
      '    P.TELRAMAL AS P_TELRAMAL, P.EMAIL AS P_EMAIL, P.WEB AS P_WEB'
      'FROM TBCLIENTE C, TBPESSOA P, TBCIDADE N, TBCIDADE E'
      'WHERE C.CODPESSOA=P.CODPESSOA'
      '      AND N.CODCIDADE=P.CODCIDADENACIMENTO'
      '      AND C.PROPRIETARIO='#39'Sim'#39
      '      AND E.CODCIDADE=P.CODCIDRESID')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 8
    Top = 237
    object qryProprietarioC_CODCLIENTE: TIntegerField
      FieldName = 'C_CODCLIENTE'
      Required = True
      Visible = False
    end
    object qryProprietarioP_CPFCNPJ: TStringField
      DisplayLabel = 'CPF / CNNPJ'
      FieldName = 'P_CPFCNPJ'
      Required = True
      Size = 18
    end
    object qryProprietarioP_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'P_NOME'
      Required = True
      Size = 45
    end
    object qryProprietarioC_APELIDO: TStringField
      DisplayLabel = 'Apelido'
      FieldName = 'C_APELIDO'
      Size = 35
    end
    object qryProprietarioP_RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'P_RG'
      Size = 11
    end
    object qryProprietarioC_CORE: TStringField
      DisplayLabel = 'Core'
      FieldName = 'C_CORE'
    end
    object qryProprietarioP_DATANASCIMENTO: TDateField
      DisplayLabel = 'Data de nascimento'
      FieldName = 'P_DATANASCIMENTO'
    end
    object qryProprietarioN_NOME: TStringField
      DisplayLabel = 'Naturalidade'
      FieldName = 'N_NOME'
      Required = True
      Size = 35
    end
    object qryProprietarioN_CODUF: TStringField
      FieldName = 'N_CODUF'
      Required = True
      Visible = False
      Size = 2
    end
    object qryProprietarioP_SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'P_SEXO'
      Size = 1
    end
    object qryProprietarioP_ESTADOCIVIL: TIntegerField
      DisplayLabel = 'Estado civil'
      FieldName = 'P_ESTADOCIVIL'
    end
    object qryProprietarioP_DEFICIECIA: TStringField
      DisplayLabel = 'Deficiencia'
      FieldName = 'P_DEFICIECIA'
      Size = 255
    end
    object qryProprietarioP_ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'P_ENDERECO'
      Size = 45
    end
    object qryProprietarioP_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'P_BAIRRO'
      Size = 35
    end
    object qryProprietarioP_COMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'P_COMPLEMENTO'
      Size = 25
    end
    object qryProprietarioE_NOME: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'E_NOME'
      Required = True
      Size = 35
    end
    object qryProprietarioE_CODUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'E_CODUF'
      Required = True
      Size = 2
    end
    object qryProprietarioP_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'P_CEP'
      Size = 10
    end
    object qryProprietarioP_TEL: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'P_TEL'
      Size = 13
    end
    object qryProprietarioP_TELRAMAL: TStringField
      DisplayLabel = 'Ramal'
      FieldName = 'P_TELRAMAL'
      Size = 5
    end
    object qryProprietarioP_EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'P_EMAIL'
      Size = 70
    end
    object qryProprietarioP_WEB: TStringField
      DisplayLabel = 'Site'
      FieldName = 'P_WEB'
      Size = 70
    end
  end
  object dsrProprietario: TDatasourceMC
    DataSet = qryProprietario
    Left = 8
    Top = 265
  end
  object qryUF: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBUF ORDER BY NOME')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 8
    Top = 173
    object qryUFCODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Visible = False
      Size = 2
    end
    object qryUFNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  object dsrUF: TDatasourceMC
    DataSet = qryUF
    Left = 8
    Top = 201
  end
  object qryCidade: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBCIDADE WHERE CODUF=:CODUF  ORDER BY NOME')
    ParamCheck = True
    Params = <
      item
        DataType = ftString
        Name = 'CODUF'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 40
    Top = 173
    ParamData = <
      item
        DataType = ftString
        Name = 'CODUF'
        ParamType = ptUnknown
      end>
    object qryCidadeCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Required = True
      Visible = False
    end
    object qryCidadeNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
    object qryCidadeCODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Visible = False
      Size = 2
    end
  end
  object dsrCidade: TDatasourceMC
    DataSet = qryCidade
    Left = 40
    Top = 201
  end
  object qryBairro: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBBAIRRO WHERE CODCIDADE=:CODCIDADE  ORDER BY NOME')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCIDADE'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 72
    Top = 173
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODCIDADE'
        ParamType = ptUnknown
      end>
    object qryBairroCODBAIRRO: TIntegerField
      FieldName = 'CODBAIRRO'
      Required = True
      Visible = False
    end
    object qryBairroCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Required = True
      Visible = False
    end
    object qryBairroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
  end
  object dsrBairro: TDatasourceMC
    DataSet = qryBairro
    Left = 72
    Top = 201
  end
  object qryRua: TZQueryMC
    Tag = 3
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBRUA WHERE CODBAIRRO=:CODBAIRRO  ORDER BY NOME')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODBAIRRO'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 104
    Top = 173
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODBAIRRO'
        ParamType = ptUnknown
      end>
    object qryRuaCODRUA: TIntegerField
      FieldName = 'CODRUA'
      Required = True
      Visible = False
    end
    object qryRuaCODBAIRRO: TIntegerField
      FieldName = 'CODBAIRRO'
      Visible = False
    end
    object qryRuaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryRuaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
  end
  object dsrRua: TDatasourceMC
    DataSet = qryRua
    Left = 104
    Top = 201
  end
end
