inherited _frmCadGridCidade: T_frmCadGridCidade
  Top = 133
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'Cidades'
      end
    end
  end
  inherited Panel5: TPanel
    inherited Panel6: TPanel
      inherited Label5: TLabelMC
        Left = 91
        Width = 28
        Caption = 'Nome'
      end
      object LabelMC1: TLabelMC [3]
        Left = 300
        Top = 5
        Width = 14
        Height = 13
        Caption = 'UF'
      end
      inherited dbeCodigo: TDBEditMC
        DataField = 'CODCIDADE'
        DataSource = dsrCad
        Requerido = True
      end
      inherited dbeDescricao: TDBEditMC
        Left = 91
        Width = 207
        DataField = 'NOME'
        DataSource = dsrCad
        Requerido = True
      end
      object DBLookupComboBoxMC1: TDBLookupComboBoxMC
        Tag = 2
        Left = 300
        Top = 18
        Width = 120
        Height = 21
        DataField = 'CODUF'
        DataSource = dsrCad
        KeyField = 'CODUF'
        ListField = 'NOME'
        ListSource = dsrUF
        NullValueKey = 46
        TabOrder = 2
        Requerido = True
        Rotulo = LabelMC1
      end
    end
    inherited grd: TDBGridMC
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 358
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODUF'
          Width = 37
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODCIDADE'
    object cdsGridCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Required = True
    end
    object cdsGridNOME: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
    object cdsGridCODUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
  end
  inherited qryGrid: TZQueryMC
    Connection = nil
    SQL.Strings = (
      'SELECT * FROM TBCIDADE')
    Conexao = DM.db
    object qryGridCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Required = True
    end
    object qryGridCODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  inherited qryCad: TZQueryMC
    Connection = nil
    TableName = 'TBCIDADE'
    FieldKey = 'CODCIDADE'
    Conexao = DM.db
    object qryCadCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Required = True
    end
    object qryCadCODUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object qryCadNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  object qryUF: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBUF')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 16
    Top = 133
    object qryUFCODUF: TStringField
      FieldName = 'CODUF'
      Required = True
      Size = 2
    end
    object qryUFNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  object dsrUF: TDatasourceMC
    DataSet = qryUF
    Left = 16
    Top = 161
  end
end
