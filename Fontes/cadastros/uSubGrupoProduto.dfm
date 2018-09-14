inherited _frmCadGridSubGrupoProduto: T_frmCadGridSubGrupoProduto
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Top = 5
        Align = alNone
        Caption = 'Subgrupo de produto'
        Font.Height = -15
        Font.Style = [fsBold]
      end
    end
  end
  inherited Panel5: TPanel
    inherited Panel6: TPanel
      inherited dbeCodigo: TDBEditMC
        Width = 86
        DataField = 'CODSUBGRUPO'
        DataSource = dsrCad
        Requerido = True
      end
      inherited dbeDescricao: TDBEditMC
        Width = 323
        DataField = 'DESCRICAO'
        DataSource = dsrCad
        Requerido = True
      end
    end
    inherited grd: TDBGridMC
      Columns = <
        item
          Expanded = False
          FieldName = 'CODSUBGRUPO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 394
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODSUBGRUPO'
    object cdsGridCODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Required = True
      Visible = False
    end
    object cdsGridDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 45
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBSUBGRUPOPRODUTO')
    object qryGridCODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Required = True
    end
    object qryGridDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 45
    end
  end
  inherited qryCad: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBSUBGRUPOPRODUTO WHERE CODSUBGRUPO=:CODIGO')
    TableName = 'TBSUBGRUPOPRODUTO'
    FieldKey = 'CODSUBGRUPO'
    object qryCadCODSUBGRUPO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODSUBGRUPO'
      Required = True
    end
    object qryCadDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 45
    end
  end
end
