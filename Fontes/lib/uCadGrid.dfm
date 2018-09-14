object _frmCadGrid: T_frmCadGrid
  Left = 200
  Top = 196
  Width = 800
  Height = 533
  BorderIcons = []
  Color = clSkyBlue
  Constraints.MaxHeight = 542
  Constraints.MaxWidth = 807
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanelMC
    Left = 0
    Top = 0
    Width = 792
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 3
    DesignSize = (
      792
      29)
    object Shape1: TShape
      Left = 178
      Top = 0
      Width = 614
      Height = 29
      Align = alClient
      Brush.Color = clSkyBlue
      Pen.Color = clSkyBlue
    end
    object lblFechar: TLabelMC
      Left = 780
      Top = 3
      Width = 12
      Height = 23
      Cursor = crHandPoint
      Hint = 'Fecha a janela'
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'X'
      Color = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      OnClick = lblFecharClick
      Botao = tlBotao
    end
    object Panel4: TPanelMC
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
      object lblTitulo: TLabelMC
        Left = 0
        Top = 0
        Width = 178
        Height = 29
        Hint = 'MCHotel - Cadatro de Hospedes'
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'lblTitulo'
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
  object Panel2: TPanelMC
    Left = 0
    Top = 29
    Width = 177
    Height = 425
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    DesignSize = (
      177
      425)
    object Shape2: TShape
      Left = 0
      Top = 0
      Width = 177
      Height = 425
      Align = alClient
      Brush.Color = clSkyBlue
      Pen.Color = clSkyBlue
    end
    object pnlFiltro: TPanelMC
      Left = 9
      Top = 260
      Width = 164
      Height = 101
      Anchors = [akLeft, akBottom]
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
      object Label2: TLabelMC
        Left = 2
        Top = 4
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
      object Texto: TLabelMC
        Left = 2
        Top = 19
        Width = 27
        Height = 13
        Caption = 'Texto'
        Color = clSkyBlue
        ParentColor = False
        Transparent = True
      end
      object Label4: TLabelMC
        Left = 2
        Top = 59
        Width = 33
        Height = 13
        Caption = 'Campo'
        Color = clSkyBlue
        ParentColor = False
        Transparent = True
      end
      object btnFiltro: TSpeedButtonMC
        Left = 139
        Top = 34
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7CBD779A6B9A6B9A6B9A6F9A6B9B6F9B6B9A6B9A6B9A6B9A6B
          9A6BBD771F7CDD77D042C209C209C30DC30DE30DE30DE2090106E105E105E001
          C001D042BD77BA6BE20924124516461A4516451665166412830E820A81066002
          4002C0019A6BBA6B230E4516671E671E671E871E5453FF7FA412A30EC20AA106
          6002E0019A6BBB6F2412671E8822892688228822FF7FFF7FFF7FC412C30EC106
          8106E0019A6BBB6F4516882289268A2A89268822A822FF7FFF7FFF7FA30EA20A
          820A01069A6BBB6F461A8926AA2A8A2AA92689268822A71EFF7FFF7FFF7FA30E
          830EE2099A6BBB6F6822AA2AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          6412030E9A6FBB6F6822AB2EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          6412030E9A6FBB6F8A2ACC32AC32AB2E8A2A89266822661AFF7FFF7FFF7F6412
          4516E4119B6BBB6F8A2ACD36CD36AB2E8A2A89266822FF7FFF7FFF7F45166516
          4516E4119B6FBC73AB2EEF3ECE3ACC32AB2E8A2AFF7FFF7FFF7F461A661A461A
          461AE4119B6FBC73CD3611471043CE3ACD36AC32765BFF7F892689268822671E
          461AE30D9B6FDC73EF3E334F1147EF3EEE3ACD36AC32CC32AB2EAA2A89268822
          461AE30D9A6BDD77765BCE3ACD36AB2E8A2A8A2A8926892688226822671E661A
          2412F146BD771F7CDD77DC73BC73BB6FBB6FBB6FBB6FBB6FBB6FBB6FBB6FBB6F
          BB6FDD771F7C}
        OnClick = btnFiltroClick
      end
      object edtTexto: TEdit
        Left = 2
        Top = 33
        Width = 135
        Height = 21
        Hint = 'Texto a ser localizado'
        TabOrder = 0
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
  object Panel3: TPanelMC
    Left = 0
    Top = 454
    Width = 792
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clSkyBlue
    TabOrder = 2
    DesignSize = (
      792
      45)
    object Shape3: TShape
      Left = 0
      Top = 0
      Width = 792
      Height = 45
      Align = alClient
      Brush.Color = clSkyBlue
      Pen.Color = clSkyBlue
    end
    object tbPadrao: TToolBar
      Left = 272
      Top = 5
      Width = 516
      Height = 35
      Align = alNone
      Anchors = [akTop, akRight]
      ButtonHeight = 33
      Caption = 'tbPadrao'
      EdgeBorders = []
      TabOrder = 0
      Transparent = True
      object bitInserir: TSpeedButton
        Left = 0
        Top = 2
        Width = 81
        Height = 33
        Cursor = crHandPoint
        Hint = 'Novo registro'
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
        Hint = 'Alterar registro'
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
        Hint = 'Gravar registro'
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
        Hint = 'Cancelar modifica'#231#245'es'
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
        Hint = 'Excluir registro'
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
        OnClick = bitExcluirClick
      end
      object ToolButton2: TToolButton
        Left = 420
        Top = 2
        Width = 15
        Caption = #39
        ImageIndex = 0
        Style = tbsSeparator
      end
      object bitImprimir: TSpeedButton
        Left = 435
        Top = 2
        Width = 81
        Height = 33
        Cursor = crHandPoint
        Hint = 'Impress'#227'o'
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
  object Panel5: TPanelMC
    Left = 177
    Top = 29
    Width = 615
    Height = 425
    Align = alClient
    BevelOuter = bvLowered
    Caption = 'Panel5'
    TabOrder = 0
    object Shape5: TShape
      Left = 1
      Top = 1
      Width = 613
      Height = 423
      Align = alClient
      Brush.Color = clBtnFace
      Pen.Color = clBtnFace
    end
    object pgcCadastro: TPageControl
      Left = 1
      Top = 1
      Width = 613
      Height = 423
      ActivePage = tbsGrid
      Align = alClient
      MultiLine = True
      Style = tsFlatButtons
      TabOrder = 0
      object tbsGrid: TTabSheet
        Caption = 'Li&sta'
        object grd: TDBGridMC
          Tag = 2
          Left = 0
          Top = 0
          Width = 605
          Height = 392
          HelpType = htKeyword
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
          OnDblClick = grdDblClick
        end
      end
      object tbsDetalhes: TTabSheet
        Caption = '&Detalhes'
        ImageIndex = 1
        object Panel8: TPanelMC
          Left = 0
          Top = 0
          Width = 605
          Height = 392
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
        end
      end
    end
  end
  object cdsGrid: TClientDataSetMC
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrid'
    FieldKey = 'CODDOCUMENTO'
    Left = 64
    Top = 45
  end
  object qryGrid: TZQueryMC
    Tag = 3
    CachedUpdates = False
    RequestLive = False
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 120
    Top = 45
  end
  object dspGrid: TDataSetProviderMC
    DataSet = qryGrid
    ResolveToDataSet = True
    Options = [poAllowMultiRecordUpdates, poAutoRefresh]
    Left = 92
    Top = 45
  end
  object dsrGrid: TDatasourceMC
    DataSet = cdsGrid
    OnDataChange = dsrGridDataChange
    Left = 36
    Top = 45
  end
  object qryCad: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 84
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object dsrCad: TDatasourceMC
    AutoEdit = False
    DataSet = qryCad
    Left = 84
    Top = 104
  end
end
