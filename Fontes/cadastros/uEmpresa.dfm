inherited _frmCadGridEmpresa: T_frmCadGridEmpresa
  Left = 119
  Top = 95
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanelMC
    inherited Panel4: TPanelMC
      inherited lblTitulo: TLabelMC
        Caption = 'Empresa'
      end
    end
  end
  inherited Panel2: TPanelMC
    inherited pnlFiltro: TPanelMC
      Visible = False
    end
  end
  inherited Panel5: TPanelMC
    inherited pgcCadastro: TPageControl
      inherited tbsDetalhes: TTabSheet
        inherited Panel8: TPanelMC
          inherited pgcDetalhes: TPageControl
            ActivePage = tabRegistro
            inherited tabGerais: TTabSheet
              inherited LabelMC10: TLabelMC
                Visible = False
              end
              inherited LabelMC11: TLabelMC
                Visible = False
              end
              inherited lblProfissao: TLabelMC
                Left = 357
                Top = 56
              end
              inherited LabelMC6: TLabelMC
                Left = 3
                Top = 96
                Width = 41
                Alignment = taRightJustify
                AutoSize = True
                Caption = 'Logotipo'
                Visible = False
              end
              inherited SpeedButtonMC2: TSpeedButtonMC
                Left = 26
                Top = 193
                Visible = False
              end
              inherited SpeedButtonMC1: TSpeedButtonMC
                Left = 2
                Top = 193
                Visible = False
              end
              inherited txtApelido: TDBEditMC
                Requerido = True
              end
              inherited cmbSexo: TDBComboBoxMC
                Visible = False
              end
              inherited cmbEstadoCivil: TDBComboBoxMC
                Visible = False
              end
              inherited txtDeficiente: TDBEditMC
                Visible = False
              end
              inherited chkDeficiente: TCheckBoxMC
                Visible = False
              end
              inherited txtProfissao: TDBEditMC
                Left = 357
                Top = 72
                Width = 244
                Requerido = True
              end
              inherited dbrEmail: TDBRadioGroupMC
                Visible = False
              end
              inherited PanelMC3: TPanelMC
                Left = 1
                Top = 111
                Width = 598
                Height = 78
                Anchors = [akLeft, akTop, akRight]
                Visible = False
                inherited dbiFoto: TDBImageMC
                  Width = 591
                  Height = 72
                  Anchors = [akLeft, akTop, akRight]
                  Stretch = False
                end
              end
            end
            inherited tabProfissional: TTabSheet
              Caption = 'Respons'#225'vel'
              inherited GroupBox3: TGroupBox
                inherited txtContato: TDBEditMC
                  Requerido = True
                  TabSheet = tabProfissional
                end
              end
              inherited txtNomeContato: TDBEditMC
                Requerido = True
                TabSheet = tabProfissional
              end
            end
            inherited tabListaDependente: TTabSheet
              TabVisible = False
            end
            inherited tabHistorico: TTabSheet
              TabVisible = False
            end
            inherited tabObs: TTabSheet
              inherited fraObservacao: TfraCadGrid
                inherited qryCad: TZQueryMC
                  Connection = nil
                end
              end
            end
            object tabRegistro: TTabSheet
              Caption = 'Dados de registro'
              ImageIndex = 7
              OnShow = tabRegistroShow
              object LabelMC15: TLabelMC
                Left = 6
                Top = 3
                Width = 27
                Height = 13
                Caption = 'CNPJ'
              end
              object LabelMC22: TLabelMC
                Left = 124
                Top = 3
                Width = 28
                Height = 13
                Caption = 'Nome'
              end
              object LabelMC25: TLabelMC
                Left = 6
                Top = 40
                Width = 26
                Height = 13
                Caption = 'Serial'
              end
              object SpeedButtonMC4: TSpeedButtonMC
                Left = 6
                Top = 58
                Width = 23
                Height = 22
                Cursor = crHandPoint
                Flat = True
                Glyph.Data = {
                  42020000424D4202000000000000420000002800000010000000100000000100
                  1000030000000002000000000000000000000000000000000000007C0000E003
                  00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A846606161F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836A707B717B4E7B2B7708770616681606161F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AB47F947F717B4D7B0A770616691606161F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AB67FB87F957F707B2B7B0616691A06161F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77F11530616061606160616A81E06160616
                  061606161F7C1F7C1F7C1F7C836AD77F06162B3F28330833E82AC622A822A822
                  881E691E06161F7C1F7C1F7C836AD77F32570616061606160616083306160616
                  061606161F7C1F7C1F7C1F7C836AD77FDB7FDA7FD67FB17F0616283B06161F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FDA7FD67FB17F0616483B06161F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FDA7FD67FB17F06164A3F06161F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FFB7FFB7FD77FB17FB17F0616836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD67FD97FB77B937B6E7B8F7FB17F836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836A4F7750774F772E772C772B772B77836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836A937BB57FB57FB37FB27F907F6E7B836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A836A1F7C1F7C
                  1F7C1F7C1F7C}
                OnClick = SpeedButtonMC1Click
              end
              object SpeedButtonMC5: TSpeedButtonMC
                Left = 30
                Top = 58
                Width = 23
                Height = 22
                Cursor = crHandPoint
                Flat = True
                Glyph.Data = {
                  42020000424D4202000000000000420000002800000010000000100000000100
                  1000030000000002000000000000000000000000000000000000007C0000E003
                  00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A836A2B771F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836A707B717B0772EA760877E876E772836A1F7C
                  C0701F7C1F7C1F7C1F7C1F7C836AB47F947F23718471E9760877E876636AA070
                  C0701F7C1F7C1F7C1F7C1F7C836AB67FB87FF07A64718475C9766676E178A074
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDA7FB87F517BA57522752275E1781F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FDA7FB57F287AE1784279436E1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FB97F4B7E2279897A697EE1781F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7F0B7E0279AB7EB07FB07F236EE178
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7F027DAE7EB17FB07FB17F836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FDB7FDA7FD67FB17FB07FB17F836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD77FFB7FFB7FD77FB17FB17FB17F836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836AD67FD97FB77B937B6E7B8F7FB17F836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836A4F7750774F772E772C772B772B77836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C836A937BB57FB57FB37FB27F907F6E7B836A1F7C
                  1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A836A1F7C1F7C
                  1F7C1F7C1F7C}
                OnClick = SpeedButtonMC2Click
              end
              object DBEditMC1: TDBEditMC
                Tag = 2
                Left = 6
                Top = 17
                Width = 115
                Height = 21
                TabStop = False
                Color = 14743551
                DataField = 'CPFCNPJ'
                DataSource = dsrCad
                ReadOnly = True
                TabOrder = 0
                Rotulo = LabelMC15
                ChecagemTipo = ctCNPJ
              end
              object DBEditMC2: TDBEditMC
                Tag = 2
                Left = 124
                Top = 17
                Width = 335
                Height = 21
                TabStop = False
                Color = 14743551
                DataField = 'NOME'
                DataSource = dsrCad
                ReadOnly = True
                TabOrder = 1
                Rotulo = LabelMC22
              end
            end
          end
          inherited PanelMC1: TPanelMC
            inherited LabelMC1: TLabelMC
              Width = 27
              Caption = 'CNPJ'
            end
            inherited txtCPFCPJ: TDBEditMC
              ChecagemTipo = ctCNPJ
            end
            inherited DBCheckBoxMC1: TDBCheckBoxMC
              ReadOnly = True
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
      
        'WHERE C.CODPESSOA=P.CODPESSOA AND TITULAR='#39'N'#227'o'#39' AND C.EMPRESA='#39'S' +
        'im'#39)
  end
  inherited qryCad: TZQueryMC
    AfterPost = qryCadAfterPost
  end
  inherited qryCliente: TZQueryMC
    AfterPost = qryClienteAfterPost
    AfterCancel = qryClienteAfterCancel
    inherited qryClienteCONTATONOME: TStringField
      DisplayLabel = 'Nome do respons'#225'vel'
    end
    inherited qryClienteCONTATOTEL: TStringField
      DisplayLabel = 'Telefone do respons'#225'vel'
    end
  end
  inherited dsrCliente: TDatasourceMC
    OnDataChange = dsrClienteDataChange
  end
  inherited opdFoto: TOpenPictureDialog
    Left = 715
    Top = 238
  end
  object qrySerial: TZQueryMC
    CachedUpdates = False
    OnNewRecord = qrySerialNewRecord
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TBSERIAL WHERE CODEMPRESA=:CODEMPRESA')
    ParamCheck = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODEMPRESA'
        ParamType = ptUnknown
        Value = 0
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 120
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMPRESA'
        ParamType = ptUnknown
        Value = 0
      end>
    object qrySerialCODCHAVE: TStringField
      FieldName = 'CODCHAVE'
      Required = True
      Size = 13
    end
    object qrySerialCHAVE: TBlobField
      FieldName = 'CHAVE'
    end
    object qrySerialDATAULTIMOACESSO: TStringField
      FieldName = 'DATAULTIMOACESSO'
    end
    object qrySerialCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
  end
  object dsrSerial: TDatasourceMC
    AutoEdit = False
    DataSet = qrySerial
    Left = 120
    Top = 189
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivo de registro do MCLocadora|*.mc'
    Left = 715
    Top = 270
  end
end
