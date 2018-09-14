inherited _frmCadGridForncedor: T_frmCadGridForncedor
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanelMC
    inherited Panel4: TPanelMC
      inherited lblTitulo: TLabelMC
        Caption = 'Fornecedores'
      end
    end
  end
  inherited Panel2: TPanelMC
    inherited pnlFiltro: TPanelMC
      Top = 262
    end
  end
  inherited Panel5: TPanelMC
    inherited pgcCadastro: TPageControl
      inherited tbsDetalhes: TTabSheet
        inherited Panel8: TPanelMC
          inherited pgcDetalhes: TPageControl
            ActivePage = tabGerais
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
      'WHERE C.CODPESSOA=P.CODPESSOA AND TITULAR='#39'Sim'#39
      'AND FORNECEDOR='#39'Sim'#39)
  end
end
