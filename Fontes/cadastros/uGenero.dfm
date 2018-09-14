inherited _frmCadGridGenero: T_frmCadGridGenero
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'G'#234'neros'
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
      inherited Label3: TLabelMC
        Left = 4
      end
      inherited Label5: TLabelMC
        Left = 87
        Width = 28
        Caption = 'Nome'
      end
      inherited dbeCodigo: TDBEditMC
        Left = 3
        DataField = 'CODGENERO'
        DataSource = dsrCad
        Requerido = True
      end
      inherited dbeDescricao: TDBEditMC
        Left = 86
        Width = 334
        DataField = 'NOME'
        DataSource = dsrCad
        Requerido = True
      end
    end
    inherited grd: TDBGridMC
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 395
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODGENERO'
    object cdsGridCODGENERO: TIntegerField
      FieldName = 'CODGENERO'
      Required = True
      Visible = False
    end
    object cdsGridNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
    end
  end
  inherited qryGrid: TZQueryMC
    Connection = nil
    SQL.Strings = (
      'SELECT * FROM TBGENERO')
    Conexao = DM.db
    object qryGridCODGENERO: TIntegerField
      FieldName = 'CODGENERO'
      Required = True
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Required = True
    end
  end
  inherited qryCad: TZQueryMC
    Connection = nil
    SQL.Strings = (
      'SELECT * FROM TBGENERO WHERE CODGENERO=:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    TableName = 'TBGENERO'
    FieldKey = 'CODGENERO'
    Conexao = DM.db
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODGENERO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODGENERO'
      Required = True
    end
    object qryCadNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
    end
  end
end
