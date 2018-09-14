inherited _frmCadGridFiador: T_frmCadGridFiador
  PixelsPerInch = 96
  TextHeight = 13
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT'
      '    P.CODPESSOA, C.CODCLIENTE, NOME, EMAIL, CPFCNPJ'
      'FROM TBCLIENTE C, TBPESSOA P'
      'WHERE C.CODPESSOA=P.CODPESSOA'
      'AND FIADOR = '#39'Sim'#39)
  end
  inherited qryCliente: TZQueryMC
    AfterEdit = qryClienteAfterEdit
  end
end
