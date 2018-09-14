inherited _frmCadGridVendedor: T_frmCadGridVendedor
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanelMC
    inherited Panel4: TPanelMC
      inherited lblTitulo: TLabelMC
        Caption = 'Vendedores'
      end
    end
  end
  inherited Panel5: TPanelMC
    inherited pgcCadastro: TPageControl
      inherited tbsDetalhes: TTabSheet
        inherited Panel8: TPanelMC
          inherited pgcDetalhes: TPageControl
            ActivePage = tabGerais
            inherited tabGerais: TTabSheet
              inherited lblProfissao: TLabelMC
                Visible = False
              end
              inherited txtDeficiente: TDBEditMC
                TabOrder = 11
              end
              inherited DBEditMC9: TDBEditMC
                TabOrder = 12
              end
              inherited chkDeficiente: TCheckBoxMC
                TabOrder = 10
              end
              inherited txtProfissao: TDBEditMC
                TabOrder = 8
                Visible = False
              end
              inherited dbrEmail: TDBRadioGroupMC
                TabOrder = 9
              end
              inherited PanelMC3: TPanelMC
                TabOrder = 13
              end
              object chkRepresentante: TDBCheckBoxMC
                Tag = 2
                Left = 1
                Top = 114
                Width = 161
                Height = 17
                Caption = 'Representante de vendas'
                DataField = 'REPRESENTANTE'
                DataSource = dsrCliente
                TabOrder = 7
                ValueChecked = 'Sim'
                ValueUnchecked = 'N'#227'o'
              end
            end
          end
          inherited PanelMC1: TPanelMC
            inherited txtNome: TDBEditMC
              Width = 343
            end
            inherited DBCheckBoxMC1: TDBCheckBoxMC
              Left = 559
              Width = 46
            end
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
      'WHERE C.CODPESSOA=P.CODPESSOA'
      'AND FUNCIONARIO='#39'Sim'#39' AND VENDEDOR='#39'Sim'#39)
  end
end
