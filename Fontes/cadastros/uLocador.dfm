inherited _frmCadGridLocador: T_frmCadGridLocador
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanelMC
    inherited Panel4: TPanelMC
      inherited lblTitulo: TLabelMC
        Caption = 'Locador'
      end
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT'
      '    P.CODPESSOA, C.CODCLIENTE, NOME, EMAIL, CPFCNPJ'
      'FROM TBCLIENTE C, TBPESSOA P'
      'WHERE C.CODPESSOA=P.CODPESSOA'
      'AND LOCADOR='#39'Sim'#39)
  end
  inherited qryCliente: TZQueryMC
    AfterEdit = qryClienteAfterEdit
  end
end
