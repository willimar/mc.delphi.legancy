inherited _frmFormDebito: T_frmFormDebito
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'S'#243'cios em d'#233'bito'
      end
    end
  end
  inherited Panel5: TPanel
    object LabelMC1: TLabelMC
      Left = 6
      Top = 8
      Width = 132
      Height = 13
      Caption = 'Mostrar valores maiores que'
    end
    object DBEditMC1: TDBEditMC
      Tag = 2
      Left = 144
      Top = 4
      Width = 85
      Height = 21
      DataField = 'Valor'
      DataSource = dsrFormt
      TabOrder = 0
    end
  end
  object cdsFormat: TClientDataSetMC
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 45
    object cdsFormatValor: TFloatField
      FieldName = 'Valor'
      OnValidate = cdsFormatValorValidate
      currency = True
    end
  end
  object dsrFormt: TDatasourceMC
    DataSet = cdsFormat
    Left = 335
    Top = 74
  end
end
