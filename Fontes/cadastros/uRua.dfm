inherited _frmCadGridRua: T_frmCadGridRua
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object LabelMC1: TLabelMC [2]
      Left = 175
      Top = 8
      Width = 85
      Height = 13
      Caption = 'Selecione o bairro'
      Transparent = True
    end
    object bitCidade: TSpeedButton [3]
      Left = 567
      Top = 5
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
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'Ruas'
      end
    end
    object cmbBairro: TDBLookupComboBoxMC
      Tag = 2
      Left = 266
      Top = 4
      Width = 299
      Height = 21
      KeyField = 'CODBAIRRO'
      ListField = 'NOME'
      ListSource = dsrBairro
      NullValueKey = 46
      TabOrder = 1
      OnClick = cmbBairroClick
    end
  end
  inherited Panel3: TPanel
    inherited ToolBar1: TToolBar
      inherited bitExcluir: TSpeedButton
        OnClick = bitExcluirClick
      end
    end
  end
  inherited Panel5: TPanel
    inherited Panel6: TPanel
      Top = 222
      Height = 44
      inherited Shape5: TShape
        Height = 42
      end
      inherited Label3: TLabelMC
        Left = 5
      end
      inherited Label5: TLabelMC
        Left = 89
        Width = 76
      end
      inherited dbeCodigo: TDBEditMC
        Left = 4
        DataField = 'CODRUA'
        DataSource = dsrCad
      end
      inherited dbeDescricao: TDBEditMC
        Left = 88
        Width = 333
        DataField = 'NOME'
        DataSource = dsrCad
      end
    end
    inherited grd: TDBGridMC
      Height = 221
      Columns = <
        item
          Expanded = False
          FieldName = 'R_NOME'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_NOME'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_CEP'
          Width = 74
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'R_CODRUA'
    object cdsGridR_CODRUA: TIntegerField
      FieldName = 'R_CODRUA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
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
    object cdsGridR_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'R_CEP'
      Size = 10
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT'
      
        '    R.CODRUA AS R_CODRUA, R.NOME AS R_NOME, R.CEP AS R_CEP, B.NO' +
        'ME AS B_NOME'
      'FROM TBRUA R, TBBAIRRO B'
      'WHERE R.CODBAIRRO=B.CODBAIRRO'
      'AND R.CODBAIRRO=:CODBAIRRO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODBAIRRO'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODBAIRRO'
        ParamType = ptUnknown
      end>
    object qryGridR_CODRUA: TIntegerField
      FieldName = 'R_CODRUA'
      Required = True
    end
    object qryGridR_NOME: TStringField
      FieldName = 'R_NOME'
      Required = True
      Size = 45
    end
    object qryGridR_CEP: TStringField
      FieldName = 'R_CEP'
      Size = 10
    end
    object qryGridB_NOME: TStringField
      FieldName = 'B_NOME'
      Required = True
      Size = 45
    end
  end
  inherited qryCad: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBRUA WHERE CODRUA=:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    TableName = 'TBRUA'
    FieldKey = 'CODRUA'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODRUA: TIntegerField
      FieldName = 'CODRUA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadCODBAIRRO: TIntegerField
      FieldName = 'CODBAIRRO'
    end
    object qryCadNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryCadCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
  end
  object qryBairro: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT CODBAIRRO, NOME FROM TBBAIRRO ORDER BY NOME')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 112
    Top = 133
    object qryBairroCODBAIRRO: TIntegerField
      FieldName = 'CODBAIRRO'
      Required = True
    end
    object qryBairroNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
  end
  object dsrBairro: TDatasourceMC
    DataSet = qryBairro
    Left = 112
    Top = 162
  end
end
