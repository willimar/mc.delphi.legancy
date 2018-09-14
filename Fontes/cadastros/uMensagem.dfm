inherited _frmCadGridMensagem: T_frmCadGridMensagem
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Caption = 'Mensagens'
      end
    end
  end
  inherited Panel5: TPanel
    inherited Panel6: TPanel
      inherited Label3: TLabelMC
        Left = 6
        Top = 45
      end
      inherited Label5: TLabelMC
        Left = 4
        Top = 4
      end
      inherited dbeCodigo: TDBEditMC
        Left = 5
        Top = 58
      end
      inherited dbeDescricao: TDBEditMC
        Left = 3
        Top = 17
        Width = 417
        DataField = 'MENSAGEM'
        DataSource = dsrCad
        Requerido = True
      end
    end
    inherited grd: TDBGridMC
      Columns = <
        item
          Expanded = False
          FieldName = 'Mensagem'
          Width = 397
          Visible = True
        end>
    end
  end
  inherited cdsGrid: TClientDataSetMC
    FieldKey = 'Mensagem'
    object cdsGridMENSAGEM: TStringField
      FieldName = 'Mensagem'
      Required = True
      Size = 255
    end
  end
  inherited qryGrid: TZQueryMC
    Connection = nil
    SQL.Strings = (
      'SELECT * FROM TBMENSAGEM')
    Conexao = DM.db
    object qryGridMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Required = True
      Size = 255
    end
  end
  inherited qryCad: TZQueryMC
    Connection = nil
    SQL.Strings = (
      'SELECT * FROM TBMENSAGEM WHERE MENSAGEM=:CODIGO')
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    Conexao = DM.db
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryCadMENSAGEM: TStringField
      FieldName = 'Mensagem'
      Required = True
      Size = 255
    end
  end
end
