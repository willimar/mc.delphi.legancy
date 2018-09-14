inherited _frmCadGridBanco: T_frmCadGridBanco
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'Bancos'
      end
    end
  end
  inherited Panel3: TPanel
    inherited ToolBar1: TToolBar
      inherited bitExcluir: TSpeedButton
        OnClick = bitExcluirClick
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
        Left = 88
      end
      inherited dbeCodigo: TDBEditMC
        Left = 4
        DataField = 'CODBANCO'
        DataSource = dsrCad
        Requerido = True
      end
      inherited dbeDescricao: TDBEditMC
        Left = 87
        Width = 330
        DataField = 'NOME'
        DataSource = dsrCad
        Requerido = True
      end
    end
    inherited grd: TDBGridMC
      Height = 220
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 399
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODBANCO'
    object cdsGridCODBANCO: TStringField
      FieldName = 'CODBANCO'
      Required = True
      Visible = False
      Size = 3
    end
    object cdsGridNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBBANCO')
    object qryGridCODBANCO: TStringField
      FieldName = 'CODBANCO'
      Required = True
      Size = 3
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
  end
  inherited qryCad: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBBANCO WHERE CODBANCO=:CODIGO')
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODBANCO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODBANCO'
      Required = True
      Size = 3
    end
    object qryCadNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
  end
end
