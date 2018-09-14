inherited _frmCadGridDebito: T_frmCadGridDebito
  Left = 214
  Top = 250
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'D'#233'bitos'
      end
    end
  end
  inherited Panel3: TPanel
    inherited ToolBar1: TToolBar
      Left = 506
      inherited bitInserir: TSpeedButton
        Visible = False
      end
      inherited bitAlterar: TSpeedButton
        Caption = '&Pagar'
      end
      inherited bitGravar: TSpeedButton
        Visible = False
      end
      inherited bitCancelar: TSpeedButton
        Visible = False
      end
      inherited bitImprimir: TSpeedButton
        Visible = False
      end
    end
  end
  inherited Panel5: TPanel
    inherited Panel6: TPanel
      Top = 222
      Height = 44
      Align = alNone
      Visible = False
      inherited Shape5: TShape
        Height = 42
      end
      inherited Label3: TLabelMC
        Left = 5
      end
      inherited Label5: TLabelMC
        Left = 88
      end
      inherited dbeCodigo: TDBEditMC
        Left = 4
      end
      inherited dbeDescricao: TDBEditMC
        Left = 87
      end
    end
    inherited grd: TDBGridMC
      Height = 265
      Columns = <
        item
          Expanded = False
          FieldName = 'P_NOME'
          Title.Caption = 'Nome do titular'
          Width = 248
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D_VALOR'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Width = 75
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'P_CODPESSOA'
    object cdsGridP_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'P_NOME'
      Required = True
      Size = 45
    end
    object cdsGridD_VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'D_VALOR'
      Required = True
      currency = True
    end
    object cdsGridD_CODFICHA: TIntegerField
      FieldName = 'D_CODFICHA'
      Required = True
      Visible = False
    end
    object cdsGridP_CODPESSOA: TIntegerField
      FieldName = 'P_CODPESSOA'
      Required = True
      Visible = False
    end
    object cdsGridCODDEBITO: TIntegerField
      FieldName = 'CODDEBITO'
      Required = True
      Visible = False
    end
    object cdsGridVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
      Required = True
      DisplayFormat = 'dd/MM/yyyy'
    end
  end
  inherited qryGrid: TZQueryMC
    Connection = nil
    SQL.Strings = (
      'SELECT'
      
        '  P.NOME AS P_NOME, D.VALOR AS D_VALOR, D.CODFICHA AS D_CODFICHA' +
        ', P.CODPESSOA AS P_CODPESSOA, CODDEBITO, VENCIMENTO'
      'FROM TBDEBITO D'
      'LEFT JOIN TBCLIENTE C ON C.CODCLIENTE=D.CODFICHA'
      'LEFT JOIN TBPESSOA P ON P.CODPESSOA=C.CODPESSOA')
    Conexao = DM.db
    object qryGridP_NOME: TStringField
      FieldName = 'P_NOME'
      Required = True
      Size = 45
    end
    object qryGridD_VALOR: TFloatField
      FieldName = 'D_VALOR'
      Required = True
    end
    object qryGridD_CODFICHA: TIntegerField
      FieldName = 'D_CODFICHA'
      Required = True
    end
    object qryGridP_CODPESSOA: TIntegerField
      FieldName = 'P_CODPESSOA'
      Required = True
    end
    object qryGridCODDEBITO: TIntegerField
      FieldName = 'CODDEBITO'
      Required = True
      Visible = False
    end
    object qryGridVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Required = True
    end
  end
  inherited qryCad: TZQueryMC
    Connection = nil
    SQL.Strings = (
      'SELECT'
      
        '    P.CODPESSOA, C.CODCLIENTE, ENDERECO, COMPLEMENTO, BAIRRO, TE' +
        'L, CEL, CEP, P.NOME AS P_NOME, TIPOPESSOA, CPFCNPJ, EMAIL, WEB,'
      
        '    DATACADASTRO, RG, DATANASCIMENTO, SEXO, TELRAMAL, N.NOME AS ' +
        'N_NOME, DEFICIECIA, ESTADOCIVIL, APELIDO, TITULAR,'
      '    ATIVO, CID.NOME AS CID_NOME, CID.CODUF, C.CODTITULAR, P.FOTO'
      'FROM TBPESSOA P, TBCLIENTE C, TBCIDADE N, TBCIDADE CID'
      
        'WHERE C.CODPESSOA=P.CODPESSOA AND N.CODCIDADE=P.CODCIDADENACIMEN' +
        'TO'
      'AND CID.CODCIDADE=CODCIDRESID AND P.CODPESSOA=:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    Conexao = DM.db
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object qryCadCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object qryCadENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 45
    end
    object qryCadCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 25
    end
    object qryCadBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 35
    end
    object qryCadTEL: TStringField
      FieldName = 'TEL'
      Size = 13
    end
    object qryCadCEL: TStringField
      FieldName = 'CEL'
      Size = 13
    end
    object qryCadCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qryCadP_NOME: TStringField
      FieldName = 'P_NOME'
      Required = True
      Size = 45
    end
    object qryCadTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Required = True
      Size = 1
    end
    object qryCadCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
    object qryCadEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 70
    end
    object qryCadWEB: TStringField
      FieldName = 'WEB'
      Size = 70
    end
    object qryCadDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object qryCadRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object qryCadDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object qryCadSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qryCadTELRAMAL: TStringField
      FieldName = 'TELRAMAL'
      Size = 5
    end
    object qryCadN_NOME: TStringField
      FieldName = 'N_NOME'
      Required = True
      Size = 35
    end
    object qryCadDEFICIECIA: TStringField
      FieldName = 'DEFICIECIA'
      Size = 255
    end
    object qryCadESTADOCIVIL: TIntegerField
      FieldName = 'ESTADOCIVIL'
    end
    object qryCadAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 35
    end
    object qryCadTITULAR: TStringField
      FieldName = 'TITULAR'
      Required = True
      Size = 3
    end
    object qryCadATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 3
    end
    object qryCadCID_NOME: TStringField
      FieldName = 'CID_NOME'
      Required = True
      Size = 35
    end
    object qryCadCODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object qryCadCODTITULAR: TIntegerField
      FieldName = 'CODTITULAR'
    end
    object qryCadFOTO: TBlobField
      FieldName = 'FOTO'
    end
  end
end
