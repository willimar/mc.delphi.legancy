inherited _frmCadGridSocio: T_frmCadGridSocio
  Left = 113
  Top = 55
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanelMC
    inherited Panel4: TPanelMC
      inherited lblTitulo: TLabelMC
        Caption = 'Socios'
      end
    end
  end
  inherited Panel5: TPanelMC
    inherited pgcCadastro: TPageControl
      inherited tbsDetalhes: TTabSheet
        inherited Panel8: TPanelMC
          inherited pgcDetalhes: TPageControl
            ActivePage = tabGerais
            inherited tabObs: TTabSheet
              inherited fraObservacao: TfraCadGrid
                inherited qryCad: TZQueryMC
                  Connection = nil
                end
              end
            end
          end
        end
      end
    end
  end
end
