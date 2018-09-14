inherited fraCadGrid: TfraCadGrid
  Width = 385
  Height = 259
  object DBGridMC1: TDBGridMC [1]
    Tag = 2
    Left = 0
    Top = 27
    Width = 385
    Height = 232
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsNone
    Color = 14739951
    DataSource = dsrCad
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  inherited dsrCad: TDatasourceMC
    DataSet = cdsCad
  end
  inherited qryCad: TZQueryMC
    Conexao = DM.db
  end
  inherited cdsCad: TClientDataSetMC
    AfterInsert = cdsCadAfterInsert
  end
end
