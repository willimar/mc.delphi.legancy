object Form1: TForm1
  Left = 164
  Top = 184
  Width = 321
  Height = 286
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
    Left = 8
    Top = 8
    Width = 44
    Height = 13
    Caption = 'protocolo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 20
    Height = 13
    Caption = 'host'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 57
    Height = 13
    Caption = 'enrecofisico'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 20
    Height = 13
    Caption = 'user'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 168
    Width = 29
    Height = 13
    Caption = 'senha'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 208
    Width = 24
    Height = 13
    Caption = 'porta'
    FocusControl = DBEdit6
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 300
    Height = 21
    DataField = 'protocolo'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 300
    Height = 21
    DataField = 'host'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 300
    Height = 21
    DataField = 'enrecofisico'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 144
    Width = 300
    Height = 21
    DataField = 'user'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 184
    Width = 300
    Height = 21
    DataField = 'senha'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 224
    Width = 300
    Height = 21
    DataField = 'porta'
    DataSource = DataSource1
    TabOrder = 5
  end
  object ClientDataSetMC1: TClientDataSetMC
    Active = True
    Aggregates = <>
    FileName = 'D:\Programa'#231#227'o\NovaGera'#231#227'o\MCLocadora\conex'#227'o.mc'
    Params = <>
    Left = 232
    Top = 64
    Data = {
      330100009619E0BD010000001800000006000100000003000000D2000970726F
      746F636F6C6F0100490000000100055749445448020002001E0004686F737402
      0049000000010005574944544802000200FF000C656E7265636F66697369636F
      020049000000010005574944544802000200FF00047573657201004900000001
      000557494454480200020032000573656E686101004900000001000557494454
      4802000200320005706F727461040001000000000001000A4348414E47455F4C
      4F4704008200030000000100000000000000040000000400000C666972656269
      72642D312E350900D8DBCFCDD8D4DBDFE02F00443A5C50726F6772616D61E7E3
      6F5C4E6F766147657261E7E36F5C6461646F735C4D434C6F6361646F72612E66
      626406DFE5DFD0CECD09D9CDDFE0D1DED7D1E500000000}
    object ClientDataSetMC1protocolo: TStringField
      FieldName = 'protocolo'
      Size = 30
    end
    object ClientDataSetMC1host: TStringField
      FieldName = 'host'
      Size = 255
    end
    object ClientDataSetMC1enrecofisico: TStringField
      FieldName = 'enrecofisico'
      Size = 255
    end
    object ClientDataSetMC1user: TStringField
      FieldName = 'user'
      Size = 50
    end
    object ClientDataSetMC1senha: TStringField
      FieldName = 'senha'
      Size = 50
    end
    object ClientDataSetMC1porta: TIntegerField
      FieldName = 'porta'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSetMC1
    Left = 208
    Top = 144
  end
end
