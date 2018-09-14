inherited _frmCadGridProprietario: T_frmCadGridProprietario
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanelMC
    inherited Panel4: TPanelMC
      inherited lblTitulo: TLabelMC
        Caption = 'Propriet'#225'rios'
      end
    end
  end
  inherited Panel5: TPanelMC
    inherited PageControl1: TPageControl
      inherited tbsDetalhes: TTabSheet
        inherited Panel8: TPanelMC
          inherited PageControl2: TPageControl
            ActivePage = tabEndereco
          end
        end
      end
    end
  end
  inherited qryGrid: TZQueryMC
    SQL.Strings = (
      'SELECT'
      '    P.CODPESSOA, C.CODCLIENTE, NOME, EMAIL, CPFCNPJ'
      'FROM TBCLIENTE C, TBPESSOA P'
      'WHERE C.CODPESSOA=P.CODPESSOA AND PROPRIETARIO='#39'Sim'#39)
  end
  inherited qryCliente: TZQueryMC
    AfterEdit = qryClienteAfterEdit
  end
end
