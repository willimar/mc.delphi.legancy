inherited _frmCadGridAnaliseCredito: T_frmCadGridAnaliseCredito
  Left = 76
  Top = 139
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel5: TPanelMC
    inherited pgcCadastro: TPageControl
      ActivePage = tbsDetalhes
      inherited tbsDetalhes: TTabSheet
        inherited Panel8: TPanelMC
          object PanelMC1: TPanelMC
            Left = 1
            Top = 1
            Width = 603
            Height = 48
            Align = alTop
            TabOrder = 0
            object LabelMC4: TLabelMC
              Left = 2
              Top = 4
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
            end
            object LabelMC1: TLabelMC
              Left = 98
              Top = 4
              Width = 58
              Height = 13
              Caption = 'CPF / CNPJ'
            end
            object LabelMC2: TLabelMC
              Left = 248
              Top = 4
              Width = 28
              Height = 13
              Caption = 'Nome'
            end
            object SpeedButton1: TSpeedButton
              Left = 224
              Top = 20
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
            object txtCodigo: TDBEditMC
              Tag = 2
              Left = 2
              Top = 20
              Width = 95
              Height = 21
              TabStop = False
              Color = 14743551
              DataField = 'CODANALIZECREDITO'
              DataSource = dsrCad
              ReadOnly = True
              TabOrder = 0
              Rotulo = LabelMC4
            end
            object txtNome: TDBEditMC
              Tag = 2
              Left = 248
              Top = 19
              Width = 347
              Height = 21
              DataField = 'NOME'
              DataSource = dsrCad
              TabOrder = 1
              Requerido = True
              Rotulo = LabelMC2
            end
            object txtCPFCNPJ: TEditMC
              Tag = 2
              Left = 100
              Top = 20
              Width = 121
              Height = 21
              TabOrder = 2
              OnKeyDown = txtCPFCNPJKeyDown
              Rotulo = LabelMC1
            end
          end
          object PageControl1: TPageControl
            Left = 1
            Top = 49
            Width = 603
            Height = 342
            ActivePage = TabSheet1
            Align = alClient
            TabOrder = 1
            object TabSheet1: TTabSheet
              Caption = 'TabSheet1'
              object LabelMC3: TLabelMC
                Left = 2
                Top = 4
                Width = 35
                Height = 13
                Caption = 'Apelido'
              end
              object LabelMC5: TLabelMC
                Left = 378
                Top = 4
                Width = 16
                Height = 13
                Caption = 'RG'
              end
              object LabelMC6: TLabelMC
                Left = 498
                Top = 4
                Width = 82
                Height = 13
                Caption = 'Data de cadastro'
              end
              object LabelMC7: TLabelMC
                Left = 2
                Top = 44
                Width = 33
                Height = 13
                Caption = 'Cidade'
              end
              object LabelMC8: TLabelMC
                Left = 390
                Top = 44
                Width = 69
                Height = 13
                Caption = 'Estado de civil'
              end
              object LabelMC9: TLabelMC
                Left = 500
                Top = 44
                Width = 24
                Height = 13
                Caption = 'Sexo'
              end
              object LabelMC10: TLabelMC
                Left = 2
                Top = 84
                Width = 90
                Height = 13
                Caption = 'Tipo de defici'#234'ncia'
              end
              object LabelMC11: TLabelMC
                Left = 466
                Top = 84
                Width = 77
                Height = 13
                Caption = 'Limite de cr'#233'dito'
              end
              object LabelMC12: TLabelMC
                Left = 2
                Top = 124
                Width = 82
                Height = 13
                Caption = 'Nome do contato'
              end
              object LabelMC13: TLabelMC
                Left = 350
                Top = 124
                Width = 42
                Height = 13
                Caption = 'Telefone'
              end
              object LabelMC14: TLabelMC
                Left = 471
                Top = 124
                Width = 17
                Height = 13
                Caption = 'Fax'
              end
              object txtCadastro: TDBEditMC
                Tag = 2
                Left = 498
                Top = 20
                Width = 91
                Height = 21
                DataField = 'DATALANCAMENTO'
                DataSource = dsrCad
                TabOrder = 0
                Requerido = True
                TabSheet = TabSheet1
                Rotulo = LabelMC6
              end
              object txtLimiteCredito: TDBEditMC
                Tag = 2
                Left = 466
                Top = 100
                Width = 123
                Height = 21
                TabStop = False
                Color = 14743551
                DataField = 'LIMITE'
                DataSource = dsrCad
                ReadOnly = True
                TabOrder = 1
                TabSheet = TabSheet1
                Rotulo = LabelMC11
              end
              object txtTelefone: TDBEditMC
                Tag = 2
                Left = 350
                Top = 140
                Width = 119
                Height = 21
                DataField = 'TELCONTATO'
                DataSource = dsrCad
                TabOrder = 2
                Requerido = True
                TabSheet = TabSheet1
                Rotulo = LabelMC13
              end
              object txtFax: TDBEditMC
                Tag = 2
                Left = 471
                Top = 140
                Width = 119
                Height = 21
                DataField = 'FAX'
                DataSource = dsrCad
                TabOrder = 3
                Requerido = True
                TabSheet = TabSheet1
                Rotulo = LabelMC14
              end
              object PanelMC2: TPanelMC
                Left = 4
                Top = 168
                Width = 185
                Height = 138
                BevelOuter = bvLowered
                TabOrder = 4
                object LabelMC15: TLabelMC
                  Left = 5
                  Top = 23
                  Width = 92
                  Height = 13
                  Caption = 'Plao de pagamento'
                end
                object bitCidade: TSpeedButton
                  Left = 160
                  Top = 38
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
                object LabelMC16: TLabelMC
                  Left = 6
                  Top = 80
                  Width = 77
                  Height = 13
                  Caption = 'Valor da compra'
                end
                object DBTextMC1: TDBTextMC
                  Tag = 2
                  Left = 1
                  Top = 120
                  Width = 183
                  Height = 17
                  Align = alBottom
                  Alignment = taCenter
                  DataField = 'STATUS'
                  DataSource = dsrCad
                end
                object PanelMC3: TPanelMC
                  Left = 1
                  Top = 1
                  Width = 183
                  Height = 18
                  Align = alTop
                  Caption = 'Valores'
                  TabOrder = 0
                end
                object cboPlanoPagamento: TDBLookupComboBoxMC
                  Tag = 2
                  Left = 5
                  Top = 38
                  Width = 152
                  Height = 21
                  DataField = 'CODPLANOPAGAMENTO'
                  DataSource = dsrCad
                  NullValueKey = 46
                  TabOrder = 1
                  Requerido = True
                  TabSheet = TabSheet1
                  Rotulo = LabelMC15
                end
                object chkNaoBloquear: TDBCheckBoxMC
                  Tag = 2
                  Left = 6
                  Top = 61
                  Width = 174
                  Height = 17
                  Caption = 'N'#227'o bloquear este cliente'
                  DataField = 'NAOBLOQUEAR'
                  DataSource = dsrCad
                  TabOrder = 2
                  ValueChecked = 'Sim'
                  ValueUnchecked = 'N'#227'o'
                  Requerido = True
                end
                object txtValorCompra: TDBEditMC
                  Tag = 2
                  Left = 6
                  Top = 95
                  Width = 172
                  Height = 21
                  DataField = 'VALORCOMPRA'
                  DataSource = dsrCad
                  TabOrder = 3
                  Requerido = True
                  TabSheet = TabSheet1
                  Rotulo = LabelMC16
                end
              end
              object PanelMC4: TPanelMC
                Left = 196
                Top = 168
                Width = 395
                Height = 63
                BevelOuter = bvLowered
                TabOrder = 5
                object LabelMC17: TLabelMC
                  Left = 4
                  Top = 21
                  Width = 50
                  Height = 13
                  Caption = 'Valor limite'
                end
                object LabelMC18: TLabelMC
                  Left = 133
                  Top = 21
                  Width = 85
                  Height = 13
                  Caption = 'Valores em aberto'
                end
                object LabelMC19: TLabelMC
                  Left = 267
                  Top = 21
                  Width = 36
                  Height = 13
                  Caption = 'Estouro'
                end
                object PanelMC5: TPanelMC
                  Left = 1
                  Top = 1
                  Width = 393
                  Height = 18
                  Align = alTop
                  Caption = 'Limite de cr'#233'dito'
                  TabOrder = 0
                end
                object txtValorLimite: TDBEditMC
                  Tag = 2
                  Left = 4
                  Top = 35
                  Width = 123
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataSource = dsrCad
                  ReadOnly = True
                  TabOrder = 1
                  TabSheet = TabSheet1
                  Rotulo = LabelMC17
                end
                object txtValorAberto: TDBEditMC
                  Tag = 2
                  Left = 133
                  Top = 35
                  Width = 123
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataSource = dsrCad
                  ReadOnly = True
                  TabOrder = 2
                  TabSheet = TabSheet1
                  Rotulo = LabelMC18
                end
                object txtEstouro: TDBEditMC
                  Tag = 2
                  Left = 265
                  Top = 35
                  Width = 123
                  Height = 21
                  TabStop = False
                  Color = 14743551
                  DataSource = dsrCad
                  ReadOnly = True
                  TabOrder = 3
                  TabSheet = TabSheet1
                  Rotulo = LabelMC19
                end
              end
              object PanelMC6: TPanelMC
                Left = 196
                Top = 234
                Width = 395
                Height = 63
                BevelOuter = bvLowered
                TabOrder = 6
                object PanelMC7: TPanelMC
                  Left = 1
                  Top = 1
                  Width = 393
                  Height = 18
                  Align = alTop
                  Caption = 'Valores'
                  TabOrder = 0
                end
              end
              object txtApelido: TEditMC
                Tag = 2
                Left = 2
                Top = 20
                Width = 374
                Height = 21
                TabStop = False
                Color = 14743551
                ReadOnly = True
                TabOrder = 7
                Rotulo = LabelMC3
              end
              object txtRG: TEditMC
                Tag = 2
                Left = 380
                Top = 20
                Width = 114
                Height = 21
                TabStop = False
                Color = 14743551
                ReadOnly = True
                TabOrder = 8
                Rotulo = LabelMC5
              end
              object txtCidade: TEditMC
                Tag = 2
                Left = 2
                Top = 60
                Width = 351
                Height = 21
                TabStop = False
                Color = 14743551
                ReadOnly = True
                TabOrder = 9
                Rotulo = LabelMC7
              end
              object txtEstCivil: TEditMC
                Tag = 2
                Left = 391
                Top = 60
                Width = 106
                Height = 21
                TabStop = False
                Color = 14743551
                ReadOnly = True
                TabOrder = 10
                Rotulo = LabelMC8
              end
              object txtSexo: TEditMC
                Tag = 2
                Left = 500
                Top = 60
                Width = 90
                Height = 21
                TabStop = False
                Color = 14743551
                ReadOnly = True
                TabOrder = 11
                Rotulo = LabelMC9
              end
              object txtDeficiencia: TEditMC
                Tag = 2
                Left = 2
                Top = 100
                Width = 461
                Height = 21
                TabStop = False
                Color = 14743551
                ReadOnly = True
                TabOrder = 12
                Rotulo = LabelMC10
              end
              object txtNomeContato: TEditMC
                Tag = 2
                Left = 2
                Top = 140
                Width = 344
                Height = 21
                TabStop = False
                Color = 14743551
                ReadOnly = True
                TabOrder = 13
                Rotulo = LabelMC12
              end
              object txtUF: TEditMC
                Tag = 2
                Left = 356
                Top = 59
                Width = 31
                Height = 21
                TabStop = False
                Color = 14743551
                ReadOnly = True
                TabOrder = 14
              end
            end
          end
        end
      end
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODANALIZECREDITO'
    object cdsGridCODANALIZECREDITO: TIntegerField
      FieldName = 'CODANALIZECREDITO'
      Required = True
      Visible = False
    end
    object cdsGridCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
      Visible = False
    end
    object cdsGridCPFCNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
    object cdsGridNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object cdsGridENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 45
    end
    object cdsGridBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 45
    end
    object cdsGridCOMPLEMENTO: TStringField
      DisplayLabel = 'Complementp'
      FieldName = 'COMPLEMENTO'
      Size = 25
    end
    object cdsGridCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Required = True
      Size = 45
    end
    object cdsGridUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsGridCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsGridTELCONTATO: TStringField
      DisplayLabel = 'Tel. contato'
      FieldName = 'TELCONTATO'
      Size = 11
    end
    object cdsGridFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Size = 11
    end
    object cdsGridVALORCOMPRA: TFloatField
      DisplayLabel = 'Valor da compra'
      FieldName = 'VALORCOMPRA'
      Required = True
    end
    object cdsGridNAOBLOQUEAR: TStringField
      DisplayLabel = 'N'#227'o bloquear cliente'
      FieldName = 'NAOBLOQUEAR'
      Required = True
      Size = 3
    end
    object cdsGridSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Required = True
      Size = 3
    end
    object cdsGridLIMITE: TFloatField
      DisplayLabel = 'Limite de cr'#233'dito'
      FieldName = 'LIMITE'
      Required = True
    end
    object cdsGridABERTO: TFloatField
      DisplayLabel = 'Abertura'
      FieldName = 'ABERTO'
      Required = True
    end
    object cdsGridESTOURO: TFloatField
      DisplayLabel = 'Estouro'
      FieldName = 'ESTOURO'
      Required = True
    end
    object cdsGridDATALANCAMENTO: TDateField
      DisplayLabel = 'Data de lan'#231'amento'
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object cdsGridDATAATUALIZACAO: TDateField
      FieldName = 'DATAATUALIZACAO'
      Required = True
      Visible = False
    end
    object cdsGridCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
      Visible = False
    end
    object cdsGridCODPLANOPAGAMENTO: TIntegerField
      FieldName = 'CODPLANOPAGAMENTO'
      Visible = False
    end
    object cdsGridPERCENTUALPARCELAUM: TFloatField
      FieldName = 'PERCENTUALPARCELAUM'
      Visible = False
    end
  end
  inherited qryGrid: TZQueryMC
    Active = True
    SQL.Strings = (
      'SELECT * FROM TBANALIZECREDITO')
    TableName = 'TBANALIZECREDITO'
    object qryGridCODANALIZECREDITO: TIntegerField
      FieldName = 'CODANALIZECREDITO'
      Required = True
    end
    object qryGridCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object qryGridCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryGridENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 45
    end
    object qryGridBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 45
    end
    object qryGridCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 25
    end
    object qryGridCIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 45
    end
    object qryGridUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object qryGridCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qryGridTELCONTATO: TStringField
      FieldName = 'TELCONTATO'
      Size = 11
    end
    object qryGridFAX: TStringField
      FieldName = 'FAX'
      Size = 11
    end
    object qryGridVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
      Required = True
    end
    object qryGridNAOBLOQUEAR: TStringField
      FieldName = 'NAOBLOQUEAR'
      Required = True
      Size = 3
    end
    object qryGridSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 3
    end
    object qryGridLIMITE: TFloatField
      FieldName = 'LIMITE'
      Required = True
    end
    object qryGridABERTO: TFloatField
      FieldName = 'ABERTO'
      Required = True
    end
    object qryGridESTOURO: TFloatField
      FieldName = 'ESTOURO'
      Required = True
    end
    object qryGridDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object qryGridDATAATUALIZACAO: TDateField
      FieldName = 'DATAATUALIZACAO'
      Required = True
    end
    object qryGridCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object qryGridCODPLANOPAGAMENTO: TIntegerField
      FieldName = 'CODPLANOPAGAMENTO'
    end
    object qryGridPERCENTUALPARCELAUM: TFloatField
      FieldName = 'PERCENTUALPARCELAUM'
    end
  end
  inherited qryCad: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBANALIZECREDITO WHERE CODANALIZECREDITO=:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = 0
      end>
    TableName = 'TBANALIZECREDITO'
    FieldKey = 'CODANALIZECREDITO'
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = 0
      end>
    object qryCadCODANALIZECREDITO: TIntegerField
      FieldName = 'CODANALIZECREDITO'
      Required = True
    end
    object qryCadCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object qryCadCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
    object qryCadNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryCadENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 45
    end
    object qryCadBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 45
    end
    object qryCadCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 25
    end
    object qryCadCIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 45
    end
    object qryCadUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object qryCadCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qryCadTELCONTATO: TStringField
      FieldName = 'TELCONTATO'
      Size = 11
    end
    object qryCadFAX: TStringField
      FieldName = 'FAX'
      Size = 11
    end
    object qryCadVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
      Required = True
    end
    object qryCadNAOBLOQUEAR: TStringField
      FieldName = 'NAOBLOQUEAR'
      Required = True
      Size = 3
    end
    object qryCadSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 3
    end
    object qryCadLIMITE: TFloatField
      FieldName = 'LIMITE'
      Required = True
    end
    object qryCadABERTO: TFloatField
      FieldName = 'ABERTO'
      Required = True
    end
    object qryCadESTOURO: TFloatField
      FieldName = 'ESTOURO'
      Required = True
    end
    object qryCadDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object qryCadDATAATUALIZACAO: TDateField
      FieldName = 'DATAATUALIZACAO'
      Required = True
    end
    object qryCadCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object qryCadCODPLANOPAGAMENTO: TIntegerField
      FieldName = 'CODPLANOPAGAMENTO'
    end
    object qryCadPERCENTUALPARCELAUM: TFloatField
      FieldName = 'PERCENTUALPARCELAUM'
    end
  end
  inherited dsrCad: TDatasourceMC
    Top = 112
  end
end
