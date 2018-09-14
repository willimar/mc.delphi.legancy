inherited _frmCadGridAgencia: T_frmCadGridAgencia
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanelMC
    inherited Panel4: TPanelMC
      inherited lblTitulo: TLabelMC
        Caption = 'Ag'#234'ncia'
      end
    end
  end
  inherited Panel5: TPanelMC
    inherited PageControl1: TPageControl
      ActivePage = tbsGrid
      inherited tbsGrid: TTabSheet
        inherited grd: TDBGridMC
          Width = 603
          Height = 399
          Columns = <
            item
              Expanded = False
              FieldName = 'A_NOME'
              Width = 212
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'B_NOME'
              Width = 197
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'A_NOMECONTATO'
              Width = 163
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'A_TEL'
              Width = 95
              Visible = True
            end>
        end
      end
      inherited tbsDetalhes: TTabSheet
        inherited Panel8: TPanelMC
          object LabelMC1: TLabelMC
            Left = 8
            Top = 10
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object LabelMC2: TLabelMC
            Left = 91
            Top = 10
            Width = 31
            Height = 13
            Caption = 'Banco'
          end
          object LabelMC3: TLabelMC
            Left = 346
            Top = 10
            Width = 39
            Height = 13
            Caption = 'Ag'#234'ncia'
          end
          object LabelMC4: TLabelMC
            Left = 8
            Top = 50
            Width = 37
            Height = 13
            Caption = 'Contato'
          end
          object LabelMC5: TLabelMC
            Left = 373
            Top = 50
            Width = 42
            Height = 13
            Caption = 'Telefone'
          end
          object LabelMC6: TLabelMC
            Left = 8
            Top = 89
            Width = 20
            Height = 13
            Caption = 'Rua'
          end
          object LabelMC7: TLabelMC
            Left = 345
            Top = 89
            Width = 27
            Height = 13
            Caption = 'Bairro'
          end
          object LabelMC8: TLabelMC
            Left = 8
            Top = 128
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object LabelMC9: TLabelMC
            Left = 385
            Top = 128
            Width = 21
            Height = 13
            Caption = 'CEP'
          end
          object bitCidade: TSpeedButton
            Left = 323
            Top = 24
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
          object SpeedButton1: TSpeedButton
            Left = 322
            Top = 104
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
          end
          object SpeedButton2: TSpeedButton
            Left = 322
            Top = 142
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
            OnClick = SpeedButton2Click
          end
          object DBEditMC1: TDBEditMC
            Tag = 2
            Left = 8
            Top = 24
            Width = 81
            Height = 21
            DataField = 'CODAGENCIA'
            DataSource = dsrCad
            TabOrder = 0
            Requerido = True
            Rotulo = LabelMC1
          end
          object DBLookupComboBoxMC1: TDBLookupComboBoxMC
            Tag = 2
            Left = 91
            Top = 24
            Width = 231
            Height = 21
            DataField = 'CODBANCO'
            DataSource = dsrCad
            KeyField = 'CODBANCO'
            ListField = 'NOME'
            ListSource = srcBanco
            NullValueKey = 46
            TabOrder = 1
            Requerido = True
          end
          object DBEditMC2: TDBEditMC
            Tag = 2
            Left = 346
            Top = 24
            Width = 250
            Height = 21
            DataField = 'NOME'
            DataSource = dsrCad
            TabOrder = 2
            Requerido = True
            Rotulo = LabelMC3
          end
          object DBEditMC3: TDBEditMC
            Tag = 2
            Left = 8
            Top = 64
            Width = 361
            Height = 21
            DataField = 'NOMECONTATO'
            DataSource = dsrCad
            TabOrder = 3
            Rotulo = LabelMC4
          end
          object DBEditMC4: TDBEditMC
            Tag = 2
            Left = 373
            Top = 64
            Width = 121
            Height = 21
            DataField = 'TEL'
            DataSource = dsrCad
            TabOrder = 4
            Rotulo = LabelMC5
          end
          object DBEditMC5: TDBEditMC
            Tag = 2
            Left = 8
            Top = 103
            Width = 312
            Height = 21
            DataField = 'RUA'
            DataSource = dsrCad
            TabOrder = 5
            Rotulo = LabelMC6
          end
          object DBEditMC6: TDBEditMC
            Tag = 2
            Left = 345
            Top = 103
            Width = 250
            Height = 21
            DataField = 'BAIRRO'
            DataSource = dsrCad
            TabOrder = 6
            Rotulo = LabelMC7
          end
          object DBLookupComboBoxMC2: TDBLookupComboBoxMC
            Tag = 2
            Left = 8
            Top = 142
            Width = 313
            Height = 21
            DataField = 'CODCIDADE'
            DataSource = dsrCad
            KeyField = 'CODCIDADE'
            ListField = 'NOME'
            ListSource = dsrCidade
            NullValueKey = 46
            TabOrder = 7
            Requerido = True
          end
          object DBEditMC7: TDBEditMC
            Tag = 2
            Left = 385
            Top = 142
            Width = 136
            Height = 21
            DataField = 'CEP'
            DataSource = dsrCad
            TabOrder = 8
            Rotulo = LabelMC9
          end
          object DBEditMC8: TDBEditMC
            Tag = 2
            Left = 345
            Top = 142
            Width = 36
            Height = 21
            TabStop = False
            Color = 14743551
            DataField = 'UF'
            DataSource = dsrCad
            ReadOnly = True
            TabOrder = 9
          end
        end
      end
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'A_CODAGENCIA'
    object cdsGridA_CODAGENCIA: TStringField
      FieldName = 'A_CODAGENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 15
    end
    object cdsGridA_NOME: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'A_NOME'
      Size = 45
    end
    object cdsGridB_NOME: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'B_NOME'
      Required = True
      Size = 75
    end
    object cdsGridA_NOMECONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'A_NOMECONTATO'
      Size = 45
    end
    object cdsGridA_TEL: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'A_TEL'
      Size = 10
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT'
      
        '    A.CODAGENCIA AS A_CODAGENCIA, A.NOME AS A_NOME, A.NOMECONTAT' +
        'O AS A_NOMECONTATO, B.NOME AS B_NOME, A.TEL AS A_TEL'
      'FROM TBAGENCIA A, TBBANCO B'
      'WHERE A.CODBANCO=B.CODBANCO')
    object qryGridA_CODAGENCIA: TStringField
      FieldName = 'A_CODAGENCIA'
      Required = True
      Size = 15
    end
    object qryGridA_NOME: TStringField
      FieldName = 'A_NOME'
      Size = 45
    end
    object qryGridA_NOMECONTATO: TStringField
      FieldName = 'A_NOMECONTATO'
      Size = 45
    end
    object qryGridB_NOME: TStringField
      FieldName = 'B_NOME'
      Required = True
      Size = 75
    end
    object qryGridA_TEL: TStringField
      FieldName = 'A_TEL'
      Size = 10
    end
  end
  inherited qryCad: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBAGENCIA WHERE CODAGENCIA=:CODIGO')
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    TableName = 'TBAGENCIA'
    FieldKey = 'CODAGENCIA'
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODAGENCIA: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODAGENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object qryCadCODBANCO: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'CODBANCO'
      Required = True
      Size = 3
    end
    object qryCadNOMECONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'NOMECONTATO'
      Size = 45
    end
    object qryCadNOME: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'NOME'
      Size = 45
    end
    object qryCadRUA: TStringField
      DisplayLabel = 'Rua'
      FieldName = 'RUA'
      Size = 45
    end
    object qryCadBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 45
    end
    object qryCadCODCIDADE: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'CODCIDADE'
      Required = True
    end
    object qryCadCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qryCadTEL: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TEL'
      Size = 10
    end
    object qryCadUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = qryCidade
      LookupKeyFields = 'CODCIDADE'
      LookupResultField = 'CODUF'
      KeyFields = 'CODCIDADE'
      ProviderFlags = []
      Size = 2
      Lookup = True
    end
  end
  object qryBanco: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT CODBANCO, NOME FROM TBBANCO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 104
    Top = 165
    object qryBancoCODBANCO: TStringField
      FieldName = 'CODBANCO'
      Required = True
      Size = 3
    end
    object qryBancoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
  end
  object srcBanco: TDatasourceMC
    DataSet = qryBanco
    Left = 104
    Top = 193
  end
  object qryCidade: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT CODCIDADE, NOME, CODUF FROM TBCIDADE')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 136
    Top = 165
    object qryCidadeCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Required = True
    end
    object qryCidadeNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
    object qryCidadeCODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
  end
  object dsrCidade: TDatasourceMC
    DataSet = qryCidade
    Left = 136
    Top = 193
  end
end
