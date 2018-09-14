object _frmProduto: T_frmProduto
  Left = -4
  Top = -4
  Width = 808
  Height = 578
  BorderIcons = []
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 3
    object Shape1: TShape
      Left = 178
      Top = 0
      Width = 622
      Height = 29
      Align = alClient
      Brush.Color = clSkyBlue
      Pen.Color = clSkyBlue
    end
    object lblFechar: TLabel
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
      OnClick = lblFecharClick
      OnMouseMove = lblFecharMouseMove
      OnMouseLeave = lblFecharMouseLeave
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 178
      Height = 29
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel4'
      TabOrder = 0
      object Shape4: TShape
        Left = 0
        Top = 0
        Width = 178
        Height = 29
        Align = alClient
        Brush.Color = clMoneyGreen
        Pen.Color = clMoneyGreen
      end
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 178
        Height = 29
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Produtos'
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
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 177
    Height = 470
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    object Shape2: TShape
      Left = 0
      Top = 0
      Width = 177
      Height = 470
      Align = alClient
      Brush.Color = clSkyBlue
      Pen.Color = clSkyBlue
    end
    object Panel7: TPanel
      Left = 9
      Top = 330
      Width = 164
      Height = 101
      BevelOuter = bvNone
      Color = clSkyBlue
      TabOrder = 0
      object Bevel2: TBevel
        Left = 115
        Top = 11
        Width = 45
        Height = 2
      end
      object Bevel1: TBevel
        Left = 3
        Top = 11
        Width = 41
        Height = 2
      end
      object Label2: TLabel
        Left = 2
        Top = 3
        Width = 160
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '&Pesquizar'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Texto: TLabel
        Left = 2
        Top = 19
        Width = 27
        Height = 13
        Caption = 'Texto'
        Color = clSkyBlue
        ParentColor = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 2
        Top = 59
        Width = 33
        Height = 13
        Caption = 'Campo'
        Color = clSkyBlue
        ParentColor = False
        Transparent = True
      end
      object edtTexto: TEdit
        Left = 2
        Top = 33
        Width = 159
        Height = 21
        TabOrder = 0
        OnChange = edtTextoChange
      end
      object cboCampo: TComboBox
        Left = 2
        Top = 73
        Width = 159
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 1
        Text = 'Nome Fantasia'
        Items.Strings = (
          'C'#243'digo'
          'Nome Fantasia'
          'Grupo'
          'Telefone'
          'Ramal'
          'Respons'#225'vel'
          'Endere'#231'o'
          'Bairro'
          'Cidade'
          'UF'
          'Pais'
          'CEP')
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 499
    Width = 800
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clSkyBlue
    TabOrder = 2
    object Shape3: TShape
      Left = 0
      Top = 0
      Width = 800
      Height = 45
      Align = alClient
      Brush.Color = clSkyBlue
      Pen.Color = clSkyBlue
    end
    object ToolBar1: TToolBar
      Left = 232
      Top = 5
      Width = 516
      Height = 35
      Align = alNone
      ButtonHeight = 33
      Caption = 'ToolBar1'
      EdgeBorders = []
      TabOrder = 0
      Transparent = True
      object bitInserir: TSpeedButton
        Left = 0
        Top = 2
        Width = 81
        Height = 33
        Cursor = crHandPoint
        Caption = '&Novo'
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C00000000000000000000000000000000000000000000
          00008C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396718631863
          734E8C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396718631863
          734E8C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396718631863
          734E8C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396718631863
          734E8C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396718631863
          734E8C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396718631863
          734E8C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396718631863
          734E8C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396718631863
          734E8C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396718631863
          734E8C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396718631863
          734E8C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396718631863
          734E8C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396710421042
          10428C311F7C1F7C1F7C9C739C739C737B6F7B6F7B6F396739673967DE7B9C73
          00001F7C1F7C1F7C1F7C9C739C739C737B6F7B6F7B6F396739673967FF7F0000
          1F7C1F7C1F7C1F7C1F7C9C739C739C737B6F7B6F7B6F39673967396700001F7C
          1F7C1F7C1F7C}
        OnClick = bitInserirClick
      end
      object bitAlterar: TSpeedButton
        Left = 81
        Top = 2
        Width = 81
        Height = 33
        Cursor = crHandPoint
        Caption = '&Alterar'
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C84101F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C7B6FD65A84108C311F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C7B6FDE7BDE7BD65A8410E71C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C7B6FDE7BDE7BDE7BDE7BD65A8410
          E71CE71C1F7C1F7C1F7C1F7C1F7C1F7C7B6FDE7BDE7BDE7BDE7BDE7BDE7BD65A
          E71CE71C8C311F7C1F7C1F7C1F7C7B6FDE7BDE7BDE7BDE7BDE7BDE7B7B6F3967
          EF3D1F7C1F7C1F7C1F7C1F7C7B6FDE7BDE7BDE7BDE7BDE7B3967D65AB556B556
          EF3D000000001F7C1F7C7B6FDE7BDE7BDE7B0000AD35524AAD35EF3D00000000
          2D7E000000001F7C7B6FDE7BDE7BDE7BDE7BDE7B2D7E00002D7E2D7E0D7F0D7F
          0D7F00000000FF7FDE7BDE7BDE7BDE7BDE7BDE7B00000000000000000D7F517F
          0D7F000000001F7CFF7FDE7BDE7BDE7BDE7BDE7B0D7F00002D7E00002D7E0D7F
          0D7F1F7C1F7C1F7C1F7CFF7FDE7BDE7BDE7BDE7BDE7B517F00002D7E00002D7E
          1F7C1F7C1F7C1F7C1F7C1F7CFF7FDE7BDE7BDE7B3967DE7B517F00002D7E0000
          1F7C1F7C1F7C1F7C1F7C1F7C1F7CFF7FDE7BDE7BDE7B524A3967D65A00002D7E
          00001F7C1F7C1F7C1F7C1F7C1F7C1F7CFF7FFF7FFF7FFF7F524A1F7C1F7C0000
          000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          000000001F7C}
        OnClick = bitAlterarClick
      end
      object ToolButton1: TToolButton
        Left = 162
        Top = 2
        Width = 15
        Caption = 'ToolButton1'
        Style = tbsSeparator
      end
      object bitGravar: TSpeedButton
        Left = 177
        Top = 2
        Width = 81
        Height = 33
        Cursor = crHandPoint
        Caption = '&Gravar'
        Enabled = False
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C8C314B29C618C8188C311F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C8C312925B55639671142C618B035A6148C318C31
          1F7C1F7C1F7C1F7C8C31AE355A6B3967524AD65AAE3529258C31AE35CF39CE39
          E9188C311F7C524E7B6FD65AD65AD65AB556B556524A08218C31EF3D524A744E
          1D63954E1F7C9452F75ED65AB5569C739C735A6BF75E18633967524A29253446
          B956774E1F7CD65A38677B6F9B7339677B6F92310B21E9186C2939677B6F1B63
          524AFF7F1F7C734EF73D394636464A29AE353946752DDE7B5A6B6D29B37EC818
          D65A457D1F7C1042F83DF83DD039594A794E39465729F63D1D63B37E247D247D
          C07C247D1F7C1042F83D584A764EF43DF83D39465529794E3546B37E247D6F7E
          6F7E1F7C1F7C1042384635460B21744ED039794E55295A6B7B6FD65AB37E9931
          0A191F7C1F7C1042794ED039D039AD35AF35794E993157295629732D51299831
          0A191F7C1F7C3146524AD95AFB5EFB5EF95E794E32259C733867764E732D9931
          0A191F7C1F7C1F7C1F7CAD356B2D4A298C3199525329396718633967DE7B9831
          0A191F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBB5632257B6F19633867BD779831
          0A191F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CB556B556B556B5569831
          8F2D1F7C1F7C}
        OnClick = bitGravarClick
      end
      object bitCancelar: TSpeedButton
        Left = 258
        Top = 2
        Width = 81
        Height = 33
        Cursor = crHandPoint
        Caption = '&Cancelar'
        Enabled = False
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
      object bitExcluir: TSpeedButton
        Left = 339
        Top = 2
        Width = 81
        Height = 33
        Cursor = crHandPoint
        Caption = '&Excluir'
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7CDE6BBF639F5F9F5BBF63FF6B1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C3E47BF67BF5F7F577F57DF679F5BBF63DF671F7C1F7C
          1F7C1F7C1F7C1F7C1F7CDD36DF6B9F5B7F575F536002C8226002B963FF6B1F7C
          1F7C1F7C1F7C1F7C1F7CDE3ADE3ABF63BF635F536002600260026002DB6BFF6F
          1F7C1F7C1F7C1F7C1F43FE42FE42FE42FE423F4B600260027553FF77620A3F4F
          1F7C1F7C1F7C1F7C3F4F3F4B3F4B3F4B3F4BDF6FDF67FF77975FFF7FFF777F5B
          1F7C1F7C1F7C1F7C5F535F535F535F535F539F5B5143FF6BA61A6002C8227F57
          1F7C1F7C1F7C1F7C9F5B9F5B9F5B9F5B9F5B9F5BA61A8412C8226002C8229F5B
          BF631F7C1F7C1F7CDF67DF67DF67DF67DF67DF67DF67841260026002C822DF6B
          DF671F7C1F7C7F57FF6FFF6FFF6FFF6FFF6FFF6FFF6FFF6FFF73FF73B963FF7F
          FF6F1F7C1F7C7F57FF6FFF6FFF6FFF6FFF6FDF6B5F531E473E47BF5FFF6FFF6F
          FF6F1F7C1F7C1F7C7F639F5B7F637F631E47DD36DD36FE3AFE3EFE3E1F433F47
          FF6F1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C5E5BFE3E1F431F471F47
          3F4B1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C7F5B1F473F4B
          3F4F1F7C1F7C}
      end
      object ToolButton2: TToolButton
        Left = 420
        Top = 2
        Width = 15
        Caption = 'ToolButton2'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object bitImprimir: TSpeedButton
        Left = 435
        Top = 2
        Width = 81
        Height = 33
        Cursor = crHandPoint
        Caption = '&Imprimir'
        Flat = True
        Glyph.Data = {
          0A040000424D0A04000000000000420000002800000016000000160000000100
          100003000000C803000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          29256B2DC6184A296B2D903196524A298C311F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C8C310821524A186394522A259031574A5B6B9C7310428C31
          8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C2925AD35DE7BDE7BBD77F75EB556B556
          E71C6B2DAD353146734EBD77FF7F39676B2D1F7C1F7C1F7C1F7CEF3D1863FF7F
          DE7BBD77BD77D65AB556D65A31464A296B2DEF3D3146B55618639C73CE39CE39
          1F7C1F7C94529452FF7FDE7BBD77BD779C73B5569452B556D65AD65A734ECE39
          EF3D734E945231464A29CE391F7C1F7C94523967DE7BBD779452CE39524AB556
          3146AD35CE399452D65AF75EF75E1863945239676B2DCE391F7C1F7C94523967
          9C73B556524A39677B6FD65A734E9452734ECE39CE399452F75EF75E8E42AB3A
          6B2DCE391F7C1F7CEF3DCE399C739C737B6F5A6B5A6BBD779C73BD77BD771863
          D65AD65AB55610428C318C316B2DCE391F7C1F7CEF3D5A6B9C737B6F5A6B5A6B
          5A6BF75EF75EF75E5A6B9C739C7339671863D65AD65A94526B2DCE391F7C1F7C
          31467B6F7B6F5A6B5A6BBD775A6BDE7BDE7BBD77BD77BD777B6FD65AD65A3967
          9C737B6FCE391F7C1F7C1F7C1F7C31465A6B5A6B7B6FD65A734EDE7BDE7BBD77
          BD77BD77BD779C739C73F75EB5565A6B1F7C1F7C1F7C1F7C1F7C1F7C1F7C9452
          BD77BD77D65AD65AF75EB556734E734E94529C737B6F1863EF3D1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C734EFF7FFF7F7B6F1863D65AF75E18635A6B5A6BB556
          D65A31461F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CFC4E5F575F573F53
          1F53FF4E3F575E633A671F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C5F5B7F5B7F5B7F5B7F5B7F5B7F5BFC4E8E311F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C7F5F7F5F7F5F7F5F7F5F7F5F7F5F994A
          8E311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C564A9F679F67
          9F679F679F679F679F67D3391F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C564ABF6FBF6FBF6FBF6FBF6FBF6FBF6F8F311F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C564AFB5EDF77DF77DF77DF77DF77DF77
          DF771F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CF43DFF7B
          FF7BFF7BFF7BFF7BFF7BFF7B9E6F1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7CD95AD95AD95AD95AFA5ED95AD95AD95A1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
      end
    end
  end
  object Panel5: TPanel
    Left = 177
    Top = 29
    Width = 623
    Height = 470
    Align = alClient
    BevelOuter = bvLowered
    Caption = 'Panel5'
    TabOrder = 0
    object Shape5: TShape
      Left = 1
      Top = 1
      Width = 621
      Height = 468
      Align = alClient
      Brush.Color = clBtnFace
      Pen.Color = clBtnFace
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 621
      Height = 468
      ActivePage = tbsDetalhes
      Align = alClient
      MultiLine = True
      Style = tsFlatButtons
      TabOrder = 0
      object tbsGrid: TTabSheet
        Caption = 'Li&sta'
        object dbgDados: TDBGrid
          Left = 0
          Top = 0
          Width = 613
          Height = 437
          Align = alClient
          BorderStyle = bsNone
          Color = 14739951
          DataSource = dsrGrid
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgDadosDrawColumnCell
          OnTitleClick = dbgDadosTitleClick
        end
      end
      object tbsDetalhes: TTabSheet
        Caption = '&Detalhes'
        ImageIndex = 1
        OnShow = tbsDetalhesShow
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 613
          Height = 437
          ActivePage = tbsGerais
          Align = alClient
          TabOrder = 0
          object tbsGerais: TTabSheet
            Caption = 'Dados Gerais'
            object panEnd: TPanel
              Left = 0
              Top = 41
              Width = 605
              Height = 102
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object Bevel6: TBevel
                Left = 0
                Top = 100
                Width = 605
                Height = 2
                Align = alBottom
                Shape = bsBottomLine
              end
              object GroupBox1: TGroupBox
                Left = 8
                Top = 2
                Width = 76
                Height = 94
                Caption = ' Estoque '
                TabOrder = 0
                object Label9: TLabel
                  Left = 5
                  Top = 14
                  Width = 35
                  Height = 13
                  Caption = 'M'#237'nimo'
                end
                object Label11: TLabel
                  Left = 5
                  Top = 51
                  Width = 36
                  Height = 13
                  Caption = 'M'#225'ximo'
                end
                object dbevaloMinimo: TDBEdit
                  Left = 5
                  Top = 28
                  Width = 64
                  Height = 21
                  DataField = 'EstoqueMinimo'
                  DataSource = dsrProduto
                  TabOrder = 0
                  OnChange = dbCodigoChange
                end
                object dbeValorMaximo: TDBEdit
                  Left = 5
                  Top = 65
                  Width = 66
                  Height = 21
                  AutoSelect = False
                  DataField = 'EstoqueMaximo'
                  DataSource = dsrProduto
                  TabOrder = 1
                end
              end
              object GroupBox2: TGroupBox
                Left = 87
                Top = 2
                Width = 116
                Height = 94
                Caption = ' Valores '
                TabOrder = 1
                object Label3: TLabel
                  Left = 5
                  Top = 14
                  Width = 27
                  Height = 13
                  Caption = 'Custo'
                end
                object Label5: TLabel
                  Left = 5
                  Top = 51
                  Width = 31
                  Height = 13
                  Caption = 'Venda'
                end
                object dbeValorCusto: TDBEdit
                  Left = 5
                  Top = 28
                  Width = 105
                  Height = 21
                  DataField = 'ValorCusto'
                  DataSource = dsrProduto
                  TabOrder = 0
                  OnChange = dbCodigoChange
                end
                object dbeValorVenda: TDBEdit
                  Left = 5
                  Top = 65
                  Width = 105
                  Height = 21
                  AutoSelect = False
                  DataField = 'ValorVenda'
                  DataSource = dsrProduto
                  TabOrder = 1
                end
              end
              object Panel6: TPanel
                Left = 505
                Top = 4
                Width = 98
                Height = 91
                BevelOuter = bvLowered
                TabOrder = 2
                object pbCodBarra: TPaintBox
                  Left = 1
                  Top = 17
                  Width = 96
                  Height = 73
                  Align = alClient
                  OnPaint = pbCodBarraPaint
                end
                object Panel8: TPanel
                  Left = 1
                  Top = 1
                  Width = 96
                  Height = 16
                  Align = alTop
                  Caption = 'C'#243'digo de Barras'
                  TabOrder = 0
                end
              end
            end
            object pnlDoc: TPanel
              Left = 0
              Top = 143
              Width = 605
              Height = 43
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 2
              object Bevel4: TBevel
                Left = 0
                Top = 41
                Width = 605
                Height = 2
                Align = alBottom
                Shape = bsBottomLine
              end
              object lbGrupoEmpresa: TLabel
                Left = 8
                Top = 1
                Width = 84
                Height = 13
                Caption = 'Grupo do Produto'
                FocusControl = dblGrupoProduto
              end
              object bitGrupo: TSpeedButton
                Left = 201
                Top = 17
                Width = 18
                Height = 19
                Cursor = crHandPoint
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
                OnClick = bitGrupoClick
              end
              object SpeedButton1: TSpeedButton
                Left = 412
                Top = 17
                Width = 18
                Height = 19
                Cursor = crHandPoint
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
              object Label8: TLabel
                Left = 219
                Top = 3
                Width = 106
                Height = 13
                Caption = 'Sub Grupo do Produto'
                FocusControl = dblSubGrupoProduto
              end
              object dblGrupoProduto: TDBLookupComboBox
                Left = 8
                Top = 16
                Width = 193
                Height = 21
                DataField = 'CodGrupo'
                DataSource = dsrProduto
                KeyField = 'CodGrupo'
                ListField = 'Descricao'
                ListSource = dsrGrupoProduto
                TabOrder = 0
                OnClick = dbCidadeClick
                OnKeyDown = dblGrupoProdutoKeyDown
              end
              object dblSubGrupoProduto: TDBLookupComboBox
                Left = 219
                Top = 16
                Width = 193
                Height = 21
                DataField = 'CodSubGrupo'
                DataSource = dsrProduto
                KeyField = 'CodSubGrupo'
                ListField = 'Descricao'
                ListSource = dsrSubGrupoProduto
                TabOrder = 1
                OnClick = dbCidadeClick
                OnKeyDown = dblSubGrupoProdutoKeyDown
              end
            end
            object pnlDados: TPanel
              Left = 0
              Top = 0
              Width = 605
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object lbCodigo: TLabel
                Left = 8
                Top = -1
                Width = 33
                Height = 13
                Caption = 'C'#243'digo'
                FocusControl = dbCodigo
              end
              object lbNome: TLabel
                Left = 63
                Top = -1
                Width = 81
                Height = 13
                Caption = 'Codigo de Barras'
                FocusControl = dbeCodBarra
              end
              object Bevel3: TBevel
                Left = 0
                Top = 39
                Width = 605
                Height = 2
                Align = alBottom
                Shape = bsBottomLine
              end
              object lbApelido: TLabel
                Left = 195
                Top = -1
                Width = 83
                Height = 13
                Caption = 'Nome do Produto'
              end
              object Label15: TLabel
                Left = 420
                Top = 1
                Width = 52
                Height = 13
                Caption = 'Refer'#234'ncia'
              end
              object dbCodigo: TDBEdit
                Left = 8
                Top = 14
                Width = 50
                Height = 21
                AutoSize = False
                DataField = 'CodProduto'
                DataSource = dsrProduto
                TabOrder = 0
                OnChange = dbCodigoChange
              end
              object dbeCodBarra: TDBEdit
                Left = 63
                Top = 14
                Width = 130
                Height = 21
                AutoSize = False
                DataField = 'CodBarra'
                DataSource = dsrProduto
                MaxLength = 13
                TabOrder = 1
                OnChange = dbCodigoChange
                OnExit = dbeCodBarraExit
              end
              object dbeRazSocial: TDBEdit
                Left = 196
                Top = 14
                Width = 220
                Height = 21
                DataField = 'Descricao'
                DataSource = dsrProduto
                TabOrder = 2
                OnChange = dbCodigoChange
                OnExit = dbeRazSocialExit
              end
              object dbeReferencia: TDBEdit
                Left = 419
                Top = 14
                Width = 182
                Height = 21
                DataField = 'Referencia'
                DataSource = dsrProduto
                TabOrder = 3
                OnChange = dbCodigoChange
              end
            end
            object DBMemo1: TDBMemo
              Left = 8
              Top = 192
              Width = 593
              Height = 113
              DataField = 'Obs'
              DataSource = dsrProduto
              ScrollBars = ssVertical
              TabOrder = 3
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Dados do Estoque'
            ImageIndex = 1
            object DBGrid1: TDBGrid
              Left = 0
              Top = 44
              Width = 605
              Height = 365
              Align = alClient
              BorderStyle = bsNone
              Color = 14739951
              DataSource = dsrProdutoEstoque
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = dbgDadosDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'RazSocial'
                  Title.Caption = 'Nome da Empresa'
                  Width = 473
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Qtd'
                  Width = 91
                  Visible = True
                end>
            end
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 605
              Height = 44
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object edtRazSoc: TEdit
                Left = 0
                Top = 20
                Width = 473
                Height = 21
                TabOrder = 0
                OnChange = edtRazSocChange
              end
              object Panel10: TPanel
                Left = 0
                Top = 0
                Width = 605
                Height = 16
                Align = alTop
                BevelOuter = bvLowered
                TabOrder = 1
                object DBText2: TDBText
                  Left = 377
                  Top = 1
                  Width = 225
                  Height = 14
                  DataField = 'Referencia'
                  DataSource = dsrProduto
                end
                object DBText1: TDBText
                  Left = 4
                  Top = 1
                  Width = 357
                  Height = 14
                  DataField = 'Descricao'
                  DataSource = dsrProduto
                end
                object Bevel5: TBevel
                  Left = 368
                  Top = 1
                  Width = 2
                  Height = 15
                end
              end
            end
          end
        end
      end
    end
  end
  object tbProduto: TZQuery
    Connection = DM.Connection
    BeforeOpen = tbProdutoBeforeOpen
    RequestLive = True
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbproduto')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [utModified, utInserted, utUnmodified]
    Left = 112
    Top = 85
  end
  object dsrProduto: TDataSource
    AutoEdit = False
    DataSet = tbProduto
    OnDataChange = dsrProdutoDataChange
    Left = 112
    Top = 117
  end
  object dsrGrid: TDataSource
    AutoEdit = False
    DataSet = cdsGrid
    OnDataChange = dsrGridDataChange
    Left = 81
    Top = 309
  end
  object cdsGrid: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'SELECT * FROM tbEmpresa'
    Params = <>
    ProviderName = 'dspGrid'
    Left = 112
    Top = 309
  end
  object dspGrid: TDataSetProvider
    DataSet = qryGrid
    Options = [poAllowCommandText]
    Left = 144
    Top = 309
  end
  object qryGrid: TZReadOnlyQuery
    Connection = DM.Connection
    Active = True
    SQL.Strings = (
      'SELECT'
      
        #9'CodProduto "C'#243'digo", p.Descricao "Nome", Referencia "Refer'#234'ncia' +
        '", '
      
        #9'CodBarra "C'#243'digo de Barras", gp.Descricao "Grupo", sgp.Descrica' +
        'o "Subgrupo"'
      'FROM tbProduto p'
      'LEFT JOIN tbgrupoproduto gp ON gp.CodGrupo=p.CodGrupo'
      'LEFT JOIN tbsubgrupoproduto sgp ON sgp.CodSubGrupo=p.CodSubGrupo')
    ParamCheck = True
    Params = <>
    Left = 144
    Top = 269
  end
  object tbGrupoProduto: TZQuery
    Connection = DM.Connection
    RequestLive = True
    CachedUpdates = False
    AfterInsert = tbProdutoEstoqueAfterInsert
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbgrupoproduto')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [utModified, utInserted, utUnmodified]
    Left = 112
    Top = 149
  end
  object dsrGrupoProduto: TDataSource
    AutoEdit = False
    DataSet = tbGrupoProduto
    Left = 112
    Top = 181
  end
  object tbSubGrupoProduto: TZQuery
    Connection = DM.Connection
    RequestLive = True
    CachedUpdates = False
    AfterInsert = tbProdutoEstoqueAfterInsert
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbsubgrupoproduto')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [utModified, utInserted, utUnmodified]
    Left = 144
    Top = 149
  end
  object dsrSubGrupoProduto: TDataSource
    AutoEdit = False
    DataSet = tbSubGrupoProduto
    Left = 144
    Top = 181
  end
  object qryProdutoEstoque: TZReadOnlyQuery
    Connection = DM.Connection
    Active = True
    SQL.Strings = (
      'SELECT'
      #9'RazSocial, Qtd'
      'FROM tbprodutoestoque pe '
      'LEFT JOIN tbproduto p ON p.CodProduto=pe.CodProduto'
      'LEFT JOIN tbempresa e ON e.CodEmpresa=pe.CodEmpresa')
    ParamCheck = True
    Params = <>
    Left = 96
    Top = 229
  end
  object dspEstoque: TDataSetProvider
    DataSet = qryProdutoEstoque
    Options = [poAllowCommandText]
    Left = 96
    Top = 269
  end
  object cdsProdutoEstoque: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'SELECT * FROM tbEmpresa'
    Params = <>
    ProviderName = 'dspEstoque'
    Left = 64
    Top = 269
    object cdsProdutoEstoqueRazSocial: TStringField
      FieldName = 'RazSocial'
      Required = True
      Size = 45
    end
    object cdsProdutoEstoqueQtd: TIntegerField
      FieldName = 'Qtd'
      Required = True
    end
  end
  object dsrProdutoEstoque: TDataSource
    DataSet = cdsProdutoEstoque
    Left = 33
    Top = 269
  end
end
