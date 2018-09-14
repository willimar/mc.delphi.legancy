inherited _frmCadGridDepartamento: T_frmCadGridDepartamento
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
        Caption = 'Departamentos'
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
      ActivePage = tbsDetalhes
      inherited tbsGrid: TTabSheet
        inherited stgGrid: TStringGridMC
          Width = 612
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        end
      end
      inherited tbsDetalhes: TTabSheet
        inherited Panel8: TPanelMC
          Width = 612
          object PanelMC1: TPanelMC
            Left = 1
            Top = 1
            Width = 610
            Height = 44
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            ComponenteFoco = txtRedutor
            object LabelMC2: TLabelMC
              Left = 6
              Top = 3
              Width = 38
              Height = 13
              Caption = 'Redutor'
            end
            object lblNome: TLabelMC
              Left = 212
              Top = 3
              Width = 48
              Height = 13
              Caption = 'Descri'#231#227'o'
            end
            object LabelMC1: TLabelMC
              Left = 94
              Top = 3
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
            end
            object txtRedutor: TDBEditMC
              Tag = 2
              Left = 6
              Top = 17
              Width = 86
              Height = 21
              TabStop = False
              Color = 14743551
              DataField = 'CODDEPARTAMENTO'
              DataSource = dsrCad
              ReadOnly = True
              TabOrder = 0
              Requerido = True
              Rotulo = LabelMC2
            end
            object txtDescricao: TDBEditMC
              Tag = 2
              Left = 212
              Top = 17
              Width = 387
              Height = 21
              DataField = 'DESCRICAO'
              DataSource = dsrCad
              TabOrder = 2
              Requerido = True
              Rotulo = lblNome
            end
            object txtCodigo: TEditMC
              Tag = 2
              Left = 95
              Top = 17
              Width = 113
              Height = 21
              TabOrder = 1
              OnKeyUp = txtCodigoKeyUp
              Requerido = True
              Rotulo = LabelMC1
            end
          end
          object PanelMC2: TPanelMC
            Left = 1
            Top = 45
            Width = 610
            Height = 220
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object lblNaturalidade: TLabelMC
              Left = 6
              Top = 3
              Width = 41
              Height = 13
              Caption = 'Empresa'
            end
            object bitCidade: TSpeedButton
              Left = 578
              Top = 19
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
              Left = 578
              Top = 59
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
              OnClick = SpeedButton1Click
            end
            object LabelMC3: TLabelMC
              Left = 6
              Top = 43
              Width = 155
              Height = 13
              Caption = 'Opera'#231#227'o financeira para cr'#233'dito'
            end
            object SpeedButton2: TSpeedButton
              Left = 578
              Top = 99
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
            object LabelMC4: TLabelMC
              Left = 6
              Top = 83
              Width = 152
              Height = 13
              Caption = 'Opera'#231#227'o financeira para d'#233'bito'
            end
            object LabelMC5: TLabelMC
              Left = 6
              Top = 123
              Width = 75
              Height = 13
              Caption = 'Centro de custo'
            end
            object SpeedButton3: TSpeedButton
              Left = 578
              Top = 139
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
              OnClick = SpeedButton3Click
            end
            object cmbNaturalidade: TDBLookupComboBoxMC
              Tag = 2
              Left = 6
              Top = 19
              Width = 571
              Height = 21
              DataField = 'CODEMPRESA'
              DataSource = dsrCad
              KeyField = 'CODCLIENTE'
              ListField = 'NOME'
              ListSource = dsrEmpresa
              NullValueKey = 46
              TabOrder = 0
              Requerido = True
              Rotulo = lblNaturalidade
            end
            object DBLookupComboBoxMC1: TDBLookupComboBoxMC
              Tag = 2
              Left = 6
              Top = 59
              Width = 571
              Height = 21
              DataField = 'CODCONTACONTABILCRED'
              DataSource = dsrCad
              KeyField = 'CODOPERACAOFINANCEIRA'
              ListField = 'DESCRICAO'
              ListSource = dsrOperFinanc
              NullValueKey = 46
              TabOrder = 1
              Rotulo = LabelMC3
            end
            object DBLookupComboBoxMC2: TDBLookupComboBoxMC
              Tag = 2
              Left = 6
              Top = 99
              Width = 571
              Height = 21
              DataField = 'CODCONTACONTABILDEB'
              DataSource = dsrCad
              KeyField = 'CODOPERACAOFINANCEIRA'
              ListField = 'DESCRICAO'
              ListSource = dsrOperFinanc
              NullValueKey = 46
              TabOrder = 2
              Rotulo = LabelMC4
            end
            object DBLookupComboBoxMC3: TDBLookupComboBoxMC
              Tag = 2
              Left = 6
              Top = 139
              Width = 571
              Height = 21
              DataField = 'CODCENTCUSTO'
              DataSource = dsrCad
              KeyField = 'CODCENTROCUSTO'
              ListField = 'DESCRICAO'
              ListSource = dsrCentroCusto
              NullValueKey = 46
              TabOrder = 3
              Rotulo = LabelMC5
            end
          end
        end
      end
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODDEPARTAMENTO'
    object cdsGridCODDEPARTAMENTO: TIntegerField
      FieldName = 'CODDEPARTAMENTO'
      Required = True
      Visible = False
    end
    object cdsGridCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
      Size = 8
    end
    object cdsGridDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 45
    end
    object cdsGridGRAU1: TStringField
      FieldName = 'GRAU1'
      Required = True
      Visible = False
      Size = 2
    end
    object cdsGridGRAU2: TStringField
      FieldName = 'GRAU2'
      Required = True
      Visible = False
      Size = 2
    end
    object cdsGridGRAU3: TStringField
      FieldName = 'GRAU3'
      Required = True
      Visible = False
      Size = 2
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      
        'SELECT CODDEPARTAMENTO, DESCRICAO, (GRAU1 || '#39'.'#39' || GRAU2 || '#39'.'#39 +
        ' || GRAU3) AS CODIGO, GRAU1, GRAU2, GRAU3  FROM TBDEPARTAMENTO')
    object qryGridCODDEPARTAMENTO: TIntegerField
      FieldName = 'CODDEPARTAMENTO'
      Required = True
    end
    object qryGridCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object qryGridDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 45
    end
    object qryGridGRAU1: TStringField
      FieldName = 'GRAU1'
      Required = True
      Size = 2
    end
    object qryGridGRAU2: TStringField
      FieldName = 'GRAU2'
      Required = True
      Size = 2
    end
    object qryGridGRAU3: TStringField
      FieldName = 'GRAU3'
      Required = True
      Size = 2
    end
  end
  inherited dsrGrid: TDatasourceMC
    Top = 40
  end
  inherited qryCad: TZQueryMC
    BeforePost = qryCadBeforePost
    SQL.Strings = (
      'SELECT * FROM TBDEPARTAMENTO WHERE CODDEPARTAMENTO=:CODIGO')
    TableName = 'TBDEPARTAMENTO'
    FieldKey = 'CODDEPARTAMENTO'
    object qryCadCODDEPARTAMENTO: TIntegerField
      FieldName = 'CODDEPARTAMENTO'
      Required = True
    end
    object qryCadDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 45
    end
    object qryCadCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      Required = True
    end
    object qryCadCODCONTACONTABILCRED: TIntegerField
      FieldName = 'CODCONTACONTABILCRED'
    end
    object qryCadCODCONTACONTABILDEB: TIntegerField
      FieldName = 'CODCONTACONTABILDEB'
    end
    object qryCadCODCENTCUSTO: TIntegerField
      FieldName = 'CODCENTCUSTO'
    end
    object qryCadGRAU1: TStringField
      FieldName = 'GRAU1'
      Required = True
      Size = 2
    end
    object qryCadGRAU2: TStringField
      FieldName = 'GRAU2'
      Required = True
      Size = 2
    end
    object qryCadGRAU3: TStringField
      FieldName = 'GRAU3'
      Required = True
      Size = 2
    end
  end
  inherited dsrCad: TDatasourceMC
    OnStateChange = dsrCadStateChange
  end
  object sqlEmpresa: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      '  C.CODCLIENTE, C.APELIDO, P.NOME, P.CPFCNPJ'
      'FROM TBCLIENTE C, TBPESSOA P'
      'WHERE C.CODPESSOA=P.CODPESSOA AND C.EMPRESA='#39'Sim'#39)
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 16
    Top = 173
    object sqlEmpresaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
      Visible = False
    end
    object sqlEmpresaCPFCNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
    object sqlEmpresaAPELIDO: TStringField
      DisplayLabel = 'Nome fantasia'
      FieldName = 'APELIDO'
      Size = 35
    end
    object sqlEmpresaNOME: TStringField
      DisplayLabel = 'Raz'#227'o social'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
  end
  object dsrEmpresa: TDatasourceMC
    DataSet = sqlEmpresa
    Left = 16
    Top = 205
  end
  object sqlOperFinanc: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      
        '  (GRAU1 || '#39'.'#39' || GRAU2 || '#39'.'#39' || GRAU3 || '#39'.'#39' || GRAU4) AS COD' +
        'IGO, CODOPERACAOFINANCEIRA, DESCRICAO'
      'FROM TBOPERACAOFINANCEIRA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 48
    Top = 173
    object sqlOperFinancCODOPERACAOFINANCEIRA: TIntegerField
      DisplayLabel = 'Redutor'
      FieldName = 'CODOPERACAOFINANCEIRA'
      Required = True
    end
    object sqlOperFinancCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
      Visible = False
      Size = 13
    end
    object sqlOperFinancDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
  end
  object dsrOperFinanc: TDatasourceMC
    DataSet = sqlOperFinanc
    Left = 48
    Top = 205
  end
  object sqlCentroCusto: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      
        '  (GRAU1 || '#39'.'#39' || GRAU2 || '#39'.'#39' || GRAU3 || '#39'.'#39' || GRAU4) AS COD' +
        'IGO, CODCENTROCUSTO, DESCRICAO'
      'FROM TBCENTROCUSTO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 80
    Top = 173
    object sqlCentroCustoCODCENTROCUSTO: TIntegerField
      DisplayLabel = 'Redutor'
      FieldName = 'CODCENTROCUSTO'
      Required = True
    end
    object sqlCentroCustoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
      Visible = False
      Size = 13
    end
    object sqlCentroCustoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 35
    end
  end
  object dsrCentroCusto: TDatasourceMC
    DataSet = sqlCentroCusto
    Left = 80
    Top = 205
  end
end
