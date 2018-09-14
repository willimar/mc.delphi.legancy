inherited _frmCadGridGrupoUsuario: T_frmCadGridGrupoUsuario
  Left = 2
  Top = 29
  Height = 541
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanelMC
    inherited Panel4: TPanelMC
      inherited lblTitulo: TLabelMC
        Caption = 'Grupos de usu'#225'rio'
        Font.Height = -19
      end
    end
  end
  inherited Panel2: TPanelMC
    Height = 433
    inherited Shape2: TShape
      Height = 433
    end
    inherited pnlFiltro: TPanelMC
      Top = 261
    end
  end
  inherited Panel3: TPanelMC
    Top = 462
  end
  inherited Panel5: TPanelMC
    Height = 433
    inherited Shape5: TShape
      Height = 431
    end
    inherited pgcCadastro: TPageControl
      Height = 431
      ActivePage = tbsDetalhes
      inherited tbsGrid: TTabSheet
        inherited grd: TDBGridMC
          Height = 400
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Width = 576
              Visible = True
            end>
        end
      end
      inherited tbsDetalhes: TTabSheet
        OnShow = tbsDetalhesShow
        inherited Panel8: TPanelMC
          Height = 400
          object LabelMC1: TLabelMC
            Left = 4
            Top = 5
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object LabelMC2: TLabelMC
            Left = 92
            Top = 5
            Width = 28
            Height = 13
            Caption = 'Nome'
          end
          object txtCodigo: TDBEditMC
            Tag = 2
            Left = 4
            Top = 21
            Width = 86
            Height = 21
            DataField = 'CODGRUPOUSUARIO'
            DataSource = dsrCad
            TabOrder = 0
            Requerido = True
            TabSheet = tbsDetalhes
            Rotulo = LabelMC1
          end
          object txtNome: TDBEditMC
            Tag = 2
            Left = 92
            Top = 21
            Width = 501
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'NOME'
            DataSource = dsrCad
            TabOrder = 1
            Requerido = True
            TabSheet = tbsDetalhes
            Rotulo = LabelMC2
          end
          object dgcPermissoes: TPageControl
            Left = 1
            Top = 48
            Width = 603
            Height = 351
            ActivePage = tabInterface
            Align = alBottom
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 2
            object tabInterface: TTabSheet
              Caption = 'Interfaces'
              object PanelMC1: TPanelMC
                Left = 0
                Top = 0
                Width = 595
                Height = 323
                Align = alClient
                BevelOuter = bvLowered
                TabOrder = 0
                object PanelMC2: TPanelMC
                  Left = 1
                  Top = 1
                  Width = 593
                  Height = 24
                  Align = alTop
                  Caption = 'Permiss'#245'es'
                  TabOrder = 0
                end
                object dbgInterfaces: TDBGridMC
                  Tag = 2
                  Left = 1
                  Top = 25
                  Width = 593
                  Height = 297
                  Align = alClient
                  BorderStyle = bsNone
                  Color = 14739951
                  DataSource = dsrInterface
                  Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  OnCellClick = dbgInterfacesCellClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'CAPTION'
                      Width = 329
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'SOMENTELEITURA'
                      Width = 80
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'INSERIR'
                      Width = 35
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'ALTERAR'
                      Width = 38
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'IMPRIMIR'
                      Width = 44
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'EXCLUIR'
                      Width = 37
                      Visible = True
                    end>
                end
              end
            end
            object tabImpressoes: TTabSheet
              Caption = 'Impress'#245'es'
              ImageIndex = 1
              object PanelMC3: TPanelMC
                Left = 0
                Top = 0
                Width = 593
                Height = 323
                Align = alClient
                BevelOuter = bvLowered
                TabOrder = 0
                object PanelMC4: TPanelMC
                  Left = 1
                  Top = 1
                  Width = 591
                  Height = 24
                  Align = alTop
                  Caption = 'Permiss'#245'es'
                  TabOrder = 0
                end
                object dbgImpressao: TDBGridMC
                  Tag = 2
                  Left = 1
                  Top = 25
                  Width = 591
                  Height = 297
                  Align = alClient
                  BorderStyle = bsNone
                  Color = 14739951
                  DataSource = dsrImpressao
                  Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  OnCellClick = dbgImpressaoCellClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'CAPTION'
                      Width = 527
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'IMPRIMIR'
                      Width = 44
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
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODGRUPOUSUARIO'
    object cdsGridCODGRUPOUSUARIO: TIntegerField
      FieldName = 'CODGRUPOUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object cdsGridNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 35
    end
  end
  inherited qryGrid: TZQueryMC
    Connection = nil
    SQL.Strings = (
      'SELECT * FROM TBGRUPOUSUARIO')
    Conexao = DM.db
    object qryGridCODGRUPOUSUARIO: TIntegerField
      FieldName = 'CODGRUPOUSUARIO'
      Required = True
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
  end
  inherited qryCad: TZQueryMC
    Connection = nil
    BeforeEdit = qryCadBeforeEdit
    AfterEdit = qryCadAfterEdit
    AfterCancel = qryCadAfterCancel
    SQL.Strings = (
      'SELECT * FROM TBGRUPOUSUARIO WHERE CODGRUPOUSUARIO=:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    TableName = 'TBGRUPOUSUARIO'
    FieldKey = 'CODGRUPOUSUARIO'
    Conexao = DM.db
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object qryCadCODGRUPOUSUARIO: TIntegerField
      FieldName = 'CODGRUPOUSUARIO'
      Required = True
    end
    object qryCadNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
  end
  object cdsInterface: TClientDataSetMC
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInterface'
    Left = 38
    Top = 181
    object cdsInterfaceCODGRUPOUSUARIO: TIntegerField
      FieldName = 'CODGRUPOUSUARIO'
      Required = True
      Visible = False
    end
    object cdsInterfaceCAPTION: TStringField
      DisplayLabel = 'R'#243'tulo'
      FieldName = 'CAPTION'
      Required = True
      Size = 50
    end
    object cdsInterfaceNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Visible = False
      Size = 50
    end
    object cdsInterfaceSOMENTELEITURA: TStringField
      DisplayLabel = 'Somente leitura'
      FieldName = 'SOMENTELEITURA'
      Required = True
      Size = 3
    end
    object cdsInterfaceINSERIR: TStringField
      DisplayLabel = 'Inserir'
      FieldName = 'INSERIR'
      Required = True
      Size = 3
    end
    object cdsInterfaceALTERAR: TStringField
      DisplayLabel = 'Alterar'
      FieldName = 'ALTERAR'
      Required = True
      Size = 3
    end
    object cdsInterfaceIMPRIMIR: TStringField
      DisplayLabel = 'Imprimir'
      FieldName = 'IMPRIMIR'
      Required = True
      Size = 3
    end
    object cdsInterfaceEXCLUIR: TStringField
      DisplayLabel = 'Excluir'
      FieldName = 'EXCLUIR'
      Required = True
      Size = 3
    end
  end
  object dsrInterface: TDatasourceMC
    DataSet = cdsInterface
    Left = 9
    Top = 181
  end
  object dspInterface: TDataSetProviderMC
    DataSet = qryInterface
    ResolveToDataSet = True
    Options = [poAllowMultiRecordUpdates, poAutoRefresh]
    Left = 67
    Top = 181
  end
  object qryInterface: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBGRUPOINTERFACE WHERE CODGRUPOUSUARIO=:CODIGO')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 96
    Top = 181
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryInterfaceCODGRUPOUSUARIO: TIntegerField
      FieldName = 'CODGRUPOUSUARIO'
      Required = True
    end
    object qryInterfaceCAPTION: TStringField
      FieldName = 'CAPTION'
      Required = True
      Size = 50
    end
    object qryInterfaceNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object qryInterfaceSOMENTELEITURA: TStringField
      FieldName = 'SOMENTELEITURA'
      Required = True
      Size = 3
    end
    object qryInterfaceINSERIR: TStringField
      FieldName = 'INSERIR'
      Required = True
      Size = 3
    end
    object qryInterfaceALTERAR: TStringField
      FieldName = 'ALTERAR'
      Required = True
      Size = 3
    end
    object qryInterfaceIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      Required = True
      Size = 3
    end
    object qryInterfaceEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      Required = True
      Size = 3
    end
  end
  object qryImpressao: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBGRUPOIMPRESSAO WHERE CODGRUPOUSUARIO=:CODIGO')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 96
    Top = 213
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryImpressaoCODGRUPOUSUARIO: TIntegerField
      FieldName = 'CODGRUPOUSUARIO'
      Required = True
    end
    object qryImpressaoCAPTION: TStringField
      FieldName = 'CAPTION'
      Required = True
      Size = 50
    end
    object qryImpressaoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object qryImpressaoIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      Required = True
      Size = 3
    end
  end
  object dspImpressoa: TDataSetProviderMC
    DataSet = qryImpressao
    ResolveToDataSet = True
    Options = [poAllowMultiRecordUpdates, poAutoRefresh]
    Left = 67
    Top = 213
  end
  object cdsImpressao: TClientDataSetMC
    Aggregates = <>
    Params = <>
    ProviderName = 'dspImpressoa'
    Left = 38
    Top = 213
    object cdsImpressaoCODGRUPOUSUARIO: TIntegerField
      FieldName = 'CODGRUPOUSUARIO'
      Required = True
    end
    object cdsImpressaoCAPTION: TStringField
      DisplayLabel = 'R'#243'tulo'
      FieldName = 'CAPTION'
      Required = True
      Size = 50
    end
    object cdsImpressaoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object cdsImpressaoIMPRIMIR: TStringField
      DisplayLabel = 'Imprimir'
      FieldName = 'IMPRIMIR'
      Required = True
      Size = 3
    end
  end
  object dsrImpressao: TDatasourceMC
    DataSet = cdsImpressao
    Left = 9
    Top = 213
  end
end
