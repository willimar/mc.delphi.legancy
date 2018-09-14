object _frmInserirSenha: T_frmInserirSenha
  Left = 242
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Senha'
  ClientHeight = 124
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LabelMC1: TLabelMC
    Left = 6
    Top = 6
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object LabelMC2: TLabelMC
    Left = 6
    Top = 44
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object LabelMC3: TLabelMC
    Left = 6
    Top = 82
    Width = 76
    Height = 13
    Caption = 'Confirmar senha'
  end
  object txtUsuario: TDBEditMC
    Tag = 2
    Left = 6
    Top = 19
    Width = 144
    Height = 21
    DataField = 'LOGIN'
    DataSource = dsrSenha
    TabOrder = 0
  end
  object txtSenha: TDBEditMC
    Tag = 2
    Left = 6
    Top = 57
    Width = 144
    Height = 21
    DataField = 'SENHA'
    DataSource = dsrSenha
    PasswordChar = '*'
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 168
    Top = 66
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 94
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkCancel
  end
  object txtRSenha: TEditMC
    Tag = 2
    Left = 8
    Top = 96
    Width = 144
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object qrySenha: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'SELECT LOGIN, SENHA FROM TBUSUARIO WHERE CODUSUARIO=1')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Conexao = DM.db
    Left = 216
    Top = 3
    object qrySenhaLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
      Size = 16
    end
    object qrySenhaSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      OnGetText = qrySenhaSENHAGetText
      OnSetText = qrySenhaSENHASetText
      Size = 16
    end
  end
  object dsrSenha: TDatasourceMC
    DataSet = qrySenha
    Left = 216
    Top = 35
  end
end
