inherited _frmCadGridPlanoPagamento: T_frmCadGridPlanoPagamento
  Left = 855
  Top = 36
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
        Caption = 'Plano de pagamento'
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
        inherited grd: TDBGridMC
          Width = 612
          Height = 401
          Columns = <
            item
              Expanded = False
              FieldName = 'CODPLANOPAGAMENTO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 258
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REFERENCIA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAGAMENTOPRAZO'
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARCELAS'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRAZOMES'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORMINIMO'
              Width = 109
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
            Left = 8
            Top = 8
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object LabelMC2: TLabelMC
            Left = 104
            Top = 8
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object LabelMC3: TLabelMC
            Left = 488
            Top = 8
            Width = 48
            Height = 13
            Caption = 'Cod nome'
          end
          object LabelMC4: TLabelMC
            Left = 296
            Top = 52
            Width = 55
            Height = 13
            Caption = 'N'#186' parcelas'
          end
          object LabelMC5: TLabelMC
            Left = 388
            Top = 52
            Width = 63
            Height = 13
            Caption = 'Desconto (%)'
          end
          object LabelMC6: TLabelMC
            Left = 479
            Top = 52
            Width = 61
            Height = 13
            Caption = 'Valor m'#237'nimo'
          end
          object LabelMC7: TLabelMC
            Left = 184
            Top = 90
            Width = 52
            Height = 13
            Caption = 'Usar pre'#231'o'
          end
          object DBEditMC1: TDBEditMC
            Tag = 2
            Left = 8
            Top = 24
            Width = 92
            Height = 21
            DataField = 'CODPLANOPAGAMENTO'
            DataSource = dsrCad
            TabOrder = 0
          end
          object DBEditMC2: TDBEditMC
            Tag = 2
            Left = 104
            Top = 24
            Width = 380
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = dsrCad
            TabOrder = 1
          end
          object DBEditMC3: TDBEditMC
            Tag = 2
            Left = 488
            Top = 24
            Width = 113
            Height = 21
            DataField = 'REFERENCIA'
            DataSource = dsrCad
            TabOrder = 2
          end
          object dbrFormaPag: TDBRadioGroupMC
            Tag = 2
            Left = 8
            Top = 51
            Width = 141
            Height = 39
            Caption = ' Forma de pagamento '
            Columns = 2
            DataField = 'PAGAMENTOPRAZO'
            DataSource = dsrCad
            Items.Strings = (
              'Avista'
              'Prazo')
            TabOrder = 3
            Values.Strings = (
              'N'#227'o'
              'Sim')
            OnChange = dbrFormaPagChange
          end
          object dbrFormaPrazo: TDBRadioGroupMC
            Tag = 2
            Left = 152
            Top = 51
            Width = 141
            Height = 39
            Caption = ' Forma de prazo '
            Columns = 2
            DataField = 'PRAZOMES'
            DataSource = dsrCad
            Items.Strings = (
              'Dias'
              'M'#234's')
            TabOrder = 4
            Values.Strings = (
              'N'#227'o'
              'Sim')
          end
          object txtNumParcela: TDBEditMC
            Tag = 2
            Left = 296
            Top = 68
            Width = 89
            Height = 21
            DataField = 'PARCELAS'
            DataSource = dsrCad
            TabOrder = 5
            OnChange = txtNumParcelaChange
          end
          object DBEditMC5: TDBEditMC
            Tag = 2
            Left = 388
            Top = 68
            Width = 89
            Height = 21
            DataField = 'DESCONTO'
            DataSource = dsrCad
            TabOrder = 6
          end
          object DBEditMC6: TDBEditMC
            Tag = 2
            Left = 479
            Top = 68
            Width = 121
            Height = 21
            DataField = 'VALORMINIMO'
            DataSource = dsrCad
            TabOrder = 7
          end
          object DBCheckBoxMC1: TDBCheckBoxMC
            Tag = 2
            Left = 9
            Top = 106
            Width = 157
            Height = 17
            Caption = 'Usar tabela de pre'#231'os '#250'nica'
            DataSource = dsrCad
            TabOrder = 8
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBComboBoxMC1: TDBComboBoxMC
            Tag = 2
            Left = 184
            Top = 106
            Width = 113
            Height = 21
            DataSource = dsrCad
            ItemHeight = 13
            TabOrder = 9
          end
          object stgPrecos: TStringGridMC
            Left = 141
            Top = 133
            Width = 285
            Height = 249
            Color = 14739951
            ColCount = 1
            FixedCols = 0
            RowCount = 1
            FixedRows = 0
            TabOrder = 10
            OnDrawCell = stgPrecosDrawCell
            OnGetEditText = stgPrecosGetEditText
            OnSetEditText = stgPrecosSetEditText
          end
        end
      end
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODPLANOPAGAMENTO'
    object cdsGridCODPLANOPAGAMENTO: TIntegerField
      FieldName = 'CODPLANOPAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object cdsGridDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object cdsGridREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
      Size = 10
    end
    object cdsGridPAGAMENTOPRAZO: TStringField
      DisplayLabel = 'Pagamento a prazo'
      FieldName = 'PAGAMENTOPRAZO'
      Required = True
      Size = 3
    end
    object cdsGridPARCELAS: TIntegerField
      DisplayLabel = 'N'#250'mero de parcelas'
      FieldName = 'PARCELAS'
    end
    object cdsGridPRAZOMES: TStringField
      DisplayLabel = 'Prazo m'#234's'
      FieldName = 'PRAZOMES'
      Required = True
      Size = 3
    end
    object cdsGridDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
    end
    object cdsGridVALORMINIMO: TFloatField
      DisplayLabel = 'Valor m'#237'nimo'
      FieldName = 'VALORMINIMO'
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBPLANOPAGAMENTO')
    object qryGridCODPLANOPAGAMENTO: TIntegerField
      FieldName = 'CODPLANOPAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qryGridDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object qryGridREFERENCIA: TStringField
      DisplayLabel = 'Referencia'
      FieldName = 'REFERENCIA'
      Size = 10
    end
    object qryGridPAGAMENTOPRAZO: TStringField
      DisplayLabel = 'Pagamento a prazo'
      FieldName = 'PAGAMENTOPRAZO'
      Required = True
      Size = 3
    end
    object qryGridPARCELAS: TIntegerField
      DisplayLabel = 'N'#250'mero de parcelas'
      FieldName = 'PARCELAS'
    end
    object qryGridPRAZOMES: TStringField
      DisplayLabel = 'Prazo ao m'#234's'
      FieldName = 'PRAZOMES'
      Required = True
      Size = 3
    end
    object qryGridDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
    end
    object qryGridVALORMINIMO: TFloatField
      DisplayLabel = 'Valor m'#237'nimo'
      FieldName = 'VALORMINIMO'
    end
  end
  inherited qryCad: TZQueryMC
    OnNewRecord = qryCadNewRecord
    SQL.Strings = (
      'SELECT * FROM TBPLANOPAGAMENTO'
      'WHERE CODPLANOPAGAMENTO=:CODIGO')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    TableName = 'TBPLANOPAGAMENTO'
    FieldKey = 'CODPLANOPAGAMENTO'
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODPLANOPAGAMENTO: TIntegerField
      FieldName = 'CODPLANOPAGAMENTO'
      Required = True
    end
    object qryCadDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object qryCadREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 10
    end
    object qryCadPAGAMENTOPRAZO: TStringField
      FieldName = 'PAGAMENTOPRAZO'
      Required = True
      Size = 3
    end
    object qryCadPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      OnValidate = qryCadPARCELASValidate
    end
    object qryCadPRAZOMES: TStringField
      FieldName = 'PRAZOMES'
      Required = True
      Size = 3
    end
    object qryCadDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qryCadVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
      currency = True
    end
  end
  object sqlParcelas: TZQueryMC
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBPARCELA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 16
    Top = 173
    object sqlParcelasCODPLANOPAGAMENTO: TIntegerField
      FieldName = 'CODPLANOPAGAMENTO'
      Required = True
    end
    object sqlParcelasORDEM: TIntegerField
      FieldName = 'ORDEM'
      Required = True
    end
    object sqlParcelasPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      Required = True
    end
  end
end
