inherited _frmCadGridPreco: T_frmCadGridPreco
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'Pre'#231'os'
      end
    end
  end
  inherited Panel3: TPanel
    inherited ToolBar1: TToolBar
      inherited bitImprimir: TSpeedButton
        OnClick = bitImprimirClick
      end
    end
  end
  inherited Panel5: TPanel
    inherited Panel6: TPanel
      Top = 221
      Height = 45
      inherited Shape5: TShape
        Height = 43
      end
      inherited Label3: TLabelMC
        Left = 5
      end
      inherited Label5: TLabelMC
        Left = 89
      end
      object LabelMC1: TLabelMC [3]
        Left = 323
        Top = 5
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      inherited dbeCodigo: TDBEditMC
        Left = 4
        DataField = 'CODPRECO'
        DataSource = dsrCad
        Requerido = True
      end
      inherited dbeDescricao: TDBEditMC
        Left = 88
        Width = 233
        DataField = 'NOME'
        DataSource = dsrCad
        Requerido = True
      end
      object DBEditMC1: TDBEditMC
        Tag = 2
        Left = 323
        Top = 18
        Width = 97
        Height = 21
        DataField = 'VALOR'
        DataSource = dsrCad
        TabOrder = 2
        Requerido = True
        Rotulo = LabelMC1
      end
    end
    inherited grd: TDBGridMC
      Height = 220
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 285
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Width = 102
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODPRECO'
    object cdsGridCODPRECO: TIntegerField
      FieldName = 'CODPRECO'
      Required = True
      Visible = False
    end
    object cdsGridNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object cdsGridVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      currency = True
    end
  end
  inherited qryGrid: TZQueryMC
    Connection = nil
    SQL.Strings = (
      'SELECT * FROM TBPRECO')
    Conexao = DM.db
    object qryGridCODPRECO: TIntegerField
      FieldName = 'CODPRECO'
      Required = True
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryGridVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
  end
  inherited qryCad: TZQueryMC
    Connection = nil
    SQL.Strings = (
      'SELECT * FROM TBPRECO WHERE CODPRECO=:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    TableName = 'TBPRECO'
    FieldKey = 'CODPRECO'
    Conexao = DM.db
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODPRECO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPRECO'
      Required = True
    end
    object qryCadNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object qryCadVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      currency = True
    end
  end
end
