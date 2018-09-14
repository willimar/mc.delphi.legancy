inherited _frmCadGridComandoSQL: T_frmCadGridComandoSQL
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Top = 8
        Align = alNone
        Caption = 'Comandos para Filtro'
        Font.Height = -13
        Font.Style = [fsBold]
      end
    end
  end
  inherited Panel5: TPanel
    inherited Panel6: TPanel
      Top = 103
      Height = 163
      inherited Shape5: TShape
        Height = 161
      end
      inherited Label3: TLabelMC
        Left = 4
      end
      inherited Label5: TLabelMC
        Left = 91
      end
      object LabelMC1: TLabelMC [3]
        Left = 7
        Top = 41
        Width = 88
        Height = 13
        Caption = 'Comando para filro'
      end
      inherited dbeCodigo: TDBEditMC
        Left = 5
        DataField = 'CODCOMANDO'
        DataSource = dsrCad
        Requerido = True
      end
      inherited dbeDescricao: TDBEditMC
        Left = 90
        Width = 328
        DataField = 'NOME'
        DataSource = dsrCad
        Requerido = True
      end
      object DBMemoMC1: TDBMemoMC
        Tag = 2
        Left = 7
        Top = 57
        Width = 410
        Height = 102
        DataField = 'COMANDO'
        DataSource = dsrCad
        ScrollBars = ssVertical
        TabOrder = 2
        Requerido = True
        Rotulo = LabelMC1
      end
    end
    inherited grd: TDBGridMC
      Height = 102
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 398
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODCOMANDO'
    object cdsGridCODCOMANDO: TIntegerField
      FieldName = 'CODCOMANDO'
      Required = True
      Visible = False
    end
    object cdsGridNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT CODCOMANDO, NOME FROM TBCOMANDOSQL')
    object qryGridCODCOMANDO: TIntegerField
      FieldName = 'CODCOMANDO'
      Required = True
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
  inherited qryCad: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBCOMANDOSQL'
      'WHERE CODCOMANDO=:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    TableName = 'TBCOMANDOSQL'
    FieldKey = 'CODCOMANDO'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODCOMANDO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCOMANDO'
      Required = True
    end
    object qryCadNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
    object qryCadCOMANDO: TBlobField
      DisplayLabel = 'Comando para filtro'
      FieldName = 'COMANDO'
    end
  end
  object Query: TZQueryMC
    Tag = 3
    Connection = DM.db
    CachedUpdates = False
    RequestLive = True
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 72
    Top = 141
  end
end
