inherited _frmPesquisa: T_frmPesquisa
  Caption = 'Formul'#225'rio de Pesquisa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        WordWrap = True
      end
    end
  end
  inherited Panel2: TPanel
    inherited Panel7: TPanel
      inherited edtTexto: TEdit
        Width = 136
      end
    end
  end
  inherited Panel3: TPanel
    object SpeedButton1: TSpeedButton [1]
      Left = 506
      Top = 7
      Width = 81
      Height = 33
      Cursor = crHandPoint
      Hint = 'Insere um novo grupo'
      Caption = '&OK'
      Flat = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    inherited ToolBar1: TToolBar
      Left = 621
      Top = 4
      Visible = False
      inherited bitInserir: TSpeedButton
        Visible = False
      end
      inherited bitAlterar: TSpeedButton
        Visible = False
      end
      inherited ToolButton1: TToolButton
        Visible = False
      end
      inherited bitGravar: TSpeedButton
        Visible = False
      end
      inherited ToolButton2: TToolButton
        Visible = False
      end
      inherited bitImprimir: TSpeedButton
        Visible = False
      end
    end
  end
  inherited Panel5: TPanel
    inherited Panel6: TPanel
      Visible = False
    end
  end
  inherited cdsGrid: TClientDataSetMC
    AfterOpen = cdsGridAfterOpen
  end
  inherited qryCad: TZQueryMC
    Tag = 3
  end
end
