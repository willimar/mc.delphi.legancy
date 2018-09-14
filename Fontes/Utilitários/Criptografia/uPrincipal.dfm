object _frmPrincipal: T_frmPrincipal
  Left = 290
  Top = 234
  Width = 337
  Height = 122
  Caption = '_frmPrincipal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButtonMC1: TSpeedButtonMC
    Left = 142
    Top = 29
    Width = 169
    Height = 22
    Caption = 'Criptografar'
    OnClick = SpeedButtonMC1Click
  end
  object SpeedButtonMC2: TSpeedButtonMC
    Left = 142
    Top = 53
    Width = 169
    Height = 22
    Caption = 'Descriptografar'
    OnClick = SpeedButtonMC2Click
  end
  object EditMC1: TEditMC
    Tag = 2
    Left = 16
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'EditMC1'
  end
  object EditMC2: TEditMC
    Tag = 2
    Left = 16
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'EditMC2'
  end
end
