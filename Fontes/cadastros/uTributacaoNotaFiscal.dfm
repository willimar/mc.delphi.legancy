inherited _frmCadGridTributacaoNotaFiscal: T_frmCadGridTributacaoNotaFiscal
  Left = 109
  Top = 139
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
        Top = 8
        Align = alNone
        Caption = 'Tributa'#231#227'o de nota fiscal'
        Font.Height = -13
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
        inherited grd: TDBGridMC
          Width = 612
          Height = 401
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 576
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
            Top = 6
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object LabelMC2: TLabelMC
            Left = 90
            Top = 6
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object DBEditMC1: TDBEditMC
            Tag = 2
            Left = 5
            Top = 20
            Width = 82
            Height = 21
            DataField = 'CODTRIBUTACAONOTAFISCAL'
            DataSource = dsrCad
            TabOrder = 0
            Requerido = True
          end
          object txtDescricao: TDBEditMC
            Tag = 2
            Left = 90
            Top = 20
            Width = 511
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = dsrCad
            TabOrder = 1
            Requerido = True
          end
          object PanelMC1: TPanelMC
            Left = 6
            Top = 47
            Width = 596
            Height = 243
            BevelOuter = bvLowered
            TabOrder = 2
            object DBTextMC1: TDBTextMC
              Tag = 2
              Left = 1
              Top = 17
              Width = 594
              Height = 13
              Align = alTop
              Alignment = taCenter
              DataField = 'NOME'
              DataSource = scrUF
            end
            object PanelMC2: TPanelMC
              Left = 1
              Top = 1
              Width = 594
              Height = 16
              Align = alTop
              Caption = 'Tributa'#231#227'o por estado'
              TabOrder = 0
            end
            object PanelMC3: TPanelMC
              Left = 1
              Top = 30
              Width = 286
              Height = 212
              Align = alLeft
              TabOrder = 1
              object LabelMC3: TLabelMC
                Left = 32
                Top = 2
                Width = 84
                Height = 13
                Caption = 'ICMS contribuinte'
              end
              object LabelMC16: TLabelMC
                Left = 32
                Top = 70
                Width = 90
                Height = 13
                Caption = 'ICMS transfer'#234'ncia'
              end
              object LabelMC17: TLabelMC
                Left = 33
                Top = 137
                Width = 91
                Height = 13
                Caption = 'ICMS produtor rural'
              end
              object LabelMC8: TLabelMC
                Left = 159
                Top = 2
                Width = 105
                Height = 13
                Caption = 'ICMS n'#227'o contribuinte'
              end
              object LabelMC19: TLabelMC
                Left = 178
                Top = 70
                Width = 65
                Height = 13
                Caption = 'ICMS entrada'
              end
              object LabelMC20: TLabelMC
                Left = 147
                Top = 137
                Width = 128
                Height = 13
                Caption = 'ICMS substitui'#231#227'o tribut'#225'ria'
              end
              object PanelMC4: TPanelMC
                Left = 7
                Top = 18
                Width = 134
                Height = 51
                BevelOuter = bvLowered
                TabOrder = 0
                object LabelMC4: TLabelMC
                  Left = 8
                  Top = 8
                  Width = 24
                  Height = 13
                  Caption = 'Base'
                end
                object LabelMC5: TLabelMC
                  Left = 68
                  Top = 8
                  Width = 38
                  Height = 13
                  Caption = 'Aliquota'
                end
                object DBEditMC3: TDBEditMC
                  Tag = 2
                  Left = 8
                  Top = 24
                  Width = 57
                  Height = 21
                  DataField = 'BASECONTRIB'
                  DataSource = dsrNFEstado
                  TabOrder = 0
                end
                object DBEditMC4: TDBEditMC
                  Tag = 2
                  Left = 68
                  Top = 24
                  Width = 57
                  Height = 21
                  DataField = 'ALIQUOTACONTRIB'
                  DataSource = dsrNFEstado
                  TabOrder = 1
                end
              end
              object PanelMC7: TPanelMC
                Left = 7
                Top = 85
                Width = 134
                Height = 51
                BevelOuter = bvLowered
                TabOrder = 1
                object LabelMC10: TLabelMC
                  Left = 8
                  Top = 8
                  Width = 24
                  Height = 13
                  Caption = 'Base'
                end
                object LabelMC11: TLabelMC
                  Left = 68
                  Top = 8
                  Width = 38
                  Height = 13
                  Caption = 'Aliquota'
                end
                object DBEditMC9: TDBEditMC
                  Tag = 2
                  Left = 8
                  Top = 24
                  Width = 57
                  Height = 21
                  DataField = 'BASETRANSF'
                  DataSource = dsrNFEstado
                  TabOrder = 0
                end
                object DBEditMC10: TDBEditMC
                  Tag = 2
                  Left = 68
                  Top = 24
                  Width = 57
                  Height = 21
                  DataField = 'ALIQUOTATRANSF'
                  DataSource = dsrNFEstado
                  TabOrder = 1
                end
              end
              object PanelMC9: TPanelMC
                Left = 8
                Top = 153
                Width = 134
                Height = 51
                BevelOuter = bvLowered
                TabOrder = 2
                object LabelMC14: TLabelMC
                  Left = 8
                  Top = 8
                  Width = 24
                  Height = 13
                  Caption = 'Base'
                end
                object LabelMC15: TLabelMC
                  Left = 68
                  Top = 8
                  Width = 38
                  Height = 13
                  Caption = 'Aliquota'
                end
                object DBEditMC13: TDBEditMC
                  Tag = 2
                  Left = 8
                  Top = 24
                  Width = 57
                  Height = 21
                  DataField = 'BASEPRODRURAL'
                  DataSource = dsrNFEstado
                  TabOrder = 0
                end
                object DBEditMC14: TDBEditMC
                  Tag = 2
                  Left = 68
                  Top = 24
                  Width = 57
                  Height = 21
                  DataField = 'ALIQUOTAPRODRURAL'
                  DataSource = dsrNFEstado
                  TabOrder = 1
                end
              end
              object PanelMC5: TPanelMC
                Left = 144
                Top = 18
                Width = 134
                Height = 51
                BevelOuter = bvLowered
                TabOrder = 3
                object LabelMC6: TLabelMC
                  Left = 8
                  Top = 8
                  Width = 24
                  Height = 13
                  Caption = 'Base'
                end
                object LabelMC7: TLabelMC
                  Left = 68
                  Top = 8
                  Width = 38
                  Height = 13
                  Caption = 'Aliquota'
                end
                object DBEditMC5: TDBEditMC
                  Tag = 2
                  Left = 8
                  Top = 24
                  Width = 57
                  Height = 21
                  DataField = 'BASENCONTRIB'
                  DataSource = dsrNFEstado
                  TabOrder = 0
                end
                object DBEditMC6: TDBEditMC
                  Tag = 2
                  Left = 68
                  Top = 24
                  Width = 57
                  Height = 21
                  DataField = 'ALIQUOTANCONTRIB'
                  DataSource = dsrNFEstado
                  TabOrder = 1
                end
              end
              object PanelMC6: TPanelMC
                Left = 144
                Top = 85
                Width = 134
                Height = 51
                BevelOuter = bvLowered
                TabOrder = 4
                object LabelMC9: TLabelMC
                  Left = 8
                  Top = 8
                  Width = 24
                  Height = 13
                  Caption = 'Base'
                end
                object LabelMC12: TLabelMC
                  Left = 68
                  Top = 8
                  Width = 38
                  Height = 13
                  Caption = 'Aliquota'
                end
                object DBEditMC7: TDBEditMC
                  Tag = 2
                  Left = 8
                  Top = 24
                  Width = 57
                  Height = 21
                  DataField = 'BASEENTRADA'
                  DataSource = dsrNFEstado
                  TabOrder = 0
                end
                object DBEditMC8: TDBEditMC
                  Tag = 2
                  Left = 68
                  Top = 24
                  Width = 57
                  Height = 21
                  DataField = 'ALIQUOTAENTRADA'
                  DataSource = dsrNFEstado
                  TabOrder = 1
                end
              end
              object PanelMC8: TPanelMC
                Left = 145
                Top = 153
                Width = 134
                Height = 51
                BevelOuter = bvLowered
                TabOrder = 5
                object LabelMC13: TLabelMC
                  Left = 8
                  Top = 8
                  Width = 24
                  Height = 13
                  Caption = 'Base'
                end
                object LabelMC18: TLabelMC
                  Left = 68
                  Top = 8
                  Width = 38
                  Height = 13
                  Caption = 'Aliquota'
                end
                object DBEditMC11: TDBEditMC
                  Tag = 2
                  Left = 8
                  Top = 24
                  Width = 57
                  Height = 21
                  DataField = 'BASESUBTRIB'
                  DataSource = dsrNFEstado
                  TabOrder = 0
                end
                object DBEditMC12: TDBEditMC
                  Tag = 2
                  Left = 68
                  Top = 24
                  Width = 57
                  Height = 21
                  DataField = 'ALIQUOTASUBTRIB'
                  DataSource = dsrNFEstado
                  TabOrder = 1
                end
              end
            end
            object dblEstados: TDBLookupListBoxMC
              Tag = 2
              Left = 287
              Top = 30
              Width = 308
              Height = 212
              Align = alClient
              Color = 14743551
              KeyField = 'CODUF'
              ListField = 'CODUF;NOME'
              ListSource = scrUF
              TabOrder = 2
              OnClick = dblEstadosClick
            end
          end
        end
      end
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODTRIBUTACAONOTAFISCAL'
    object cdsGridCODTRIBUTACAONOTAFISCAL: TIntegerField
      FieldName = 'CODTRIBUTACAONOTAFISCAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object cdsGridDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 45
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBTRIBUTACAONOTAFISCAL')
    TableName = 'TBTRIBUTACAONOTAFISCAL'
    object qryGridCODTRIBUTACAONOTAFISCAL: TIntegerField
      FieldName = 'CODTRIBUTACAONOTAFISCAL'
      Required = True
    end
    object qryGridDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 45
    end
  end
  inherited qryCad: TZQueryMC
    OnNewRecord = qryCadNewRecord
    SQL.Strings = (
      
        'SELECT * FROM TBTRIBUTACAONOTAFISCAL WHERE CODTRIBUTACAONOTAFISC' +
        'AL=:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = 0
      end>
    FieldKey = 'CODTRIBUTACAONOTAFISCAL'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = 0
      end>
    object qryCadCODTRIBUTACAONOTAFISCAL: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODTRIBUTACAONOTAFISCAL'
      Required = True
    end
    object qryCadDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 45
    end
  end
  inherited dsrCad: TDatasourceMC
    OnStateChange = dsrCadStateChange
    OnDataChange = dsrCadDataChange
  end
  object sqlUF: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT CODUF, NOME FROM TBUF ORDER BY NOME')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 7
    Top = 208
    object sqlUFCODUF: TStringField
      Alignment = taCenter
      FieldName = 'CODUF'
      Required = True
      Size = 10
    end
    object sqlUFNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  object scrUF: TDatasourceMC
    DataSet = sqlUF
    Left = 7
    Top = 237
  end
  object sqlNFEstado: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'SELECT * FROM TBTRIBNFESTADO WHERE CODTRIBUTACAONOTAFISCAL=:CODT' +
        'RIBUTACAONOTAFISCAL')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODTRIBUTACAONOTAFISCAL'
        ParamType = ptUnknown
        Value = 0
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 39
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODTRIBUTACAONOTAFISCAL'
        ParamType = ptUnknown
        Value = 0
      end>
  end
  object dsrNFEstado: TDatasourceMC
    AutoEdit = False
    DataSet = cdsNFEstados
    Left = 95
    Top = 237
  end
  object cdsNFEstados: TClientDataSetMC
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFEstados'
    OnNewRecord = cdsNFEstadosNewRecord
    Left = 67
    Top = 237
    object cdsNFEstadosCODTRIBUTACAONOTAFISCAL: TIntegerField
      FieldName = 'CODTRIBUTACAONOTAFISCAL'
      Required = True
    end
    object cdsNFEstadosCODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object cdsNFEstadosBASECONTRIB: TFloatField
      FieldName = 'BASECONTRIB'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
    object cdsNFEstadosALIQUOTACONTRIB: TFloatField
      FieldName = 'ALIQUOTACONTRIB'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
    object cdsNFEstadosBASENCONTRIB: TFloatField
      FieldName = 'BASENCONTRIB'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
    object cdsNFEstadosALIQUOTANCONTRIB: TFloatField
      FieldName = 'ALIQUOTANCONTRIB'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
    object cdsNFEstadosBASEENTRADA: TFloatField
      FieldName = 'BASEENTRADA'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
    object cdsNFEstadosALIQUOTAENTRADA: TFloatField
      FieldName = 'ALIQUOTAENTRADA'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
    object cdsNFEstadosBASETRANSF: TFloatField
      FieldName = 'BASETRANSF'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
    object cdsNFEstadosALIQUOTATRANSF: TFloatField
      FieldName = 'ALIQUOTATRANSF'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
    object cdsNFEstadosBASESUBTRIB: TFloatField
      FieldName = 'BASESUBTRIB'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
    object cdsNFEstadosALIQUOTASUBTRIB: TFloatField
      FieldName = 'ALIQUOTASUBTRIB'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
    object cdsNFEstadosBASEPRODRURAL: TFloatField
      FieldName = 'BASEPRODRURAL'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
    object cdsNFEstadosALIQUOTAPRODRURAL: TFloatField
      FieldName = 'ALIQUOTAPRODRURAL'
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
  end
  object dspNFEstados: TDataSetProviderMC
    DataSet = sqlNFEstado
    ResolveToDataSet = True
    Options = [poAllowMultiRecordUpdates]
    Left = 39
    Top = 237
  end
end
