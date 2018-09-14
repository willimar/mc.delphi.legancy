object Form1: TForm1
  Left = 188
  Top = 113
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 232
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bitCidade: TSpeedButton
    Left = 648
    Top = 8
    Width = 22
    Height = 19
    Cursor = crHandPoint
    Hint = 'Localiza e insere nova cidade'
    Flat = True
    Glyph.Data = {
      42020000424D4202000000000000420000002800000010000000100000000100
      1000030000000002000000000000000000000000000000000000007C0000E003
      00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C583E383E373A173A163AF639F539D435D435B435
      B331CE391F7C1F7CCE3914525B67BF6B9F679F637F637F5F7F5B5F575F575F53
      3F57CE391F7C1F7C0B7FAA591452BF6BBF6B9F679F637F637F5F7F5B5F575F57
      5F57CE391F7C1F7C1F7C887EAA597452BF6BBF6B9F679F637F637F5F7F5B5F57
      5F5BCE391F7C1F7C1F7C1F7C0B7FAA595B67BF6B1C5B7E639F637F637F5F7F5B
      5F5BCE391F7C1F7C1F7C1F7C7B6FF76235465F57FF67FF6B9F671C5B7F637F5F
      5F5FCE391F7C1F7C1F7C1F7C9D73BF735F57BF5BFF6FFF77FF7F9E5F9F637F5F
      7F5FCE391F7C1F7C1F7C1F7CBD771B5BFF639F5BFF6FFF7BFF7BFF6B1C5B9F63
      7F63CE391F7C1F7C1F7C1F7CBD77BA56FF63BF5FFF67FF6FFF6FFF671C5B9F67
      7F63CE391F7C1F7C1F7C1F7CDE7B9D6FFF73DF779F5B9F5B9F5B7F57BF6B9F6B
      7F63CE391F7C1F7C1F7C1F7CDE7BFF7F784EFF7FFF67BF5F9F5B784EBF6FBF6B
      7F63CE391F7C1F7C1F7C1F7CDE7BFF7FFF7F3C633642BA527E6BDF73BF6F7F63
      FF5ECE391F7C1F7C1F7C1F7CFF7FFF7FFF7FFF7FFF7FFF7FFF7BDF77B335B335
      B335CE391F7C1F7C1F7C1F7CFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7BD4359B42
      57461F7C1F7C1F7C1F7C1F7CFF7FFF7FFF7FFF7FFF7FFF7FDE7BDF7BB335984A
      1F7C1F7C1F7C}
  end
  object Gauge1: TGauge
    Left = 8
    Top = 168
    Width = 665
    Height = 17
    Progress = 0
  end
  object Label1: TLabel
    Left = 16
    Top = 208
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object EditMC1: TEditMC
    Tag = 2
    Left = 8
    Top = 8
    Width = 633
    Height = 21
    TabOrder = 0
    Text = 'EditMC1'
  end
  object Memo1: TMemo
    Left = 8
    Top = 32
    Width = 665
    Height = 129
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 64
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Concertar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object ZQueryMC1: TZQueryMC
    Connection = ZConnection1
    CachedUpdates = False
    RequestLive = True
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted, usDeleted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 496
    Top = 64
  end
  object ZConnection1: TZConnection
    Protocol = 'firebird-1.5'
    HostName = 'localhost'
    Port = 0
    Database = 'D:\Programa'#231#227'o\NovaGera'#231#227'o\dados\MC.FBD'
    User = 'sysdba'
    Password = 'masterkey'
    AutoCommit = True
    ReadOnly = True
    TransactIsolationLevel = tiNone
    Connected = False
    SQLHourGlass = False
    Left = 456
    Top = 64
  end
end
