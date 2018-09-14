object FrameCad: TFrameCad
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  object NavigatorMC: TNavigatorMC
    Left = 5
    Top = 4
    Width = 66
    Height = 22
    TabOrder = 0
    DataSet = cdsCad
    DesabilitaExcluir = False
  end
  object dsrCad: TDatasourceMC
    AutoEdit = False
    DataSet = qryCad
    Left = 105
    Top = 80
  end
  object qryCad: TZQueryMC
    CachedUpdates = False
    RequestLive = True
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 17
    Top = 80
  end
  object dspCad: TDataSetProviderMC
    DataSet = qryCad
    ResolveToDataSet = True
    Options = [poAllowMultiRecordUpdates]
    Left = 47
    Top = 80
  end
  object cdsCad: TClientDataSetMC
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCad'
    Left = 76
    Top = 80
  end
end
