inherited _frmCadGridOperacaoFinanceira: T_frmCadGridOperacaoFinanceira
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
        Caption = 'Opera'#231#227'o Financeira'
        Font.Height = -16
        Font.Style = [fsBold]
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
        inherited stgGrid: TStringGridMC
          Width = 612
          Height = 401
        end
      end
      inherited tbsDetalhes: TTabSheet
        inherited Panel8: TPanelMC
          Width = 612
          Height = 401
          object PageControl1: TPageControl
            Left = 1
            Top = 45
            Width = 610
            Height = 355
            ActivePage = tabGeral
            Align = alClient
            TabOrder = 1
            object tabGeral: TTabSheet
              Caption = 'Dados Gerais'
              object DBRadioGroupMC1: TDBRadioGroupMC
                Tag = 2
                Left = 4
                Top = 1
                Width = 225
                Height = 105
                Caption = ' Tipo de v'#237'nculo '
                Columns = 2
                DataField = 'TIPOVINCULO'
                DataSource = dsrCad
                Items.Strings = (
                  'Fixo'
                  'Transfer'#234'ncia'
                  'Contas a pagar'
                  'Contas a receber')
                TabOrder = 0
                Values.Strings = (
                  'F'
                  'T'
                  'P'
                  'R')
              end
              object GroupBox1: TGroupBox
                Left = 231
                Top = 1
                Width = 366
                Height = 105
                Caption = ' Parametros '
                TabOrder = 1
                object bitCidade: TSpeedButton
                  Left = 192
                  Top = 32
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
                object LabelMC1: TLabelMC
                  Left = 4
                  Top = 62
                  Width = 106
                  Height = 13
                  Caption = 'Modelo de documento'
                end
                object LabelMC2: TLabelMC
                  Left = 4
                  Top = 16
                  Width = 98
                  Height = 13
                  Caption = 'Plano de pagamento'
                end
                object Bevel3: TBevel
                  Left = 219
                  Top = 6
                  Width = 2
                  Height = 97
                end
                object LabelMC3: TLabelMC
                  Left = 225
                  Top = 64
                  Width = 43
                  Height = 13
                  Caption = 'Natureza'
                end
                object SpeedButton1: TSpeedButton
                  Left = 192
                  Top = 80
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
                object DBLookupComboBoxMC1: TDBLookupComboBoxMC
                  Tag = 2
                  Left = 4
                  Top = 32
                  Width = 187
                  Height = 21
                  DataField = 'CODPLANOPAGAMENTO'
                  DataSource = dsrCad
                  NullValueKey = 46
                  TabOrder = 0
                end
                object DBLookupComboBoxMC2: TDBLookupComboBoxMC
                  Tag = 2
                  Left = 4
                  Top = 78
                  Width = 187
                  Height = 21
                  DataField = 'CODMODELODOCUMENTO'
                  DataSource = dsrCad
                  NullValueKey = 46
                  TabOrder = 1
                end
                object DBCheckBoxMC1: TDBCheckBoxMC
                  Tag = 2
                  Left = 123
                  Top = 59
                  Width = 89
                  Height = 17
                  Caption = 'Imprime recibo'
                  DataField = 'IMPRIMERECIBO'
                  DataSource = dsrCad
                  TabOrder = 2
                  ValueChecked = 'Sim'
                  ValueUnchecked = 'N'#227'o'
                end
                object DBRadioGroupMC2: TDBRadioGroupMC
                  Tag = 2
                  Left = 226
                  Top = 10
                  Width = 133
                  Height = 46
                  Caption = ' Opera'#231#227'o '
                  Columns = 2
                  DataField = 'TIPOMOVIMENTO'
                  DataSource = dsrCad
                  Items.Strings = (
                    'Entrada'
                    'Sa'#237'da')
                  TabOrder = 3
                end
                object DBComboBoxMC1: TDBComboBoxMC
                  Tag = 2
                  Left = 224
                  Top = 78
                  Width = 136
                  Height = 21
                  DataField = 'NATUREZA'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Ativo'
                    'Passivo'
                    'Receita'
                    'Custo'
                    'Despesa'
                    'Resultado')
                  TabOrder = 4
                end
              end
              object GroupBox2: TGroupBox
                Left = 31
                Top = 107
                Width = 536
                Height = 99
                Caption = ' Calculo de custo m'#233'dio para valor '
                TabOrder = 2
                object LabelMC4: TLabelMC
                  Left = 8
                  Top = 17
                  Width = 26
                  Height = 13
                  Caption = 'ICMS'
                end
                object LabelMC5: TLabelMC
                  Left = 139
                  Top = 17
                  Width = 88
                  Height = 13
                  Caption = 'Dif. Al'#237'quota ICMS'
                end
                object LabelMC6: TLabelMC
                  Left = 270
                  Top = 17
                  Width = 101
                  Height = 13
                  Caption = 'Substitui'#231#227'o tribut'#225'ria'
                end
                object LabelMC7: TLabelMC
                  Left = 401
                  Top = 17
                  Width = 13
                  Height = 13
                  Caption = 'IPI'
                end
                object LabelMC8: TLabelMC
                  Left = 8
                  Top = 56
                  Width = 100
                  Height = 13
                  Caption = 'Despesas acess'#243'rias'
                end
                object LabelMC9: TLabelMC
                  Left = 139
                  Top = 56
                  Width = 56
                  Height = 13
                  Caption = 'Frete CTRC'
                end
                object LabelMC10: TLabelMC
                  Left = 270
                  Top = 56
                  Width = 97
                  Height = 13
                  Caption = 'ICMS do frete CTRC'
                end
                object LabelMC11: TLabelMC
                  Left = 401
                  Top = 56
                  Width = 129
                  Height = 13
                  Caption = 'Dif. al'#237'quota do frete CTRC'
                end
                object DBComboBoxMC2: TDBComboBoxMC
                  Tag = 2
                  Left = 8
                  Top = 31
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'MEDICMS'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 0
                end
                object DBComboBoxMC3: TDBComboBoxMC
                  Tag = 2
                  Left = 139
                  Top = 31
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'MEDDIFERENCAICMS'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 1
                end
                object DBComboBoxMC4: TDBComboBoxMC
                  Tag = 2
                  Left = 270
                  Top = 31
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'MEDSUBSTITUICAOTRIBUTARIA'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 2
                end
                object DBComboBoxMC5: TDBComboBoxMC
                  Tag = 2
                  Left = 401
                  Top = 31
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'MEDIPI'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 3
                end
                object DBComboBoxMC6: TDBComboBoxMC
                  Tag = 2
                  Left = 8
                  Top = 70
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'MEDDESPESAACESSORIA'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 4
                end
                object DBComboBoxMC7: TDBComboBoxMC
                  Tag = 2
                  Left = 139
                  Top = 70
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'MEDDIFERENCACTRC'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 5
                end
                object DBComboBoxMC8: TDBComboBoxMC
                  Tag = 2
                  Left = 270
                  Top = 70
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'MEDICMSCTRC'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 6
                end
                object DBComboBoxMC9: TDBComboBoxMC
                  Tag = 2
                  Left = 401
                  Top = 70
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'MEDDIFERENCACTRC'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 7
                end
              end
              object GroupBox3: TGroupBox
                Left = 31
                Top = 206
                Width = 536
                Height = 99
                Caption = ' Calculo de custo unit'#225'rio para valor '
                TabOrder = 3
                object LabelMC12: TLabelMC
                  Left = 8
                  Top = 17
                  Width = 26
                  Height = 13
                  Caption = 'ICMS'
                end
                object LabelMC13: TLabelMC
                  Left = 139
                  Top = 17
                  Width = 88
                  Height = 13
                  Caption = 'Dif. Al'#237'quota ICMS'
                end
                object LabelMC14: TLabelMC
                  Left = 270
                  Top = 17
                  Width = 101
                  Height = 13
                  Caption = 'Substitui'#231#227'o tribut'#225'ria'
                end
                object LabelMC15: TLabelMC
                  Left = 401
                  Top = 17
                  Width = 13
                  Height = 13
                  Caption = 'IPI'
                end
                object LabelMC16: TLabelMC
                  Left = 8
                  Top = 56
                  Width = 100
                  Height = 13
                  Caption = 'Despesas acess'#243'rias'
                end
                object LabelMC17: TLabelMC
                  Left = 139
                  Top = 56
                  Width = 56
                  Height = 13
                  Caption = 'Frete CTRC'
                end
                object LabelMC18: TLabelMC
                  Left = 270
                  Top = 56
                  Width = 97
                  Height = 13
                  Caption = 'ICMS do frete CTRC'
                end
                object LabelMC19: TLabelMC
                  Left = 401
                  Top = 56
                  Width = 129
                  Height = 13
                  Caption = 'Dif. al'#237'quota do frete CTRC'
                end
                object DBComboBoxMC10: TDBComboBoxMC
                  Tag = 2
                  Left = 8
                  Top = 31
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'UNTICMS'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 0
                end
                object DBComboBoxMC11: TDBComboBoxMC
                  Tag = 2
                  Left = 139
                  Top = 31
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'UNITDIFERENCAICMS'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 1
                end
                object DBComboBoxMC12: TDBComboBoxMC
                  Tag = 2
                  Left = 270
                  Top = 31
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'UNITSUBSTITUICAOTRIBUTARIA'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 2
                end
                object DBComboBoxMC13: TDBComboBoxMC
                  Tag = 2
                  Left = 401
                  Top = 31
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'UNITIPI'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 3
                end
                object DBComboBoxMC14: TDBComboBoxMC
                  Tag = 2
                  Left = 8
                  Top = 70
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'UNITDESPESAACESSORIA'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 4
                end
                object DBComboBoxMC15: TDBComboBoxMC
                  Tag = 2
                  Left = 139
                  Top = 70
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'UNITCTRC'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 5
                end
                object DBComboBoxMC16: TDBComboBoxMC
                  Tag = 2
                  Left = 270
                  Top = 70
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'UNITICMSCTRC'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 6
                end
                object DBComboBoxMC17: TDBComboBoxMC
                  Tag = 2
                  Left = 401
                  Top = 70
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  DataField = 'UNITDIFERENCACTRC'
                  DataSource = dsrCad
                  ItemHeight = 13
                  Items.Strings = (
                    'Nenhuma'
                    'Subtra'#231#227'o'
                    'Adi'#231#227'o')
                  TabOrder = 7
                end
              end
            end
            object tabCentroCusto: TTabSheet
              Caption = 'Centros de custo'
              ImageIndex = 1
              object DuploGridMC1: TDuploGridMC
                Left = 0
                Top = 0
                Width = 602
                Height = 327
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                GridOrigem.Tag = 2
                GridOrigem.Left = 0
                GridOrigem.Top = 0
                GridOrigem.Width = 289
                GridOrigem.Height = 327
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
                GridDestino.Left = 313
                GridDestino.Top = 0
                GridDestino.Width = 289
                GridDestino.Height = 327
                GridDestino.Align = alRight
                GridDestino.BorderStyle = bsNone
                GridDestino.Color = 14739951
                GridDestino.DataSource.DataSet.Aggregates = <>
                GridDestino.DataSource.DataSet.Params = <>
                GridDestino.DataSource.DataSet.ProviderName = 'dspDestino'
                GridDestino.Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                GridDestino.TabOrder = 1
                GridDestino.TitleFont.Charset = DEFAULT_CHARSET
                GridDestino.TitleFont.Color = clWindowText
                GridDestino.TitleFont.Height = -11
                GridDestino.TitleFont.Name = 'MS Sans Serif'
                GridDestino.TitleFont.Style = []
                BtnLeft = 291
                BtnTop = 125
                LarguraGridOrigem = 289
                LarguraGridDestino = 289
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Acumulado anual'
              ImageIndex = 2
            end
          end
          object PanelMC1: TPanelMC
            Left = 1
            Top = 1
            Width = 610
            Height = 44
            Align = alTop
            TabOrder = 0
            object LabelMC20: TLabelMC
              Left = 6
              Top = 3
              Width = 38
              Height = 13
              Caption = 'Redutor'
            end
            object lblNome: TLabelMC
              Left = 212
              Top = 4
              Width = 48
              Height = 13
              Caption = 'Descri'#231#227'o'
            end
            object LabelMC21: TLabelMC
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
              DataField = 'CODOPERACAOFINANCEIRA'
              DataSource = dsrCad
              ReadOnly = True
              TabOrder = 0
              Requerido = True
              Rotulo = LabelMC20
            end
            object txtDescricao: TDBEditMC
              Tag = 2
              Left = 212
              Top = 18
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
              Width = 114
              Height = 21
              TabOrder = 1
              OnKeyUp = txtCodigoKeyUp
              Requerido = True
              Rotulo = LabelMC21
            end
          end
        end
      end
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODOPERACAOFINANCEIRA'
    object cdsGridCODOPERACAOFINANCEIRA: TIntegerField
      DisplayLabel = 'Redutor'
      FieldName = 'CODOPERACAOFINANCEIRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
      Size = 13
    end
    object cdsGridDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT'
      
        '  CODOPERACAOFINANCEIRA, (GRAU1 || '#39'.'#39' || GRAU2 || '#39'.'#39' || GRAU3 ' +
        '|| '#39'.'#39' || GRAU4) AS CODIGO, DESCRICAO'
      'FROM TBOPERACAOFINANCEIRA')
    object qryGridCODOPERACAOFINANCEIRA: TIntegerField
      FieldName = 'CODOPERACAOFINANCEIRA'
      Required = True
    end
    object qryGridCODIGO: TStringField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
      Size = 13
    end
    object qryGridDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
  end
  inherited qryCad: TZQueryMC
    BeforePost = qryCadBeforePost
    OnNewRecord = qryCadNewRecord
    SQL.Strings = (
      
        'SELECT * FROM TBOPERACAOFINANCEIRA WHERE CODOPERACAOFINANCEIRA=:' +
        'CODIGO ')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = 0
      end>
    TableName = 'TBOPERACAOFINANCEIRA'
    FieldKey = 'CODOPERACAOFINANCEIRA'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = 0
      end>
    object qryCadCODOPERACAOFINANCEIRA: TIntegerField
      DisplayLabel = 'Redutor'
      FieldName = 'CODOPERACAOFINANCEIRA'
      Required = True
    end
    object qryCadDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object qryCadGRAU1: TStringField
      FieldName = 'GRAU1'
      Required = True
      Visible = False
      Size = 2
    end
    object qryCadGRAU2: TStringField
      FieldName = 'GRAU2'
      Required = True
      Visible = False
      Size = 2
    end
    object qryCadGRAU3: TStringField
      FieldName = 'GRAU3'
      Required = True
      Visible = False
      Size = 2
    end
    object qryCadGRAU4: TStringField
      FieldName = 'GRAU4'
      Required = True
      Visible = False
      Size = 4
    end
    object qryCadTIPOVINCULO: TStringField
      DisplayLabel = 'Tipo de vinculo'
      FieldName = 'TIPOVINCULO'
      Required = True
      Visible = False
      Size = 1
    end
    object qryCadIMPRIMERECIBO: TStringField
      DisplayLabel = 'Imprimir recibo'
      FieldName = 'IMPRIMERECIBO'
      Required = True
      Visible = False
      Size = 3
    end
    object qryCadCODMODELODOCUMENTO: TIntegerField
      DisplayLabel = 'Modelo de documento'
      FieldName = 'CODMODELODOCUMENTO'
    end
    object qryCadCODPLANOPAGAMENTO: TIntegerField
      DisplayLabel = 'Plano de pagamento'
      FieldName = 'CODPLANOPAGAMENTO'
      Visible = False
    end
    object qryCadTIPOMOVIMENTO: TStringField
      DisplayLabel = 'Tipo de movimento'
      FieldName = 'TIPOMOVIMENTO'
      Required = True
      Visible = False
      Size = 1
    end
    object qryCadNATUREZA: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Visible = False
      Size = 9
    end
    object qryCadMEDICMS: TIntegerField
      FieldName = 'MEDICMS'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadUNTICMS: TIntegerField
      FieldName = 'UNTICMS'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadMEDDIFERENCAICMS: TIntegerField
      FieldName = 'MEDDIFERENCAICMS'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadUNITDIFERENCAICMS: TIntegerField
      FieldName = 'UNITDIFERENCAICMS'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadMEDSUBSTITUICAOTRIBUTARIA: TIntegerField
      FieldName = 'MEDSUBSTITUICAOTRIBUTARIA'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadUNITSUBSTITUICAOTRIBUTARIA: TIntegerField
      FieldName = 'UNITSUBSTITUICAOTRIBUTARIA'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadMEDIPI: TIntegerField
      FieldName = 'MEDIPI'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadUNITIPI: TIntegerField
      FieldName = 'UNITIPI'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadMEDDESPESAACESSORIA: TIntegerField
      FieldName = 'MEDDESPESAACESSORIA'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadUNITDESPESAACESSORIA: TIntegerField
      FieldName = 'UNITDESPESAACESSORIA'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadMEDCTRC: TIntegerField
      FieldName = 'MEDCTRC'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadUNITCTRC: TIntegerField
      FieldName = 'UNITCTRC'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadMEDICMSCTRC: TIntegerField
      FieldName = 'MEDICMSCTRC'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadUNITICMSCTRC: TIntegerField
      FieldName = 'UNITICMSCTRC'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadMEDDIFERENCACTRC: TIntegerField
      FieldName = 'MEDDIFERENCACTRC'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
    object qryCadUNITDIFERENCACTRC: TIntegerField
      FieldName = 'UNITDIFERENCACTRC'
      Required = True
      Visible = False
      OnGetText = qryCadMEDICMSGetText
      OnSetText = qryCadMEDICMSSetText
    end
  end
end
