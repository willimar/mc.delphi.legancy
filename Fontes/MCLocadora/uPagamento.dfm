�
 T_FRMPAGAMENTO 0�  TPF0T_frmPagamento_frmPagamentoLeftTopBorderIcons BorderStylebsNoneCaption
PagamentosClientHeight� ClientWidth~Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrderPositionpoScreenCenterOnClose	FormClose
OnKeyPressFormKeyPressPixelsPerInch`
TextHeight TPanelPanel1Left Top Width~Height� AlignalClient
BevelOuter	bvLoweredTabOrder  TLabelLabel2LefteTopuWidth;HeightCaptionValor devido  TLabelMCLabelMC1Left� TopuWidth3HeightCaption
Valor pago  TSpeedButtonMCbtnPagarLeft� Top� WidthKHeightCursorcrHandPointCaption&PagarFlat	OnClickbtnPagarClick  TSpeedButtonMCbtnCancelarLeft/Top� WidthKHeightCursorcrHandPointCaption	&CancelarFlat	OnClickbtnCancelarClick  TPanelPanel2LeftTopWidthwHeightl
BevelInner	bvLowered
BevelOuterbvSpaceCaption`TabOrder  TShapeShape1LeftTopWidthsHeighthAlignalClientBrush.ColorclCream	Pen.Color���   TLabelNomeLeftITopWidth"HeightCaptionNome: Transparent  TDBTextDBText10LeftkTopWidthHeight	DataFieldP_NOME
DataSource_frmCadGridDebito.dsrCadTransparent  TLabelLabel3LeftITopWidthHeightCaptionRua: Transparent  TLabelLabel14LeftITop"Width!HeightCaptionBairro: Transparent  TLabelLabel15Left� Top"Width'HeightCaptionCidade: Transparent  TLabelLabel16LeftLTop"WidthHeightCaptionUF: Transparent  TDBTextDBText11LeftcTopWidthHeight	DataFieldENDERECO
DataSource_frmCadGridDebito.dsrCadTransparent  TDBTextDBText12LefthTop"WidthlHeight	DataFieldBAIRRO
DataSource_frmCadGridDebito.dsrCadTransparent  TDBTextDBText13Left� Top"WidthOHeight	DataFieldCID_NOME
DataSource_frmCadGridDebito.dsrCadTransparent  TDBTextDBText14Left]Top"WidthHeight	DataFieldCODUF
DataSource_frmCadGridDebito.dsrCadTransparent  TLabelLabel17LeftITop0WidthHeightCaptionRG: Transparent  TLabelLabel18Left� Top0WidthHeightCaptionCPF: Transparent  TDBTextDBText15Left^Top0WidthGHeight	DataFieldRG
DataSource_frmCadGridDebito.dsrCadTransparent  TDBTextDBText16Left� Top0WidthUHeight	DataFieldCPFCNPJ
DataSource_frmCadGridDebito.dsrCadTransparent  TLabelLabel19LeftITop>WidthHeightCaptionTel: Transparent  TLabelLabel20Left� Top>WidthHeightCaptionCel: Transparent  TLabelLabel21Left Top>Width-HeightAutoSizeTransparent  TDBTextDBText17Left^Top>WidthHHeight	DataFieldTEL
DataSource_frmCadGridDebito.dsrCadTransparent  TDBTextDBText18Left� Top>WidthCHeight	DataFieldCEL
DataSource_frmCadGridDebito.dsrCadTransparent  TDBTextDBText19Left-Top>WidthEHeight
DataSource_frmCadGridDebito.dsrCadTransparent  TLabelLabel22LeftITopLWidthHeightCaptionEmail: Transparent  TLabelLabel23LeftITopZWidthHeightCaptionWeb: Transparent  TDBTextlblEmailLeftgTopLWidthHeightCursorcrHandPoint	DataFieldEMAIL
DataSource_frmCadGridDebito.dsrCadFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.StylefsUnderline 
ParentFontTransparent  TDBTextlblWebLeftfTopZWidthHeightCursorcrHandPoint	DataFieldWEB
DataSource_frmCadGridDebito.dsrCadFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.StylefsUnderline 
ParentFontTransparent  TLabelLabel24LeftTopXWidthBHeightAutoSizeTransparent  TLabelLabel25LeftTop0Width"HeightCaptionNasc.: Transparent  TDBTextDBText22Left1Top0WidthAHeight	DataFieldDATANASCIMENTO
DataSource_frmCadGridDebito.dsrCadTransparent  TDBImageDBImage1LeftTopWidthBHeightQBorderStylebsNoneColor	clBtnFaceCtl3D	DataFieldFOTO
DataSource_frmCadGridDebito.dsrCadParentCtl3DReadOnly	Stretch	TabOrder    TDBEditDBEdit1Left� ToprWidthWHeightTabStopColor��� 	DataFieldD_VALOR
DataSource_frmCadGridDebito.dsrGridReadOnly	TabOrder  TEditMCtxtValorTagLeft1ToprWidthGHeightTabOrderRotuloLabelMC1   	TZQueryMCqryCaixaCachedUpdatesRequestLive	SQL.Strings&SELECT * FROM TBCAIXA WHERE CODCAIXA=0 
ParamCheck	Params ShowRecordTypesusUnmodified
usModified
usInserted 
UpdateModeumUpdateChanged	WhereModewmWhereKeyOnlyOptionsdoCalcDefaults 	TableNameTBCAIXAFieldKeyCODCAIXAConexaoDM.dbLeft
Top{ TIntegerFieldqryCaixaCODCAIXA	FieldNameCODCAIXARequired	  TIntegerFieldqryCaixaCODEMPRESA	FieldName
CODEMPRESARequired	  TIntegerFieldqryCaixaCODDESCRICAO	FieldNameCODDESCRICAORequired	  TFloatFieldqryCaixaVALOR	FieldNameVALORRequired	  TStringFieldqryCaixaTIPO	FieldNameTIPORequired	Size  
TDateFieldqryCaixaLANCAMENTO	FieldName
LANCAMENTORequired	    