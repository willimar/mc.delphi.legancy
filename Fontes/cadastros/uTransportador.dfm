inherited _frmCadGridTransportador: T_frmCadGridTransportador
  Left = 140
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel5: TPanelMC
    inherited pgcCadastro: TPageControl
      inherited tbsDetalhes: TTabSheet
        inherited Panel8: TPanelMC
          inherited pgcDetalhes: TPageControl
            ActivePage = tabVeiculo
            inherited tabListaDependente: TTabSheet
              inherited DBGridMC1: TDBGridMC
                Height = 279
              end
            end
            inherited tabObs: TTabSheet
              inherited fraObservacao: TfraCadGrid
                Height = 309
                inherited DBGridMC1: TDBGridMC
                  Height = 282
                end
              end
            end
            object tabVeiculo: TTabSheet
              Caption = 'Ve'#237'colos'
              ImageIndex = 7
            end
          end
        end
      end
    end
  end
end
