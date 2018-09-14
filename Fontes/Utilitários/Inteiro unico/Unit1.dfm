object Form1: TForm1
  Left = 99
  Top = 245
  Width = 695
  Height = 246
  Caption = '5'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelMC1: TLabelMC
    Left = 32
    Top = 48
    Width = 48
    Height = 13
    Caption = 'LabelMC1'
  end
  object LabelMC2: TLabelMC
    Left = 480
    Top = 40
    Width = 48
    Height = 13
    Caption = 'LabelMC2'
  end
  object EditMC1: TEditMC
    Tag = 2
    Left = 16
    Top = 17
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'EditMC1'
  end
  object Button1: TButton
    Left = 144
    Top = 16
    Width = 75
    Height = 25
    Caption = 'exec'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGridMC1: TDBGridMC
    Tag = 2
    Left = 24
    Top = 64
    Width = 320
    Height = 120
    BorderStyle = bsNone
    Color = 14739951
    DataSource = DatasourceMC1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 224
    Top = 16
    Width = 75
    Height = 25
    Caption = 'para'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBGridMC2: TDBGridMC
    Tag = 2
    Left = 360
    Top = 56
    Width = 320
    Height = 120
    BorderStyle = bsNone
    Color = 14739951
    DataSource = DatasourceMC2
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 304
    Top = 16
    Width = 75
    Height = 25
    Caption = 'salva'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 384
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 6
    OnClick = Button4Click
  end
  object DatasourceMC1: TDatasourceMC
    DataSet = ClientDataSetMC1
    OnDataChange = DatasourceMC1DataChange
    Left = 88
    Top = 104
  end
  object ClientDataSetMC1: TClientDataSetMC
    Active = True
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 96
    Data = {
      260000009619E0BD010000001800000001000000000003000000260003616473
      04000100040000000000}
    object ClientDataSetMC1ads: TIntegerField
      DisplayWidth = 52
      FieldName = 'ads'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ClientDataSetMC2: TClientDataSetMC
    Active = True
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 80
    Data = {
      2E0000009619E0BD0100000018000000020000000000030000002E0001610400
      010000000000016208000800000000000000}
    object ClientDataSetMC2a: TIntegerField
      DisplayWidth = 22
      FieldName = 'a'
    end
    object ClientDataSetMC2b: TDateTimeField
      DisplayWidth = 35
      FieldName = 'b'
    end
  end
  object DatasourceMC2: TDatasourceMC
    DataSet = ClientDataSetMC2
    OnDataChange = DatasourceMC2DataChange
    Left = 296
    Top = 128
  end
end
