object Form1: TForm1
  Left = 192
  Top = 107
  Width = 235
  Height = 118
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 12
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object Label2: TLabel
    Left = 3
    Top = 38
    Width = 27
    Height = 13
    Caption = 'CNPJ'
  end
  object Button1: TButton
    Left = 144
    Top = 57
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 35
    Top = 8
    Width = 93
    Height = 21
    MaxLength = 9
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 131
    Top = 8
    Width = 93
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 35
    Top = 32
    Width = 93
    Height = 21
    MaxLength = 12
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 131
    Top = 32
    Width = 93
    Height = 21
    TabOrder = 4
  end
end
