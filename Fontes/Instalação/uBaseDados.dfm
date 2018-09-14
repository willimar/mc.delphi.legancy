object _frmBaseDados: T_frmBaseDados
  Left = 246
  Top = 237
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 341
  ClientWidth = 593
  Color = clSkyBlue
  Constraints.MaxHeight = 375
  Constraints.MaxWidth = 601
  Constraints.MinHeight = 375
  Constraints.MinWidth = 601
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 593
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Shape1: TShape
      Left = 168
      Top = 0
      Width = 425
      Height = 29
      Align = alClient
      Brush.Color = clSkyBlue
      Pen.Color = clSkyBlue
    end
    object lblFechar: TLabelMC
      Left = 784
      Top = 3
      Width = 12
      Height = 23
      Cursor = crHandPoint
      Caption = 'X'
      Color = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 168
      Height = 29
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Shape4: TShape
        Left = 0
        Top = 0
        Width = 168
        Height = 29
        Align = alClient
        Brush.Color = clMoneyGreen
        Pen.Color = clMoneyGreen
      end
      object lblTitulo: TLabelMC
        Left = 0
        Top = 0
        Width = 168
        Height = 29
        Hint = 'MCHotel - Cadatro de Grupo de Hotel'
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Informa'#231#245'es'
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 296
    Width = 593
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clSkyBlue
    TabOrder = 1
    object Shape3: TShape
      Left = 0
      Top = 0
      Width = 593
      Height = 45
      Align = alClient
      Brush.Color = clSkyBlue
      Pen.Color = clSkyBlue
    end
    object ToolBar1: TToolBar
      Left = 427
      Top = 5
      Width = 162
      Height = 35
      Align = alNone
      ButtonHeight = 33
      Caption = 'ToolBar1'
      EdgeBorders = []
      TabOrder = 0
      Transparent = True
      object bitGravar: TSpeedButton
        Left = 0
        Top = 2
        Width = 81
        Height = 33
        Cursor = crHandPoint
        Hint = 'Grava as altera'#231#245'es para o grupo'
        Caption = '&Gravar'
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0005710AFFFF00FF009B5139FF7F1F00FF7F1F00FF7F1F00FF7F1F00FF7F1F
          00FF7F1F00FF7F1F00FF7F1F00FF7F1F00FF9B5139FFFF00FF00FF00FF000571
          0AFF05700AFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000674
          0CFF08780FFFFF00FF009B5139FF7F1F00FF7F1F00FF7F1F00FF7F1F00FF7F1F
          00FF7F1F00FF7F1F00FF7F1F00FF7F1F00FF9B5139FFFF00FF00FF00FF000B7C
          13FF158922FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF001083
          1BFF2CA945FF05710AFFFF00FF009B5139FF7F1F00FF9B5139FFFF00FF00056F
          09FFFF00FF009B5139FF7F1F00FF7F1F00FF9B5139FFFF00FF00FF00FF001082
          1CFF44C86AFF148520FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00056F
          09FF056F09FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000975
          10FF43C467FF3CBD5EFF036D07FFFF00FF009B5139FF9B5139FFFF00FF00056F
          09FF119C1FFF056F09FFFF00FF009B5139FF9B5139FFFF00FF00FF00FF00FF00
          FF0029A13FFF5DE98FFF31B04CFF056F09FF046F08FF046E07FF056D07FF056F
          09FF14AD24FF0C9518FF056F09FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0007710BFF41C264FF59E789FF40C763FF29AD42FF25AD3CFF28B040FF1DA7
          30FF14A924FF0EA51BFF0E9A1BFF056F09FFFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0008730DFF3BBB5BFF50DD7CFF47D86FFF3BCC5DFF2FC04BFF25B6
          3CFF1AAD2CFF10A51EFF0FA81DFF129920FF056F09FFFF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0005710AFF1B902CFF35B853FF39C459FF33C251FF2BBC
          45FF1FB134FF16AD27FF169726FF056F09FFFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0006720CFF097610FF097811FF056F
          09FF27BD41FF149121FF056F09FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00056F
          09FF148F22FF056F09FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00056F
          09FF056F09FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00056F
          09FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Visible = False
        OnClick = bitGravarClick
      end
      object bitCancelar: TSpeedButton
        Left = 81
        Top = 2
        Width = 81
        Height = 33
        Cursor = crHandPoint
        Hint = 'Cancela as altera'#231#245'es feitas para o grupo'
        Caption = '&Fechar'
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C266C056C4A291F7C1F7C1F7C1F7C1F7C1F7C1F7CEA5C
          465C1F7C1F7C1F7C1F7CAA70056CA73C1F7C1F7C1F7C1F7C1F7C1F7C2B5D056C
          1F7C1F7C1F7C1F7C1F7C1F7C2670056C4A291F7C1F7C1F7C1F7C6764056C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C056C056C8C311F7C1F7C6764056C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C056C0568AD354764056C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C2670056C056C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C256C056C056C6B2D1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C6764056C1F7C8F75056C292D1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C6764056C1F7C1F7C1F7C1F7C056CE83C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C4664056CEA5C1F7C1F7C1F7C1F7C1F7C056C6760
          1F7C1F7C1F7C1F7C1F7C256C056CEA5C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C056C67601F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C}
        OnClick = bitCancelarClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 168
    Height = 267
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 2
    object Shape2: TShape
      Left = 0
      Top = 0
      Width = 168
      Height = 267
      Align = alClient
      Brush.Color = clSkyBlue
      Pen.Color = clSkyBlue
    end
    object img: TImage
      Left = 32
      Top = 88
      Width = 105
      Height = 105
      Visible = False
    end
  end
  object pnlInfo: TPanel
    Left = 168
    Top = 29
    Width = 425
    Height = 267
    Align = alClient
    BevelOuter = bvLowered
    Color = clSkyBlue
    TabOrder = 3
    object LabelMC1: TLabelMC
      Left = 1
      Top = 1
      Width = 423
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Anote as informa'#231#245'es a seguir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPath: TLabelMC
      Left = 8
      Top = 48
      Width = 409
      Height = 33
      AutoSize = False
      Caption = 'lblPath'
      WordWrap = True
    end
    object LabelMC2: TLabelMC
      Left = 8
      Top = 88
      Width = 104
      Height = 13
      Caption = 'Nome do servidor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelMC3: TLabelMC
      Left = 8
      Top = 32
      Width = 222
      Height = 13
      Caption = 'Lugar da instala'#231#227'o da base de dados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNomeComputador: TLabelMC
      Left = 115
      Top = 88
      Width = 95
      Height = 13
      Caption = 'lblNomeComputador'
    end
    object LabelMC6: TLabelMC
      Left = 9
      Top = 104
      Width = 84
      Height = 13
      Caption = 'IP do servidor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblIp: TLabelMC
      Left = 96
      Top = 104
      Width = 19
      Height = 13
      Caption = 'lblIp'
    end
    object LabelMC4: TLabelMC
      Left = 9
      Top = 208
      Width = 406
      Height = 52
      AutoSize = False
      Caption = 
        'As informa'#231#245'es acima ser'#227'o muito importantes quando voc'#234' for faz' +
        'er a configura'#231#227'o da esta'#231#227'o de trabalho, por isso caso voc'#234' n'#227'o' +
        ' seja um usu'#225'rio avan'#231'ado por favor n'#227'o deiche de anotar as info' +
        'rma'#231#245'es acima.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
  end
  object opd: TSavePictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 72
    Top = 165
  end
end
