�
 T_FRMCAIXA 0�(  TPF0
T_frmCaixa	_frmCaixaLeft&Top� BorderStylebsToolWindowCaptionFluxo de CaixaClientHeightTClientWidth�Color	clSkyBlueFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 	FormStyle
fsMDIChildOldCreateOrderPositionpoScreenCenterVisible	OnClose	FormCloseOnShowFormShowPixelsPerInch`
TextHeight 
TStatusBar	StatusBarLeft TopAWidth�HeightPanelsWidth�  	AlignmenttaCenterWidth�  	AlignmenttaCenterWidth�  	AlignmenttaCenterWidth�     TToolBarToolBar1Left Top Width�HeightButtonHeightCaptionToolBar1TabOrder TToolButtonToolButton1Left TopWidth�CaptionToolButton1StyletbsSeparator  TDBNavigatorDBNavigator1Left�TopWidth� Height
DataSourcedsrCaixaVisibleButtonsnbFirstnbPriornbNextnbLastnbInsertnbDeletenbEditnbPostnbCancel TabOrder    TPanelPanel1Left TopWidth�Height)AlignalBottom
BevelOuterbvNoneColor	clSkyBlueTabOrder TShapeShape5Left Top Width�Height)AlignalClientBrush.Color	clSkyBlue	Pen.Color	clSkyBlue  TToolBarToolBar2Left�TopWidth� Height&AlignalNoneButtonHeight!CaptionToolBar1	EdgeInneresNone	EdgeOuteresNoneTabOrder  TSpeedButton	btnSalvarLeft TopWidthQHeight!CursorcrHandPointHint	ConfirmarCaption
&ConfirmarFlat	
Glyph.Data
F  B  BMB      B   (                                  |  �     |||||||||||||||||||||�1K)���1|||||||||�1)%�V9gB��5��1�1||||�1�5Zk9gRJ�Z�5)%�1�5�9�9��1|RN{o�Z�Z�Z�V�VRJ!�1�=RJtNc�N|�R�^�Z�V�s�sZk�^c9gRJ)%4F�VwN|�Z8g{o�s9g{o�1!�l)9g{ocRJ�|sN�=9F6FJ)�59Fu-�{Zkm)�~��ZE}|B�=�=�9YJyN9FW)�=c�~$}$}�|$}|B�=XJvN�=�=9FU)yN5F�~$}o~o~||B8F5F!tN�9yNU)Zk{o�Z�~�1
||ByN�9�9�5�5yN�1W)V)s-Q)�1
||1FRJ�Z�^�^�^yN2%�s8gvNs-�1
||||�5k-J)�1�RS)9gc9g�{�1
||||||||�V2%{oc8g�w�1
||||||||||�V�V�V�V�1�-||OnClickbtnSalvarClick  TSpeedButtonbtnCancelarLeftQTopWidthQHeight!CursorcrHandPointHintCancelarCaption	&CancelarFlat	
Glyph.Data
F  B  BMB      B   (                                  |  �     ||||||||||||||||||||||||||||||||||&llJ)|||||||�\F\||||�pl�<||||||+]l||||||&plJ)||||gdl||||||||ll�1||gdl||||||||||lh�5Gdl||||||||||||&pll|||||||||||||%lllk-|||||||||||gdl|�ul)-|||||||||gdl||||l�<|||||||Fdl�\|||||lg`|||||%ll�\|||||||||||||lg`||||||||||||||||||||||||||||||||||||||||||||OnClickbtnCancelarClick    TPanelPanel2Left TopWidth�HeightAlignalClient
BevelOuterbvNoneTabOrder TShapeShape1Left Top Width�HeightAlignalClientBrush.Color	clBtnFace	Pen.Color	clBtnFace  TPageControlPageControl1Left Top Width�Height
ActivePage	TabSheet1AlignalClientTabOrder  	TTabSheet	TabSheet1Caption   Lnaçamentos Atuais TDBGriddbgDadosLeft Top Width�Height� AlignalClientBorderStylebsNoneColor��� Constraints.MaxHeight� Constraints.MaxWidth�Constraints.MinHeight� Constraints.MinWidth�
DataSourcedsrCaixaTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style OnDrawColumnCelldbgDadosDrawColumnCellColumnsExpanded	FieldName	DescricaoTitle.Caption   DescriçãoWidthiVisible	 Expanded	FieldName
LancamentoTitle.CaptionDataWidthHVisible	 Expanded	FieldNameTipoWidthUVisible	 Expanded	FieldNameValorWidthWVisible	     	TTabSheet	TabSheet2Caption   Lançamento Geral Detalhado
ImageIndex TDBGridDBGrid1Left Top Width�Height� AlignalClientBorderStylebsNoneColor��� 
DataSourcedsrGeralDetalhadoOptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style OnDrawColumnCelldbgDadosDrawColumnCellColumnsExpanded	FieldName	DescricaoTitle.Caption   DescriçãoWidthiVisible	 Expanded	FieldNamePERIODOWidthHVisible	 Expanded	FieldNameTIPOWidthUVisible	 Expanded	FieldNameVALORWidthWVisible	     	TTabSheet	TabSheet3Caption   Lançamento Geral
ImageIndex TDBGridDBGrid2Left Top Width�Height� AlignalClientBorderStylebsNoneColor��� 
DataSourcedsrGeralOptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style OnDrawColumnCelldbgDadosDrawColumnCellColumnsExpanded	FieldName	DESCRICAOWidthiVisible	 Expanded	FieldNamePERIODOWidthHVisible	 Expanded	FieldNameTIPOWidthUVisible	 Expanded	FieldNameVALORWidthWVisible	       TClientDataSetcdsCaixa
Aggregates Params ProviderNamedspCaixaAfterInsertcdsCaixaAfterInsert
BeforePostcdsCaixaBeforePostLeft@Top�  TIntegerFieldcdsCaixaCODCAIXA	FieldNameCODCAIXARequired	  TIntegerFieldcdsCaixaCODEMPRESA	FieldName
CODEMPRESARequired	  TIntegerFieldcdsCaixaCodDescricao	FieldNameCodDescricaoRequired	  TFloatFieldcdsCaixaValor	FieldNameValorRequired	currency	  TStringFieldcdsCaixaTipo	FieldNameTipoRequired		OnGetTextGeralTIPOGetText
OnValidatecdsCaixaTipoValidateSize  
TDateFieldcdsCaixaLancamento	FieldName
LancamentoRequired	DisplayFormat
dd/MM/yyyyEditMask99/99/9999;1;_  TStringFieldcdsCaixaDescricao	FieldKindfkLookup	FieldName	DescricaoLookupDataSetDM.qryDescCaixaLookupKeyFieldsCODDESCRICAOLookupResultField	DESCRICAO	KeyFieldsCodDescricaoSize-Lookup	  TStringFieldcdsCaixaDescTipo	FieldKindfkLookup	FieldNameDescTipoLookupDataSetcdsTipoLookupKeyFieldsTipoLookupResultFieldDescTipo	KeyFieldsTipoSize
Lookup	   TDataSourcedsrCaixaDataSetcdsCaixaLeft@Top�   TDataSetProviderdspCaixaDataSetqryCaixaResolveToDataSet	OptionspoAllowMultiRecordUpdates Left`Top�   TClientDataSetcdsTipoActive	
Aggregates Params LeftPTop� Data
T   P   ��              P Tipo I    WIDTH   DescTipo I    WIDTH  
    TStringFieldcdsTipoTipo	FieldNameTipoSize  TStringFieldcdsTipoDescTipo	FieldNameDescTipoSize
   TZReadOnlyQueryEntrada
ConnectionDM.db	AfterOpenEntradaAfterOpenSQL.StringsSELECT   TIPO, SUM(Valor) AS VALORFROM tbcaixaWHERE Tipo = 'E'GROUP BY Tipo 
ParamCheck	Params OptionsdoCalcDefaults Left�Top�  TStringFieldEntradaTIPO	FieldNameTIPORequired	Size  TFloatFieldEntradaVALOR	FieldNameVALORReadOnly	   TZReadOnlyQuerySaida
ConnectionDM.db	AfterOpenSaidaAfterOpenSQL.StringsSELECT   TIPO, SUM(Valor) AS VALORFROM tbcaixaWHERE Tipo = 'S'GROUP BY Tipo 
ParamCheck	Params OptionsdoCalcDefaults Left�Top�  TStringField	SaidaTIPO	FieldNameTIPORequired	Size  TFloatField
SaidaVALOR	FieldNameVALORReadOnly	   TZReadOnlyQueryGeralDetalhado
ConnectionDM.dbOnCalcFieldsGeralDetalhadoCalcFieldsSQL.StringsSELECTx    EXTRACT(YEAR FROM LANCAMENTO) AS ANO, EXTRACT(MONTH FROM LANCAMENTO) AS MES, TIPO, CODDESCRICAO, SUM(VALOR) AS VALORFROM TBCAIXAZGROUP BY EXTRACT(MONTH FROM LANCAMENTO), EXTRACT(YEAR FROM LANCAMENTO), Tipo, CODDESCRICAO.ORDER BY EXTRACT(MONTH FROM LANCAMENTO), Tipo; 
ParamCheck	Params OptionsdoCalcDefaults Left�Top�  TSmallintFieldGeralDetalhadoMES	FieldNameMESReadOnly	Required	  TSmallintFieldGeralDetalhadoANO	FieldNameANOReadOnly	Required	  TStringFieldGeralDetalhadoTIPODisplayLabelTipo	FieldNameTIPORequired		OnGetTextGeralTIPOGetTextSize  TIntegerFieldGeralDetalhadoCODDESCRICAO	FieldNameCODDESCRICAORequired	  TFloatFieldGeralDetalhadoVALORDisplayLabelValor	FieldNameVALORReadOnly	currency	  TStringFieldGeralDetalhadoDescricao	FieldKindfkLookup	FieldName	DescricaoLookupDataSetDM.qryDescCaixaLookupKeyFieldsCODDESCRICAOLookupResultField	DESCRICAO	KeyFieldsCODDESCRICAOSizeKLookup	  TStringFieldGeralDetalhadoPERIODODisplayLabel   Período	FieldKindfkCalculated	FieldNamePERIODOSize
Calculated	   TDataSourcedsrGeralDetalhadoDataSetGeralDetalhadoLeft�Top�   TZReadOnlyQueryGeral
ConnectionDM.dbOnCalcFieldsGeralCalcFieldsSQL.StringsSELECTj    EXTRACT(MONTH FROM LANCAMENTO) AS MES, EXTRACT(YEAR FROM LANCAMENTO) AS ANO, TIPO, SUM(VALOR) AS VALORFROM TBCAIXALGROUP BY EXTRACT(MONTH FROM LANCAMENTO), Tipo, EXTRACT(YEAR FROM LANCAMENTO).ORDER BY EXTRACT(MONTH FROM LANCAMENTO), Tipo; 
ParamCheck	Params OptionsdoCalcDefaults LeftpTop�  TSmallintFieldGeralMES	FieldNameMESReadOnly	Required	  TFloatField
GeralVALORDisplayLabelValor	FieldNameVALORReadOnly	currency	  TStringField	GeralTIPODisplayLabelTipo	FieldNameTIPORequired		OnGetTextGeralTIPOGetTextSize  TSmallintFieldGeralANO	FieldNameANOReadOnly	Required	  TStringFieldGeralPERIODODisplayLabel   Período	FieldKindfkCalculated	FieldNamePERIODOSize
Calculated	  TStringFieldGeralDESCRICAODisplayLabel   Descrição	FieldKindfkCalculated	FieldName	DESCRICAOSize-
Calculated	   TDataSourcedsrGeralDataSetGeralLeftoTop�   	TZQueryMCqryCaixaCachedUpdatesRequestLive	SQL.Strings6SELECT * FROM TBCAIXA WHERE LANCAMENTO >= :LANCAMENTO  
ParamCheck	ParamsDataTypeftDateName
LANCAMENTO	ParamType	ptUnknownValue          ShowRecordTypesusUnmodified
usModified
usInserted 
UpdateModeumUpdateChanged	WhereModewmWhereKeyOnlyOptionsdoCalcDefaults ConexaoDM.dbLeft`Top� 	ParamDataDataTypeftDateName
LANCAMENTO	ParamType	ptUnknownValue           TIntegerFieldqryCaixaCODCAIXA	FieldNameCODCAIXARequired	  TIntegerFieldqryCaixaCODEMPRESA	FieldName
CODEMPRESARequired	  TIntegerFieldqryCaixaCODDESCRICAO	FieldNameCODDESCRICAORequired	  TFloatFieldqryCaixaVALOR	FieldNameVALORRequired	  TStringFieldqryCaixaTIPO	FieldNameTIPORequired		OnGetTextGeralTIPOGetTextSize  
TDateFieldqryCaixaLANCAMENTO	FieldName
LANCAMENTORequired	    