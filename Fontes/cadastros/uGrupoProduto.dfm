inherited _frmCadGridGrupoProduto: T_frmCadGridGrupoProduto
  Left = 195
  Top = 186
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Top = 4
        Align = alNone
        Caption = 'Grupo de produtos'
        Font.Height = -16
        Font.Style = [fsBold]
      end
    end
  end
  inherited Panel5: TPanel
    inherited Panel6: TPanel
      inherited dbeCodigo: TDBEditMC
        DataField = 'CODGRUPO'
        DataSource = dsrCad
        Requerido = True
      end
      inherited dbeDescricao: TDBEditMC
        DataField = 'DESCRICAO'
        DataSource = dsrCad
        Requerido = True
      end
    end
    inherited grd: TDBGridMC
      Columns = <
        item
          Expanded = False
          FieldName = 'CODGRUPO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 393
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODGRUPO'
    object cdsGridCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
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
      'SELECT * FROM TBGRUPOPRODUTO')
    object qryGridCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
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
      'SELECT * FROM TBGRUPOPRODUTO WHERE CODGRUPO=:CODIGO')
    TableName = 'TBGRUPOPRODUTO'
    FieldKey = 'CODGRUPO'
    object qryCadCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
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
