inherited _frmCadGridCliente: T_frmCadGridCliente
  Left = 136
  Top = 114
  Width = 807
  Height = 542
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanelMC
    Width = 799
    DesignSize = (
      799
      29)
    inherited Shape1: TShape
      Width = 621
    end
    inherited lblFechar: TLabelMC
      Left = 787
    end
    inherited Panel4: TPanelMC
      inherited lblTitulo: TLabelMC
        Caption = 'Clientes'
        Font.Height = -19
      end
    end
  end
  inherited Panel2: TPanelMC
    Height = 434
    DesignSize = (
      177
      434)
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
    DesignSize = (
      799
      45)
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
              FieldName = 'NOME'
              Width = 254
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMAIL'
              Width = 227
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPFCNPJ'
              Width = 108
              Visible = True
            end>
        end
      end
      inherited tbsDetalhes: TTabSheet
        OnShow = tbsDetalhesShow
        inherited Panel8: TPanelMC
          Width = 612
          Height = 401
          object pgcDetalhes: TPageControl
            Left = 1
            Top = 45
            Width = 610
            Height = 355
            ActivePage = tabGerais
            Align = alClient
            MultiLine = True
            TabOrder = 1
            object tabGerais: TTabSheet
              Caption = 'Dados gerais'
              object lblApelido: TLabelMC
                Left = 4
                Top = 3
                Width = 35
                Height = 13
                Caption = 'Apelido'
              end
              object lblRg: TLabelMC
                Left = 232
                Top = 3
                Width = 16
                Height = 13
                Caption = 'RG'
              end
              object lblCore: TLabelMC
                Left = 361
                Top = 3
                Width = 22
                Height = 13
                Caption = 'Core'
              end
              object lblDataNacimento: TLabelMC
                Left = 494
                Top = 3
                Width = 90
                Height = 13
                Caption = 'Data de nacimento'
              end
              object Bevel3: TBevel
                Left = 0
                Top = 49
                Width = 602
                Height = 2
              end
              object lblNaturalidade: TLabelMC
                Left = 0
                Top = 56
                Width = 60
                Height = 13
                Caption = 'Naturalidade'
              end
              object LabelMC10: TLabelMC
                Left = 358
                Top = 56
                Width = 24
                Height = 13
                Caption = 'Sexo'
              end
              object LabelMC11: TLabelMC
                Left = 480
                Top = 56
                Width = 54
                Height = 13
                Caption = 'Estado civil'
              end
              object bitCidade: TSpeedButton
                Left = 298
                Top = 72
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
              object lblProfissao: TLabelMC
                Left = 0
                Top = 96
                Width = 43
                Height = 13
                Caption = 'Profiss'#227'o'
              end
              object LabelMC6: TLabelMC
                Left = 529
                Top = 176
                Width = 64
                Height = 13
                Alignment = taCenter
                AutoSize = False
                Caption = 'Foto'
              end
              object SpeedButtonMC2: TSpeedButtonMC
                Left = 562
                Top = 282
                Width = 23
                Height = 22
                Cursor = crHandPoint
                Flat = True
                Glyph.Data = {
                  42020000424D4202000000000000420000002800000010000000100000000100
                  1000030000000002000000000000000000000000000000000000007C0000E003
                  00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A836A2B771F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836A707B717B0772EA760877E876E772836A1F7C
                  C0701F7C1F7C1F7C1F7C1F7C836AB47F947F23718471E9760877E876636AA070
                  C0701F7C1F7C1F7C1F7C1F7C836AB67FB87FF07A64718475C9766676E178A074
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDA7FB87F517BA57522752275E1781F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FDA7FB57F287AE1784279436E1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FB97F4B7E2279897A697EE1781F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7F0B7E0279AB7EB07FB07F236EE178
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7F027DAE7EB17FB07FB17F836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FDA7FD67FB17FB07FB17F836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FFB7FFB7FD77FB17FB17FB17F836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD67FD97FB77B937B6E7B8F7FB17F836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836A4F7750774F772E772C772B772B77836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836A937BB57FB57FB37FB27F907F6E7B836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A836A1F7C1F7C
                  1F7C1F7C1F7C}
                OnClick = SpeedButtonMC2Click
              end
              object SpeedButtonMC1: TSpeedButtonMC
                Left = 538
                Top = 282
                Width = 23
                Height = 22
                Cursor = crHandPoint
                Flat = True
                Glyph.Data = {
                  42020000424D4202000000000000420000002800000010000000100000000100
                  1000030000000002000000000000000000000000000000000000007C0000E003
                  00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A846606161F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836A707B717B4E7B2B7708770616681606161F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AB47F947F717B4D7B0A770616691606161F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AB67FB87F957F707B2B7B0616691A06161F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77F11530616061606160616A81E06160616
                  061606161F7C1F7C1F7C1F7C836AD77F06162B3F28330833E82AC622A822A822
                  881E691E06161F7C1F7C1F7C836AD77F32570616061606160616083306160616
                  061606161F7C1F7C1F7C1F7C836AD77FDB7FDA7FD67FB17F0616283B06161F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FDA7FD67FB17F0616483B06161F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FDA7FD67FB17F06164A3F06161F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FFB7FFB7FD77FB17FB17F0616836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD67FD97FB77B937B6E7B8F7FB17F836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836A4F7750774F772E772C772B772B77836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836A937BB57FB57FB37FB27F907F6E7B836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A836A1F7C1F7C
                  1F7C1F7C1F7C}
                OnClick = SpeedButtonMC1Click
              end
              object txtApelido: TDBEditMC
                Tag = 2
                Left = 2
                Top = 17
                Width = 226
                Height = 21
                DataField = 'APELIDO'
                DataSource = dsrCliente
                TabOrder = 0
                TabSheet = tabGerais
                Rotulo = lblApelido
              end
              object txtRg: TDBEditMC
                Tag = 2
                Left = 232
                Top = 17
                Width = 127
                Height = 21
                DataField = 'RG'
                DataSource = dsrCad
                TabOrder = 1
                TabSheet = tabGerais
                Rotulo = lblRg
              end
              object txtCore: TDBEditMC
                Tag = 2
                Left = 361
                Top = 17
                Width = 130
                Height = 21
                DataField = 'CORE'
                DataSource = dsrCliente
                TabOrder = 2
                TabSheet = tabGerais
                Rotulo = lblCore
              end
              object txtDataNacimento: TDBEditMC
                Tag = 2
                Left = 494
                Top = 17
                Width = 107
                Height = 21
                DataField = 'DATANASCIMENTO'
                DataSource = dsrCad
                TabOrder = 3
                Requerido = True
                TabSheet = tabGerais
                Rotulo = lblDataNacimento
              end
              object cmbNaturalidade: TDBLookupComboBoxMC
                Tag = 2
                Left = 0
                Top = 72
                Width = 297
                Height = 21
                DataField = 'CODCIDADENACIMENTO'
                DataSource = dsrCad
                KeyField = 'CODCIDADE'
                ListField = 'NOME'
                ListSource = dsrCidade
                NullValueKey = 46
                TabOrder = 4
                Requerido = True
                TabSheet = tabGerais
                Rotulo = lblNaturalidade
              end
              object cmbSexo: TDBComboBoxMC
                Tag = 2
                Left = 358
                Top = 72
                Width = 121
                Height = 21
                Style = csDropDownList
                DataField = 'SEXO'
                DataSource = dsrCad
                ItemHeight = 13
                Items.Strings = (
                  'Masculino'
                  'Feminino')
                TabOrder = 5
                Requerido = True
                TabSheet = tabGerais
                Rotulo = LabelMC10
              end
              object cmbEstadoCivil: TDBComboBoxMC
                Tag = 2
                Left = 480
                Top = 72
                Width = 121
                Height = 21
                Style = csDropDownList
                DataField = 'ESTADOCIVIL'
                DataSource = dsrCad
                ItemHeight = 13
                Items.Strings = (
                  'Solteiro(a)'
                  'Casado(a)'
                  'Divorciado(a)'
                  'Desquitado(a)'
                  'Vi'#250'vo(a)')
                TabOrder = 6
                Requerido = True
                TabSheet = tabGerais
                Rotulo = LabelMC11
              end
              object txtDeficiente: TDBEditMC
                Tag = 2
                Left = 0
                Top = 153
                Width = 599
                Height = 21
                TabStop = False
                Color = 14743551
                DataField = 'DEFICIECIA'
                DataSource = dsrCad
                ReadOnly = True
                TabOrder = 10
                TabSheet = tabGerais
              end
              object DBEditMC9: TDBEditMC
                Tag = 2
                Left = 321
                Top = 72
                Width = 33
                Height = 21
                TabStop = False
                Color = 14743551
                DataField = 'UF'
                DataSource = dsrCad
                ReadOnly = True
                TabOrder = 11
              end
              object chkDeficiente: TCheckBoxMC
                Left = 0
                Top = 137
                Width = 71
                Height = 15
                Caption = 'Deficiente'
                TabOrder = 9
                OnClick = chkDeficienteClick
              end
              object txtProfissao: TDBEditMC
                Tag = 2
                Left = 0
                Top = 112
                Width = 197
                Height = 21
                DataField = 'PROFISSAO'
                DataSource = dsrCliente
                TabOrder = 7
                TabSheet = tabGerais
                Rotulo = lblProfissao
              end
              object dbrEmail: TDBRadioGroupMC
                Tag = 2
                Left = 203
                Top = 99
                Width = 397
                Height = 36
                Columns = 2
                DataField = 'RECEBEEMAIL'
                DataSource = dsrCliente
                Items.Strings = (
                  'Recebe email altom'#225'ticamente'
                  'N'#227'o recebe email autom'#225'ticamente')
                TabOrder = 8
                Values.Strings = (
                  'Sim'
                  'N'#227'o')
              end
              object PanelMC3: TPanelMC
                Left = 527
                Top = 191
                Width = 67
                Height = 88
                BevelOuter = bvLowered
                TabOrder = 12
                object dbiFoto: TDBImageMC
                  Left = 3
                  Top = 4
                  Width = 62
                  Height = 79
                  BorderStyle = bsNone
                  Color = clBtnFace
                  DataField = 'FOTO'
                  DataSource = dsrCad
                  Stretch = True
                  TabOrder = 0
                end
              end
            end
            object tabEndereco: TTabSheet
              Caption = 'Endere'#231'o e telefone'
              ImageIndex = 1
              object LabelMC8: TLabelMC
                Left = 2
                Top = 3
                Width = 46
                Height = 13
                Caption = 'Endere'#231'o'
              end
              object LabelMC12: TLabelMC
                Left = 245
                Top = 3
                Width = 27
                Height = 13
                Caption = 'Bairro'
              end
              object LabelMC13: TLabelMC
                Left = 424
                Top = 3
                Width = 64
                Height = 13
                Caption = 'Complemento'
              end
              object LabelMC16: TLabelMC
                Left = 491
                Top = 40
                Width = 21
                Height = 13
                Caption = 'CEP'
              end
              object LabelMC23: TLabelMC
                Left = 227
                Top = 87
                Width = 25
                Height = 13
                Caption = 'Email'
              end
              object LabelMC24: TLabelMC
                Left = 227
                Top = 126
                Width = 18
                Height = 13
                Caption = 'Site'
              end
              object LabelMC14: TLabelMC
                Left = 2
                Top = 40
                Width = 33
                Height = 13
                Caption = 'Cidade'
              end
              object SpeedButton1: TSpeedButton
                Left = 433
                Top = 54
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
              object txtEndereco: TDBEditMC
                Tag = 2
                Left = 2
                Top = 17
                Width = 240
                Height = 21
                DataField = 'ENDERECO'
                DataSource = dsrCad
                TabOrder = 0
                Requerido = True
                TabSheet = tabEndereco
                Rotulo = LabelMC8
              end
              object txtBairro: TDBEditMC
                Tag = 2
                Left = 245
                Top = 17
                Width = 176
                Height = 21
                DataField = 'BAIRRO'
                DataSource = dsrCad
                TabOrder = 1
                Requerido = True
                TabSheet = tabEndereco
                Rotulo = LabelMC12
              end
              object txtComplemento: TDBEditMC
                Tag = 2
                Left = 424
                Top = 17
                Width = 176
                Height = 21
                DataField = 'COMPLEMENTO'
                DataSource = dsrCad
                TabOrder = 2
                TabSheet = tabEndereco
                Rotulo = LabelMC13
              end
              object txtCEP: TDBEditMC
                Tag = 2
                Left = 491
                Top = 54
                Width = 111
                Height = 21
                DataField = 'CEP'
                DataSource = dsrCad
                TabOrder = 4
                TabSheet = tabEndereco
                Rotulo = LabelMC16
              end
              object GroupBox1: TGroupBox
                Left = 3
                Top = 83
                Width = 222
                Height = 77
                TabOrder = 5
                object LabelMC17: TLabelMC
                  Left = 6
                  Top = 19
                  Width = 42
                  Height = 13
                  Caption = 'Telefone'
                end
                object LabelMC18: TLabelMC
                  Left = 126
                  Top = 19
                  Width = 30
                  Height = 13
                  Caption = 'Ramal'
                end
                object txtTelefone: TDBEditMC
                  Tag = 2
                  Left = 6
                  Top = 33
                  Width = 115
                  Height = 21
                  DataField = 'TEL'
                  DataSource = dsrCad
                  TabOrder = 0
                  Rotulo = LabelMC17
                end
                object txtRamal: TDBEditMC
                  Tag = 2
                  Left = 126
                  Top = 33
                  Width = 86
                  Height = 21
                  DataField = 'TELRAMAL'
                  DataSource = dsrCad
                  TabOrder = 1
                  Rotulo = LabelMC18
                end
              end
              object txtEmail: TDBEditMC
                Tag = 2
                Left = 227
                Top = 101
                Width = 373
                Height = 21
                CharCase = ecLowerCase
                DataField = 'EMAIL'
                DataSource = dsrCad
                TabOrder = 6
                Rotulo = LabelMC23
              end
              object txtSite: TDBEditMC
                Tag = 2
                Left = 227
                Top = 140
                Width = 372
                Height = 21
                CharCase = ecLowerCase
                DataField = 'WEB'
                DataSource = dsrCad
                TabOrder = 7
                Rotulo = LabelMC24
              end
              object cmbCidade: TDBLookupComboBoxMC
                Tag = 2
                Left = 2
                Top = 54
                Width = 430
                Height = 21
                DataField = 'CODCIDRESID'
                DataSource = dsrCad
                KeyField = 'CODCIDADE'
                ListField = 'NOME'
                ListSource = dsrCidade
                NullValueKey = 46
                TabOrder = 3
                Requerido = True
                TabSheet = tabEndereco
                Rotulo = LabelMC14
              end
              object DBEditMC13: TDBEditMC
                Tag = 2
                Left = 456
                Top = 54
                Width = 33
                Height = 21
                TabStop = False
                Color = 14743551
                DataField = 'UFResi'
                DataSource = dsrCad
                ReadOnly = True
                TabOrder = 9
              end
              object GroupBox2: TGroupBox
                Left = 4
                Top = 164
                Width = 597
                Height = 140
                Caption = ' Observa'#231#245'es '
                TabOrder = 8
                object mObs: TDBRichEditMC
                  Tag = 2
                  Left = 2
                  Top = 15
                  Width = 593
                  Height = 123
                  Align = alClient
                  DataField = 'OBS'
                  DataSource = dsrCad
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
              end
            end
            object tabProfissional: TTabSheet
              Caption = 'Contato'
              ImageIndex = 3
              object LabelMC3: TLabelMC
                Left = 2
                Top = 38
                Width = 46
                Height = 13
                Caption = 'Endere'#231'o'
              end
              object LabelMC4: TLabelMC
                Left = 245
                Top = 38
                Width = 27
                Height = 13
                Caption = 'Bairro'
              end
              object LabelMC5: TLabelMC
                Left = 490
                Top = 75
                Width = 21
                Height = 13
                Caption = 'CEP'
              end
              object LabelMC7: TLabelMC
                Left = 2
                Top = 75
                Width = 33
                Height = 13
                Caption = 'Cidade'
              end
              object SpeedButton2: TSpeedButton
                Left = 432
                Top = 89
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
              object LabelMC29: TLabelMC
                Left = 424
                Top = 38
                Width = 64
                Height = 13
                Caption = 'Complemento'
              end
              object LabelMC21: TLabelMC
                Left = 3
                Top = 1
                Width = 28
                Height = 13
                Caption = 'Nome'
              end
              object txtEndContato: TDBEditMC
                Tag = 2
                Left = 2
                Top = 52
                Width = 240
                Height = 21
                DataField = 'CONTATOENDERECO'
                DataSource = dsrCliente
                TabOrder = 1
                TabSheet = tabEndereco
                Rotulo = LabelMC3
              end
              object txtBairroContato: TDBEditMC
                Tag = 2
                Left = 245
                Top = 52
                Width = 176
                Height = 21
                DataField = 'CONTATONBAIRRO'
                DataSource = dsrCliente
                TabOrder = 2
                TabSheet = tabEndereco
                Rotulo = LabelMC4
              end
              object DBEditMC3: TDBEditMC
                Tag = 2
                Left = 490
                Top = 89
                Width = 111
                Height = 21
                DataField = 'CONTATOCEP'
                DataSource = dsrCliente
                TabOrder = 5
                TabSheet = tabEndereco
                Rotulo = LabelMC5
              end
              object GroupBox3: TGroupBox
                Left = 3
                Top = 117
                Width = 222
                Height = 97
                TabOrder = 6
                object LabelMC28: TLabelMC
                  Left = 6
                  Top = 49
                  Width = 32
                  Height = 13
                  Caption = 'Celular'
                end
                object LabelMC20: TLabelMC
                  Left = 123
                  Top = 10
                  Width = 30
                  Height = 13
                  Caption = 'Ramal'
                end
                object LabelMC19: TLabelMC
                  Left = 6
                  Top = 10
                  Width = 42
                  Height = 13
                  Caption = 'Telefone'
                end
                object DBEditMC10: TDBEditMC
                  Tag = 2
                  Left = 6
                  Top = 63
                  Width = 115
                  Height = 21
                  DataField = 'CEL'
                  DataSource = dsrCad
                  TabOrder = 2
                  Rotulo = LabelMC28
                end
                object txtRamaContato: TDBEditMC
                  Tag = 2
                  Left = 123
                  Top = 24
                  Width = 86
                  Height = 21
                  DataField = 'CONTATORAMAL'
                  DataSource = dsrCliente
                  TabOrder = 1
                  Rotulo = LabelMC20
                end
                object txtContato: TDBEditMC
                  Tag = 2
                  Left = 6
                  Top = 24
                  Width = 115
                  Height = 21
                  DataField = 'CONTATOTEL'
                  DataSource = dsrCliente
                  TabOrder = 0
                  Rotulo = LabelMC19
                end
              end
              object txtCiddeContato: TDBLookupComboBoxMC
                Tag = 2
                Left = 2
                Top = 89
                Width = 429
                Height = 21
                DataField = 'CONTATOCIDADEID'
                DataSource = dsrCliente
                KeyField = 'CODCIDADE'
                ListField = 'NOME'
                ListSource = dsrCidade
                NullValueKey = 46
                TabOrder = 4
                TabSheet = tabEndereco
                Rotulo = LabelMC7
              end
              object DBEditMC11: TDBEditMC
                Tag = 2
                Left = 455
                Top = 89
                Width = 33
                Height = 21
                TabStop = False
                Color = 14743551
                DataField = 'UF'
                DataSource = dsrCliente
                ReadOnly = True
                TabOrder = 7
              end
              object txtComplementoContato: TDBEditMC
                Tag = 2
                Left = 424
                Top = 52
                Width = 176
                Height = 21
                DataField = 'CONTATOCOMPLEMENTO'
                DataSource = dsrCliente
                TabOrder = 3
                TabSheet = tabEndereco
                Rotulo = LabelMC29
              end
              object txtNomeContato: TDBEditMC
                Tag = 2
                Left = 3
                Top = 15
                Width = 595
                Height = 21
                DataField = 'CONTATONOME'
                DataSource = dsrCliente
                TabOrder = 0
                Rotulo = LabelMC21
              end
            end
            object tabComplementares: TTabSheet
              Caption = 'Dados complementares'
              ImageIndex = 4
              object LabelMC33: TLabelMC
                Left = 2
                Top = 49
                Width = 28
                Height = 13
                Caption = 'Conta'
              end
              object LabelMC34: TLabelMC
                Left = 155
                Top = 49
                Width = 53
                Height = 13
                Caption = 'Favorecido'
              end
              object LabelMC35: TLabelMC
                Left = 2
                Top = 7
                Width = 108
                Height = 13
                Caption = 'Gerenciador de contas'
              end
              object SpeedButton3: TSpeedButton
                Left = 577
                Top = 22
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
              object DBEditMC16: TDBEditMC
                Tag = 2
                Left = 2
                Top = 63
                Width = 151
                Height = 21
                DataField = 'CONTA'
                DataSource = dsrCliente
                TabOrder = 1
                Rotulo = LabelMC33
              end
              object DBEditMC17: TDBEditMC
                Tag = 2
                Left = 155
                Top = 63
                Width = 444
                Height = 21
                DataField = 'FAVORECIDO'
                DataSource = dsrCliente
                TabOrder = 2
                Rotulo = LabelMC34
              end
              object DBLookupComboBoxMC4: TDBLookupComboBoxMC
                Tag = 2
                Left = 2
                Top = 21
                Width = 574
                Height = 21
                DataField = 'CODGERCONTA'
                DataSource = dsrCliente
                KeyField = 'CODGERCONTA'
                ListField = 'NOME'
                ListSource = dsrGerConta
                NullValueKey = 46
                TabOrder = 0
                TabSheet = tabComplementares
                Rotulo = LabelMC35
              end
            end
            object tabListaDependente: TTabSheet
              Caption = 'Lista de dependentes'
              ImageIndex = 4
              OnShow = tabListaDependenteShow
              object DBGridMC1: TDBGridMC
                Tag = 2
                Left = 0
                Top = 30
                Width = 602
                Height = 297
                Align = alClient
                BorderStyle = bsNone
                Color = 14739951
                DataSource = dsrDe
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CPF'
                    Width = 117
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOME'
                    Width = 209
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMAIL'
                    Width = 250
                    Visible = True
                  end>
              end
              object PanelMC2: TPanelMC
                Left = 0
                Top = 0
                Width = 602
                Height = 30
                Align = alTop
                TabOrder = 1
                object LabelMC9: TLabelMC
                  Left = 80
                  Top = 8
                  Width = 254
                  Height = 13
                  Caption = 'Exclus'#227'o desabilitada esperimente desativar o registro'
                end
                object nDependente: TNavigatorMC
                  Left = 6
                  Top = 4
                  Width = 66
                  Height = 22
                  BevelOuter = bvNone
                  TabOrder = 0
                  Visible = False
                  DataSet = _frmDependentes.cdsPesDepend
                  DesabilitaExcluir = False
                end
              end
            end
            object tabHistorico: TTabSheet
              Caption = 'Hist'#243'rico'
              ImageIndex = 6
              OnShow = tabHistoricoShow
              object Label21: TLabelMC
                Left = 3
                Top = 2
                Width = 28
                Height = 13
                Caption = 'Nome'
              end
              object Panel11: TPanel
                Left = 267
                Top = 16
                Width = 312
                Height = 211
                BevelOuter = bvNone
                TabOrder = 0
                object Shape6: TShape
                  Left = 0
                  Top = 0
                  Width = 312
                  Height = 211
                  Align = alClient
                  Brush.Color = clCream
                  Pen.Color = 14739951
                end
                object Label16: TLabelMC
                  Left = 2
                  Top = 2
                  Width = 76
                  Height = 13
                  Caption = 'Nome do Filme: '
                  Transparent = False
                end
                object DBText1: TDBTextMC
                  Tag = 2
                  Left = 75
                  Top = 2
                  Width = 235
                  Height = 13
                  DataField = 'Filme'
                  DataSource = dsrHistorico
                  Transparent = False
                end
                object Label33: TLabelMC
                  Left = 2
                  Top = 16
                  Width = 70
                  Height = 13
                  Caption = 'Quem Alugou: '
                  Transparent = False
                end
                object DBText2: TDBTextMC
                  Tag = 2
                  Left = 72
                  Top = 16
                  Width = 238
                  Height = 13
                  DataField = 'SOCIO'
                  DataSource = dsrHistorico
                  Transparent = False
                end
                object Label34: TLabelMC
                  Left = 2
                  Top = 30
                  Width = 89
                  Height = 13
                  Caption = 'Data da Loca'#231#227'o: '
                  Transparent = False
                end
                object Label35: TLabelMC
                  Left = 164
                  Top = 30
                  Width = 84
                  Height = 13
                  Caption = 'Data da Entrega: '
                  Transparent = False
                end
                object Label36: TLabelMC
                  Left = 2
                  Top = 44
                  Width = 71
                  Height = 13
                  Caption = 'Houve Atraso: '
                  Transparent = False
                end
                object Label37: TLabelMC
                  Left = 2
                  Top = 58
                  Width = 34
                  Height = 13
                  Caption = 'Troca: '
                  Transparent = False
                end
                object Label38: TLabelMC
                  Left = 2
                  Top = 72
                  Width = 308
                  Height = 13
                  AutoSize = False
                  Caption = 'Motivo: '
                  Transparent = False
                end
                object DBText3: TDBTextMC
                  Tag = 2
                  Left = 91
                  Top = 30
                  Width = 71
                  Height = 13
                  DataField = 'DataSaida'
                  DataSource = dsrHistorico
                  Transparent = False
                end
                object DBText4: TDBTextMC
                  Tag = 2
                  Left = 248
                  Top = 30
                  Width = 62
                  Height = 13
                  DataField = 'DATAENTRADA'
                  DataSource = dsrHistorico
                  Transparent = False
                end
                object DBText5: TDBTextMC
                  Tag = 2
                  Left = 73
                  Top = 44
                  Width = 237
                  Height = 13
                  DataField = 'ATRASO'
                  DataSource = dsrHistorico
                  Transparent = False
                end
                object DBText6: TDBTextMC
                  Tag = 2
                  Left = 36
                  Top = 58
                  Width = 274
                  Height = 13
                  DataField = 'TROCA'
                  DataSource = dsrHistorico
                  Transparent = False
                end
                object DBMemo1: TDBMemoMC
                  Tag = 2
                  Left = 2
                  Top = 86
                  Width = 308
                  Height = 123
                  TabStop = False
                  BorderStyle = bsNone
                  Color = clBtnFace
                  Ctl3D = True
                  DataField = 'MOTIVO'
                  DataSource = dsrHistorico
                  ParentCtl3D = False
                  ReadOnly = True
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
              end
              object edtBuscaHist: TEditMC
                Tag = 2
                Left = 1
                Top = 19
                Width = 263
                Height = 21
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 1
                OnChange = edtBuscaHistChange
                Rotulo = Label21
              end
              object DBGridMC3: TDBGridMC
                Tag = 2
                Left = 3
                Top = 45
                Width = 259
                Height = 245
                BorderStyle = bsNone
                Color = 14739951
                DataSource = dsrHistorico
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 2
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'FILME'
                    Visible = True
                  end>
              end
            end
            object tabObs: TTabSheet
              Caption = 'Observa'#231#245'es'
              ImageIndex = 7
              OnShow = tabObsShow
              inline fraObservacao: TfraCadGrid
                Left = 0
                Top = 0
                Width = 602
                Height = 327
                Align = alClient
                TabOrder = 0
                inherited NavigatorMC: TNavigatorMC
                  Visible = False
                end
                inherited DBGridMC1: TDBGridMC
                  Width = 602
                  Height = 300
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'OBS'
                      Title.Caption = 'Descri'#231#227'o'
                      Width = 441
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'DATAOBS'
                      ReadOnly = True
                      Title.Caption = 'Data'
                      Width = 112
                      Visible = True
                    end>
                end
                inherited qryCad: TZQueryMC
                  Connection = DM.db
                  AfterInsert = fraCadGrid1qryCadAfterInsert
                  SQL.Strings = (
                    'SELECT * FROM TBOBS WHERE CODPESSOA=:CODPESSOA')
                  Params = <
                    item
                      DataType = ftInteger
                      Name = 'CODPESSOA'
                      ParamType = ptUnknown
                    end>
                  TableName = 'TBOBS'
                  FieldKey = 'CODOBS'
                  ParamData = <
                    item
                      DataType = ftInteger
                      Name = 'CODPESSOA'
                      ParamType = ptUnknown
                    end>
                end
                inherited cdsCad: TClientDataSetMC
                  AfterInsert = fraObservacaocdsCadAfterInsert
                end
              end
            end
          end
          object PanelMC1: TPanelMC
            Left = 1
            Top = 1
            Width = 610
            Height = 44
            Align = alTop
            TabOrder = 0
            ComponenteFoco = txtCodigo
            object LabelMC2: TLabelMC
              Left = 6
              Top = 3
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
            end
            object LabelMC1: TLabelMC
              Left = 94
              Top = 3
              Width = 58
              Height = 13
              Caption = 'CPF / CNPJ'
            end
            object lblNome: TLabelMC
              Left = 212
              Top = 3
              Width = 28
              Height = 13
              Caption = 'Nome'
            end
            object txtCodigo: TDBEditMC
              Tag = 2
              Left = 6
              Top = 17
              Width = 86
              Height = 21
              DataField = 'CODCLIENTE'
              DataSource = dsrCliente
              TabOrder = 0
              Requerido = True
              Rotulo = LabelMC2
            end
            object txtCPFCPJ: TDBEditMC
              Tag = 2
              Left = 94
              Top = 17
              Width = 115
              Height = 21
              DataField = 'CPFCNPJ'
              DataSource = dsrCad
              TabOrder = 1
              OnExit = txtCPFCPJExit
              Requerido = True
              Rotulo = LabelMC1
              ChecagemTipo = ctCPFCNPJ
            end
            object txtNome: TDBEditMC
              Tag = 2
              Left = 212
              Top = 17
              Width = 335
              Height = 21
              DataField = 'NOME'
              DataSource = dsrCad
              TabOrder = 2
              Requerido = True
              Rotulo = lblNome
            end
            object DBCheckBoxMC1: TDBCheckBoxMC
              Tag = 2
              Left = 553
              Top = 19
              Width = 51
              Height = 17
              Caption = 'Ativo'
              DataField = 'ATIVO'
              DataSource = dsrCliente
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              ValueChecked = 'Sim'
              ValueUnchecked = 'N'#227'o'
            end
          end
        end
      end
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODPESSOA'
    object cdsGridCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
      Visible = False
    end
    object cdsGridCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
      Visible = False
    end
    object cdsGridNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object cdsGridEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 70
    end
    object cdsGridCPFCNPJ: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT'
      '    P.CODPESSOA, C.CODCLIENTE, NOME, EMAIL, CPFCNPJ'
      'FROM TBCLIENTE C, TBPESSOA P'
      'WHERE C.CODPESSOA=P.CODPESSOA AND TITULAR='#39'Sim'#39)
    object qryGridCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
      Visible = False
    end
    object qryGridCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
      Visible = False
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryGridEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 70
    end
    object qryGridCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
  end
  inherited qryCad: TZQueryMC
    AfterInsert = qryCadAfterInsert
    BeforePost = qryCadBeforePost
    SQL.Strings = (
      'SELECT * FROM TBPESSOA WHERE CODPESSOA=:CODIGO')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    TableName = 'TBPESSOA'
    FieldKey = 'CODPESSOA'
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadCODCIDRESID: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'CODCIDRESID'
      Required = True
    end
    object qryCadCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object qryCadENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 45
    end
    object qryCadCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 25
    end
    object qryCadBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 35
    end
    object qryCadTEL: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TEL'
      Size = 13
    end
    object qryCadCEL: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CEL'
      Size = 13
    end
    object qryCadCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qryCadNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryCadTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Required = True
      Size = 1
    end
    object qryCadCPFCNPJ: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
    object qryCadEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 70
    end
    object qryCadWEB: TStringField
      DisplayLabel = 'Web'
      FieldName = 'WEB'
      Size = 70
    end
    object qryCadDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object qryCadDATATUALIZACAO: TDateField
      FieldName = 'DATATUALIZACAO'
      Required = True
    end
    object qryCadRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object qryCadDATANASCIMENTO: TDateField
      DisplayLabel = 'Data de nacimento'
      FieldName = 'DATANASCIMENTO'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '99/99/9999;1;_'
    end
    object qryCadSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      OnGetText = qryCadSEXOGetText
      OnSetText = qryCadSEXOSetText
      Size = 1
    end
    object qryCadOBS: TBlobField
      FieldName = 'OBS'
    end
    object qryCadTELRAMAL: TStringField
      FieldName = 'TELRAMAL'
      Size = 5
    end
    object qryCadCODCIDADENACIMENTO: TIntegerField
      DisplayLabel = 'Naturalidade'
      FieldName = 'CODCIDADENACIMENTO'
    end
    object qryCadDEFICIECIA: TStringField
      DisplayLabel = 'Defici'#234'ncia'
      FieldName = 'DEFICIECIA'
      Size = 255
    end
    object qryCadUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = qryCidade
      LookupKeyFields = 'CODCIDADE'
      LookupResultField = 'CODUF'
      KeyFields = 'CODCIDADENACIMENTO'
      Size = 2
      Lookup = True
    end
    object qryCadUFResi: TStringField
      FieldKind = fkLookup
      FieldName = 'UFResi'
      LookupDataSet = qryCidade
      LookupKeyFields = 'CODCIDADE'
      LookupResultField = 'CODUF'
      KeyFields = 'CODCIDRESID'
      Size = 2
      Lookup = True
    end
    object qryCadESTADOCIVIL: TIntegerField
      DisplayLabel = 'Estado de Civil'
      FieldName = 'ESTADOCIVIL'
      OnGetText = qryCadESTADOCIVILGetText
      OnSetText = qryCadESTADOCIVILSetText
    end
    object qryCadFOTO: TBlobField
      FieldName = 'FOTO'
    end
  end
  inherited dsrCad: TDatasourceMC
    OnDataChange = dsrCadDataChange
  end
  object qryCliente: TZQueryMC
    Tag = 1
    CachedUpdates = False
    AfterInsert = qryClienteAfterInsert
    AfterEdit = qryClienteAfterEdit
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBCLIENTE WHERE CODPESSOA=:CODPESSOA')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODPESSOA'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    TableName = 'TBCLIENTE'
    FieldKey = 'CODCLIENTE'
    Conexao = DM.db
    Left = 24
    Top = 157
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODPESSOA'
        ParamType = ptUnknown
      end>
    object qryClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object qryClienteCODPESSOA: TIntegerField
      Tag = 1
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClienteAPELIDO: TStringField
      DisplayLabel = 'Apelido'
      FieldName = 'APELIDO'
      Size = 35
    end
    object qryClienteCORE: TStringField
      FieldName = 'CORE'
    end
    object qryClienteCONTATONOME: TStringField
      FieldName = 'CONTATONOME'
      Size = 45
    end
    object qryClienteCONTATOTEL: TStringField
      FieldName = 'CONTATOTEL'
      Size = 13
    end
    object qryClienteCONTATORAMAL: TStringField
      FieldName = 'CONTATORAMAL'
      Size = 5
    end
    object qryClienteCONTATOENDERECO: TStringField
      FieldName = 'CONTATOENDERECO'
      Size = 45
    end
    object qryClienteCONTATONBAIRRO: TStringField
      FieldName = 'CONTATONBAIRRO'
      Size = 35
    end
    object qryClienteCONTATOCOMPLEMENTO: TStringField
      FieldName = 'CONTATOCOMPLEMENTO'
      Size = 35
    end
    object qryClienteCONTATOCIDADEID: TIntegerField
      FieldName = 'CONTATOCIDADEID'
    end
    object qryClienteCONTATOCEP: TStringField
      FieldName = 'CONTATOCEP'
      Size = 10
    end
    object qryClienteCODGERCONTA: TIntegerField
      DisplayLabel = 'Gerenciador de contas'
      FieldName = 'CODGERCONTA'
    end
    object qryClienteCONTA: TStringField
      FieldName = 'CONTA'
      Size = 25
    end
    object qryClienteFAVORECIDO: TStringField
      FieldName = 'FAVORECIDO'
      Size = 35
    end
    object qryClienteUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = qryCidade
      LookupKeyFields = 'CODCIDADE'
      LookupResultField = 'CODUF'
      KeyFields = 'CONTATOCIDADEID'
      Size = 2
      Lookup = True
    end
    object qryClientePROPRIETARIO: TStringField
      FieldName = 'PROPRIETARIO'
      Required = True
      Size = 3
    end
    object qryClienteFIADOR: TStringField
      FieldName = 'FIADOR'
      Required = True
      Size = 3
    end
    object qryClienteFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Required = True
      Size = 3
    end
    object qryClienteFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Required = True
      Size = 3
    end
    object qryClienteLOCADOR: TStringField
      FieldName = 'LOCADOR'
      Required = True
      Size = 3
    end
    object qryClienteCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Required = True
      Size = 3
    end
    object qryClienteINTERESSADO: TStringField
      FieldName = 'INTERESSADO'
      Required = True
      Size = 3
    end
    object qryClienteTITULAR: TStringField
      FieldName = 'TITULAR'
      Required = True
      Size = 3
    end
    object qryClienteRECEBEEMAIL: TStringField
      DisplayLabel = 'Recebe email'
      FieldName = 'RECEBEEMAIL'
      Size = 3
    end
    object qryClientePROFISSAO: TStringField
      DisplayLabel = 'Profiss'#227'o'
      FieldName = 'PROFISSAO'
      Size = 35
    end
    object qryClienteCODTITULAR: TIntegerField
      FieldName = 'CODTITULAR'
    end
    object qryClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 3
    end
    object qryClienteEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 3
    end
    object qryClienteVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Required = True
      Size = 3
    end
    object qryClienteREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Required = True
      Size = 3
    end
    object qryClienteTRANSPORTADOR: TStringField
      FieldName = 'TRANSPORTADOR'
      Required = True
      Size = 3
    end
  end
  object dsrCliente: TDatasourceMC
    AutoEdit = False
    DataSet = qryCliente
    Left = 24
    Top = 185
  end
  object qryCidade: TZQueryMC
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'SELECT * FROM TBCIDADE')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 24
    Top = 237
    object qryCidadeCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Required = True
    end
    object qryCidadeCODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object qryCidadeNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  object dsrCidade: TDatasourceMC
    DataSet = qryCidade
    Left = 24
    Top = 265
  end
  object qryGerConta: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT CODGERCONTA, NOME FROM TBGERCONTA WHERE ATIVO='#39'Sim'#39)
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 56
    Top = 237
    object qryGerContaCODGERCONTA: TIntegerField
      FieldName = 'CODGERCONTA'
      Required = True
      Visible = False
    end
    object qryGerContaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 35
    end
  end
  object dsrGerConta: TDatasourceMC
    DataSet = qryGerConta
    Left = 56
    Top = 265
  end
  object qryHistorico: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      
        '    PF.NOME AS TITULAR, FIL.NOME AS FILME, S.NOME AS SOCIO, H.DA' +
        'TASAIDA, H.DATAENTRADA,'
      '    H.ATRASO, H.MOTIVO, H.TROCA'
      'FROM TBHISTORICO H '
      'LEFT JOIN TBCLIENTE F ON F.CODCLIENTE=H.CODFICHA'
      'LEFT JOIN TBPESSOA PF ON PF.CODPESSOA=F.CODCLIENTE'
      'LEFT JOIN TBFILME FIL ON FIL.CODFILME=H.CODFILME'
      'LEFT JOIN TBCLIENTE C ON C.CODCLIENTE=H.CODSOCIO'
      'LEFT JOIN TBPESSOA S ON S.CODPESSOA=C.CODPESSOA'
      'WHERE H.CODFICHA=:CODFICHA')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODFICHA'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 88
    Top = 237
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFICHA'
        ParamType = ptUnknown
      end>
    object qryHistoricoTITULAR: TStringField
      FieldName = 'TITULAR'
      Required = True
      Size = 45
    end
    object qryHistoricoFILME: TStringField
      DisplayLabel = 'Filme'
      FieldName = 'FILME'
      Required = True
      Size = 50
    end
    object qryHistoricoSOCIO: TStringField
      FieldName = 'SOCIO'
      Required = True
      Size = 45
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
    object qryHistoricoMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 255
    end
    object qryHistoricoTROCA: TStringField
      FieldName = 'TROCA'
      Size = 3
    end
  end
  object dsrHistorico: TDatasourceMC
    DataSet = qryHistorico
    Left = 88
    Top = 265
  end
  object opdFoto: TOpenPictureDialog
    Left = 723
    Top = 318
  end
  object cdsDe: TClientDataSetMC
    Tag = 3
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 237
    object cdsDeCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
    end
    object cdsDeNOME: TStringField
      DisplayLabel = 'Nome'
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = _frmDependentes.cdsPesDepend
      LookupKeyFields = 'CODPESSOA'
      LookupResultField = 'NOME'
      KeyFields = 'CODPESSOA'
      Size = 75
      Lookup = True
    end
    object cdsDeEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldKind = fkLookup
      FieldName = 'EMAIL'
      LookupDataSet = _frmDependentes.cdsPesDepend
      LookupKeyFields = 'CODPESSOA'
      LookupResultField = 'EMAIL'
      KeyFields = 'CODPESSOA'
      Size = 75
      Lookup = True
    end
    object cdsDeCPF: TStringField
      FieldKind = fkLookup
      FieldName = 'CPF'
      LookupDataSet = _frmDependentes.cdsPesDepend
      LookupKeyFields = 'CODPESSOA'
      LookupResultField = 'CPFCNPJ'
      KeyFields = 'CODPESSOA'
      Size = 14
      Lookup = True
    end
  end
  object dsrDe: TDatasourceMC
    DataSet = cdsDe
    OnDataChange = dsrDeDataChange
    Left = 144
    Top = 265
  end
end
