object _frmDiretorio: T_frmDiretorio
  Left = 314
  Top = 257
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Salvar em:'
  ClientHeight = 181
  ClientWidth = 373
  Color = clBtnFace
  Constraints.MaxHeight = 215
  Constraints.MaxWidth = 381
  Constraints.MinHeight = 215
  Constraints.MinWidth = 381
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblCaminho: TLabelMC
    Left = 6
    Top = 4
    Width = 363
    Height = 13
    AutoSize = False
    Caption = 'D:\'
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 4
    Top = 20
    Width = 273
    Height = 129
    DirLabel = lblCaminho
    ItemHeight = 16
    TabOrder = 0
  end
  object dcb: TDriveComboBox
    Left = 5
    Top = 156
    Width = 273
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 1
    TextCase = tcUpperCase
  end
  object BitBtn1: TBitBtn
    Left = 296
    Top = 120
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 296
    Top = 152
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkCancel
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofOldStyleDialog, ofEnableSizing, ofDontAddToRecent]
    Left = 208
    Top = 104
  end
end
