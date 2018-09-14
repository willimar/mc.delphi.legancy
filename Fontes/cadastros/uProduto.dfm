inherited _frmCadGridProduto: T_frmCadGridProduto
  Left = 124
  Top = 133
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
        Caption = 'Produtos'
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
          FieldCheckBox = cdsGridSTATUS
          Columns = <
            item
              Expanded = False
              FieldName = 'STATUS'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODPRODUTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODGRUPO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CODSUBGRUPO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REFERENCIA'
              Width = 156
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODBARRA'
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTOQUEMINIMO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTOQUEMAXIMO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORCUSTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORVENDA'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOPRODUTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATACADASTRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATATUALIZACAO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'OBS'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'UNIDADEMEDIDA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDEMBALAGEM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESOUNIDADE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESOLIQUIDO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESOBRUTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOCALIZACAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODTRIBUTACAONOTAFISCAL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'IPI'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GP_DESCRICAO'
              Width = 209
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SG_DESCRICAO'
              Width = 236
              Visible = True
            end>
        end
      end
      inherited tbsDetalhes: TTabSheet
        OnShow = tbsDetalhesShow
        inherited Panel8: TPanelMC
          Width = 612
          Height = 401
          object PageControl2: TPageControl
            Left = 1
            Top = 1
            Width = 610
            Height = 399
            ActivePage = tbsFornecdores
            Align = alClient
            MultiLine = True
            TabOrder = 0
            object tbsGerais: TTabSheet
              Caption = 'Dados Gerais'
              object panEnd: TPanelMC
                Left = 0
                Top = 123
                Width = 602
                Height = 121
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                object Bevel6: TBevel
                  Left = 0
                  Top = 119
                  Width = 602
                  Height = 2
                  Align = alBottom
                  Shape = bsBottomLine
                end
                object GroupBox1: TGroupBox
                  Left = 306
                  Top = 2
                  Width = 190
                  Height = 55
                  Caption = ' Estoque '
                  TabOrder = 1
                  object Label9: TLabelMC
                    Left = 5
                    Top = 14
                    Width = 35
                    Height = 13
                    Caption = 'M'#237'nimo'
                  end
                  object Label11: TLabelMC
                    Left = 71
                    Top = 14
                    Width = 36
                    Height = 13
                    Caption = 'M'#225'ximo'
                  end
                  object dbevaloMinimo: TDBEditMC
                    Tag = 2
                    Left = 5
                    Top = 28
                    Width = 64
                    Height = 21
                    DataField = 'EstoqueMinimo'
                    DataSource = dsrCad
                    TabOrder = 0
                    Requerido = True
                    TabSheet = tbsGerais
                    Rotulo = Label9
                  end
                  object dbeValorMaximo: TDBEditMC
                    Tag = 2
                    Left = 71
                    Top = 28
                    Width = 66
                    Height = 21
                    AutoSelect = False
                    DataField = 'EstoqueMaximo'
                    DataSource = dsrCad
                    TabOrder = 1
                    Requerido = True
                    TabSheet = tbsGerais
                    Rotulo = Label11
                  end
                end
                object GroupBox2: TGroupBox
                  Left = 306
                  Top = 58
                  Width = 191
                  Height = 56
                  Caption = ' Valores '
                  TabOrder = 2
                  object Label3: TLabelMC
                    Left = 5
                    Top = 14
                    Width = 27
                    Height = 13
                    Caption = 'Custo'
                  end
                  object Label5: TLabelMC
                    Left = 96
                    Top = 14
                    Width = 31
                    Height = 13
                    Caption = 'Venda'
                  end
                  object dbeValorCusto: TDBEditMC
                    Tag = 2
                    Left = 5
                    Top = 28
                    Width = 89
                    Height = 21
                    DataField = 'ValorCusto'
                    DataSource = dsrCad
                    TabOrder = 0
                    Requerido = True
                    TabSheet = tbsGerais
                    Rotulo = Label3
                  end
                  object dbeValorVenda: TDBEditMC
                    Tag = 2
                    Left = 96
                    Top = 28
                    Width = 89
                    Height = 21
                    AutoSelect = False
                    DataField = 'ValorVenda'
                    DataSource = dsrCad
                    TabOrder = 1
                    Requerido = True
                    TabSheet = tbsGerais
                    Rotulo = Label5
                  end
                end
                object Panel6: TPanelMC
                  Left = 500
                  Top = 4
                  Width = 98
                  Height = 91
                  BevelOuter = bvLowered
                  TabOrder = 3
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
                object dadosfiscais: TGroupBox
                  Left = 4
                  Top = 2
                  Width = 295
                  Height = 112
                  Caption = ' Dados Fiscais '
                  TabOrder = 0
                  object Label16: TLabelMC
                    Left = 6
                    Top = 25
                    Width = 122
                    Height = 13
                    Caption = 'Tributa'#231#227'o de Nota Fiscal'
                  end
                  object Label6: TLabelMC
                    Left = 6
                    Top = 68
                    Width = 13
                    Height = 13
                    Caption = 'IPI'
                  end
                  object SpeedButton2: TSpeedButton
                    Left = 267
                    Top = 42
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
                  object dblTribNF: TDBLookupComboBoxMC
                    Tag = 2
                    Left = 6
                    Top = 41
                    Width = 258
                    Height = 21
                    DataField = 'CODTRIBUTACAONOTAFISCAL'
                    DataSource = dsrCad
                    KeyField = 'CODTRIBUTACAONOTAFISCAL'
                    ListField = 'DESCRICAO'
                    ListSource = dsrTribNF
                    NullValueKey = 46
                    TabOrder = 0
                    TabSheet = tbsGerais
                    Rotulo = Label16
                  end
                  object DBEdit2: TDBEditMC
                    Tag = 2
                    Left = 6
                    Top = 82
                    Width = 64
                    Height = 21
                    DataField = 'IPI'
                    DataSource = dsrCad
                    TabOrder = 1
                    Requerido = True
                    TabSheet = tbsGerais
                    Rotulo = Label6
                  end
                end
              end
              object pnlDoc: TPanelMC
                Left = 0
                Top = 80
                Width = 602
                Height = 43
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 2
                object Bevel4: TBevel
                  Left = 0
                  Top = 41
                  Width = 602
                  Height = 2
                  Align = alBottom
                  Shape = bsBottomLine
                end
                object lbGrupoEmpresa: TLabelMC
                  Left = 4
                  Top = 1
                  Width = 84
                  Height = 13
                  Caption = 'Grupo do Produto'
                  FocusControl = dblGrupoProduto
                end
                object Label8: TLabelMC
                  Left = 270
                  Top = 3
                  Width = 106
                  Height = 13
                  Caption = 'Sub Grupo do Produto'
                  FocusControl = dblSubGrupoProduto
                end
                object bitCidade: TSpeedButton
                  Left = 499
                  Top = 16
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
                  Left = 247
                  Top = 16
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
                object dblGrupoProduto: TDBLookupComboBoxMC
                  Tag = 2
                  Left = 4
                  Top = 16
                  Width = 240
                  Height = 21
                  DataField = 'CodGrupo'
                  DataSource = dsrCad
                  KeyField = 'CODGRUPO'
                  ListField = 'DESCRICAO'
                  ListSource = srcGrupoProduto
                  NullValueKey = 46
                  TabOrder = 0
                  TabSheet = tbsGerais
                  Rotulo = lbGrupoEmpresa
                end
                object dblSubGrupoProduto: TDBLookupComboBoxMC
                  Tag = 2
                  Left = 270
                  Top = 16
                  Width = 227
                  Height = 21
                  DataField = 'CodSubGrupo'
                  DataSource = dsrCad
                  KeyField = 'CODSUBGRUPO'
                  ListField = 'DESCRICAO'
                  ListSource = SRCsUBgRUPO
                  NullValueKey = 46
                  TabOrder = 1
                  TabSheet = tbsGerais
                  Rotulo = Label8
                end
                object Panel14: TPanelMC
                  Left = 525
                  Top = 12
                  Width = 71
                  Height = 23
                  BevelOuter = bvLowered
                  TabOrder = 2
                  object DBCheckBox1: TDBCheckBox
                    Left = 5
                    Top = 3
                    Width = 61
                    Height = 17
                    Caption = 'Ativo'
                    DataField = 'Status'
                    DataSource = dsrCad
                    TabOrder = 0
                    ValueChecked = 'Sim'
                    ValueUnchecked = 'N'#227'o'
                  end
                end
              end
              object pnlDados: TPanelMC
                Left = 0
                Top = 0
                Width = 602
                Height = 80
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object lbCodigo: TLabelMC
                  Left = 2
                  Top = -1
                  Width = 33
                  Height = 13
                  Caption = 'C'#243'digo'
                  FocusControl = dbCodigo
                end
                object lbNome: TLabelMC
                  Left = 88
                  Top = -1
                  Width = 81
                  Height = 13
                  Caption = 'Codigo de Barras'
                  FocusControl = dbeCodBarra
                end
                object Bevel3: TBevel
                  Left = 0
                  Top = 78
                  Width = 602
                  Height = 2
                  Align = alBottom
                  Shape = bsBottomLine
                end
                object lbApelido: TLabelMC
                  Left = 200
                  Top = -1
                  Width = 83
                  Height = 13
                  Caption = 'Nome do Produto'
                end
                object Label15: TLabelMC
                  Left = 478
                  Top = 1
                  Width = 52
                  Height = 13
                  Caption = 'Refer'#234'ncia'
                end
                object dbCodigo: TDBEditMC
                  Tag = 2
                  Left = 2
                  Top = 14
                  Width = 84
                  Height = 21
                  TabStop = False
                  AutoSize = False
                  Color = 14743551
                  DataField = 'CodProduto'
                  DataSource = dsrCad
                  ReadOnly = True
                  TabOrder = 0
                  Requerido = True
                  Rotulo = lbCodigo
                end
                object dbeCodBarra: TDBEditMC
                  Tag = 2
                  Left = 88
                  Top = 14
                  Width = 112
                  Height = 21
                  AutoSize = False
                  DataField = 'CodBarra'
                  DataSource = dsrCad
                  MaxLength = 13
                  TabOrder = 1
                  OnExit = dbeCodBarraExit
                  TabSheet = tbsGerais
                  Rotulo = lbNome
                end
                object dbeRazSocial: TDBEditMC
                  Tag = 2
                  Left = 201
                  Top = 14
                  Width = 274
                  Height = 21
                  DataField = 'Descricao'
                  DataSource = dsrCad
                  TabOrder = 2
                  Requerido = True
                  TabSheet = tbsGerais
                  Rotulo = lbApelido
                end
                object dbeReferencia: TDBEditMC
                  Tag = 2
                  Left = 477
                  Top = 14
                  Width = 118
                  Height = 21
                  DataField = 'Referencia'
                  DataSource = dsrCad
                  TabOrder = 3
                  Requerido = True
                  TabSheet = tbsGerais
                  Rotulo = Label15
                end
                object DBRadioGroupMC1: TDBRadioGroupMC
                  Tag = 2
                  Left = 3
                  Top = 38
                  Width = 594
                  Height = 37
                  Caption = ' Tipo de Produto '
                  Columns = 6
                  DataField = 'TipoProduto'
                  DataSource = dsrCad
                  Items.Strings = (
                    '&Revenda'
                    '&Produ'#231#227'o'
                    'C&onsumo'
                    'I&nsumo'
                    'Imo&bilizado'
                    '&Servi'#231'o')
                  TabOrder = 4
                  Values.Strings = (
                    '0'
                    '1'
                    '2'
                    '3'
                    '4'
                    '5')
                  Requerido = True
                  TabSheet = tbsGerais
                end
              end
              object Panel11: TPanelMC
                Left = 0
                Top = 244
                Width = 602
                Height = 109
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 3
                object Bevel7: TBevel
                  Left = 0
                  Top = 107
                  Width = 602
                  Height = 2
                  Align = alBottom
                  Shape = bsBottomLine
                end
                object embalagem: TGroupBox
                  Left = 4
                  Top = 3
                  Width = 307
                  Height = 100
                  Caption = ' Embalagem '
                  TabOrder = 0
                  object Label7: TLabelMC
                    Left = 5
                    Top = 16
                    Width = 40
                    Height = 13
                    Caption = 'Unidade'
                  end
                  object Label10: TLabelMC
                    Left = 5
                    Top = 55
                    Width = 57
                    Height = 13
                    Caption = 'Localiza'#231#227'o'
                  end
                  object Label12: TLabelMC
                    Left = 72
                    Top = 15
                    Width = 44
                    Height = 13
                    Caption = 'Qtd Emb.'
                  end
                  object Label13: TLabelMC
                    Left = 209
                    Top = 56
                    Width = 52
                    Height = 13
                    Caption = 'Peso Bruto'
                  end
                  object Label17: TLabelMC
                    Left = 119
                    Top = 55
                    Width = 63
                    Height = 13
                    Caption = 'Peso L'#237'quido'
                  end
                  object Label20: TLabelMC
                    Left = 155
                    Top = 15
                    Width = 70
                    Height = 13
                    Caption = 'Peso Por UND'
                  end
                  object cboUnidade: TDBComboBoxMC
                    Tag = 2
                    Left = 5
                    Top = 30
                    Width = 65
                    Height = 21
                    Style = csDropDownList
                    DataField = 'UnidadeMedida'
                    DataSource = dsrCad
                    ItemHeight = 13
                    Items.Strings = (
                      'CN'
                      'MI'
                      'CT'
                      'GR'
                      'UN'
                      'DZ'
                      'M3'
                      'BA'
                      'FR'
                      'CX'
                      'PA'
                      'LA'
                      'PT'
                      'GL'
                      'TB'
                      'CJ'
                      'RL'
                      'PC'
                      'LT'
                      'AM'
                      'MT'
                      'CP'
                      'JG'
                      'VD'
                      'SC'
                      'EN'
                      'KG'
                      'GF'
                      'TN'
                      'ML'
                      'FD')
                    TabOrder = 0
                    Requerido = True
                    TabSheet = tbsGerais
                    Rotulo = Label7
                  end
                  object dbeLocalizacao: TDBEditMC
                    Tag = 2
                    Left = 5
                    Top = 70
                    Width = 111
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'Localizacao'
                    DataSource = dsrCad
                    TabOrder = 3
                    TabSheet = tbsGerais
                    Rotulo = Label10
                  end
                  object dbeQtdEmb: TDBEditMC
                    Tag = 2
                    Left = 72
                    Top = 30
                    Width = 80
                    Height = 21
                    DataField = 'QtdEmbalagem'
                    DataSource = dsrCad
                    TabOrder = 1
                    Requerido = True
                    TabSheet = tbsGerais
                    Rotulo = Label12
                  end
                  object dbePesoBrut: TDBEditMC
                    Tag = 2
                    Left = 209
                    Top = 70
                    Width = 88
                    Height = 21
                    Hint = 
                      '(Qtd de Produto Embalagem) x (Qtd Prduto Unidade) x (Peso Produt' +
                      'o Unidade)'
                    DataField = 'PesoBruto'
                    DataSource = dsrCad
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 5
                    Requerido = True
                    TabSheet = tbsGerais
                    Rotulo = Label13
                  end
                  object dbePesoLiquido: TDBEditMC
                    Tag = 2
                    Left = 119
                    Top = 70
                    Width = 88
                    Height = 21
                    Hint = 
                      '(Qtd de Produto Embalagem) x (Qtd Prduto Unidade) x (Peso Produt' +
                      'o Unidade)'
                    DataField = 'PesoLiquido'
                    DataSource = dsrCad
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 4
                    Requerido = True
                    TabSheet = tbsGerais
                    Rotulo = Label17
                  end
                  object DBEdit1: TDBEditMC
                    Tag = 2
                    Left = 155
                    Top = 30
                    Width = 79
                    Height = 21
                    DataField = 'PesoUnidade'
                    DataSource = dsrCad
                    TabOrder = 2
                    Requerido = True
                    TabSheet = tbsGerais
                    Rotulo = Label20
                  end
                end
                object DBRichEditMC1: TDBRichEditMC
                  Tag = 2
                  Left = 313
                  Top = 8
                  Width = 284
                  Height = 92
                  DataField = 'OBS'
                  DataSource = dsrCad
                  ScrollBars = ssVertical
                  TabOrder = 1
                  TabSheet = tbsGerais
                end
              end
            end
            object tbsEstoque: TTabSheet
              Caption = 'Dados do Estoque'
              ImageIndex = 1
              object Panel9: TPanelMC
                Left = 0
                Top = 0
                Width = 602
                Height = 51
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object edtRazSoc: TEditMC
                  Tag = 2
                  Left = 0
                  Top = 23
                  Width = 473
                  Height = 21
                  TabOrder = 0
                end
                object Panel10: TPanelMC
                  Left = 0
                  Top = 0
                  Width = 602
                  Height = 20
                  Align = alTop
                  BevelOuter = bvLowered
                  TabOrder = 1
                  object DBText2: TDBTextMC
                    Tag = 2
                    Left = 375
                    Top = 3
                    Width = 225
                    Height = 14
                    DataField = 'Referencia'
                  end
                  object DBText1: TDBTextMC
                    Tag = 2
                    Left = 4
                    Top = 3
                    Width = 357
                    Height = 14
                    DataField = 'Descricao'
                  end
                  object Bevel5: TBevel
                    Left = 368
                    Top = 2
                    Width = 2
                    Height = 16
                  end
                end
              end
              object DBGridMC1: TDBGridMC
                Tag = 2
                Left = 0
                Top = 51
                Width = 602
                Height = 302
                Align = alClient
                BorderStyle = bsNone
                Color = 14739951
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
              end
            end
            object tbsFornecdores: TTabSheet
              Caption = 'Fornecedores'
              ImageIndex = 2
              object Panel12: TPanelMC
                Left = 0
                Top = 0
                Width = 602
                Height = 53
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
              end
              object Panel20: TPanelMC
                Left = 8
                Top = 8
                Width = 586
                Height = 307
                BevelOuter = bvLowered
                TabOrder = 1
                object Panel21: TPanelMC
                  Left = 1
                  Top = 1
                  Width = 584
                  Height = 18
                  Align = alTop
                  Caption = 'Fornecedores'
                  TabOrder = 0
                end
                object dbgFornecedor: TDuploGridMC
                  Left = 1
                  Top = 19
                  Width = 584
                  Height = 287
                  Align = alClient
                  TabOrder = 1
                  DataSetOrigem = sqlFornecedoresOrigem
                  DataSetDestino = sqlFornecedoresDestino
                  GridOrigem.Tag = 2
                  GridOrigem.Left = 1
                  GridOrigem.Top = 1
                  GridOrigem.Width = 280
                  GridOrigem.Height = 285
                  GridOrigem.Align = alLeft
                  GridOrigem.BorderStyle = bsNone
                  GridOrigem.Color = 14739951
                  GridOrigem.DataSource.DataSet.Aggregates = <>
                  GridOrigem.DataSource.DataSet.Params = <>
                  GridOrigem.DataSource.DataSet.ProviderName = 'dspOrigem'
                  GridOrigem.Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  GridOrigem.TabOrder = 0
                  GridOrigem.TitleFont.Charset = DEFAULT_CHARSET
                  GridOrigem.TitleFont.Color = clWindowText
                  GridOrigem.TitleFont.Height = -11
                  GridOrigem.TitleFont.Name = 'MS Sans Serif'
                  GridOrigem.TitleFont.Style = []
                  GridDestino.Tag = 2
                  GridDestino.Left = 303
                  GridDestino.Top = 1
                  GridDestino.Width = 280
                  GridDestino.Height = 285
                  GridDestino.Align = alRight
                  GridDestino.BorderStyle = bsNone
                  GridDestino.Color = 14739951
                  GridDestino.DataSource.DataSet.Aggregates = <>
                  GridDestino.DataSource.DataSet.IndexFieldNames = 'CODFORNECEDOR'
                  GridDestino.DataSource.DataSet.Params = <>
                  GridDestino.DataSource.DataSet.ProviderName = 'dspDestino'
                  GridDestino.Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  GridDestino.TabOrder = 1
                  GridDestino.TitleFont.Charset = DEFAULT_CHARSET
                  GridDestino.TitleFont.Color = clWindowText
                  GridDestino.TitleFont.Height = -11
                  GridDestino.TitleFont.Name = 'MS Sans Serif'
                  GridDestino.TitleFont.Style = []
                  BtnLeft = 282
                  BtnTop = 105
                  LarguraGridOrigem = 280
                  LarguraGridDestino = 280
                  KeyField = 'CODPRODUTO'
                  IndexKey = 'CODFORNECEDOR'
                  LoookupField = 'NOME'
                  DataSetLookup = sqlLookupFornecedor
                  KeyFieldDestino = 'CODPRODUTO'
                  DataSetControle = qryCad
                end
              end
            end
            object tbsSugestaoPreco: TTabSheet
              Caption = 'Sugest'#227'o de Pre'#231'os'
              ImageIndex = 3
              object impostos: TGroupBox
                Left = 0
                Top = 8
                Width = 190
                Height = 166
                Caption = ' Impostos '
                TabOrder = 0
                object Label30: TLabelMC
                  Left = 8
                  Top = 35
                  Width = 26
                  Height = 13
                  Caption = 'ICMS'
                end
                object Label31: TLabelMC
                  Left = 8
                  Top = 60
                  Width = 17
                  Height = 13
                  Caption = 'PIS'
                end
                object Label32: TLabelMC
                  Left = 8
                  Top = 85
                  Width = 35
                  Height = 13
                  Caption = 'Confins'
                end
                object Label33: TLabelMC
                  Left = 8
                  Top = 110
                  Width = 13
                  Height = 13
                  Caption = 'IPI'
                end
                object Label34: TLabelMC
                  Left = 8
                  Top = 135
                  Width = 36
                  Height = 13
                  Caption = 'Simples'
                end
                object Label35: TLabelMC
                  Left = 78
                  Top = 15
                  Width = 8
                  Height = 13
                  Caption = '%'
                end
                object Label36: TLabelMC
                  Left = 133
                  Top = 16
                  Width = 24
                  Height = 13
                  Caption = 'Valor'
                end
                object dbeIcms: TDBEditMC
                  Tag = 2
                  Left = 58
                  Top = 31
                  Width = 44
                  Height = 21
                  DataField = 'DfPercICMS'
                  TabOrder = 0
                end
                object dbePis: TDBEditMC
                  Tag = 2
                  Left = 58
                  Top = 56
                  Width = 44
                  Height = 21
                  DataField = 'DfPercPIS'
                  TabOrder = 1
                end
                object dbeConfins: TDBEditMC
                  Tag = 2
                  Left = 58
                  Top = 81
                  Width = 44
                  Height = 21
                  DataField = 'DfPercCOFINS'
                  TabOrder = 2
                end
                object dbeIpi: TDBEditMC
                  Tag = 2
                  Left = 58
                  Top = 106
                  Width = 44
                  Height = 21
                  DataField = 'DfPercIPI'
                  TabOrder = 3
                end
                object dbeSimples: TDBEditMC
                  Tag = 2
                  Left = 58
                  Top = 131
                  Width = 44
                  Height = 21
                  DataField = 'DfPercSimples'
                  TabOrder = 4
                end
                object edtIcms: TEditMC
                  Tag = 2
                  Left = 106
                  Top = 31
                  Width = 75
                  Height = 21
                  TabStop = False
                  BiDiMode = bdLeftToRight
                  Color = 14743551
                  ParentBiDiMode = False
                  ReadOnly = True
                  TabOrder = 5
                  Text = '0'
                end
                object edtPis: TEditMC
                  Tag = 2
                  Left = 106
                  Top = 55
                  Width = 75
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 6
                  Text = '0'
                end
                object edtConfins: TEditMC
                  Tag = 2
                  Left = 106
                  Top = 80
                  Width = 75
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 7
                  Text = '0'
                end
                object edtIpi: TEditMC
                  Tag = 2
                  Left = 106
                  Top = 105
                  Width = 75
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 8
                  Text = '0'
                end
                object edtSimples: TEditMC
                  Tag = 2
                  Left = 106
                  Top = 130
                  Width = 75
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 9
                  Text = '0'
                end
              end
              object comercializacao: TGroupBox
                Left = 195
                Top = 8
                Width = 208
                Height = 166
                Caption = ' Comercializa'#231#227'o '
                TabOrder = 1
                object Label37: TLabelMC
                  Left = 8
                  Top = 35
                  Width = 47
                  Height = 13
                  Caption = 'Marketing'
                end
                object Label38: TLabelMC
                  Left = 8
                  Top = 60
                  Width = 45
                  Height = 13
                  Caption = 'Comiss'#227'o'
                end
                object Label39: TLabelMC
                  Left = 8
                  Top = 85
                  Width = 63
                  Height = 13
                  Caption = 'Frete Compra'
                end
                object Label40: TLabelMC
                  Left = 8
                  Top = 110
                  Width = 58
                  Height = 13
                  Caption = 'Frete Venda'
                end
                object Label42: TLabelMC
                  Left = 96
                  Top = 15
                  Width = 8
                  Height = 13
                  Caption = '%'
                end
                object Label43: TLabelMC
                  Left = 153
                  Top = 16
                  Width = 24
                  Height = 13
                  Caption = 'Valor'
                end
                object dbeMarketing: TDBEditMC
                  Tag = 2
                  Left = 79
                  Top = 31
                  Width = 44
                  Height = 21
                  DataField = 'DfPercMarketing'
                  TabOrder = 0
                end
                object dbeComissao: TDBEditMC
                  Tag = 2
                  Left = 79
                  Top = 56
                  Width = 44
                  Height = 21
                  DataField = 'DfPercFreteCompra'
                  TabOrder = 1
                end
                object dbeFreteCompra: TDBEditMC
                  Tag = 2
                  Left = 79
                  Top = 81
                  Width = 44
                  Height = 21
                  DataField = 'DfPercFreteCompra'
                  TabOrder = 2
                end
                object dbeFreteVenda: TDBEditMC
                  Tag = 2
                  Left = 79
                  Top = 106
                  Width = 44
                  Height = 21
                  DataField = 'DfPercFreteVenda'
                  TabOrder = 3
                end
                object edtMarketing: TEditMC
                  Tag = 2
                  Left = 127
                  Top = 31
                  Width = 75
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 4
                  Text = '0'
                end
                object edtFreteVenda: TEditMC
                  Tag = 2
                  Left = 127
                  Top = 106
                  Width = 75
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 5
                  Text = '0'
                end
                object edtFreteCompra: TEditMC
                  Tag = 2
                  Left = 127
                  Top = 81
                  Width = 75
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 6
                  Text = '0'
                end
                object edtComissao: TEditMC
                  Tag = 2
                  Left = 127
                  Top = 56
                  Width = 75
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 7
                  Text = '0'
                end
              end
              object valorimpostos: TGroupBox
                Left = 408
                Top = 8
                Width = 197
                Height = 166
                Caption = ' Impostos '
                TabOrder = 2
                object Label41: TLabelMC
                  Left = 8
                  Top = 35
                  Width = 19
                  Height = 13
                  Caption = 'Fixo'
                end
                object Label44: TLabelMC
                  Left = 8
                  Top = 60
                  Width = 38
                  Height = 13
                  Caption = 'Vari'#225'vel'
                end
                object Label45: TLabelMC
                  Left = 8
                  Top = 85
                  Width = 49
                  Height = 13
                  Caption = 'Financeiro'
                end
                object Label47: TLabelMC
                  Left = 8
                  Top = 137
                  Width = 27
                  Height = 13
                  Caption = 'Lucro'
                end
                object Label48: TLabelMC
                  Left = 84
                  Top = 15
                  Width = 8
                  Height = 13
                  Caption = '%'
                end
                object Label49: TLabelMC
                  Left = 136
                  Top = 16
                  Width = 24
                  Height = 13
                  Caption = 'Valor'
                end
                object Bevel8: TBevel
                  Left = 9
                  Top = 117
                  Width = 181
                  Height = 3
                end
                object dbeFixo: TDBEditMC
                  Tag = 2
                  Left = 66
                  Top = 31
                  Width = 44
                  Height = 21
                  DataField = 'DfPercCustoFixo'
                  TabOrder = 0
                end
                object dbeVariavel: TDBEditMC
                  Tag = 2
                  Left = 66
                  Top = 56
                  Width = 44
                  Height = 21
                  DataField = 'DfPercCustoVariavel'
                  TabOrder = 1
                end
                object dbeFinanceiro: TDBEditMC
                  Tag = 2
                  Left = 66
                  Top = 81
                  Width = 44
                  Height = 21
                  DataField = 'DfPercCustoFinanceiro'
                  TabOrder = 2
                end
                object dbeLucro: TDBEditMC
                  Tag = 2
                  Left = 66
                  Top = 133
                  Width = 44
                  Height = 21
                  DataField = 'DfPercLucro'
                  TabOrder = 3
                end
                object edtFixo: TEditMC
                  Tag = 2
                  Left = 113
                  Top = 31
                  Width = 75
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 4
                  Text = '0'
                end
                object edtFinanceiro: TEditMC
                  Tag = 2
                  Left = 113
                  Top = 81
                  Width = 75
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 5
                  Text = '0'
                end
                object edtVariavel: TEditMC
                  Tag = 2
                  Left = 113
                  Top = 56
                  Width = 75
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 6
                  Text = '0'
                end
                object edtLucro: TEditMC
                  Tag = 2
                  Left = 113
                  Top = 133
                  Width = 75
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 7
                  Text = '0'
                end
              end
              object titulos: TPanelMC
                Left = -1
                Top = 177
                Width = 606
                Height = 41
                BevelOuter = bvLowered
                TabOrder = 3
                object Label46: TLabelMC
                  Left = 8
                  Top = 16
                  Width = 45
                  Height = 13
                  Caption = 'Condi'#231#227'o'
                end
                object Label50: TLabelMC
                  Left = 119
                  Top = 3
                  Width = 77
                  Height = 13
                  Caption = 'Custo Calculado'
                end
                object Label51: TLabelMC
                  Left = 101
                  Top = 25
                  Width = 36
                  Height = 13
                  Caption = 'Compra'
                end
                object Label52: TLabelMC
                  Left = 193
                  Top = 25
                  Width = 22
                  Height = 13
                  Caption = 'Real'
                end
                object Label53: TLabelMC
                  Left = 315
                  Top = 3
                  Width = 55
                  Height = 13
                  Caption = 'Pre'#231'o Atual'
                end
                object Label54: TLabelMC
                  Left = 287
                  Top = 25
                  Width = 24
                  Height = 13
                  Caption = 'Valor'
                end
                object Label55: TLabelMC
                  Left = 368
                  Top = 25
                  Width = 41
                  Height = 13
                  Caption = 'Mark-Up'
                end
                object Label56: TLabelMC
                  Left = 486
                  Top = 3
                  Width = 76
                  Height = 13
                  Caption = 'Pre'#231'o Sugest'#227'o'
                end
                object Label57: TLabelMC
                  Left = 470
                  Top = 25
                  Width = 24
                  Height = 13
                  Caption = 'Valor'
                end
                object Label58: TLabelMC
                  Left = 540
                  Top = 25
                  Width = 41
                  Height = 13
                  Caption = 'Mark-Up'
                end
                object Bevel9: TBevel
                  Left = 79
                  Top = 20
                  Width = 517
                  Height = 2
                end
                object Bevel10: TBevel
                  Left = 155
                  Top = 23
                  Width = 3
                  Height = 16
                end
                object Bevel11: TBevel
                  Left = 252
                  Top = 23
                  Width = 3
                  Height = 16
                end
                object Bevel12: TBevel
                  Left = 342
                  Top = 23
                  Width = 3
                  Height = 16
                end
                object Bevel13: TBevel
                  Left = 436
                  Top = 23
                  Width = 3
                  Height = 16
                end
                object Bevel14: TBevel
                  Left = 523
                  Top = 23
                  Width = 3
                  Height = 16
                end
                object Bevel15: TBevel
                  Left = 75
                  Top = 3
                  Width = 2
                  Height = 36
                end
                object Bevel16: TBevel
                  Left = 436
                  Top = 3
                  Width = 3
                  Height = 16
                end
                object Bevel17: TBevel
                  Left = 252
                  Top = 3
                  Width = 3
                  Height = 16
                end
              end
              object avista: TPanelMC
                Left = -1
                Top = 219
                Width = 606
                Height = 29
                BevelOuter = bvLowered
                TabOrder = 4
                object Label59: TLabelMC
                  Left = 8
                  Top = 8
                  Width = 33
                  Height = 13
                  Caption = #192' Vista'
                end
                object Bevel18: TBevel
                  Left = 155
                  Top = 3
                  Width = 3
                  Height = 24
                end
                object Bevel19: TBevel
                  Left = 342
                  Top = 3
                  Width = 3
                  Height = 24
                end
                object Bevel20: TBevel
                  Left = 523
                  Top = 3
                  Width = 3
                  Height = 24
                end
                object Bevel21: TBevel
                  Left = 252
                  Top = 3
                  Width = 3
                  Height = 24
                end
                object Bevel22: TBevel
                  Left = 436
                  Top = 3
                  Width = 3
                  Height = 24
                end
                object Bevel23: TBevel
                  Left = 75
                  Top = 3
                  Width = 3
                  Height = 24
                end
                object DBEdit45: TDBEditMC
                  Tag = 2
                  Left = 90
                  Top = 4
                  Width = 57
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfCondCompraAVista'
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit50: TDBEditMC
                  Tag = 2
                  Left = 174
                  Top = 4
                  Width = 59
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfCondRealAVista'
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit52: TDBEditMC
                  Tag = 2
                  Left = 271
                  Top = 4
                  Width = 57
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfValorAtualAVista'
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit53: TDBEditMC
                  Tag = 2
                  Left = 359
                  Top = 4
                  Width = 59
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfMarkUpAtualAVista'
                  ReadOnly = True
                  TabOrder = 3
                end
                object DBEdit54: TDBEditMC
                  Tag = 2
                  Left = 453
                  Top = 4
                  Width = 57
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfValorSugAVista'
                  ReadOnly = True
                  TabOrder = 4
                end
                object DBEdit55: TDBEditMC
                  Tag = 2
                  Left = 532
                  Top = 4
                  Width = 59
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfMarkUpSugAVista'
                  ReadOnly = True
                  TabOrder = 5
                end
              end
              object aprazo: TPanelMC
                Left = -1
                Top = 248
                Width = 606
                Height = 29
                BevelOuter = bvLowered
                TabOrder = 5
                object Label60: TLabelMC
                  Left = 8
                  Top = 8
                  Width = 37
                  Height = 13
                  Caption = #192' Prazo'
                end
                object Bevel24: TBevel
                  Left = 155
                  Top = 3
                  Width = 3
                  Height = 24
                end
                object Bevel25: TBevel
                  Left = 342
                  Top = 3
                  Width = 3
                  Height = 24
                end
                object Bevel26: TBevel
                  Left = 523
                  Top = 3
                  Width = 3
                  Height = 24
                end
                object Bevel27: TBevel
                  Left = 252
                  Top = 3
                  Width = 3
                  Height = 24
                end
                object Bevel28: TBevel
                  Left = 436
                  Top = 3
                  Width = 3
                  Height = 24
                end
                object Bevel29: TBevel
                  Left = 75
                  Top = 3
                  Width = 3
                  Height = 24
                end
                object DBEdit56: TDBEditMC
                  Tag = 2
                  Left = 90
                  Top = 4
                  Width = 57
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfCondCompAPrazo'
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit57: TDBEditMC
                  Tag = 2
                  Left = 174
                  Top = 4
                  Width = 59
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfCondRealAPrazo'
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit58: TDBEditMC
                  Tag = 2
                  Left = 271
                  Top = 4
                  Width = 57
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfValorAtualAPrazo'
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit59: TDBEditMC
                  Tag = 2
                  Left = 359
                  Top = 4
                  Width = 59
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfMarkUpAtualAPrazo'
                  ReadOnly = True
                  TabOrder = 3
                end
                object DBEdit60: TDBEditMC
                  Tag = 2
                  Left = 453
                  Top = 4
                  Width = 57
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfValorSugAPrazo'
                  ReadOnly = True
                  TabOrder = 4
                end
                object DBEdit61: TDBEditMC
                  Tag = 2
                  Left = 532
                  Top = 4
                  Width = 59
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfMarKupSugAPrazo'
                  ReadOnly = True
                  TabOrder = 5
                end
              end
              object rodape: TPanelMC
                Left = -1
                Top = 281
                Width = 606
                Height = 41
                BevelInner = bvLowered
                BevelOuter = bvSpace
                TabOrder = 6
                object Label61: TLabelMC
                  Left = 4
                  Top = 14
                  Width = 74
                  Height = 13
                  Caption = #218'ltimo Reajuste'
                end
                object Label62: TLabelMC
                  Left = 249
                  Top = 14
                  Width = 21
                  Height = 13
                  Caption = 'Dias'
                end
                object Label63: TLabelMC
                  Left = 337
                  Top = 14
                  Width = 63
                  Height = 13
                  Caption = #218'ltima Venda'
                end
                object Label64: TLabelMC
                  Left = 561
                  Top = 14
                  Width = 21
                  Height = 13
                  Caption = 'Dias'
                end
                object Bevel30: TBevel
                  Left = 301
                  Top = 5
                  Width = 3
                  Height = 32
                end
                object DBEdit62: TDBEditMC
                  Tag = 2
                  Left = 88
                  Top = 11
                  Width = 73
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfUltReajuste'
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit63: TDBEditMC
                  Tag = 2
                  Left = 193
                  Top = 11
                  Width = 49
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfDiaUltReajus'
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit64: TDBEditMC
                  Tag = 2
                  Left = 409
                  Top = 11
                  Width = 73
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfUltVenda'
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit65: TDBEditMC
                  Tag = 2
                  Left = 505
                  Top = 11
                  Width = 49
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataField = 'DfDiaUltVenda'
                  ReadOnly = True
                  TabOrder = 3
                end
              end
            end
            object tbsGiroAnual: TTabSheet
              Caption = 'Giro Anual'
              ImageIndex = 4
              object StringGrid1: TStringGrid
                Left = 0
                Top = 41
                Width = 602
                Height = 312
                Align = alClient
                Color = 14739951
                ColCount = 9
                DefaultRowHeight = 16
                RowCount = 13
                FixedRows = 0
                TabOrder = 0
                ColWidths = (
                  49
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64)
                RowHeights = (
                  16
                  16
                  16
                  16
                  16
                  16
                  16
                  16
                  16
                  16
                  16
                  16
                  16)
              end
              object Panel13: TPanelMC
                Left = 0
                Top = 0
                Width = 602
                Height = 41
                Align = alTop
                BevelInner = bvLowered
                BevelOuter = bvSpace
                TabOrder = 1
                object Label65: TLabelMC
                  Left = 81
                  Top = 4
                  Width = 69
                  Height = 13
                  Caption = 'Estoque Inicial'
                end
                object Label66: TLabelMC
                  Left = 224
                  Top = 4
                  Width = 41
                  Height = 13
                  Caption = 'Compras'
                end
                object Label67: TLabelMC
                  Left = 358
                  Top = 4
                  Width = 36
                  Height = 13
                  Caption = 'Vendas'
                end
                object Label68: TLabelMC
                  Left = 472
                  Top = 4
                  Width = 64
                  Height = 13
                  Caption = 'Estoque Final'
                end
                object Label69: TLabelMC
                  Left = 75
                  Top = 24
                  Width = 17
                  Height = 13
                  Caption = 'Qtd'
                end
                object Label70: TLabelMC
                  Left = 135
                  Top = 24
                  Width = 24
                  Height = 13
                  Caption = 'Valor'
                end
                object Label71: TLabelMC
                  Left = 211
                  Top = 25
                  Width = 17
                  Height = 13
                  Caption = 'Qtd'
                end
                object Label72: TLabelMC
                  Left = 267
                  Top = 25
                  Width = 24
                  Height = 13
                  Caption = 'Valor'
                end
                object Label73: TLabelMC
                  Left = 337
                  Top = 24
                  Width = 17
                  Height = 13
                  Caption = 'Qtd'
                end
                object Label74: TLabelMC
                  Left = 393
                  Top = 24
                  Width = 24
                  Height = 13
                  Caption = 'Valor'
                end
                object Label75: TLabelMC
                  Left = 463
                  Top = 25
                  Width = 17
                  Height = 13
                  Caption = 'Qtd'
                end
                object Label76: TLabelMC
                  Left = 519
                  Top = 25
                  Width = 24
                  Height = 13
                  Caption = 'Valor'
                end
                object Bevel31: TBevel
                  Left = 54
                  Top = 20
                  Width = 515
                  Height = 2
                end
                object Bevel32: TBevel
                  Left = 115
                  Top = 24
                  Width = 2
                  Height = 14
                end
                object Bevel33: TBevel
                  Left = 181
                  Top = 22
                  Width = 2
                  Height = 16
                end
                object Bevel34: TBevel
                  Left = 245
                  Top = 22
                  Width = 2
                  Height = 16
                end
                object Bevel35: TBevel
                  Left = 311
                  Top = 22
                  Width = 2
                  Height = 16
                end
                object Bevel36: TBevel
                  Left = 375
                  Top = 22
                  Width = 2
                  Height = 16
                end
                object Bevel37: TBevel
                  Left = 441
                  Top = 22
                  Width = 2
                  Height = 16
                end
                object Bevel38: TBevel
                  Left = 505
                  Top = 24
                  Width = 2
                  Height = 14
                end
                object Bevel39: TBevel
                  Left = 181
                  Top = 4
                  Width = 2
                  Height = 15
                end
                object Bevel40: TBevel
                  Left = 311
                  Top = 4
                  Width = 2
                  Height = 15
                end
                object Bevel41: TBevel
                  Left = 441
                  Top = 4
                  Width = 2
                  Height = 15
                end
                object Bevel42: TBevel
                  Left = 51
                  Top = 4
                  Width = 2
                  Height = 34
                end
                object Bevel43: TBevel
                  Left = 571
                  Top = 4
                  Width = 2
                  Height = 34
                end
                object Label77: TLabelMC
                  Left = 16
                  Top = 16
                  Width = 20
                  Height = 13
                  Caption = 'M'#234's'
                end
              end
            end
            object tbsDadoMovimento: TTabSheet
              Caption = 'Dados de Movimento'
              ImageIndex = 5
              object GroupBox15: TGroupBox
                Left = 0
                Top = 0
                Width = 602
                Height = 108
                Align = alTop
                Caption = ' '#218'ltimas Compras '
                TabOrder = 0
                object StringGrid4: TStringGrid
                  Left = 2
                  Top = 15
                  Width = 598
                  Height = 91
                  Align = alClient
                  Color = 14739951
                  ColCount = 9
                  DefaultRowHeight = 16
                  FixedCols = 0
                  TabOrder = 0
                  ColWidths = (
                    49
                    64
                    64
                    64
                    64
                    64
                    64
                    64
                    64)
                  RowHeights = (
                    16
                    16
                    16
                    16
                    16)
                end
              end
              object GroupBox14: TGroupBox
                Left = 0
                Top = 116
                Width = 605
                Height = 108
                Caption = ' '#218'ltimas Vendas '
                TabOrder = 1
                object StringGrid3: TStringGrid
                  Left = 2
                  Top = 15
                  Width = 601
                  Height = 91
                  Align = alClient
                  Color = 14739951
                  ColCount = 9
                  DefaultRowHeight = 16
                  FixedCols = 0
                  TabOrder = 0
                  ColWidths = (
                    49
                    64
                    64
                    64
                    64
                    64
                    64
                    64
                    64)
                  RowHeights = (
                    16
                    16
                    16
                    16
                    16)
                end
              end
              object GroupBox13: TGroupBox
                Left = 0
                Top = 236
                Width = 605
                Height = 108
                Caption = ' '#218'ltimas Transfer'#234'ncias '
                TabOrder = 2
                object StringGrid2: TStringGrid
                  Left = 2
                  Top = 15
                  Width = 601
                  Height = 91
                  Align = alClient
                  Color = 14739951
                  ColCount = 9
                  DefaultRowHeight = 16
                  FixedCols = 0
                  TabOrder = 0
                  ColWidths = (
                    49
                    64
                    64
                    64
                    64
                    64
                    64
                    64
                    64)
                  RowHeights = (
                    16
                    16
                    16
                    16
                    16)
                end
              end
            end
            object tbsSugestaoCompra: TTabSheet
              Caption = 'Sujest'#227'o de Compra'
              ImageIndex = 6
              object GroupBox16: TGroupBox
                Left = 0
                Top = 0
                Width = 602
                Height = 153
                Align = alTop
                Caption = ' Demanda '
                TabOrder = 0
                object StringGrid5: TStringGrid
                  Left = 2
                  Top = 15
                  Width = 598
                  Height = 136
                  Align = alClient
                  Color = 14739951
                  ColCount = 9
                  DefaultRowHeight = 16
                  RowCount = 4
                  FixedRows = 0
                  TabOrder = 0
                  ColWidths = (
                    49
                    64
                    64
                    64
                    64
                    64
                    64
                    64
                    64)
                  RowHeights = (
                    16
                    16
                    16
                    16)
                end
              end
              object GroupBox17: TGroupBox
                Left = 1
                Top = 156
                Width = 151
                Height = 94
                Caption = ' '#205'ndice de Rotatividade '
                TabOrder = 1
                object Label78: TLabelMC
                  Left = 5
                  Top = 19
                  Width = 16
                  Height = 13
                  Caption = 'Dia'
                end
                object Label79: TLabelMC
                  Left = 5
                  Top = 44
                  Width = 20
                  Height = 13
                  Caption = 'M'#234's'
                end
                object Label80: TLabelMC
                  Left = 5
                  Top = 70
                  Width = 19
                  Height = 13
                  Caption = 'Ano'
                end
                object DBEdit66: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 16
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit67: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 41
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit68: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 66
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 2
                end
              end
              object GroupBox18: TGroupBox
                Left = 153
                Top = 156
                Width = 151
                Height = 94
                Caption = ' M'#233'dias '
                TabOrder = 2
                object Label81: TLabelMC
                  Left = 5
                  Top = 19
                  Width = 52
                  Height = 13
                  Caption = 'Ponderada'
                end
                object Label82: TLabelMC
                  Left = 5
                  Top = 44
                  Width = 29
                  Height = 13
                  Caption = 'M'#243'vel'
                end
                object Label83: TLabelMC
                  Left = 5
                  Top = 70
                  Width = 42
                  Height = 13
                  Caption = 'M'#243'vel P.'
                end
                object DBEdit69: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 16
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit70: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 41
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit71: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 66
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 2
                end
              end
              object GroupBox19: TGroupBox
                Left = 305
                Top = 156
                Width = 151
                Height = 94
                Caption = ' Estoque Seguran'#231'a '
                TabOrder = 3
                object Label84: TLabelMC
                  Left = 5
                  Top = 19
                  Width = 35
                  Height = 13
                  Caption = 'M'#237'nimo'
                end
                object Label85: TLabelMC
                  Left = 5
                  Top = 44
                  Width = 23
                  Height = 13
                  Caption = 'Ideal'
                end
                object Label86: TLabelMC
                  Left = 5
                  Top = 70
                  Width = 36
                  Height = 13
                  Caption = 'M'#225'ximo'
                end
                object DBEdit72: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 16
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit73: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 41
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit74: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 66
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 2
                end
              end
              object GroupBox20: TGroupBox
                Left = 456
                Top = 156
                Width = 149
                Height = 94
                Caption = ' Ponto de Equil'#237'brio '
                TabOrder = 4
                object Label87: TLabelMC
                  Left = 5
                  Top = 19
                  Width = 38
                  Height = 13
                  Caption = 'Atingido'
                end
                object Label88: TLabelMC
                  Left = 5
                  Top = 44
                  Width = 28
                  Height = 13
                  Caption = 'Ponto'
                end
                object Label89: TLabelMC
                  Left = 5
                  Top = 70
                  Width = 38
                  Height = 13
                  Caption = 'Ruptura'
                end
                object DBEdit75: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 16
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit76: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 41
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit77: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 66
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 2
                end
              end
              object GroupBox21: TGroupBox
                Left = 456
                Top = 253
                Width = 149
                Height = 94
                Caption = ' Estoque Virtual '
                TabOrder = 5
                object Label90: TLabelMC
                  Left = 5
                  Top = 19
                  Width = 27
                  Height = 13
                  Caption = 'Saldo'
                end
                object Label91: TLabelMC
                  Left = 5
                  Top = 44
                  Width = 52
                  Height = 13
                  Caption = 'Reservado'
                end
                object Label92: TLabelMC
                  Left = 5
                  Top = 70
                  Width = 51
                  Height = 13
                  Caption = 'Dispon'#237'vel'
                end
                object DBEdit78: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 16
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit79: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 41
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit80: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 66
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 2
                end
              end
              object GroupBox22: TGroupBox
                Left = 0
                Top = 253
                Width = 151
                Height = 94
                Caption = ' Estoque Atual '
                TabOrder = 6
                object Label93: TLabelMC
                  Left = 5
                  Top = 19
                  Width = 27
                  Height = 13
                  Caption = 'Saldo'
                end
                object Label94: TLabelMC
                  Left = 5
                  Top = 44
                  Width = 52
                  Height = 13
                  Caption = 'Reservado'
                end
                object Label95: TLabelMC
                  Left = 5
                  Top = 70
                  Width = 51
                  Height = 13
                  Caption = 'Dispon'#237'vel'
                end
                object DBEdit81: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 16
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit82: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 41
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit83: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 66
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 2
                end
              end
              object GroupBox23: TGroupBox
                Left = 152
                Top = 253
                Width = 151
                Height = 94
                Caption = ' Pedido Pendente '
                TabOrder = 7
                object Label96: TLabelMC
                  Left = 5
                  Top = 19
                  Width = 23
                  Height = 13
                  Caption = 'Data'
                end
                object Label97: TLabelMC
                  Left = 5
                  Top = 44
                  Width = 20
                  Height = 13
                  Caption = 'Qtd.'
                end
                object Label98: TLabelMC
                  Left = 5
                  Top = 70
                  Width = 41
                  Height = 13
                  Caption = 'Previs'#227'o'
                end
                object DBEdit84: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 16
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit85: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 41
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit86: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 66
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 2
                end
              end
              object GroupBox24: TGroupBox
                Left = 304
                Top = 253
                Width = 151
                Height = 94
                Caption = ' Suget'#227'o Reposi'#231#227'o '
                TabOrder = 8
                object Label99: TLabelMC
                  Left = 5
                  Top = 19
                  Width = 23
                  Height = 13
                  Caption = 'Data'
                end
                object Label100: TLabelMC
                  Left = 5
                  Top = 44
                  Width = 20
                  Height = 13
                  Caption = 'Qtd.'
                end
                object Label101: TLabelMC
                  Left = 5
                  Top = 70
                  Width = 41
                  Height = 13
                  Caption = 'Previs'#227'o'
                end
                object DBEdit87: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 16
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit88: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 41
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit89: TDBEditMC
                  Tag = 2
                  Left = 69
                  Top = 66
                  Width = 60
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 2
                end
              end
            end
          end
        end
      end
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODPRODUTO'
    object cdsGridCODPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsGridCODGRUPO: TIntegerField
      DisplayLabel = 'Grupo do produto'
      FieldName = 'CODGRUPO'
      Visible = False
    end
    object cdsGridCODSUBGRUPO: TIntegerField
      DisplayLabel = 'Subgrupo do produto'
      FieldName = 'CODSUBGRUPO'
      Visible = False
    end
    object cdsGridDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 45
    end
    object cdsGridREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
      Size = 45
    end
    object cdsGridCODBARRA: TStringField
      DisplayLabel = 'C'#243'digo de barras'
      FieldName = 'CODBARRA'
      Size = 15
    end
    object cdsGridESTOQUEMINIMO: TIntegerField
      DisplayLabel = 'Estoque m'#237'nimo'
      FieldName = 'ESTOQUEMINIMO'
    end
    object cdsGridESTOQUEMAXIMO: TIntegerField
      DisplayLabel = 'Estoque m'#225'ximo'
      FieldName = 'ESTOQUEMAXIMO'
    end
    object cdsGridVALORCUSTO: TFloatField
      DisplayLabel = 'Valor de custo'
      FieldName = 'VALORCUSTO'
    end
    object cdsGridVALORVENDA: TFloatField
      DisplayLabel = 'Valor de venda'
      FieldName = 'VALORVENDA'
    end
    object cdsGridTIPOPRODUTO: TIntegerField
      DisplayLabel = 'Tipo de produto'
      FieldName = 'TIPOPRODUTO'
    end
    object cdsGridDATACADASTRO: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'DATACADASTRO'
    end
    object cdsGridDATATUALIZACAO: TDateField
      DisplayLabel = 'Data de atualiza'#231#227'o'
      FieldName = 'DATATUALIZACAO'
      Visible = False
    end
    object cdsGridOBS: TBlobField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBS'
    end
    object cdsGridSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Required = True
      Size = 3
    end
    object cdsGridUNIDADEMEDIDA: TStringField
      DisplayLabel = 'Unidade de medida'
      FieldName = 'UNIDADEMEDIDA'
      Required = True
      Size = 2
    end
    object cdsGridQTDEMBALAGEM: TIntegerField
      DisplayLabel = 'Qtd /embalagem'
      FieldName = 'QTDEMBALAGEM'
    end
    object cdsGridPESOUNIDADE: TFloatField
      DisplayLabel = 'Peso/unidade'
      FieldName = 'PESOUNIDADE'
    end
    object cdsGridPESOLIQUIDO: TFloatField
      DisplayLabel = 'Peso liquido'
      FieldName = 'PESOLIQUIDO'
    end
    object cdsGridPESOBRUTO: TFloatField
      DisplayLabel = 'Peso bruto'
      FieldName = 'PESOBRUTO'
    end
    object cdsGridLOCALIZACAO: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'LOCALIZACAO'
      Size = 15
    end
    object cdsGridCODTRIBUTACAONOTAFISCAL: TIntegerField
      DisplayLabel = 'Tributa'#231#227'o'
      FieldName = 'CODTRIBUTACAONOTAFISCAL'
      Visible = False
    end
    object cdsGridIPI: TFloatField
      FieldName = 'IPI'
    end
    object cdsGridGP_DESCRICAO: TStringField
      DisplayLabel = 'Grupo do produto'
      FieldName = 'GP_DESCRICAO'
      Required = True
      Size = 45
    end
    object cdsGridSG_DESCRICAO: TStringField
      DisplayLabel = 'Subgrupo do produto'
      FieldName = 'SG_DESCRICAO'
      Required = True
      Size = 45
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT'
      
        '   P.*, GP.DESCRICAO AS GP_DESCRICAO, SG.DESCRICAO AS SG_DESCRIC' +
        'AO'
      'FROM TBPRODUTO P'
      'LEFT JOIN TBGRUPOPRODUTO GP ON GP.CODGRUPO=P.CODGRUPO'
      'LEFT JOIN TBSUBGRUPOPRODUTO SG ON SG.CODSUBGRUPO=P.CODSUBGRUPO')
    object qryGridCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object qryGridCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object qryGridCODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
    end
    object qryGridDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 45
    end
    object qryGridREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 45
    end
    object qryGridCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 15
    end
    object qryGridESTOQUEMINIMO: TIntegerField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qryGridESTOQUEMAXIMO: TIntegerField
      FieldName = 'ESTOQUEMAXIMO'
    end
    object qryGridVALORCUSTO: TFloatField
      FieldName = 'VALORCUSTO'
    end
    object qryGridVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
    end
    object qryGridTIPOPRODUTO: TIntegerField
      FieldName = 'TIPOPRODUTO'
    end
    object qryGridDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object qryGridDATATUALIZACAO: TDateField
      FieldName = 'DATATUALIZACAO'
    end
    object qryGridOBS: TBlobField
      FieldName = 'OBS'
    end
    object qryGridSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 3
    end
    object qryGridUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      Required = True
      Size = 2
    end
    object qryGridQTDEMBALAGEM: TIntegerField
      FieldName = 'QTDEMBALAGEM'
    end
    object qryGridPESOUNIDADE: TFloatField
      FieldName = 'PESOUNIDADE'
    end
    object qryGridPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object qryGridPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object qryGridLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 15
    end
    object qryGridCODTRIBUTACAONOTAFISCAL: TIntegerField
      FieldName = 'CODTRIBUTACAONOTAFISCAL'
    end
    object qryGridIPI: TFloatField
      FieldName = 'IPI'
    end
    object qryGridGP_DESCRICAO: TStringField
      FieldName = 'GP_DESCRICAO'
      Required = True
      Size = 45
    end
    object qryGridSG_DESCRICAO: TStringField
      FieldName = 'SG_DESCRICAO'
      Required = True
      Size = 45
    end
  end
  inherited qryCad: TZQueryMC
    AfterPost = qryCadAfterPost
    OnNewRecord = qryCadNewRecord
    SQL.Strings = (
      'SELECT * FROM TBPRODUTO WHERE CODPRODUTO=:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Value = 0
      end>
    TableName = 'TBPRODUTO'
    FieldKey = 'CODPRODUTO'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Value = 0
      end>
    object qryCadCODPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object qryCadCODGRUPO: TIntegerField
      DisplayLabel = 'Grupo do produto'
      FieldName = 'CODGRUPO'
    end
    object qryCadCODSUBGRUPO: TIntegerField
      DisplayLabel = 'Subgrupo do produto'
      FieldName = 'CODSUBGRUPO'
    end
    object qryCadDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 45
    end
    object qryCadREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'cia'
      FieldName = 'REFERENCIA'
      Size = 45
    end
    object qryCadCODBARRA: TStringField
      DisplayLabel = 'C'#243'digo de barras'
      FieldName = 'CODBARRA'
      Size = 15
    end
    object qryCadESTOQUEMINIMO: TIntegerField
      DisplayLabel = 'Estoque m'#237'nimo'
      FieldName = 'ESTOQUEMINIMO'
    end
    object qryCadESTOQUEMAXIMO: TIntegerField
      DisplayLabel = 'Estoque m'#225'ximo'
      FieldName = 'ESTOQUEMAXIMO'
    end
    object qryCadVALORCUSTO: TFloatField
      DisplayLabel = 'Valor de custo'
      FieldName = 'VALORCUSTO'
      currency = True
    end
    object qryCadVALORVENDA: TFloatField
      DisplayLabel = 'Valor de venda'
      FieldName = 'VALORVENDA'
      currency = True
    end
    object qryCadTIPOPRODUTO: TIntegerField
      DisplayLabel = 'Tipo de produto'
      FieldName = 'TIPOPRODUTO'
    end
    object qryCadDATACADASTRO: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'DATACADASTRO'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qryCadDATATUALIZACAO: TDateField
      DisplayLabel = 'Data de atualiza'#231#227'o'
      FieldName = 'DATATUALIZACAO'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qryCadOBS: TBlobField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
    end
    object qryCadSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Required = True
      Size = 3
    end
    object qryCadUNIDADEMEDIDA: TStringField
      DisplayLabel = 'Unidade de medida'
      FieldName = 'UNIDADEMEDIDA'
      Required = True
      Size = 2
    end
    object qryCadQTDEMBALAGEM: TIntegerField
      DisplayLabel = 'Qtd/embalagem'
      FieldName = 'QTDEMBALAGEM'
    end
    object qryCadPESOUNIDADE: TFloatField
      DisplayLabel = 'Peso/unidade'
      FieldName = 'PESOUNIDADE'
      DisplayFormat = '0.00'
    end
    object qryCadPESOLIQUIDO: TFloatField
      DisplayLabel = 'Peso liquido'
      FieldName = 'PESOLIQUIDO'
      DisplayFormat = '0.00'
    end
    object qryCadPESOBRUTO: TFloatField
      DisplayLabel = 'Peso bruto'
      FieldName = 'PESOBRUTO'
      DisplayFormat = '0.00'
    end
    object qryCadLOCALIZACAO: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'LOCALIZACAO'
      Size = 15
    end
    object qryCadCODTRIBUTACAONOTAFISCAL: TIntegerField
      DisplayLabel = 'Codigo da substitui'#231#227'o tribut'#225'ria'
      FieldName = 'CODTRIBUTACAONOTAFISCAL'
    end
    object qryCadIPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
  end
  object sqlGrupoProduto: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBGRUPOPRODUTO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 48
    Top = 173
    object sqlGrupoProdutoCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
      Required = True
    end
    object sqlGrupoProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 45
    end
  end
  object srcGrupoProduto: TDatasourceMC
    DataSet = sqlGrupoProduto
    Left = 48
    Top = 202
  end
  object sqlSubGrupo: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBSUBGRUPOPRODUTO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 80
    Top = 173
    object sqlSubGrupoCODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 45
    end
  end
  object SRCsUBgRUPO: TDatasourceMC
    DataSet = sqlSubGrupo
    Left = 80
    Top = 202
  end
  object sqlFornecedoresOrigem: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'SELECT 0 AS CODPRODUTO, CODCLIENTE AS CODFORNECEDOR, NOME FROM T' +
        'BCLIENTE C, TBPESSOA P'
      
        'WHERE C.CODPESSOA=P.CODPESSOA AND FORNECEDOR = '#39'Sim'#39' AND CODCLIE' +
        'NTE NOT IN (SELECT CODFORNECEDOR FROM TBPRODUTOFORNECEDOR WHERE ' +
        'CODPRODUTO=:CODPRODUTO)')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPRODUTO'
        ParamType = ptUnknown
        Value = 0
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 112
    Top = 174
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODPRODUTO'
        ParamType = ptUnknown
        Value = 0
      end>
    object sqlFornecedoresOrigemCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
      Visible = False
    end
    object sqlFornecedoresOrigemCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Visible = False
    end
    object sqlFornecedoresOrigemNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 45
    end
  end
  object sqlFornecedoresDestino: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'SELECT CODFORNECEDOR, CODPRODUTO, '#39#39' AS NOME FROM TBPRODUTOFORNE' +
        'CEDOR'
      'WHERE CODPRODUTO=:CODPRODUTO')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPRODUTO'
        ParamType = ptUnknown
        Value = 0
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 144
    Top = 174
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODPRODUTO'
        ParamType = ptUnknown
        Value = 0
      end>
    object sqlFornecedoresDestinoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Visible = False
    end
    object sqlFornecedoresDestinoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Visible = False
    end
    object sqlFornecedoresDestinoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInWhere]
      Size = 45
    end
  end
  object sqlLookupFornecedor: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    Active = True
    RequestLive = True
    SQL.Strings = (
      
        'SELECT C.CODCLIENTE AS CODFORNECEDOR, NOME FROM TBCLIENTE C, TBP' +
        'ESSOA P WHERE C.CODPESSOA=P.CODPESSOA AND FORNECEDOR='#39'Sim'#39)
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 112
    Top = 203
    object sqlLookupFornecedorCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
      Visible = False
    end
    object sqlLookupFornecedorNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
  end
  object sqlTribNF: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'SELECT CODTRIBUTACAONOTAFISCAL, DESCRICAO FROM TBTRIBUTACAONOTAF' +
        'ISCAL')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 17
    Top = 173
    object sqlTribNFCODTRIBUTACAONOTAFISCAL: TIntegerField
      FieldName = 'CODTRIBUTACAONOTAFISCAL'
      Required = True
      Visible = False
    end
    object sqlTribNFDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 45
    end
  end
  object dsrTribNF: TDatasourceMC
    DataSet = sqlTribNF
    Left = 17
    Top = 202
  end
end
