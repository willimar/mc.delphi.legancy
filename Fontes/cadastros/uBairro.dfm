inherited _frmCadGridBairro: T_frmCadGridBairro
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'Bairros'
      end
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
      Top = 186
      Height = 80
      inherited Shape5: TShape
        Height = 78
      end
      inherited Label3: TLabelMC
        Left = 5
      end
      inherited Label5: TLabelMC
        Left = 68
      end
      object bitCidade: TSpeedButton [3]
        Left = 397
        Top = 55
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
      object LabelMC1: TLabelMC [4]
        Left = 6
        Top = 41
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      inherited dbeCodigo: TDBEditMC
        Left = 4
        Width = 61
        DataField = 'CODBAIRRO'
        DataSource = dsrCad
        Requerido = True
      end
      inherited dbeDescricao: TDBEditMC
        Left = 67
        Width = 352
        DataField = 'NOME'
        DataSource = dsrCad
        Requerido = True
      end
      object DBLookupComboBoxMC1: TDBLookupComboBoxMC
        Tag = 2
        Left = 5
        Top = 54
        Width = 389
        Height = 21
        DataField = 'CODCIDADE'
        DataSource = dsrCad
        KeyField = 'CODCIDADE'
        ListField = 'NOME'
        ListSource = dsrCidade
        NullValueKey = 46
        TabOrder = 2
        Requerido = True
      end
    end
    inherited grd: TDBGridMC
      Height = 185
      Columns = <
        item
          Expanded = False
          FieldName = 'C_NOME'
          Width = 218
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_NOME'
          Width = 180
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'B_CODBAIRRO'
    object cdsGridB_CODBAIRRO: TIntegerField
      FieldName = 'B_CODBAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object cdsGridC_NOME: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'C_NOME'
      Required = True
      Size = 35
    end
    object cdsGridB_NOME: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'B_NOME'
      Required = True
      Size = 45
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT'
      
        '    B.CODBAIRRO AS B_CODBAIRRO, B.NOME AS B_NOME, C.NOME AS C_NO' +
        'ME'
      'FROM TBBAIRRO B, TBCIDADE C'
      'WHERE C.CODCIDADE=B.CODCIDADE')
    object qryGridB_CODBAIRRO: TIntegerField
      FieldName = 'B_CODBAIRRO'
      Required = True
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
  end
  inherited qryCad: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBBAIRRO WHERE CODBAIRRO=:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    TableName = 'TBBAIRRO'
    FieldKey = 'CODBAIRRO'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODBAIRRO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODBAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadCODCIDADE: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'CODCIDADE'
      Required = True
    end
    object qryCadNOME: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
  end
  object qryCidade: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT CODCIDADE, NOME FROM TBCIDADE')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 120
    Top = 125
    object qryCidadeCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Required = True
    end
    object qryCidadeNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  object dsrCidade: TDatasourceMC
    DataSet = qryCidade
    Left = 120
    Top = 153
  end
end
