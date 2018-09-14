inherited _frmConfigContrato: T_frmConfigContrato
  Left = 219
  Top = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      inherited lblTitulo: TLabelMC
        Top = 6
        Align = alNone
        Caption = 'Configurando contrato'
        Font.Height = -13
        Font.Style = [fsBold]
      end
    end
  end
  inherited Panel5: TPanel
    inherited Panel6: TPanel
      Visible = False
    end
    inherited grd: TDBGridMC
      Visible = False
    end
    object DuploGridMC1: TDuploGridMC
      Left = 1
      Top = 1
      Width = 423
      Height = 224
      Align = alClient
      TabOrder = 2
      GridOrigem.Tag = 2
      GridOrigem.Left = 1
      GridOrigem.Top = 1
      GridOrigem.Width = 199
      GridOrigem.Height = 222
      GridOrigem.Align = alLeft
      GridOrigem.BorderStyle = bsNone
      GridOrigem.Color = 14739951
      GridOrigem.DataSource.DataSet.Aggregates = <>
      GridOrigem.DataSource.DataSet.Params = <>
      GridOrigem.DataSource.DataSet.ProviderName = 'dspOrigem'
      GridOrigem.Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      GridOrigem.TabOrder = 0
      GridOrigem.TitleFont.Charset = DEFAULT_CHARSET
      GridOrigem.TitleFont.Color = clWindowText
      GridOrigem.TitleFont.Height = -11
      GridOrigem.TitleFont.Name = 'MS Sans Serif'
      GridOrigem.TitleFont.Style = []
      GridDestino.Tag = 2
      GridDestino.Left = 223
      GridDestino.Top = 1
      GridDestino.Width = 199
      GridDestino.Height = 222
      GridDestino.Align = alRight
      GridDestino.BorderStyle = bsNone
      GridDestino.Color = 14739951
      GridDestino.DataSource.DataSet.Aggregates = <>
      GridDestino.DataSource.DataSet.Params = <>
      GridDestino.DataSource.DataSet.ProviderName = 'dspDestino'
      GridDestino.Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      GridDestino.TabOrder = 1
      GridDestino.TitleFont.Charset = DEFAULT_CHARSET
      GridDestino.TitleFont.Color = clWindowText
      GridDestino.TitleFont.Height = -11
      GridDestino.TitleFont.Name = 'MS Sans Serif'
      GridDestino.TitleFont.Style = []
      BtnLeft = 201
      BtnTop = 74
      LarguraGridOrigem = 199
      LarguraGridDestino = 199
    end
  end
  inherited qryCad: TZQueryMC
    SQL.Strings = (
      'SHOW FIELDS FROM TBPESSOA')
    Params = <>
    ParamData = <>
  end
end
