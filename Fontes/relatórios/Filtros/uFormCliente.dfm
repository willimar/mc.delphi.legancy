inherited _frmFormCliente: T_frmFormCliente
  Left = 175
  Top = 188
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'Clientes'
      end
    end
  end
  inherited Panel5: TPanel
    object bitCidade: TSpeedButton
      Left = 390
      Top = 114
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
    object LabelMC1: TLabelMC
      Left = 8
      Top = 96
      Width = 112
      Height = 13
      Caption = 'Documento de contrato'
    end
    object rdgModelo: TRadioGroup
      Left = 1
      Top = 1
      Width = 423
      Height = 68
      Align = alTop
      ItemIndex = 0
      Items.Strings = (
        'Contrato {Precisa ter o Word instalado}'
        'Listagem sint'#233'tica')
      TabOrder = 0
    end
    object CheckBoxMC1: TCheckBoxMC
      Left = 8
      Top = 75
      Width = 216
      Height = 17
      Caption = 'Somente aqueles que tenha status ativo'
      TabOrder = 1
      Visible = False
    end
    object txtPath: TEditMC
      Tag = 2
      Left = 8
      Top = 112
      Width = 381
      Height = 21
      TabStop = False
      Color = 14743551
      ReadOnly = True
      TabOrder = 2
    end
  end
  object opdAbrir: TOpenDialog
    Filter = 'Documentos do Word|*.doc; *.rtf'
    Left = 464
    Top = 109
  end
  object qryContrato: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      
        '    P.NOME, ENDERECO, BAIRRO, CR.NOME AS CIDADE, CR.CODUF, CEP, ' +
        'COMPLEMENTO, DATACADASTRO, PROFISSAO,'
      '    RG, CPFCNPJ'
      'FROM TBPESSOA P'
      'LEFT JOIN TBCLIENTE C ON C.CODPESSOA=P.CODPESSOA'
      'LEFT JOIN TBCIDADE CR ON CR.CODCIDADE=P.CODCIDRESID'
      'WHERE P.CODPESSOA=:CODPESSOA')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPESSOA'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 132
    Top = 49
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODPESSOA'
        ParamType = ptUnknown
      end>
    object qryContratoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryContratoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 45
    end
    object qryContratoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 35
    end
    object qryContratoCIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 35
    end
    object qryContratoCODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object qryContratoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qryContratoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 25
    end
    object qryContratoDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object qryContratoPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 35
    end
    object qryContratoRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object qryContratoCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
  end
end
