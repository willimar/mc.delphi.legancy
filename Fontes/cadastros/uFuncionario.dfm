inherited _frmCadGridFuncionario: T_frmCadGridFuncionario
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanelMC
    inherited Panel4: TPanelMC
      inherited lblTitulo: TLabelMC
        Caption = 'Funcion'#225'rios'
      end
    end
  end
  inherited Panel2: TPanelMC
    inherited pnlFiltro: TPanelMC
      Top = 262
    end
  end
  inherited Panel5: TPanelMC
    inherited pgcCadastro: TPageControl
      inherited tbsDetalhes: TTabSheet
        inherited Panel8: TPanelMC
          inherited pgcDetalhes: TPageControl
            ActivePage = tabGerais
            inherited tabEndereco: TTabSheet
              inherited GroupBox2: TGroupBox
                Height = 141
                inherited mObs: TDBRichEditMC
                  Height = 124
                end
              end
            end
            inherited tabListaDependente: TTabSheet
              inherited DBGridMC1: TDBGridMC
                Height = 279
              end
            end
            inherited tabObs: TTabSheet
              inherited fraObservacao: TfraCadGrid
                Height = 309
                inherited DBGridMC1: TDBGridMC
                  Height = 282
                end
                inherited qryCad: TZQueryMC
                  Connection = nil
                  Conexao = DM.db
                end
              end
            end
            object tabGrupoUsuario: TTabSheet
              Caption = 'Dados de usu'#225'rio'
              ImageIndex = 7
              OnShow = tabGrupoUsuarioShow
              DesignSize = (
                602
                309)
              object LabelMC15: TLabelMC
                Left = 156
                Top = 3
                Width = 31
                Height = 13
                Caption = 'Senha'
              end
              object LabelMC22: TLabelMC
                Left = 310
                Top = 2
                Width = 49
                Height = 13
                Caption = 'Expirar em'
                Visible = False
              end
              object LabelMC25: TLabelMC
                Left = 5
                Top = 2
                Width = 36
                Height = 13
                Caption = 'Usu'#225'rio'
              end
              object DBEditMC1: TDBEditMC
                Tag = 2
                Left = 4
                Top = 17
                Width = 149
                Height = 21
                DataField = 'LOGIN'
                DataSource = dsrUsuario
                TabOrder = 0
                Requerido = True
                TabSheet = tabGrupoUsuario
                Rotulo = LabelMC25
              end
              object DBEditMC2: TDBEditMC
                Tag = 2
                Left = 156
                Top = 17
                Width = 149
                Height = 21
                DataField = 'SENHA'
                DataSource = dsrUsuario
                PasswordChar = '*'
                TabOrder = 1
                Requerido = True
                TabSheet = tabGrupoUsuario
                Rotulo = LabelMC15
              end
              object DBEditMC4: TDBEditMC
                Tag = 2
                Left = 309
                Top = 17
                Width = 121
                Height = 21
                DataField = 'DATAEXPIRACAO'
                DataSource = dsrUsuario
                TabOrder = 2
                Visible = False
                Requerido = True
                TabSheet = tabGrupoUsuario
                Rotulo = LabelMC22
              end
              object DBCheckBoxMC2: TDBCheckBoxMC
                Tag = 2
                Left = 436
                Top = 18
                Width = 85
                Height = 17
                Caption = 'Usu'#225'rio ativo'
                DataField = 'ATIVO'
                DataSource = dsrUsuario
                TabOrder = 3
                ValueChecked = 'Sim'
                ValueUnchecked = 'N'#227'o'
              end
              object dgGrupoUsuario: TDuploGridMC
                Left = 4
                Top = 42
                Width = 597
                Height = 263
                Anchors = [akLeft, akTop, akRight, akBottom]
                TabOrder = 4
                DataSetOrigem = qryOrigem
                DataSetDestino = qryDestino
                GridOrigem.Tag = 2
                GridOrigem.Left = 1
                GridOrigem.Top = 1
                GridOrigem.Width = 286
                GridOrigem.Height = 261
                GridOrigem.Align = alLeft
                GridOrigem.BorderStyle = bsNone
                GridOrigem.Color = 14739951
                GridOrigem.DataSource.DataSet.Aggregates = <>
                GridOrigem.DataSource.DataSet.Params = <>
                GridOrigem.DataSource.DataSet.ProviderName = 'dspOrigem'
                GridOrigem.Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                GridOrigem.TabOrder = 0
                GridOrigem.TitleFont.Charset = DEFAULT_CHARSET
                GridOrigem.TitleFont.Color = clWindowText
                GridOrigem.TitleFont.Height = -11
                GridOrigem.TitleFont.Name = 'MS Sans Serif'
                GridOrigem.TitleFont.Style = []
                GridDestino.Tag = 2
                GridDestino.Left = 310
                GridDestino.Top = 1
                GridDestino.Width = 286
                GridDestino.Height = 261
                GridDestino.Align = alRight
                GridDestino.BorderStyle = bsNone
                GridDestino.Color = 14739951
                GridDestino.DataSource.DataSet.Aggregates = <>
                GridDestino.DataSource.DataSet.IndexFieldNames = 'CODGRUPOUSUARIO'
                GridDestino.DataSource.DataSet.Params = <>
                GridDestino.DataSource.DataSet.ProviderName = 'dspDestino'
                GridDestino.Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                GridDestino.TabOrder = 1
                GridDestino.TitleFont.Charset = DEFAULT_CHARSET
                GridDestino.TitleFont.Color = clWindowText
                GridDestino.TitleFont.Height = -11
                GridDestino.TitleFont.Name = 'MS Sans Serif'
                GridDestino.TitleFont.Style = []
                BtnLeft = 288
                BtnTop = 93
                LarguraGridOrigem = 286
                LarguraGridDestino = 286
                KeyField = 'CODUSUARIO'
                IndexKey = 'CODGRUPOUSUARIO'
                LoookupField = 'Nome'
                DataSetLookup = qryGrupoUsuario
                KeyFieldDestino = 'CODUSUARIO'
                DataSetControle = qryUsuario
              end
            end
          end
        end
      end
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT'
      '    P.CODPESSOA, C.CODCLIENTE, NOME, EMAIL, CPFCNPJ'
      'FROM TBCLIENTE C, TBPESSOA P'
      'WHERE C.CODPESSOA=P.CODPESSOA'
      'AND FUNCIONARIO='#39'Sim'#39)
  end
  inherited qryCliente: TZQueryMC
    AfterPost = qryClienteAfterPost
    BeforeCancel = qryClienteBeforeCancel
  end
  object qryUsuario: TZQueryMC
    Tag = 1
    CachedUpdates = False
    AfterInsert = qryUsuarioAfterInsert
    AfterEdit = qryUsuarioAfterEdit
    BeforePost = qryUsuarioBeforePost
    AfterPost = qryUsuarioAfterPost
    OnNewRecord = qryUsuarioNewRecord
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBUSUARIO WHERE CODPESSOA=:CODPESSOA')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODPESSOA'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    TableName = 'TBUSUARIO'
    FieldKey = 'CODUSUARIO'
    Conexao = DM.db
    Left = 54
    Top = 157
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODPESSOA'
        ParamType = ptUnknown
      end>
    object qryUsuarioCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUsuarioCODPESSOA: TIntegerField
      Tag = 1
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUsuarioLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Required = True
      Size = 16
    end
    object qryUsuarioSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Required = True
      Size = 16
    end
    object qryUsuarioULTIMASENHA: TStringField
      DisplayLabel = #218'ltima senha'
      FieldName = 'ULTIMASENHA'
      Required = True
      Size = 16
    end
    object qryUsuarioDATAEXPIRACAO: TDateField
      DisplayLabel = 'Data de expira'#231#227'o'
      FieldName = 'DATAEXPIRACAO'
      Required = True
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '99/99/9999;1;_'
    end
    object qryUsuarioATIVO: TStringField
      DisplayLabel = 'Usu'#225'rio ativo'
      FieldName = 'ATIVO'
      Required = True
      Size = 3
    end
  end
  object dsrUsuario: TDatasourceMC
    DataSet = qryUsuario
    Left = 54
    Top = 185
  end
  object qryDestino: TZQueryMC
    Tag = 3
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'SELECT CODUSUARIO, CODGRUPOUSUARIO, '#39#39' AS NOME FROM TBUSUARIOGRU' +
        'PO'
      'WHERE CODUSUARIO=:CODUSUARIO')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODUSUARIO'
        ParamType = ptInput
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 632
    Top = 301
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODUSUARIO'
        ParamType = ptInput
      end>
    object qryDestinoCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Visible = False
    end
    object qryDestinoCODGRUPOUSUARIO: TIntegerField
      FieldName = 'CODGRUPOUSUARIO'
      Visible = False
    end
    object qryDestinoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  object qryOrigem: TZQueryMC
    Tag = 3
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'SELECT 0 AS CODUSUARIO, CODGRUPOUSUARIO, NOME FROM TBGRUPOUSUARI' +
        'O'
      
        'WHERE CODGRUPOUSUARIO NOT IN (SELECT CODGRUPOUSUARIO FROM TBUSUA' +
        'RIOGRUPO WHERE CODUSUARIO=:CODUSUARIO)')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODUSUARIO'
        ParamType = ptInput
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 343
    Top = 301
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODUSUARIO'
        ParamType = ptInput
      end>
    object qryOrigemCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ReadOnly = True
      Visible = False
    end
    object qryOrigemCODGRUPOUSUARIO: TIntegerField
      FieldName = 'CODGRUPOUSUARIO'
      Visible = False
    end
    object qryOrigemNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 35
    end
  end
  object qryGrupoUsuario: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBGRUPOUSUARIO')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 479
    Top = 205
    object qryGrupoUsuarioCODGRUPOUSUARIO: TIntegerField
      FieldName = 'CODGRUPOUSUARIO'
      Required = True
    end
    object qryGrupoUsuarioNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
  end
end
