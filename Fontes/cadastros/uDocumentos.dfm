inherited _frmCadGridDocumento: T_frmCadGridDocumento
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'Documentos'
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
      Top = 222
      Height = 44
      inherited Shape5: TShape
        Height = 42
      end
      inherited Label3: TLabelMC
        Left = 6
      end
      inherited Label5: TLabelMC
        Left = 90
      end
      inherited dbeCodigo: TDBEditMC
        Left = 5
        DataField = 'CODDOCUMENTO'
        DataSource = dsrCad
        Requerido = True
      end
      inherited dbeDescricao: TDBEditMC
        Left = 89
        Width = 283
        TabStop = False
        Color = 14743551
        DataField = 'NOME'
        DataSource = dsrCad
        ReadOnly = True
      end
      object FileStreamMC: TFileStreamMC
        Left = 375
        Top = 18
        Width = 45
        Height = 22
        BevelOuter = bvNone
        Color = clSkyBlue
        TabOrder = 2
        DataSource = dsrCad
        DataField = 'DOCUMENTO'
        Requerido = True
        Filter.Strings = (
          'Documentos do Word|*.Doc; *.rtf'
          'Documentos de Texto Puro|*.txt')
        NomeArquivo = 'NOME'
        DesignSize = (
          45
          22)
      end
    end
    inherited grd: TDBGridMC
      Height = 221
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
    FieldKey = 'CODDOCUMENTO'
    object cdsGridCODDOCUMENTO: TIntegerField
      FieldName = 'CODDOCUMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object cdsGridNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 255
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT CODDOCUMENTO, NOME FROM TBDOCUMENTO')
    object qryGridCODDOCUMENTO: TIntegerField
      FieldName = 'CODDOCUMENTO'
      Required = True
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 255
    end
  end
  inherited qryCad: TZQueryMC
    SQL.Strings = (
      'SELECT * FROM TBDOCUMENTO WHERE CODDOCUMENTO=:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    TableName = 'TBDOCUMENTO'
    FieldKey = 'CODDOCUMENTO'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadCODDOCUMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODDOCUMENTO'
      Required = True
    end
    object qryCadDOCUMENTO: TBlobField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
    end
    object qryCadNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 255
    end
  end
end
