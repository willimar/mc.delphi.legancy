inherited _frmPrincipalMedCli: T_frmPrincipalMedCli
  Caption = 'MediClie v1.0 beta'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainMenu: TMainMenu
    object Cadastro1: TMenuItem [0]
      Caption = '&Cadastro'
      object Pessoas1: TMenuItem
        Caption = '&Pessoas'
        object Pacientes1: TMenuItem
          Caption = 'Pa&cientes'
          OnClick = Pacientes1Click
        end
        object Mdicos1: TMenuItem
          Caption = '&M'#233'dicos'
        end
      end
      object Laboratrio1: TMenuItem
        Caption = 'Laborat'#243'rio'
      end
      object Hospital1: TMenuItem
        Caption = 'Hospital'
      end
      object Exames1: TMenuItem
        Caption = 'Exames'
      end
      object Convnios1: TMenuItem
        Caption = 'Conv'#234'nios'
      end
    end
  end
end
