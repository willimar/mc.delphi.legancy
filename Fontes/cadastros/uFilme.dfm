inherited _frmCadGridFilme: T_frmCadGridFilme
  Left = 76
  Top = 82
  Width = 807
  Height = 542
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
        Caption = 'Filmes'
      end
    end
  end
  inherited Panel2: TPanelMC
    Height = 434
    inherited Shape2: TShape
      Height = 434
    end
    inherited pnlFiltro: TPanelMC
      Top = 269
    end
  end
  inherited Panel3: TPanelMC
    Top = 463
    Width = 799
    inherited Shape3: TShape
      Width = 799
    end
    inherited tbPadrao: TToolBar
      Left = 279
      inherited bitImprimir: TSpeedButton
        OnClick = bitImprimirClick
      end
    end
  end
  inherited Panel5: TPanelMC
    Width = 622
    Height = 434
    inherited Shape5: TShape
      Width = 620
      Height = 432
    end
    inherited pgcCadastro: TPageControl
      Width = 620
      Height = 432
      ActivePage = tbsDetalhes
      inherited tbsGrid: TTabSheet
        inherited grd: TDBGridMC
          Width = 612
          Height = 401
          Columns = <
            item
              Expanded = False
              FieldName = 'F_NOME'
              Width = 218
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'G_NOME'
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P_NOME'
              Width = 158
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTANTE'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRATELEIRA'
              Width = 72
              Visible = True
            end>
        end
      end
      inherited tbsDetalhes: TTabSheet
        OnShow = tbsDetalhesShow
        inherited Panel8: TPanelMC
          Width = 612
          Height = 401
          object LabelMC1: TLabelMC
            Left = 5
            Top = 3
            Width = 28
            Height = 13
            Caption = 'Nome'
          end
          object LabelMC2: TLabelMC
            Left = 430
            Top = 3
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object LabelMC3: TLabelMC
            Left = 540
            Top = 3
            Width = 17
            Height = 13
            Caption = 'Qtd'
          end
          object LabelMC4: TLabelMC
            Left = 5
            Top = 42
            Width = 54
            Height = 13
            Caption = 'Fornecedor'
          end
          object LabelMC5: TLabelMC
            Left = 5
            Top = 82
            Width = 35
            Height = 13
            Caption = 'G'#234'nero'
          end
          object LabelMC6: TLabelMC
            Left = 202
            Top = 82
            Width = 28
            Height = 13
            Caption = 'Pre'#231'o'
          end
          object bitCidade: TSpeedButton
            Left = 391
            Top = 96
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
            Left = 179
            Top = 96
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
          object SpeedButton2: TSpeedButton
            Left = 322
            Top = 57
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
          object LabelMC7: TLabelMC
            Left = 345
            Top = 43
            Width = 36
            Height = 13
            Caption = 'Estante'
          end
          object LabelMC8: TLabelMC
            Left = 454
            Top = 43
            Width = 44
            Height = 13
            Caption = 'Prateleira'
          end
          object LabelMC9: TLabelMC
            Left = 523
            Top = 43
            Width = 77
            Height = 13
            Caption = 'Valor de compra'
          end
          object LabelMC10: TLabelMC
            Left = 195
            Top = 120
            Width = 59
            Height = 13
            Caption = 'Autor/diretor'
          end
          object LabelMC11: TLabelMC
            Left = 195
            Top = 158
            Width = 38
            Height = 13
            Caption = 'Sinopse'
          end
          object txtNome: TDBEditMC
            Tag = 2
            Left = 4
            Top = 17
            Width = 423
            Height = 21
            DataField = 'NOME'
            DataSource = dsrCad
            TabOrder = 0
            Requerido = True
            TabSheet = tbsDetalhes
            Rotulo = LabelMC1
          end
          object txtData: TDBEditMC
            Tag = 2
            Left = 430
            Top = 17
            Width = 108
            Height = 21
            DataField = 'DATAAQU'
            DataSource = dsrCad
            TabOrder = 1
            Requerido = True
            TabSheet = tbsDetalhes
            Rotulo = LabelMC2
          end
          object txtQtd: TDBEditMC
            Tag = 2
            Left = 539
            Top = 17
            Width = 66
            Height = 21
            DataField = 'QUANTIDADE'
            DataSource = dsrCad
            MaxLength = 2
            TabOrder = 2
            Requerido = True
            TabSheet = tbsDetalhes
            Rotulo = LabelMC3
          end
          object cmbFornecedor: TDBLookupComboBoxMC
            Tag = 2
            Left = 5
            Top = 56
            Width = 315
            Height = 21
            DataField = 'CODFORNECEDOR'
            DataSource = dsrCad
            KeyField = 'CODCLIENTE'
            ListField = 'NOME'
            ListSource = srcFornecedor
            NullValueKey = 46
            TabOrder = 3
            Requerido = True
            TabSheet = tbsDetalhes
            Rotulo = LabelMC4
          end
          object cmbGenero: TDBLookupComboBoxMC
            Tag = 2
            Left = 5
            Top = 96
            Width = 172
            Height = 21
            DataField = 'CODGENERO'
            DataSource = dsrCad
            KeyField = 'CODGENERO'
            ListField = 'NOME'
            ListSource = dsrGenero
            NullValueKey = 46
            TabOrder = 7
            Requerido = True
            TabSheet = tbsDetalhes
            Rotulo = LabelMC5
          end
          object cmbPreco: TDBLookupComboBoxMC
            Tag = 2
            Left = 202
            Top = 96
            Width = 187
            Height = 21
            DataField = 'CODPRECO'
            DataSource = dsrCad
            KeyField = 'CODPRECO'
            ListField = 'NOME'
            ListSource = dsrPreco
            NullValueKey = 46
            TabOrder = 8
            Requerido = True
            TabSheet = tbsDetalhes
            Rotulo = LabelMC6
          end
          object txtValor: TDBEditMC
            Tag = 2
            Left = 414
            Top = 95
            Width = 73
            Height = 21
            TabStop = False
            Color = 14743551
            DataField = 'PRECOLOCACAO'
            DataSource = dsrCad
            ReadOnly = True
            TabOrder = 9
            TabSheet = tbsDetalhes
          end
          object txtEstante: TDBEditMC
            Tag = 2
            Left = 345
            Top = 57
            Width = 108
            Height = 21
            DataField = 'ESTANTE'
            DataSource = dsrCad
            TabOrder = 4
            TabSheet = tbsDetalhes
            Rotulo = LabelMC7
          end
          object txtPrateleira: TDBEditMC
            Tag = 2
            Left = 454
            Top = 57
            Width = 67
            Height = 21
            DataField = 'PRATELEIRA'
            DataSource = dsrCad
            TabOrder = 5
            TabSheet = tbsDetalhes
            Rotulo = LabelMC8
          end
          object txtValorCompra: TDBEditMC
            Tag = 2
            Left = 523
            Top = 57
            Width = 83
            Height = 21
            DataField = 'VALORCOMPRA'
            DataSource = dsrCad
            TabOrder = 6
            TabSheet = tbsDetalhes
            Rotulo = LabelMC9
          end
          object chkDvd: TDBCheckBoxMC
            Tag = 2
            Left = 496
            Top = 96
            Width = 45
            Height = 17
            Caption = 'DVD'
            DataField = 'DVD'
            DataSource = dsrCad
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            ValueChecked = 'Sim'
            ValueUnchecked = 'N'#227'o'
          end
          object GroupBox1: TGroupBox
            Left = 5
            Top = 128
            Width = 185
            Height = 113
            Caption = ' Participa'#231#227'o '
            TabOrder = 11
            object DBEditMC8: TDBEditMC
              Tag = 2
              Left = 5
              Top = 17
              Width = 173
              Height = 21
              DataField = 'PARTICIP1'
              DataSource = dsrCad
              TabOrder = 0
              TabSheet = tbsDetalhes
              Rotulo = LabelMC2
            end
            object DBEditMC9: TDBEditMC
              Tag = 2
              Left = 5
              Top = 50
              Width = 173
              Height = 21
              DataField = 'PARTICIP2'
              DataSource = dsrCad
              TabOrder = 1
              TabSheet = tbsDetalhes
              Rotulo = LabelMC2
            end
            object DBEditMC10: TDBEditMC
              Tag = 2
              Left = 5
              Top = 83
              Width = 173
              Height = 21
              DataField = 'PARTICIP3'
              DataSource = dsrCad
              TabOrder = 2
              TabSheet = tbsDetalhes
              Rotulo = LabelMC2
            end
          end
          object txtAutor: TDBEditMC
            Tag = 2
            Left = 194
            Top = 134
            Width = 414
            Height = 21
            DataField = 'AUTOR'
            DataSource = dsrCad
            TabOrder = 12
            TabSheet = tbsDetalhes
            Rotulo = LabelMC10
          end
          object txtSinopse: TDBRichEditMC
            Tag = 2
            Left = 193
            Top = 172
            Width = 413
            Height = 68
            DataField = 'SINOPSE'
            DataSource = dsrCad
            ScrollBars = ssVertical
            TabOrder = 13
            Rotulo = LabelMC11
          end
          object PanelMC1: TPanelMC
            Left = 5
            Top = 245
            Width = 602
            Height = 124
            BevelOuter = bvLowered
            TabOrder = 14
            object PanelMC2: TPanelMC
              Left = 1
              Top = 1
              Width = 600
              Height = 28
              Align = alTop
              TabOrder = 0
            end
            object DBGridMC1: TDBGridMC
              Tag = 2
              Left = 1
              Top = 29
              Width = 600
              Height = 94
              Align = alClient
              BorderStyle = bsNone
              Color = 14739951
              DataSource = dsrFitas
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              FieldCheckBox = qryFitasDISPONIVEL
              Columns = <
                item
                  Expanded = False
                  FieldName = 'SUBCOD'
                  Width = 124
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DISPONIVEL'
                  Title.Caption = 'Dispon'#237'vel'
                  Width = 61
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BARCODE'
                  Visible = False
                end>
            end
            object Panel6: TPanelMC
              Left = 485
              Top = 30
              Width = 98
              Height = 91
              BevelOuter = bvLowered
              TabOrder = 2
              object pbCodBarra: TPaintBox
                Left = 1
                Top = 17
                Width = 96
                Height = 73
                Align = alClient
                OnPaint = pbCodBarraPaint
              end
              object Panel7: TPanelMC
                Left = 1
                Top = 1
                Width = 96
                Height = 16
                Align = alTop
                Caption = 'C'#243'digo de Barras'
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODFILME'
    object cdsGridCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
      Visible = False
    end
    object cdsGridF_NOME: TStringField
      DisplayLabel = 'Filme'
      FieldName = 'F_NOME'
      Required = True
      Size = 50
    end
    object cdsGridP_NOME: TStringField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'P_NOME'
      Required = True
      Size = 45
    end
    object cdsGridG_NOME: TStringField
      DisplayLabel = 'G'#234'nero'
      FieldName = 'G_NOME'
      Required = True
    end
    object cdsGridQUANTIDADE: TIntegerField
      DisplayLabel = 'Qtd'
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object cdsGridESTANTE: TStringField
      DisplayLabel = 'Estante'
      FieldName = 'ESTANTE'
      Size = 10
    end
    object cdsGridPRATELEIRA: TStringField
      DisplayLabel = 'Prateleitra'
      FieldName = 'PRATELEIRA'
      Size = 10
    end
  end
  inherited qryGrid: TZQueryMC
    Connection = nil
    SQL.Strings = (
      'SELECT'
      
        '   CODFILME, F.NOME AS F_NOME, P.NOME AS P_NOME, G.NOME AS G_NOM' +
        'E, QUANTIDADE,'
      '   ESTANTE, PRATELEIRA'
      'FROM TBFILME F, TBPRECO P, TBGENERO G'
      'WHERE F.CODPRECO=P.CODPRECO AND F.CODGENERO=G.CODGENERO')
    Conexao = DM.db
    object qryGridCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
    end
    object qryGridF_NOME: TStringField
      FieldName = 'F_NOME'
      Required = True
      Size = 50
    end
    object qryGridP_NOME: TStringField
      FieldName = 'P_NOME'
      Required = True
      Size = 45
    end
    object qryGridG_NOME: TStringField
      FieldName = 'G_NOME'
      Required = True
    end
    object qryGridQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object qryGridESTANTE: TStringField
      FieldName = 'ESTANTE'
      Size = 10
    end
    object qryGridPRATELEIRA: TStringField
      FieldName = 'PRATELEIRA'
      Size = 10
    end
  end
  inherited qryCad: TZQueryMC
    Connection = nil
    OnNewRecord = qryCadNewRecord
    SQL.Strings = (
      'SELECT * FROM TBFILME WHERE CODFILME=:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    TableName = 'TBFILME'
    FieldKey = 'CODFILME'
    Conexao = DM.db
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object qryCadCODFILME: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODFILME'
      Required = True
    end
    object qryCadCODFORNECEDOR: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object qryCadCODPRECO: TIntegerField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'CODPRECO'
      Required = True
    end
    object qryCadCODGENERO: TIntegerField
      DisplayLabel = 'G'#234'nero'
      FieldName = 'CODGENERO'
      Required = True
    end
    object qryCadNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object qryCadAUTOR: TStringField
      DisplayLabel = 'Autor'
      FieldName = 'AUTOR'
      Size = 30
    end
    object qryCadDVD: TStringField
      FieldName = 'DVD'
      Required = True
      Size = 3
    end
    object qryCadDATAAQU: TDateField
      DisplayLabel = 'Data de aquisi'#231#227'o'
      FieldName = 'DATAAQU'
      Required = True
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '99/99/9999;1;_'
    end
    object qryCadQUANTIDADE: TIntegerField
      DisplayLabel = 'Qtd'
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object qryCadSINOPSE: TBlobField
      DisplayLabel = 'Sinopse'
      FieldName = 'SINOPSE'
    end
    object qryCadESTANTE: TStringField
      DisplayLabel = 'Estante'
      FieldName = 'ESTANTE'
      Size = 10
    end
    object qryCadVALORCOMPRA: TFloatField
      DisplayLabel = 'Valor de compra'
      FieldName = 'VALORCOMPRA'
      currency = True
    end
    object qryCadPARTICIP1: TStringField
      FieldName = 'PARTICIP1'
      Size = 30
    end
    object qryCadPARTICIP2: TStringField
      FieldName = 'PARTICIP2'
      Size = 30
    end
    object qryCadPARTICIP3: TStringField
      FieldName = 'PARTICIP3'
      Size = 30
    end
    object qryCadPRECOLOCACAO: TFloatField
      FieldKind = fkLookup
      FieldName = 'PRECOLOCACAO'
      LookupDataSet = qryPreco
      LookupKeyFields = 'CODPRECO'
      LookupResultField = 'VALOR'
      KeyFields = 'CODPRECO'
      currency = True
      Lookup = True
    end
    object qryCadPRATELEIRA: TStringField
      FieldName = 'PRATELEIRA'
      Size = 10
    end
  end
  object qryFitas: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBFITA WHERE CODFILME=:CODFILME')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODFILME'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 40
    Top = 149
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODFILME'
        ParamType = ptUnknown
      end>
    object qryFitasSUBCOD: TStringField
      DisplayLabel = 'Auto c'#243'digo'
      FieldName = 'SUBCOD'
      Required = True
      Size = 13
    end
    object qryFitasCODFILME: TIntegerField
      FieldName = 'CODFILME'
      Required = True
    end
    object qryFitasDISPONIVEL: TStringField
      DisplayLabel = 'Disponibilidade'
      FieldName = 'DISPONIVEL'
      Required = True
      Size = 3
    end
    object qryFitasBARCODE: TStringField
      DisplayLabel = 'C'#243'digo de barras'
      FieldName = 'BARCODE'
      Size = 40
    end
  end
  object dsrFitas: TDatasourceMC
    AutoEdit = False
    DataSet = qryFitas
    OnDataChange = dsrFitasDataChange
    Left = 40
    Top = 177
  end
  object qryFornecedores: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT CODCLIENTE, NOME FROM TBCLIENTE C, TBPESSOA P'
      
        'WHERE FORNECEDOR='#39'Sim'#39' AND C.CODPESSOA=P.CODPESSOA AND TITULAR='#39 +
        'Sim'#39)
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 88
    Top = 189
    object qryFornecedoresCODCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object qryFornecedoresNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
  end
  object srcFornecedor: TDatasourceMC
    DataSet = qryFornecedores
    Left = 88
    Top = 217
  end
  object qryGenero: TZQueryMC
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
    Conexao = DM.db
    Left = 120
    Top = 189
    object qryGeneroCODGENERO: TIntegerField
      FieldName = 'CODGENERO'
      Required = True
    end
    object qryGeneroNOME: TStringField
      FieldName = 'NOME'
      Required = True
    end
  end
  object dsrGenero: TDatasourceMC
    DataSet = qryGenero
    Left = 120
    Top = 217
  end
  object qryPreco: TZQueryMC
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
    Conexao = DM.db
    Left = 152
    Top = 189
    object qryPrecoCODPRECO: TIntegerField
      FieldName = 'CODPRECO'
      Required = True
    end
    object qryPrecoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryPrecoVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
  end
  object dsrPreco: TDatasourceMC
    DataSet = qryPreco
    Left = 152
    Top = 217
  end
  object qryHistorico: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBHISTORICO WHERE CODHISTORICO=:CODHISTORICO')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODHISTORICO'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    TableName = 'TBHISTORICO'
    FieldKey = 'CODHISTORICO'
    Conexao = DM.db
    Left = 48
    Top = 253
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODHISTORICO'
        ParamType = ptUnknown
      end>
    object qryHistoricoCODHISTORICO: TIntegerField
      FieldName = 'CODHISTORICO'
      Required = True
    end
    object qryHistoricoCODFICHA: TIntegerField
      FieldName = 'CODFICHA'
      Required = True
    end
    object qryHistoricoCODFILME: TIntegerField
      FieldName = 'CODFILME'
    end
    object qryHistoricoDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
    end
    object qryHistoricoDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
    end
    object qryHistoricoATRASO: TStringField
      FieldName = 'ATRASO'
      Size = 3
    end
    object qryHistoricoCODSOCIO: TIntegerField
      FieldName = 'CODSOCIO'
    end
    object qryHistoricoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qryHistoricoQTD: TIntegerField
      FieldName = 'QTD'
    end
    object qryHistoricoTROCA: TStringField
      FieldName = 'TROCA'
      Size = 3
    end
    object qryHistoricoMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 255
    end
  end
end
