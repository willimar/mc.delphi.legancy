inherited _frmCadGridUF: T_frmCadGridUF
  Left = 233
  Top = 159
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'UF'
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
      inherited Label3: TLabelMC
        Left = 5
        Top = 4
        Width = 14
        Caption = 'UF'
      end
      inherited Label5: TLabelMC
        Left = 89
        Top = 4
        Width = 28
        Caption = 'Nome'
      end
      inherited dbeCodigo: TDBEditMC
        Left = 4
        Top = 17
        DataField = 'CODUF'
        DataSource = dsrCad
      end
      inherited dbeDescricao: TDBEditMC
        Left = 88
        Top = 17
        Width = 332
        DataField = 'NOME'
        DataSource = dsrCad
      end
    end
    inherited grd: TDBGridMC
      Columns = <
        item
          Expanded = False
          FieldName = 'CODUF'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 345
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'CODUF'
    object cdsGridCODUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CODUF'
      Required = True
      Size = 2
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
      'SELECT * FROM TBUF')
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
    SQL.Strings = (
      'SELECT * FROM TBUF WHERE CODUF=:CODIGO')
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    TableName = 'TBUF'
    FieldKey = 'CODUF'
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODUF: TStringField
      FieldName = 'CODUF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object qryCadNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 35
    end
  end
end
