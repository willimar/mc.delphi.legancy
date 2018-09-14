inherited _frmCadGridNomeDespesa: T_frmCadGridNomeDespesa
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'Despesas Extras'
      end
    end
  end
  inherited Panel5: TPanel
    inherited Panel6: TPanel
      inherited Label3: TLabelMC
        Left = 5
      end
      inherited Label5: TLabelMC
        Left = 89
        Width = 28
        Caption = 'Nome'
      end
      inherited dbeCodigo: TDBEditMC
        Left = 4
        DataField = 'CODNOMEDESPESA'
        DataSource = dsrCad
        Requerido = True
      end
      inherited dbeDescricao: TDBEditMC
        Left = 88
        Width = 329
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
          Width = 401
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODNOMEDESPESA'
    object cdsGridCODNOMEDESPESA: TIntegerField
      FieldName = 'CODNOMEDESPESA'
      Required = True
      Visible = False
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
      'SELECT * FROM TBNOMEDESPESA')
    object qryGridCODNOMEDESPESA: TIntegerField
      FieldName = 'CODNOMEDESPESA'
      Required = True
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
  end
  inherited qryCad: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBNOMEDESPESA WHERE CODNOMEDESPESA=:CODIGO')
    TableName = 'TBNOMEDESPESA'
    FieldKey = 'CODNOMEDESPESA'
    object qryCadCODNOMEDESPESA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODNOMEDESPESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
  end
end
