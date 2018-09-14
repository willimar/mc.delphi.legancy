object _frmDevolucao: T_frmDevolucao
  Left = 243
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  ClientHeight = 491
  ClientWidth = 432
  Color = clBtnFace
  Constraints.MaxHeight = 525
  Constraints.MaxWidth = 440
  Constraints.MinHeight = 525
  Constraints.MinWidth = 440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMC1: TPanelMC
    Left = 0
    Top = 0
    Width = 432
    Height = 491
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object SpeedButtonMC1: TSpeedButtonMC
      Left = 280
      Top = 464
      Width = 75
      Height = 25
      Caption = '&OK'
    end
    object SpeedButtonMC2: TSpeedButtonMC
      Left = 355
      Top = 464
      Width = 75
      Height = 25
      Caption = '&Cancelar'
    end
    object PanelMC2: TPanelMC
      Left = 1
      Top = 1
      Width = 430
      Height = 24
      Align = alTop
      Caption = 'Entradas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    inline fraDadosCliente1: TfraDadosCliente
      Left = 25
      Top = 27
      Width = 376
      Height = 109
      TabOrder = 1
    end
    object PanelMC3: TPanelMC
      Left = 6
      Top = 144
      Width = 420
      Height = 203
      TabOrder = 2
      object PanelMC4: TPanelMC
        Left = 75
        Top = 3
        Width = 341
        Height = 24
        BevelOuter = bvNone
        TabOrder = 0
      end
      object DBGridMC1: TDBGridMC
        Tag = 2
        Left = 1
        Top = 1
        Width = 418
        Height = 201
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
    object Panel2: TPanel
      Left = 31
      Top = 351
      Width = 372
      Height = 108
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Caption = 'Panel1'
      TabOrder = 3
      object Shape2: TShape
        Left = 2
        Top = 2
        Width = 368
        Height = 104
        Align = alClient
        Brush.Color = clCream
        Pen.Color = 13882323
      end
      object Label11: TLabel
        Left = 4
        Top = 5
        Width = 108
        Height = 13
        AutoSize = False
        Caption = 'Data para devolu'#231#227'o: '
        Transparent = False
      end
      object DBText14: TDBText
        Left = 96
        Top = 41
        Width = 89
        Height = 13
        DataField = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object Label25: TLabel
        Left = 4
        Top = 41
        Width = 93
        Height = 13
        AutoSize = False
        Caption = 'Valor da Loca'#231#227'o: '
        Transparent = False
      end
      object Label26: TLabel
        Left = 5
        Top = 55
        Width = 57
        Height = 13
        AutoSize = False
        Caption = 'Valor pago: '
        Transparent = False
      end
      object Label27: TLabel
        Left = 187
        Top = 5
        Width = 76
        Height = 13
        AutoSize = False
        Caption = 'Data de sa'#237'da: '
        Transparent = False
      end
      object DBText15: TDBText
        Left = 262
        Top = 5
        Width = 105
        Height = 13
        DataField = 'Retirada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object Label1: TLabel
        Left = 187
        Top = 20
        Width = 180
        Height = 82
        AutoSize = False
        Transparent = False
      end
      object Label2: TLabel
        Left = 5
        Top = 20
        Width = 180
        Height = 19
        AutoSize = False
        Transparent = False
      end
      object Label4: TLabel
        Left = 5
        Top = 90
        Width = 66
        Height = 13
        AutoSize = False
        Caption = 'Valor devido: '
        Transparent = False
      end
      object Label5: TLabel
        Left = 5
        Top = 69
        Width = 180
        Height = 20
        AutoSize = False
        Transparent = False
      end
      object DBText16: TDBText
        Left = 110
        Top = 5
        Width = 75
        Height = 13
        DataField = 'Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object DBText17: TDBText
        Left = 62
        Top = 55
        Width = 123
        Height = 13
        DataField = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object DBText18: TDBText
        Left = 71
        Top = 90
        Width = 114
        Height = 13
        DataField = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object Label3: TLabel
        Left = 190
        Top = 65
        Width = 113
        Height = 13
        Caption = 'Pagamento do valor de:'
        Transparent = False
      end
      object edtValor: TEdit
        Left = 188
        Top = 80
        Width = 121
        Height = 21
        BiDiMode = bdLeftToRight
        Ctl3D = True
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '0'
      end
    end
  end
end
