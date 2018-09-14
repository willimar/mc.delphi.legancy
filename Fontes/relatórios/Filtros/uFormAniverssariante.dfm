inherited _FormAniversariante: T_FormAniversariante
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'Listagem de aniverss'#225'riantes'
        Font.Height = -12
        Font.Style = [fsBold]
        WordWrap = True
      end
    end
  end
  inherited Panel5: TPanel
    object GroupBox1: TGroupBox
      Left = 118
      Top = 78
      Width = 201
      Height = 64
      Caption = ' Per'#237'odo '
      TabOrder = 0
      object LabelMC1: TLabelMC
        Left = 13
        Top = 33
        Width = 34
        Height = 13
        Caption = 'do m'#234's'
      end
      object LabelMC2: TLabelMC
        Left = 95
        Top = 33
        Width = 46
        Height = 13
        Caption = 'at'#233' o m'#234's'
      end
      object txtInicio: TEditMC
        Tag = 2
        Left = 48
        Top = 29
        Width = 25
        Height = 21
        TabOrder = 0
        Text = '1'
      end
      object updInicio: TUpDown
        Left = 73
        Top = 29
        Width = 16
        Height = 21
        Associate = txtInicio
        Min = 1
        Max = 12
        Position = 1
        TabOrder = 1
      end
      object txtFim: TEditMC
        Tag = 2
        Left = 148
        Top = 29
        Width = 25
        Height = 21
        TabOrder = 2
        Text = '1'
      end
      object UpDown1: TUpDown
        Left = 173
        Top = 29
        Width = 16
        Height = 21
        Associate = txtFim
        Min = 1
        Max = 12
        Position = 1
        TabOrder = 3
      end
    end
  end
end
