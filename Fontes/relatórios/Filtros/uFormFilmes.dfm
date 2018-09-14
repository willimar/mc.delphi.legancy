inherited _frmFormFilme: T_frmFormFilme
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'Filmes'
      end
    end
  end
  inherited Panel5: TPanel
    object rdgTipo: TRadioGroup
      Left = 5
      Top = 7
      Width = 185
      Height = 105
      ItemIndex = 0
      Items.Strings = (
        'Listagem an'#225'litica'
        'Listagem sint'#233'tica'
        'Registro selecionado')
      TabOrder = 0
    end
  end
end
