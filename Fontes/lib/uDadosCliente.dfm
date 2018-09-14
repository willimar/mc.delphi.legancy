object fraDadosCliente: TfraDadosCliente
  Left = 0
  Top = 0
  Width = 376
  Height = 109
  TabOrder = 0
  object Panel1: TPanel
    Left = 1
    Top = 0
    Width = 375
    Height = 108
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Caption = '`'
    TabOrder = 0
    object Shape1: TShape
      Left = 2
      Top = 2
      Width = 371
      Height = 104
      Align = alClient
      Brush.Color = clCream
      Pen.Color = 13882323
    end
    object Nome: TLabel
      Left = 73
      Top = 6
      Width = 34
      Height = 13
      Caption = 'Nome: '
      Transparent = False
    end
    object DBText1: TDBText
      Left = 107
      Top = 6
      Width = 263
      Height = 13
      DataField = 'Nome'
      Transparent = False
    end
    object Label6: TLabel
      Left = 73
      Top = 20
      Width = 26
      Height = 13
      Caption = 'Rua: '
      Transparent = False
    end
    object Label7: TLabel
      Left = 73
      Top = 34
      Width = 33
      Height = 13
      Caption = 'Bairro: '
      Transparent = False
    end
    object Label13: TLabel
      Left = 213
      Top = 34
      Width = 39
      Height = 13
      Caption = 'Cidade: '
      Transparent = False
    end
    object Label14: TLabel
      Left = 332
      Top = 34
      Width = 20
      Height = 13
      Caption = 'UF: '
      Transparent = False
    end
    object DBText2: TDBText
      Left = 99
      Top = 20
      Width = 271
      Height = 13
      DataField = 'Rua'
      Transparent = False
    end
    object DBText3: TDBText
      Left = 104
      Top = 34
      Width = 108
      Height = 13
      DataField = 'Bairro'
      Transparent = False
    end
    object DBText4: TDBText
      Left = 252
      Top = 34
      Width = 79
      Height = 13
      DataField = 'Cidade'
      Transparent = False
    end
    object DBText5: TDBText
      Left = 349
      Top = 34
      Width = 20
      Height = 13
      DataField = 'UF'
      Transparent = False
    end
    object Label15: TLabel
      Left = 73
      Top = 48
      Width = 22
      Height = 13
      Caption = 'RG: '
      Transparent = False
    end
    object Label16: TLabel
      Left = 166
      Top = 48
      Width = 26
      Height = 13
      Caption = 'CPF: '
      Transparent = False
    end
    object DBText6: TDBText
      Left = 94
      Top = 48
      Width = 71
      Height = 13
      DataField = 'RG'
      Transparent = False
    end
    object DBText7: TDBText
      Left = 192
      Top = 48
      Width = 85
      Height = 13
      DataField = 'CPFCNPJ'
      Transparent = False
    end
    object Label19: TLabel
      Left = 73
      Top = 62
      Width = 21
      Height = 13
      Caption = 'Tel: '
      Transparent = False
    end
    object Label20: TLabel
      Left = 167
      Top = 62
      Width = 21
      Height = 13
      Caption = 'Cel: '
      Transparent = False
    end
    object Label21: TLabel
      Left = 256
      Top = 62
      Width = 45
      Height = 13
      Caption = 'Tel Com: '
      Transparent = False
    end
    object DBText9: TDBText
      Left = 94
      Top = 62
      Width = 72
      Height = 13
      DataField = 'Tel1'
      Transparent = False
    end
    object DBText10: TDBText
      Left = 188
      Top = 62
      Width = 67
      Height = 13
      DataField = 'Tel2'
      Transparent = False
    end
    object DBText11: TDBText
      Left = 301
      Top = 62
      Width = 69
      Height = 13
      DataField = 'Tel3'
      Transparent = False
    end
    object Label22: TLabel
      Left = 73
      Top = 76
      Width = 31
      Height = 13
      Caption = 'Email: '
      Transparent = False
    end
    object Label23: TLabel
      Left = 73
      Top = 90
      Width = 29
      Height = 13
      Caption = 'Web: '
      Transparent = False
    end
    object lblEmail: TDBText
      Left = 103
      Top = 76
      Width = 267
      Height = 13
      Cursor = crHandPoint
      DataField = 'Email'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = False
    end
    object lblWeb: TDBText
      Left = 102
      Top = 90
      Width = 268
      Height = 13
      Cursor = crHandPoint
      DataField = 'Url'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = False
    end
    object Label24: TLabel
      Left = 6
      Top = 88
      Width = 66
      Height = 15
      AutoSize = False
      Transparent = False
    end
    object Label18: TLabel
      Left = 274
      Top = 48
      Width = 34
      Height = 13
      Caption = 'Nasc.: '
      Transparent = False
    end
    object DBText8: TDBText
      Left = 305
      Top = 48
      Width = 65
      Height = 13
      DataField = 'DataNasc'
      Transparent = False
    end
    object DBImage1: TDBImage
      Left = 6
      Top = 6
      Width = 66
      Height = 81
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = False
      DataField = 'Foto'
      ParentCtl3D = False
      ReadOnly = True
      Stretch = True
      TabOrder = 0
      TabStop = False
    end
  end
end
