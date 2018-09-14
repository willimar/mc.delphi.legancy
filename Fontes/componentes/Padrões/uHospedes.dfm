object _frmHospede: T_frmHospede
  Left = -4
  Top = -4
  Width = 808
  Height = 580
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
      Hint = 'Fecha a janela'
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
        Hint = 'MCHotel - Cadatro de Hospedes'
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Hospede'
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
    Height = 472
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    object Shape2: TShape
      Left = 0
      Top = 0
      Width = 177
      Height = 472
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
        Hint = 'Texto a ser localizado'
        TabOrder = 0
        OnChange = edtTextoChange
      end
      object cboCampo: TComboBox
        Left = 2
        Top = 73
        Width = 159
        Height = 21
        Hint = 'Localisa o texto no campo indicado'
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 1
        Text = 'Nome '
        Items.Strings = (
          'C'#243'digo'
          'Nome '
          'Estado Sivil'
          'Naturalidade'
          'Sexo'
          'Data Nascimento'
          'Admiss'#227'o'
          'Sal'#225'rio'
          'CTPS'
          'PISPASEP'
          'Demiss'#227'o'
          'Ano Chegada'
          'Deficiente')
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 501
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
        Hint = 'Insere um novo hospede'
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
        Hint = 'Altera os dados do hospede selecionado'
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
        Hint = 'Grava as altera'#231#245'es feitas para o hospede'
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
        Hint = 'Cancela as altera'#231#245'es feitas para o hospede'
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
        Hint = 'Exclui o hospede selecionado'
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
        Hint = 'Imprime hospede'
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
    Height = 472
    Align = alClient
    BevelOuter = bvLowered
    Caption = 'Panel5'
    TabOrder = 0
    object Shape5: TShape
      Left = 1
      Top = 1
      Width = 621
      Height = 470
      Align = alClient
      Brush.Color = clBtnFace
      Pen.Color = clBtnFace
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 621
      Height = 470
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
          Width = 601
          Height = 427
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
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 613
          Height = 42
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            Left = 14
            Top = 2
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object Label5: TLabel
            Left = 227
            Top = 2
            Width = 28
            Height = 13
            Caption = 'Nome'
          end
          object Label10: TLabel
            Left = 90
            Top = 2
            Width = 52
            Height = 13
            Caption = 'CPF/CNPJ'
            FocusControl = dbeCpf
          end
          object dbeCodigo: TDBEdit
            Left = 14
            Top = 17
            Width = 73
            Height = 21
            Hint = 'C'#243'digo de identifica'#231#227'o do hospede'
            DataField = 'CodHospede'
            DataSource = dsrHospede
            TabOrder = 0
            OnChange = dbeCodigoChange
          end
          object dbeNome: TDBEdit
            Left = 227
            Top = 17
            Width = 294
            Height = 21
            Hint = 'Nome do Hospede'
            DataField = 'Nome'
            DataSource = dsrPessoa
            TabOrder = 2
            OnChange = dbeCodigoChange
          end
          object dbeCpf: TDBEdit
            Left = 90
            Top = 17
            Width = 135
            Height = 21
            Hint = 'CPF ou CNPJ do hospede'
            DataField = 'CPFCNPJ'
            DataSource = dsrPessoa
            TabOrder = 1
            OnChange = dbeCodigoChange
            OnExit = dbeCpfExit
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 42
          Width = 613
          Height = 397
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 1
          object pgcFuncionario: TPageControl
            Left = 1
            Top = 1
            Width = 611
            Height = 395
            ActivePage = tbsDependente
            Align = alClient
            MultiLine = True
            TabOrder = 0
            object tbsDadosGerais: TTabSheet
              Caption = 'Dados Gerais'
              object pnlDoc: TPanel
                Left = 0
                Top = 46
                Width = 603
                Height = 87
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object Bevel4: TBevel
                  Left = 0
                  Top = 85
                  Width = 603
                  Height = 2
                  Align = alBottom
                  Shape = bsBottomLine
                end
                object Label7: TLabel
                  Left = 11
                  Top = 2
                  Width = 60
                  Height = 13
                  Caption = 'Naturalidade'
                end
                object bitCidade: TSpeedButton
                  Left = 148
                  Top = 17
                  Width = 18
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
                object Label9: TLabel
                  Left = 387
                  Top = 1
                  Width = 55
                  Height = 13
                  Caption = 'Estado Civil'
                end
                object Label15: TLabel
                  Left = 497
                  Top = 2
                  Width = 24
                  Height = 13
                  Caption = 'Sexo'
                end
                object edtUf: TEdit
                  Left = 167
                  Top = 15
                  Width = 33
                  Height = 21
                  Hint = 'Estado da cidade'
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 1
                end
                object edtPais: TEdit
                  Left = 201
                  Top = 15
                  Width = 183
                  Height = 21
                  Hint = 'Pa'#237's da cidade'
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 2
                end
                object dblEstadoCivil: TDBLookupComboBox
                  Left = 387
                  Top = 15
                  Width = 107
                  Height = 21
                  Hint = 'Estado de civil do hospede'
                  DataField = 'CodEstadoCivil'
                  DataSource = dsrHospede
                  KeyField = 'CodItemPessoa'
                  ListField = 'Descricao'
                  ListSource = dsrEstadoCivil
                  TabOrder = 3
                  OnClick = dblEstadoCivilClick
                end
                object dblSexo: TDBComboBox
                  Left = 496
                  Top = 14
                  Width = 97
                  Height = 21
                  Hint = 'Sexo do hospede'
                  Style = csDropDownList
                  DataField = 'Sexo'
                  DataSource = dsrHospede
                  ItemHeight = 13
                  Items.Strings = (
                    'Masculino'
                    'Feminino')
                  TabOrder = 4
                  OnChange = dblSexoChange
                end
                object chkDeficiente: TDBCheckBox
                  Left = 12
                  Top = 41
                  Width = 72
                  Height = 17
                  Hint = 'Indica que o hospede porta algum tipo de deficiencia'
                  Caption = 'Deficiente?'
                  DataField = 'Deficiente'
                  DataSource = dsrHospede
                  TabOrder = 5
                  ValueChecked = 'Sim'
                  ValueUnchecked = 'N'#227'o'
                  OnClick = chkDeficienteClick
                end
                object dblCidade: TDBLookupComboBox
                  Left = 11
                  Top = 16
                  Width = 136
                  Height = 21
                  Hint = 'Cidade onde o hospede nasceu'
                  DataField = 'CodNaturalidade'
                  DataSource = dsrHospede
                  KeyField = 'CodCidade'
                  ListField = 'Nome'
                  ListSource = dsrCidade
                  TabOrder = 0
                  OnClick = dblCidadeClick
                end
                object dbeTipoDeficiencia: TDBEdit
                  Left = 12
                  Top = 59
                  Width = 373
                  Height = 21
                  Hint = 'Descreve a deficiencia do hospede'
                  TabStop = False
                  Color = 14743551
                  DataField = 'TipoDeficiencia'
                  DataSource = dsrHospede
                  ReadOnly = True
                  TabOrder = 6
                  OnChange = dbeCodigoChange
                end
              end
              object Panel11: TPanel
                Left = 0
                Top = 0
                Width = 603
                Height = 46
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                object Bevel3: TBevel
                  Left = 0
                  Top = 44
                  Width = 603
                  Height = 2
                  Align = alBottom
                  Shape = bsBottomLine
                end
                object Label13: TLabel
                  Left = 219
                  Top = 3
                  Width = 16
                  Height = 13
                  Caption = 'RG'
                  FocusControl = dbeRg
                end
                object Label6: TLabel
                  Left = 14
                  Top = 2
                  Width = 35
                  Height = 13
                  Caption = 'Apelido'
                end
                object lblCPF: TLabel
                  Left = 360
                  Top = 1
                  Width = 97
                  Height = 13
                  Caption = 'Data de Nascimento'
                  FocusControl = dbeNascimento
                end
                object dbeRg: TDBEdit
                  Left = 219
                  Top = 17
                  Width = 139
                  Height = 21
                  Hint = 'Registro geral do hospede'
                  DataField = 'RG'
                  DataSource = dsrPessoa
                  TabOrder = 1
                end
                object dbeApelido: TDBEdit
                  Left = 12
                  Top = 17
                  Width = 203
                  Height = 21
                  Hint = 'Apelido no qual o hospede gosta de ser chamado'
                  DataField = 'Apelido'
                  DataSource = dsrHospede
                  TabOrder = 0
                  OnChange = dbeCodigoChange
                end
                object dbeNascimento: TDBEdit
                  Left = 360
                  Top = 17
                  Width = 103
                  Height = 21
                  Hint = 'Data de nascimento do hospede'
                  DataField = 'DataNascimento'
                  DataSource = dsrHospede
                  MaxLength = 10
                  TabOrder = 2
                  OnChange = dbeCodigoChange
                end
              end
              object Panel12: TPanel
                Left = 208
                Top = 259
                Width = 393
                Height = 63
                BevelOuter = bvLowered
                TabOrder = 2
                object Label18: TLabel
                  Left = 4
                  Top = 20
                  Width = 42
                  Height = 13
                  Caption = 'Cadastro'
                  FocusControl = DBEdit11
                end
                object Label19: TLabel
                  Left = 102
                  Top = 20
                  Width = 55
                  Height = 13
                  Caption = 'Atualiza'#231#227'o'
                  FocusControl = DBEdit12
                end
                object Label20: TLabel
                  Left = 200
                  Top = 20
                  Width = 36
                  Height = 13
                  Caption = 'Usu'#225'rio'
                  FocusControl = DBEdit13
                end
                object Panel13: TPanel
                  Left = 1
                  Top = 1
                  Width = 391
                  Height = 16
                  Align = alTop
                  Caption = 'Dados Cadastrais'
                  TabOrder = 0
                end
                object DBEdit11: TDBEdit
                  Left = 4
                  Top = 35
                  Width = 95
                  Height = 21
                  Hint = 'Data que o hospede foi cadastrado'
                  TabStop = False
                  Color = 14743551
                  DataField = 'DatCadastro'
                  DataSource = dsrPessoa
                  MaxLength = 10
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit12: TDBEdit
                  Left = 102
                  Top = 35
                  Width = 95
                  Height = 21
                  Hint = 'Data que foi feita a '#250'ltima atualiza'#231#227'o do registro'
                  TabStop = False
                  Color = 14743551
                  DataField = 'DatAtualizacao'
                  DataSource = dsrPessoa
                  MaxLength = 10
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit13: TDBEdit
                  Left = 200
                  Top = 35
                  Width = 185
                  Height = 21
                  Hint = 'Nome do usu'#225'rio que fez a '#250'ltima atualiza'#231#227'o'
                  TabStop = False
                  Color = 14743551
                  DataField = 'DescUser'
                  DataSource = dsrPessoa
                  ReadOnly = True
                  TabOrder = 3
                end
              end
            end
            object tbsEndereco: TTabSheet
              Caption = 'Endere'#231'o e Telefone'
              ImageIndex = 2
              OnShow = tbsEnderecoShow
              object panEnd: TPanel
                Left = 0
                Top = 0
                Width = 603
                Height = 161
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object Bevel8: TBevel
                  Left = 0
                  Top = 159
                  Width = 603
                  Height = 2
                  Align = alBottom
                  Shape = bsBottomLine
                end
                object Label36: TLabel
                  Left = 8
                  Top = 1
                  Width = 46
                  Height = 13
                  Caption = 'Endere'#231'o'
                end
                object Label37: TLabel
                  Left = 402
                  Top = 1
                  Width = 64
                  Height = 13
                  Caption = 'Complemento'
                  FocusControl = dbeComplemento
                end
                object Label38: TLabel
                  Left = 203
                  Top = 1
                  Width = 27
                  Height = 13
                  Caption = 'Bairro'
                end
                object Label39: TLabel
                  Left = 9
                  Top = 39
                  Width = 33
                  Height = 13
                  Caption = 'Cidade'
                end
                object Label40: TLabel
                  Left = 426
                  Top = 39
                  Width = 21
                  Height = 13
                  Caption = 'CEP'
                end
                object SpeedButton10: TSpeedButton
                  Left = 155
                  Top = 55
                  Width = 18
                  Height = 19
                  Cursor = crHandPoint
                  Hint = 'Localiisa e insere nova cidade'
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
                object Label41: TLabel
                  Left = 9
                  Top = 80
                  Width = 42
                  Height = 13
                  Caption = 'Telefone'
                end
                object Label42: TLabel
                  Left = 274
                  Top = 80
                  Width = 17
                  Height = 13
                  Caption = 'Fax'
                end
                object Label43: TLabel
                  Left = 141
                  Top = 80
                  Width = 32
                  Height = 13
                  Caption = 'Celular'
                end
                object Label44: TLabel
                  Left = 8
                  Top = 120
                  Width = 25
                  Height = 13
                  Caption = 'Email'
                end
                object Label45: TLabel
                  Left = 309
                  Top = 120
                  Width = 23
                  Height = 13
                  Caption = 'Web'
                end
                object dbeRua: TDBEdit
                  Left = 8
                  Top = 15
                  Width = 192
                  Height = 21
                  Hint = 'Endere'#231'o onde reside o hospede'
                  DataField = 'Endereco'
                  DataSource = dsrPessoa
                  TabOrder = 0
                  OnChange = dbeCodigoChange
                end
                object dbeComplemento: TDBEdit
                  Left = 402
                  Top = 15
                  Width = 185
                  Height = 21
                  Hint = 'Complemento para localisar a residencia do hospede'
                  DataField = 'Complemento'
                  DataSource = dsrPessoa
                  TabOrder = 2
                end
                object dbeBairro: TDBEdit
                  Left = 203
                  Top = 15
                  Width = 194
                  Height = 21
                  Hint = 'Bairro da residencia do hospede'
                  AutoSelect = False
                  DataField = 'Bairro'
                  DataSource = dsrPessoa
                  TabOrder = 1
                end
                object dbeCep: TDBEdit
                  Left = 425
                  Top = 54
                  Width = 111
                  Height = 21
                  Hint = 'CEP da residencia do hospede'
                  DataField = 'Cep'
                  DataSource = dsrPessoa
                  MaxLength = 10
                  TabOrder = 6
                end
                object dblCidade2: TDBLookupComboBox
                  Left = 9
                  Top = 54
                  Width = 145
                  Height = 21
                  Hint = 'Cidade onde reside o hospede'
                  DataField = 'CodCidadeResidencia'
                  DataSource = dsrPessoa
                  KeyField = 'CodCidade'
                  ListField = 'Nome'
                  ListSource = dsrCidade
                  TabOrder = 3
                  OnClick = dblCidade2Click
                end
                object edtUf2: TEdit
                  Left = 174
                  Top = 54
                  Width = 33
                  Height = 21
                  Hint = 'Estado da cidade'
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 4
                end
                object edtPais2: TEdit
                  Left = 211
                  Top = 54
                  Width = 211
                  Height = 21
                  Hint = 'Pa'#237's da cidade'
                  TabStop = False
                  Color = 14743551
                  ReadOnly = True
                  TabOrder = 5
                end
                object dbeTel: TDBEdit
                  Left = 9
                  Top = 95
                  Width = 128
                  Height = 21
                  Hint = 'Telefone para contado com o hospede'
                  DataField = 'Tel1'
                  DataSource = dsrPessoa
                  MaxLength = 16
                  TabOrder = 7
                end
                object dbeFax: TDBEdit
                  Left = 274
                  Top = 95
                  Width = 128
                  Height = 21
                  Hint = 'N'#250'mero do fax do hospede'
                  DataField = 'Tel3'
                  DataSource = dsrPessoa
                  MaxLength = 16
                  TabOrder = 9
                end
                object dbeCel: TDBEdit
                  Left = 141
                  Top = 95
                  Width = 128
                  Height = 21
                  Hint = 'N'#250'mero do celular do hospede'
                  DataField = 'Tel2'
                  DataSource = dsrPessoa
                  MaxLength = 16
                  TabOrder = 8
                end
                object dbeEmail: TDBEdit
                  Left = 8
                  Top = 134
                  Width = 297
                  Height = 21
                  Hint = 'Email do hospede'
                  CharCase = ecLowerCase
                  DataField = 'Email'
                  DataSource = dsrPessoa
                  TabOrder = 10
                end
                object dbeWeb: TDBEdit
                  Left = 309
                  Top = 134
                  Width = 275
                  Height = 21
                  Hint = 'Pagina da internet do hospede'
                  CharCase = ecLowerCase
                  DataField = 'Web'
                  DataSource = dsrPessoa
                  TabOrder = 11
                end
              end
              object Panel19: TPanel
                Left = 0
                Top = 161
                Width = 603
                Height = 96
                Hint = 'Observa'#231#245'es sobre o hospede'
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                object dbmObs: TDBMemo
                  Left = 0
                  Top = 0
                  Width = 603
                  Height = 96
                  Align = alClient
                  DataField = 'Obs'
                  DataSource = dsrHospede
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
              end
            end
            object tbsDependente: TTabSheet
              Caption = 'Hist'#243'rico'
              ImageIndex = 5
              object Panel20: TPanel
                Left = 8
                Top = 8
                Width = 586
                Height = 307
                BevelOuter = bvLowered
                TabOrder = 0
                object Panel21: TPanel
                  Left = 1
                  Top = 1
                  Width = 584
                  Height = 18
                  Align = alTop
                  Caption = 'Hist'#243'rico de Hospedagens'
                  TabOrder = 0
                end
                object DBGrid1: TDBGrid
                  Left = 1
                  Top = 19
                  Width = 584
                  Height = 287
                  Hint = 'Hist'#243'rico das estadias do hospede'
                  Align = alClient
                  BorderStyle = bsNone
                  Color = 14739951
                  DataSource = dsrDependentes
                  Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  OnDrawColumnCell = dbgDadosDrawColumnCell
                  OnTitleClick = dbgDadosTitleClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Apartamento'
                      Width = 66
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Descri'#231#227'o do Quarto'
                      Width = 187
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Perfil do Quarto'
                      Width = 184
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Periodo'
                      Width = 123
                      Visible = True
                    end>
                end
              end
            end
          end
        end
      end
    end
  end
  object tbPessoa: TZQuery
    Connection = DM.Connection
    OnCalcFields = tbPessoaCalcFields
    RequestLive = True
    CachedUpdates = False
    AfterInsert = tbPessoaAfterInsert
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbpessoa')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [utModified, utInserted, utUnmodified]
    Left = 8
    Top = 37
    object tbPessoaCodPessoa: TIntegerField
      FieldName = 'CodPessoa'
      Required = True
    end
    object tbPessoaCodEmpresa: TIntegerField
      FieldName = 'CodEmpresa'
    end
    object tbPessoaCodCidadeResidencia: TIntegerField
      FieldName = 'CodCidadeResidencia'
    end
    object tbPessoaCodUsuario: TIntegerField
      FieldName = 'CodUsuario'
      Required = True
    end
    object tbPessoaEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 45
    end
    object tbPessoaComplemento: TStringField
      FieldName = 'Complemento'
      Size = 35
    end
    object tbPessoaBairro: TStringField
      FieldName = 'Bairro'
      Size = 35
    end
    object tbPessoaTel1: TStringField
      FieldName = 'Tel1'
      EditMask = '(99) 9999 - 9999;0;_'
      Size = 11
    end
    object tbPessoaTel2: TStringField
      FieldName = 'Tel2'
      EditMask = '(99) 9999 - 9999;0;_'
      Size = 11
    end
    object tbPessoaTel3: TStringField
      FieldName = 'Tel3'
      EditMask = '(99) 9999 - 9999;0;_'
      Size = 11
    end
    object tbPessoaCep: TStringField
      FieldName = 'Cep'
      EditMask = '99.999-999;0;_'
      Size = 10
    end
    object tbPessoaNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 45
    end
    object tbPessoaTipoPessoa: TStringField
      FieldName = 'TipoPessoa'
      Required = True
      Size = 1
    end
    object tbPessoaEmail: TStringField
      FieldName = 'Email'
      Size = 70
    end
    object tbPessoaWeb: TStringField
      FieldName = 'Web'
      Size = 70
    end
    object tbPessoaDatCadastro: TDateField
      FieldName = 'DatCadastro'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object tbPessoaDatAtualizacao: TDateField
      FieldName = 'DatAtualizacao'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object tbPessoaRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object tbPessoaUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'Usuario'
      LookupDataSet = tbUsuario
      LookupKeyFields = 'CodUsuario'
      LookupResultField = 'Login'
      KeyFields = 'CodUsuario'
      Size = 35
      Lookup = True
    end
    object tbPessoaDescUser: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescUser'
      Size = 35
      Calculated = True
    end
    object tbPessoaCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Required = True
      Size = 18
    end
  end
  object dsrPessoa: TDataSource
    AutoEdit = False
    DataSet = tbPessoa
    Left = 8
    Top = 69
  end
  object dsrGrid: TDataSource
    AutoEdit = False
    DataSet = cdsGrid
    OnDataChange = dsrGridDataChange
    Left = 81
    Top = 501
  end
  object cdsGrid: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'SELECT * FROM tbEmpresa'
    Params = <>
    ProviderName = 'dspGrid'
    Left = 112
    Top = 501
  end
  object dspGrid: TDataSetProvider
    DataSet = qryGrid
    Options = [poAllowCommandText]
    Left = 144
    Top = 501
  end
  object qryGrid: TZReadOnlyQuery
    Connection = DM.Connection
    Active = True
    SQL.Strings = (
      'SELECT'
      
        #9'CodHospede "C'#243'digo", p.Nome "Nome", Apelido "Apelido", Sexo "Se' +
        'xo",'
      
        #9'DataNascimento "Nascimento", cn.Nome "Naturalidade", cn.CodUf "' +
        'UF",'
      #9'pn.Nome "Pa'#237's"'
      'FROM tbhospede h'
      'LEFT JOIN tbpessoa p ON p.CodPessoa=h.CodPessoa'
      'LEFT JOIN tbcidade cn ON cn.CodCidade=h.CodNaturalidade'
      'LEFT JOIN tbuf ufn ON ufn.CodUf=cn.CodUf'
      'LEFT JOIN tbpais pn ON pn.CodPais=ufn.CodPais')
    ParamCheck = True
    Params = <>
    Left = 144
    Top = 461
  end
  object dsrHospede: TDataSource
    AutoEdit = False
    DataSet = tbHospede
    Left = 40
    Top = 69
  end
  object tbHospede: TZQuery
    Connection = DM.Connection
    RequestLive = True
    CachedUpdates = False
    AfterInsert = tbHospedeAfterInsert
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbhospede')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [utModified, utInserted, utUnmodified]
    Left = 40
    Top = 37
    object tbHospedeCodHospede: TIntegerField
      FieldName = 'CodHospede'
      Required = True
    end
    object tbHospedeApelido: TStringField
      FieldName = 'Apelido'
      Size = 35
    end
    object tbHospedeDataNascimento: TDateField
      FieldName = 'DataNascimento'
      EditMask = '99/99/9999;1;_'
    end
    object tbHospedeCodNaturalidade: TIntegerField
      FieldName = 'CodNaturalidade'
      Required = True
    end
    object tbHospedeSexo: TStringField
      FieldName = 'Sexo'
      Required = True
      Size = 9
    end
    object tbHospedeDeficiente: TStringField
      FieldName = 'Deficiente'
      Required = True
      Size = 3
    end
    object tbHospedeTipoDeficiencia: TStringField
      FieldName = 'TipoDeficiencia'
      Size = 75
    end
    object tbHospedeObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tbHospedeCodEstadoCivil: TIntegerField
      FieldName = 'CodEstadoCivil'
      Required = True
    end
    object tbHospedeCodPessoa: TIntegerField
      FieldName = 'CodPessoa'
      Required = True
    end
  end
  object tbCidade: TZQuery
    Connection = DM.Connection
    RequestLive = True
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'SELECT'
      
        '  CodCidade, ci.CodUf, ci.Nome, ci.Naturalidade, pais.Nome "Pais' +
        '"'
      'FROM tbcidade ci'
      'LEFT JOIN tbUF uf ON uf.CodUf=ci.CodUf'
      'LEFT JOIN tbpais pais ON pais.CodPais=uf.CodPais')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [utModified, utInserted, utUnmodified]
    Left = 104
    Top = 37
    object tbCidadeCodCidade: TIntegerField
      FieldName = 'CodCidade'
      Required = True
    end
    object tbCidadeCodUf: TStringField
      FieldName = 'CodUf'
      Required = True
      Size = 2
    end
    object tbCidadeNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 45
    end
    object tbCidadeNaturalidade: TStringField
      FieldName = 'Naturalidade'
      Size = 35
    end
    object tbCidadePais: TStringField
      FieldName = 'Pais'
      ReadOnly = True
      Size = 45
    end
  end
  object dsrCidade: TDataSource
    AutoEdit = False
    DataSet = tbCidade
    Left = 104
    Top = 69
  end
  object dsrDependentes: TDataSource
    AutoEdit = False
    DataSet = cdsDependentes
    Left = 9
    Top = 469
  end
  object cdsDependentes: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'SELECT * FROM tbEmpresa'
    Params = <>
    ProviderName = 'dspDependente'
    OnCalcFields = cdsDependentesCalcFields
    Left = 41
    Top = 469
    object cdsDependentesApartamento: TStringField
      FieldName = 'Apartamento'
      Required = True
      Size = 15
    end
    object cdsDependentesDescriodoQuarto: TStringField
      FieldName = 'Descri'#231#227'o do Quarto'
      ReadOnly = True
      Size = 35
    end
    object cdsDependentesPerfildoQuarto: TStringField
      FieldName = 'Perfil do Quarto'
      ReadOnly = True
      Size = 35
    end
    object cdsDependentesDataHospedagemChegada: TDateField
      FieldName = 'DataHospedagemChegada'
      Required = True
    end
    object cdsDependentesDataHospedagemSaida: TDateField
      FieldName = 'DataHospedagemSaida'
      Required = True
    end
    object cdsDependentesPeriodo: TStringField
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'Periodo'
      Calculated = True
    end
  end
  object dspDependente: TDataSetProvider
    DataSet = qryDependentes
    Options = [poAllowCommandText]
    Left = 72
    Top = 469
  end
  object dsrEstadoCivil: TDataSource
    AutoEdit = False
    DataSet = tbEstadoCivil
    Left = 136
    Top = 69
  end
  object tbEstadoCivil: TZQuery
    Connection = DM.Connection
    RequestLive = True
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbitempessoa WHERE Tipo=12')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [utModified, utInserted, utUnmodified]
    Left = 136
    Top = 37
  end
  object tbUsuario: TZQuery
    Connection = DM.Connection
    RequestLive = True
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbusuario')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [utModified, utInserted, utUnmodified]
    Left = 72
    Top = 37
    object tbUsuarioCodUsuario: TIntegerField
      FieldName = 'CodUsuario'
      Required = True
    end
    object tbUsuarioCodGrupoUsuario: TIntegerField
      FieldName = 'CodGrupoUsuario'
      Required = True
    end
    object tbUsuarioCodPessoa: TIntegerField
      FieldName = 'CodPessoa'
      Required = True
    end
    object tbUsuarioLogin: TStringField
      FieldName = 'Login'
      Required = True
      Size = 16
    end
    object tbUsuarioSenha: TStringField
      FieldName = 'Senha'
      Required = True
      Size = 16
    end
    object tbUsuarioUltimaSenha: TStringField
      FieldName = 'UltimaSenha'
      Size = 16
    end
    object tbUsuarioDatExpiracao: TDateField
      FieldName = 'DatExpiracao'
    end
    object tbUsuarioAtivo: TStringField
      FieldName = 'Ativo'
      Required = True
      Size = 3
    end
  end
  object dsrUsuario: TDataSource
    AutoEdit = False
    DataSet = tbUsuario
    Left = 72
    Top = 69
  end
  object qryDependentes: TZQuery
    Connection = DM.Connection
    RequestLive = True
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'SELECT'
      #9'Apartamento "Apartamento", q.Descricao "Descri'#231#227'o do Quarto", '
      #9'pq.Descricao "Perfil do Quarto", '
      #9'hh.DataHospedagemChegada, hh.DataHospedagemSaida'
      'FROM tbhistoricohospedagem hh'
      'LEFT JOIN tbquarto q ON q.CodQuarto=hh.CodQuarto'
      
        'LEFT JOIN tbperfilquarto pq ON pq.CodPerfilQuarto=q.CodPerfilQua' +
        'rto')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [utModified, utInserted, utUnmodified]
    Left = 72
    Top = 429
  end
end
