unit uNFeletronica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ImgList, DB, rpcompobase, rpvclreport, XPMenu,
  gbCobranca, Provider, DBClient, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ComCtrls, JvExComCtrls, JvProgressBar, JvExButtons, JvBitBtn,
  dxCore, dxButton, StdCtrls, Mask, JvExMask, JvToolEdit, Buttons,
  ExtCtrls, MMJPanel, ACBrNFeDANFEClass, pcnConversao, ACBrNFeDANFERave, ACBrNFe,
  ACBrNFeDANFeQRClass, xmldom, XMLIntf, msxmldom, XMLDoc, JvAppStorage,
  JvAppXMLStorage, JvComponentBase, DBCtrls, JvFormPlacement, JvExControls, JvLabel
  ,DBLocal, DBLocalS, DBXpress;

type
  TfNFeletronica = class(TForm)
    sdsNF: TSQLDataSet;
    cdsNF: TClientDataSet;
    cdsNFFRETE: TStringField;
    cdsNFCNPJ_CPF: TStringField;
    cdsNFNOMETRANSP: TStringField;
    cdsNFINSCRICAOESTADUAL: TStringField;
    cdsNFEND_TRANSP: TStringField;
    cdsNFCIDADE_TRANSP: TStringField;
    cdsNFUF_TRANSP: TStringField;
    cdsNFPLACATRANSP: TStringField;
    cdsNFUF_VEICULO_TRANSP: TStringField;
    cdsNFQUANTIDADE: TFloatField;
    cdsNFESPECIE: TStringField;
    cdsNFMARCA: TStringField;
    cdsNFNUMERO: TStringField;
    cdsNFPESOLIQUIDO: TBCDField;
    cdsNFPESOBRUTO: TBCDField;
    cdsNFRAZAOSOCIAL: TStringField;
    cdsNFCNPJ: TStringField;
    cdsNFCFOP: TStringField;
    cdsNFCODCLIENTE: TIntegerField;
    cdsNFNUMNF: TIntegerField;
    cdsNFCODVENDA: TIntegerField;
    cdsNFBASE_ICMS: TFloatField;
    cdsNFVALOR_ICMS: TFloatField;
    cdsNFBASE_ICMS_SUBST: TFloatField;
    cdsNFVALOR_ICMS_SUBST: TFloatField;
    cdsNFVALOR_PRODUTO: TFloatField;
    cdsNFVALOR_FRETE: TFloatField;
    cdsNFVALOR_SEGURO: TFloatField;
    cdsNFOUTRAS_DESP: TFloatField;
    cdsNFVALOR_IPI: TFloatField;
    cdsNFVALOR_TOTAL_NOTA: TFloatField;
    cdsNFDTAEMISSAO: TDateField;
    cdsNFDTASAIDA: TDateField;
    cdsNFCORPONF1: TStringField;
    cdsNFCORPONF2: TStringField;
    cdsNFHORASAIDA: TTimeField;
    cdsNFNOTASERIE: TStringField;
    cdsNFSELECIONOU: TStringField;
    dspNF: TDataSetProvider;
    sdsItensNF: TSQLDataSet;
    dspItensNF: TDataSetProvider;
    cdsItensNF: TClientDataSet;
    sMenorData: TSQLDataSet;
    sMenorDataMENORDATA: TDateField;
    sMaiorData: TSQLDataSet;
    sMaiorDataMAIORDATA: TDateField;
    sEmpresa: TSQLDataSet;
    sEmpresaEMPRESA: TStringField;
    sEmpresaRAZAO: TStringField;
    sEmpresaCNPJ_CPF: TStringField;
    sEmpresaENDERECO: TStringField;
    sEmpresaLOGRADOURO: TStringField;
    sEmpresaBAIRRO: TStringField;
    sEmpresaCIDADE: TStringField;
    sEmpresaUF: TStringField;
    sEmpresaCEP: TStringField;
    sEmpresaDDD: TStringField;
    sEmpresaFONE: TStringField;
    sEmpresaFONE_1: TStringField;
    sEmpresaFONE_2: TStringField;
    sEmpresaFAX: TStringField;
    sEmpresaE_MAIL: TStringField;
    sEmpresaWEB: TStringField;
    sEmpresaLOGOTIPO: TGraphicField;
    sEmpresaCODIGO: TIntegerField;
    sEmpresaTIPO: TStringField;
    sEmpresaIE_RG: TStringField;
    sEmpresaSLOGAN: TStringField;
    sEmpresaOUTRAS_INFO: TStringField;
    sEmpresaCODIGO_CONTA: TIntegerField;
    sEmpresaDIVERSOS1: TStringField;
    sEmpresaDIVERSOS2: TStringField;
    sEmpresaDIVERSOS3: TStringField;
    sEmpresaANOLETIVO: TIntegerField;
    sEmpresaMEDIA_ESCOLA: TFloatField;
    sEmpresaPORTA: TIntegerField;
    sEmpresaSMTP: TStringField;
    sEmpresaSENHA: TStringField;
    gbCobranca1: TgbCobranca;
    sCFOP: TSQLDataSet;
    sCliente: TSQLDataSet;
    sClienteCODCLIENTE: TIntegerField;
    sClienteNOMECLIENTE: TStringField;
    sClienteCONTATO: TStringField;
    sClienteINSCESTADUAL: TStringField;
    sClienteRAZAOSOCIAL: TStringField;
    sClienteCNPJ: TStringField;
    sClienteLOGRADOURO: TStringField;
    sClienteBAIRRO: TStringField;
    sClienteCOMPLEMENTO: TStringField;
    sClienteCIDADE: TStringField;
    sClienteUF: TStringField;
    sClienteCEP: TStringField;
    sClienteNUMERO: TStringField;
    OpenDialog1: TOpenDialog;
    sds_param: TSQLDataSet;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField8: TStringField;
    sds_paramDADOS: TStringField;
    sds_paramD1: TStringField;
    sds_paramD2: TStringField;
    sds_paramD3: TStringField;
    sds_paramD4: TStringField;
    sds_paramD5: TStringField;
    sds_paramD6: TStringField;
    sds_paramD7: TStringField;
    sds_paramD8: TStringField;
    sds_paramD9: TStringField;
    sds_paramINSTRUCOES: TStringField;
    dsp_param: TDataSetProvider;
    cds_param: TClientDataSet;
    StringField9: TStringField;
    StringField10: TStringField;
    cds_paramDADOS: TStringField;
    cds_paramD1: TStringField;
    cds_paramD2: TStringField;
    cds_paramD3: TStringField;
    cds_paramD4: TStringField;
    cds_paramD5: TStringField;
    cds_paramD6: TStringField;
    cds_paramD7: TStringField;
    cds_paramD8: TStringField;
    cds_paramD9: TStringField;
    cds_paramINSTRUCOES: TStringField;
    cds_paramCONFIGURADO: TStringField;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    XPMenu1: TXPMenu;
    cds_Movimento: TClientDataSet;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoNOMECLIENTE: TStringField;
    cds_MovimentoDESCNATUREZA: TStringField;
    cds_MovimentoALMOXARIFADO: TStringField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoNOMEFORNECEDOR: TStringField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoTIPOTITULO: TSmallintField;
    cds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    cds_MovimentoNOMEUSUARIO: TStringField;
    cds_MovimentoOBS: TStringField;
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCONTROLE: TStringField;
    cds_MovimentoCNPJ: TStringField;
    dsp_Movimento: TDataSetProvider;
    sds_Movimento: TSQLDataSet;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoNOMECLIENTE: TStringField;
    sds_MovimentoDESCNATUREZA: TStringField;
    sds_MovimentoALMOXARIFADO: TStringField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoNOMEFORNECEDOR: TStringField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    sds_MovimentoTIPOTITULO: TSmallintField;
    sds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    sds_MovimentoNOMEUSUARIO: TStringField;
    sds_MovimentoOBS: TStringField;
    sds_MovimentoPLACA: TStringField;
    sds_MovimentoMARCA_MODELO: TStringField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    sds_MovimentoCONTROLE: TStringField;
    sds_MovimentoCNPJ: TStringField;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFERave1: TACBrNFeDANFERave;
    sClienteTELEFONE: TStringField;
    sClienteDDD: TStringField;
    sEmpresaNUMERO: TStringField;
    sTabIBGE: TSQLDataSet;
    sTabIBGENM_LOCALIDADE: TStringField;
    sTabIBGECD_IBGE: TStringField;
    sTabIBGENM_MUNICIPIO: TStringField;
    sTabIBGENM_TIPO_LOCALIDADE: TStringField;
    sTabIBGESQ_IBGE: TIntegerField;
    sTabIBGECD_UF: TStringField;
    sProdutos: TSQLDataSet;
    sProdutosCODPRODUTO: TIntegerField;
    sProdutosFAMILIA: TStringField;
    sProdutosCATEGORIA: TStringField;
    sProdutosMARCA: TStringField;
    sProdutosUNIDADEMEDIDA: TStringField;
    sProdutosDATAULTIMACOMPRA: TDateField;
    sProdutosESTOQUEMAXIMO: TFloatField;
    sProdutosESTOQUEATUAL: TFloatField;
    sProdutosESTOQUEREPOSICAO: TFloatField;
    sProdutosESTOQUEMINIMO: TFloatField;
    sProdutosVALORUNITARIOATUAL: TFloatField;
    sProdutosVALORUNITARIOANTERIOR: TFloatField;
    sProdutosICMS: TFloatField;
    sProdutosCODALMOXARIFADO: TIntegerField;
    sProdutosIPI: TFloatField;
    sProdutosCLASSIFIC_FISCAL: TStringField;
    sProdutosCST: TStringField;
    sProdutosBASE_ICMS: TFloatField;
    sProdutosPRODUTO: TStringField;
    sProdutosPRECOMEDIO: TBCDField;
    sProdutosCOD_COMISSAO: TIntegerField;
    sProdutosMARGEM_LUCRO: TFloatField;
    sProdutosCOD_BARRA: TStringField;
    sProdutosVALOR_PRAZO: TFloatField;
    sProdutosTIPO: TStringField;
    sProdutosCONTA_DESPESA: TStringField;
    sProdutosCONTA_RECEITA: TStringField;
    sProdutosCONTA_ESTOQUE: TStringField;
    sProdutosRATEIO: TStringField;
    sProdutosCODPRO: TStringField;
    sProdutosQTDE_PCT: TFloatField;
    sProdutosPESO_QTDE: TFloatField;
    sProdutosDATACADASTRO: TSQLTimeStampField;
    sProdutosMARGEM: TFloatField;
    sProdutosPRO_COD: TStringField;
    sProdutosDATAGRAV: TDateField;
    sProdutosCODFORN: TStringField;
    sProdutosFOTOPRODUTO: TStringField;
    sProdutosLOTES: TStringField;
    sProdutosUSA: TStringField;
    sProdutosLOCALIZACAO: TStringField;
    sProdutosTIPOPRECOVENDA: TStringField;
    sProdutosVALORMINIMO: TFloatField;
    sProdutosVALORCOMISSAO: TFloatField;
    sProdutosGERADESCONTO: TStringField;
    sProdutosIMPRIMIR: TStringField;
    sProdutosORIGEM: TIntegerField;
    cdsNFREDUZICMS: TFloatField;
    sClienteCD_IBGE: TStringField;
    sEmpresaCCUSTO: TIntegerField;
    sEmpresaCD_IBGE: TStringField;
    XMLDocument1: TXMLDocument;
    cdsNFPROTOCOLOENV: TStringField;
    cdsNFNUMRECIBO: TStringField;
    cdsNFPROTOCOLOCANC: TStringField;
    sdsNFC: TSQLDataSet;
    sdsNFCNUMNF: TIntegerField;
    sdsNFCPROTOCOLOENV: TStringField;
    sdsNFCNUMRECIBO: TStringField;
    sdsNFCPROTOCOLOCANC: TStringField;
    sNFC: TClientDataSet;
    dspNFC: TDataSetProvider;
    sNFCNUMNF: TIntegerField;
    sNFCPROTOCOLOENV: TStringField;
    sNFCNUMRECIBO: TStringField;
    sNFCPROTOCOLOCANC: TStringField;
    sProdutosNCM: TStringField;
    JvFormStorage1: TJvFormStorage;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    sdsNFCFOP: TStringField;
    sdsNFDTAEMISSAO: TDateField;
    sdsNFDTASAIDA: TDateField;
    sdsNFCORPONF1: TStringField;
    sdsNFCORPONF2: TStringField;
    sdsNFCODCLIENTE: TIntegerField;
    sdsNFNUMNF: TIntegerField;
    sdsNFCODVENDA: TIntegerField;
    sdsNFBASE_ICMS: TFloatField;
    sdsNFVALOR_ICMS: TFloatField;
    sdsNFBASE_ICMS_SUBST: TFloatField;
    sdsNFVALOR_ICMS_SUBST: TFloatField;
    sdsNFVALOR_PRODUTO: TFloatField;
    sdsNFVALOR_FRETE: TFloatField;
    sdsNFVALOR_SEGURO: TFloatField;
    sdsNFOUTRAS_DESP: TFloatField;
    sdsNFVALOR_IPI: TFloatField;
    sdsNFVALOR_TOTAL_NOTA: TFloatField;
    sdsNFFRETE: TStringField;
    sdsNFCNPJ_CPF: TStringField;
    sdsNFNOMETRANSP: TStringField;
    sdsNFINSCRICAOESTADUAL: TStringField;
    sdsNFEND_TRANSP: TStringField;
    sdsNFCIDADE_TRANSP: TStringField;
    sdsNFUF_TRANSP: TStringField;
    sdsNFPLACATRANSP: TStringField;
    sdsNFUF_VEICULO_TRANSP: TStringField;
    sdsNFQUANTIDADE: TFloatField;
    sdsNFESPECIE: TStringField;
    sdsNFMARCA: TStringField;
    sdsNFNUMERO: TStringField;
    sdsNFPESOLIQUIDO: TBCDField;
    sdsNFPESOBRUTO: TBCDField;
    sdsNFRAZAOSOCIAL: TStringField;
    sdsNFCNPJ: TStringField;
    sdsNFHORASAIDA: TTimeField;
    sdsNFNOTASERIE: TStringField;
    sdsNFSELECIONOU: TStringField;
    sdsNFREDUZICMS: TFloatField;
    sdsNFPROTOCOLOENV: TStringField;
    sdsNFNUMRECIBO: TStringField;
    sdsNFPROTOCOLOCANC: TStringField;
    sdsNFENTRADA: TFloatField;
    sdsNFVALOR_PAGAR: TFloatField;
    cdsNFENTRADA: TFloatField;
    cdsNFVALOR_PAGAR: TFloatField;
    sEmail: TSQLDataSet;
    sEmailCODCLIENTE: TIntegerField;
    sEmailNOMECLIENTE: TStringField;
    sEmailRAZAOSOCIAL: TStringField;
    sEmailE_MAIL: TStringField;
    sdsNFCORPONF3: TStringField;
    sdsNFCORPONF4: TStringField;
    cdsNFCORPONF3: TStringField;
    cdsNFCORPONF4: TStringField;
    sdsNFFATURA: TStringField;
    cdsNFFATURA: TStringField;
    sdsFatura: TSQLDataSet;
    dspFatura: TDataSetProvider;
    cdsFatura: TClientDataSet;
    sdsFaturaDATAFATURA: TDateField;
    sdsFaturaVALOR: TFloatField;
    sdsFaturaNUMEROFATURA: TStringField;
    cdsFaturaDATAFATURA: TDateField;
    cdsFaturaVALOR: TFloatField;
    cdsFaturaNUMEROFATURA: TStringField;
    sdsNFNATUREZA: TSmallintField;
    cdsNFNATUREZA: TSmallintField;
    sFornec: TSQLDataSet;
    sFornecCODCLIENTE: TIntegerField;
    sFornecNOMECLIENTE: TStringField;
    sFornecCONTATO: TStringField;
    sFornecINSCESTADUAL: TStringField;
    sFornecRAZAOSOCIAL: TStringField;
    sFornecCNPJ: TStringField;
    sFornecLOGRADOURO: TStringField;
    sFornecBAIRRO: TStringField;
    sFornecCOMPLEMENTO: TStringField;
    sFornecCIDADE: TStringField;
    sFornecUF: TStringField;
    sFornecCEP: TStringField;
    sFornecNUMERO: TStringField;
    sFornecTELEFONE: TStringField;
    sFornecDDD: TSmallintField;
    sFornecCD_IBGE: TStringField;
    sProdutosGENERO: TIntegerField;
    sdsNFVALOR_PIS: TFloatField;
    sdsNFVALOR_COFINS: TFloatField;
    cdsNFVALOR_PIS: TFloatField;
    cdsNFVALOR_COFINS: TFloatField;
    sdsNFCORPONF5: TStringField;
    sdsNFCORPONF6: TStringField;
    cdsNFCORPONF5: TStringField;
    cdsNFCORPONF6: TStringField;
    sEmpresa1: TSQLDataSet;
    sEmpresa1EMPRESA: TStringField;
    sEmpresa1RAZAO: TStringField;
    sEmpresa1CNPJ_CPF: TStringField;
    sEmpresa1ENDERECO: TStringField;
    sEmpresa1LOGRADOURO: TStringField;
    sEmpresa1BAIRRO: TStringField;
    sEmpresa1CIDADE: TStringField;
    sEmpresa1UF: TStringField;
    sEmpresa1CEP: TStringField;
    sEmpresa1DDD: TStringField;
    sEmpresa1FONE: TStringField;
    sEmpresa1FONE_1: TStringField;
    sEmpresa1FONE_2: TStringField;
    sEmpresa1FAX: TStringField;
    sEmpresa1E_MAIL: TStringField;
    sEmpresa1WEB: TStringField;
    sEmpresa1LOGOTIPO: TGraphicField;
    sEmpresa1CODIGO: TIntegerField;
    sEmpresa1TIPO: TStringField;
    sEmpresa1IE_RG: TStringField;
    sEmpresa1SLOGAN: TStringField;
    sEmpresa1OUTRAS_INFO: TStringField;
    sEmpresa1CODIGO_CONTA: TIntegerField;
    sEmpresa1DIVERSOS1: TStringField;
    sEmpresa1DIVERSOS2: TStringField;
    sEmpresa1DIVERSOS3: TStringField;
    sEmpresa1ANOLETIVO: TIntegerField;
    sEmpresa1MEDIA_ESCOLA: TFloatField;
    sEmpresa1PORTA: TIntegerField;
    sEmpresa1SMTP: TStringField;
    sEmpresa1SENHA: TStringField;
    sEmpresa1CCUSTO: TIntegerField;
    sEmpresa1NUMERO: TStringField;
    sEmpresa1CD_IBGE: TStringField;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    sbtnGetCert: TSpeedButton;
    Label4: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    tpNF: TRadioGroup;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    MemoResp: TMemo;
    edtNumSerie: TEdit;
    Edit1: TEdit;
    edSerie: TEdit;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    btnListar: TBitBtn;
    JvDateEdit2: TJvDateEdit;
    chkTodas: TCheckBox;
    ComboBox1: TComboBox;
    JvDateEdit1: TJvDateEdit;
    btnSairVenda: TBitBtn;
    btnSair: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    sdsItensNFCODPRODUTO: TIntegerField;
    sdsItensNFQUANTIDADE: TFloatField;
    sdsItensNFPRECO: TFloatField;
    sdsItensNFCFOP: TStringField;
    sdsItensNFCODPRO: TStringField;
    sdsItensNFUNIDADEMEDIDA: TStringField;
    sdsItensNFICMS: TFloatField;
    sdsItensNFPIPI: TFloatField;
    sdsItensNFVIPI: TFloatField;
    sdsItensNFVLR_BASEICMS: TFloatField;
    sdsItensNFVALOR_ICMS: TFloatField;
    sdsItensNFVLR_BASE: TFloatField;
    sdsItensNFICMS_SUBST: TFloatField;
    sdsItensNFICMS_SUBSTD: TFloatField;
    sdsItensNFVALTOTAL: TFloatField;
    cdsItensNFCODPRODUTO: TIntegerField;
    cdsItensNFQUANTIDADE: TFloatField;
    cdsItensNFPRECO: TFloatField;
    cdsItensNFCFOP: TStringField;
    cdsItensNFCODPRO: TStringField;
    cdsItensNFUNIDADEMEDIDA: TStringField;
    cdsItensNFICMS: TFloatField;
    cdsItensNFPIPI: TFloatField;
    cdsItensNFVIPI: TFloatField;
    cdsItensNFVLR_BASEICMS: TFloatField;
    cdsItensNFVALOR_ICMS: TFloatField;
    cdsItensNFVLR_BASE: TFloatField;
    cdsItensNFICMS_SUBST: TFloatField;
    cdsItensNFICMS_SUBSTD: TFloatField;
    cdsItensNFVALTOTAL: TFloatField;
    sdsNFVALOR_DESCONTO: TFloatField;
    cdsNFVALOR_DESCONTO: TFloatField;
    sClienteE_MAIL: TStringField;
    sFornecE_MAIL: TStringField;
    sdsItensNFCSOSN: TStringField;
    cdsItensNFCSOSN: TStringField;
    sEmpresaCRT: TIntegerField;
    sdsItensNFFRETE: TFloatField;
    sdsItensNFVALOR_DESCONTO: TFloatField;
    cdsItensNFFRETE: TFloatField;
    cdsItensNFVALOR_DESCONTO: TFloatField;
    sdsItensNFDESCPRODUTO: TStringField;
    cdsItensNFDESCPRODUTO: TStringField;
    sdsItensNFVALOR_SEGURO: TFloatField;
    sdsItensNFVALOR_OUTROS: TFloatField;
    cdsItensNFVALOR_SEGURO: TFloatField;
    cdsItensNFVALOR_OUTROS: TFloatField;
    sAdicao: TSQLDataSet;
    sDI: TSQLDataSet;
    sAdicaoADIC_CODDET: TIntegerField;
    sAdicaoADIC_CODDI: TIntegerField;
    sAdicaoADIC_NADICAO: TIntegerField;
    sAdicaoADIC_NSEQUEN: TIntegerField;
    sAdicaoADIC_CODFAB: TStringField;
    sAdicaoADIC_VDESC: TIntegerField;
    sDIDI_CODDI: TIntegerField;
    sDIDI_NUMDI: TStringField;
    sDIDI_DATA: TDateField;
    sDIDI_LOCALDESEMB: TStringField;
    sDIDI_UFDESEMB: TStringField;
    sDIDI_DATADESEMB: TDateField;
    sDIDI_CODEXPORTADOR: TStringField;
    sdsItensNFCODDETALHE: TIntegerField;
    cdsItensNFCODDETALHE: TIntegerField;
    sdsNFIDCOMPLEMENTAR: TStringField;
    cdsNFIDCOMPLEMENTAR: TStringField;
    sdsNFXMLNFE: TGraphicField;
    cdsNFXMLNFE: TMemoField;
    sdsItensNFCST: TStringField;
    cdsItensNFCST: TStringField;
    sClientePAIS: TStringField;
    sFornecPAIS: TStringField;
    sFornecCODPAIS: TStringField;
    sClienteCODPAIS: TStringField;
    sdsItensNFVALOR_PIS: TFloatField;
    sdsItensNFVALOR_COFINS: TFloatField;
    cdsItensNFVALOR_PIS: TFloatField;
    cdsItensNFVALOR_COFINS: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    btnGeraNFe: TBitBtn;
    BtnPreVis: TBitBtn;
    GroupBox6: TGroupBox;
    btnContingencia: TBitBtn;
    btnPreVisCont: TBitBtn;
    GroupBox7: TGroupBox;
    btnSPED: TBitBtn;
    btnPreVisSped: TBitBtn;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox8: TGroupBox;
    btnDpec: TBitBtn;
    btnPreVisDPEC: TBitBtn;
    GroupBox9: TGroupBox;
    btnFSDA: TBitBtn;
    btnPreVisFSDA: TBitBtn;
    GroupBox3: TGroupBox;
    btnImprime: TBitBtn;
    btnGeraPDF: TBitBtn;
    BitBtn1: TBitBtn;
    BtnEnvEmail: TBitBtn;
    TabSheet6: TTabSheet;
    btnStatus: TBitBtn;
    btnConsulta: TBitBtn;
    btnValidaNFe: TBitBtn;
    btnCancelaNFe: TBitBtn;
    btnInutilizar: TBitBtn;
    btnValidaXML: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    sCFOPCFCOD: TStringField;
    sCFOPCFNOME: TStringField;
    sCFOPUF: TStringField;
    sCFOPICMS: TFloatField;
    sCFOPREDUCAO: TFloatField;
    sCFOPIPI: TFloatField;
    sCFOPICMS_SUBSTRIB: TFloatField;
    sCFOPICMS_SUBSTRIB_IC: TFloatField;
    sCFOPICMS_SUBSTRIB_IND: TFloatField;
    sCFOPNAOENVFATURA: TStringField;
    sCFOPCSTPIS: TStringField;
    sCFOPCSTCOFINS: TStringField;
    sCFOPCOFINS: TFloatField;
    sCFOPPIS: TFloatField;
    sdsItensNFII: TFloatField;
    sdsItensNFBCII: TFloatField;
    cdsItensNFII: TFloatField;
    cdsItensNFBCII: TFloatField;
    sdsNFII: TFloatField;
    sdsNFBCII: TFloatField;
    cdsNFII: TFloatField;
    cdsNFBCII: TFloatField;
    sEstado: TSQLDataSet;
    sEstadoCODIGO: TIntegerField;
    sEstadoSIGLA: TStringField;
    sEstadoNOME: TStringField;
    sCFOPCSTIPI: TStringField;
    procedure btnGeraNFeClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure btnGeraPDFClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnCancelaNFeClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure ValidaNFeClick(Sender: TObject);
    procedure BtnEnvEmailClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPreVisClick(Sender: TObject);
    procedure btnSPEDClick(Sender: TObject);
    procedure btnSairVendaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnContingenciaClick(Sender: TObject);
    procedure btnPreVisContClick(Sender: TObject);
    procedure btnPreVisSpedClick(Sender: TObject);
    procedure btnPreVisDPECClick(Sender: TObject);
    procedure btnDpecClick(Sender: TObject);
    procedure btnFSDAClick(Sender: TObject);
    procedure btnPreVisFSDAClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnValidaXMLClick(Sender: TObject);

  private
    procedure getCli_Fornec();
    procedure getEmpresa();
    procedure getItens(contador : integer);
    procedure getTransportadora();
    procedure getPagamento();
  public
    { Public declarations }
  end;

var
  fNFeletronica: TfNFeletronica;
  conta_local: string;
  numnf : WideString;
  tp_amb : integer;

implementation

uses pcnNFe, ACBrNFeNotasFiscais, DateUtils, ACBrNFeUtil, UDm,
 ACBrNFeWebServices, uNFeInutilizar, ACBrNFeConfiguracoes, sCtrlResize,
  uNFeMail, uNotaf, uVendaFinalizar, uVendas, StrUtils, UDMNF;

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
// Remove caracteres de uma string deixando apenas numeros
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

procedure TfNFeletronica.btnListarClick(Sender: TObject);
var str_nf: string;
begin
   if (cdsNF.Active) then
     cdsNF.Close;

   cdsNF.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   cdsNF.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   cdsNF.Params[2].Clear;
   cdsNF.Params[3].Clear;
   cdsNf.Params.ParamByName('ENV').Clear;
   if (chkTodas.Checked) then
     cdsNf.Params.ParamByName('ENV').AsString := 'TODAS'; 

   if (edSerie.Text <> '') then
     cdsNF.Params[2].AsString := edSerie.Text
   else
     cdsNF.Params[3].AsString := 'todasasseriesdenotaf';
   if (tpNF.ItemIndex = 0) then
   begin
    cdsNF.Params[4].AsSmallInt := 20;
      str_nf := 'select  nf.CFOP, nf.DTAEMISSAO, nf.DTASAIDA, nf.IDCOMPLEMENTAR,  nf.CORPONF1, nf.CORPONF2, nf.CORPONF3, nf.CORPONF4, nf.CORPONF5, nf.CORPONF6, nf.XMLNFE, nf.CODCLIENTE, nf.NUMNF, nf.CODVENDA, nf.fatura, nf.natureza, ' +
      'UDF_ROUNDDEC(nf.BASE_ICMS, 2) as BASE_ICMS, UDF_ROUNDDEC(nf.VALOR_ICMS, 2) as VALOR_ICMS, UDF_ROUNDDEC(nf.BASE_ICMS_SUBST, 2) as BASE_ICMS_SUBST, ' +
      'UDF_ROUNDDEC(nf.VALOR_ICMS_SUBST, 2) as VALOR_ICMS_SUBST, UDF_ROUNDDEC(nf.VALOR_PRODUTO, 2) as VALOR_PRODUTO, nf.VALOR_FRETE, nf.VALOR_SEGURO, nf.OUTRAS_DESP, nf.VALOR_IPI,' +
      'UDF_ROUNDDEC(nf.VALOR_TOTAL_NOTA, 2) as VALOR_TOTAL_NOTA,  nf.FRETE,   nf.CNPJ_CPF,  udf_left(nf.NOMETRANSP, 60)as NOMETRANSP,  nf.INSCRICAOESTADUAL,' +
      'udf_left(nf.END_TRANSP,60)as END_TRANSP,    udf_left(nf.CIDADE_TRANSP, 60) as CIDADE_TRANSP, nf.UF_TRANSP, UDF_ROUNDDEC(nf.II, 2) as II, UDF_ROUNDDEC(nf.BCII, 2) as BCII, '+
      'nf.PLACATRANSP, nf.UF_VEICULO_TRANSP, nf.QUANTIDADE,  nf.ESPECIE,  nf.MARCA, nf.NUMERO, nf.PESOLIQUIDO, nf.VALOR_DESCONTO, ' +
      'nf.PESOBRUTO, f.RAZAOSOCIAL, f.CNPJ , nf.HORASAIDA,  nf.NOTASERIE, nf.SELECIONOU, nf.REDUZICMS, nf.PROTOCOLOENV, ' +
      'nf.NUMRECIBO, nf.PROTOCOLOCANC, c.ENTRADA, c.VALOR_PAGAR, VALOR_PIS, VALOR_COFINS from NOTAFISCAL nf inner join FORNECEDOR f on f.CODFORNECEDOR = nf.CODCLIENTE '+
      'inner join enderecoFORNECEDOR endeforn on endeforn.CODFORNECEDOR = f.CODFORNECEDOR left outer join COMPRA c on c.CODCOMPRA = nf.CODVENDA '+
      'where (nf.DTAEMISSAO between :dta1 and :dta2) and ((nf.SERIE = :pvendacusto) or (:pvendacusto = ' + quotedstr('todasasseriesdenotaf') + ')) '+
      'and (endeforn.TIPOEND = 0) and ((NF.NATUREZA = :natnf) or (NF.NATUREZA = 21)) and ((nf.PROTOCOLOENV IS NULL) OR (:ENV = ' + quotedstr('TODAS') +')) order by nf.NOTASERIE DESC';
      cdsNF.CommandText := str_nf;
   end
   else
   begin
    cdsNF.Params[4].AsSmallInt := 15;
    str_nf := 'select  nf.CFOP, nf.DTAEMISSAO, nf.DTASAIDA, nf.IDCOMPLEMENTAR,  nf.CORPONF1, nf.CORPONF2, nf.CORPONF3, nf.CORPONF4, nf.CORPONF5, nf.CORPONF6, nf.XMLNFE, nf.CODCLIENTE, nf.NUMNF, ' +
    'nf.CODVENDA, nf.fatura, nf.natureza, UDF_ROUNDDEC(nf.BASE_ICMS, 2) as BASE_ICMS, UDF_ROUNDDEC(nf.VALOR_ICMS, 2) as VALOR_ICMS, ' +
    'UDF_ROUNDDEC(nf.BASE_ICMS_SUBST, 2) as BASE_ICMS_SUBST, UDF_ROUNDDEC(nf.VALOR_ICMS_SUBST, 2) as VALOR_ICMS_SUBST, UDF_ROUNDDEC(nf.II, 2) as II, UDF_ROUNDDEC(nf.BCII, 2) as BCII, ' +
    'UDF_ROUNDDEC(nf.VALOR_PRODUTO, 2) as VALOR_PRODUTO, nf.VALOR_FRETE, nf.VALOR_SEGURO, nf.OUTRAS_DESP, nf.VALOR_IPI,' +
    'UDF_ROUNDDEC(nf.VALOR_TOTAL_NOTA, 2) as VALOR_TOTAL_NOTA,  nf.FRETE,   nf.CNPJ_CPF,  udf_left(nf.NOMETRANSP, 60)as NOMETRANSP,  '+
    'nf.INSCRICAOESTADUAL, udf_left(nf.END_TRANSP, 60)as END_TRANSP,    udf_left(nf.CIDADE_TRANSP, 60)as CIDADE_TRANSP, ' +
    'nf.UF_TRANSP, nf.PLACATRANSP, nf.UF_VEICULO_TRANSP, nf.QUANTIDADE,  nf.ESPECIE,  nf.MARCA, nf.NUMERO, nf.PESOLIQUIDO, nf.VALOR_DESCONTO, ' +
    'nf.PESOBRUTO, nf.HORASAIDA,  nf.NOTASERIE, nf.SELECIONOU, nf.REDUZICMS, nf.PROTOCOLOENV, nf.NUMRECIBO, nf.PROTOCOLOCANC, co.ENTRADA, co.VALOR_PAGAR, c.RAZAOSOCIAL, c.CNPJ, VALOR_PIS, VALOR_COFINS '+
    'from NOTAFISCAL nf inner join CLIENTES c on c.CODCLIENTE = nf.CODCLIENTE   inner join ENDERECOCLIENTE ec on ec.CODCLIENTE = c.CODCLIENTE '+
    'left outer join VENDA co on co.CODVENDA = nf.CODVENDA  where (nf.DTAEMISSAO between :dta1 and :dta2) and ((nf.SERIE = :pvendacusto) or (:pvendacusto = ' + quotedstr('todasasseriesdenotaf') + ')) '+
    'and (ec.TIPOEND = 0) and ((NF.NATUREZA = :natnf) or (NF.NATUREZA = 12) or (NF.NATUREZA = 16))  and ((nf.PROTOCOLOENV IS NULL) OR (:ENV = ' + quotedstr('TODAS') +')) order by nf.NOTASERIE DESC';
     cdsNF.CommandText := str_nf;
   end;
   cdsNF.Open;

  if (sMenorData.Active) then
     sMenorData.Close;
   sMenorData.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   sMenorData.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   sMenorData.Params[2].Clear;
   sMenorData.Params[3].Clear;
   if (edSerie.Text <> '') then
     sMenorData.Params[2].AsString := edSerie.Text
   else
     sMenorData.Params[3].AsString := 'todasasseriesdenotaf';
   sMenorData.Open;

   if (sMaiorData.Active) then
     sMaiorData.Close;
   sMaiorData.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   sMaiorData.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   sMaiorData.Params[2].Clear;
   sMaiorData.Params[3].Clear;
   if (edSerie.Text <> '') then
     sMaiorData.Params[2].AsString := edSerie.Text
   else
     sMaiorData.Params[3].AsString := 'todasasseriesdenotaf';
   sMaiorData.Open;


   if (not cdsNF.Eof) then
   begin
     btnGeraNFe.Enabled :=      True;
     btnContingencia.Enabled := True;
     btnSPED.Enabled :=         True;
     btnDpec.Enabled :=         True;
     btnFSDA.Enabled :=         True;
     BtnPreVis.Enabled :=       True;
     btnPreVisCont.Enabled :=   True;
     btnPreVisSped.Enabled :=   True;
     btnPreVisDPEC.Enabled :=   True;
     btnPreVisFSDA.Enabled :=   True;
   end
   else
   begin
     btnGeraNFe.Enabled :=      False;
     btnContingencia.Enabled := False;
     btnSPED.Enabled :=         False;
     btnDpec.Enabled :=         False;
     btnFSDA.Enabled :=         False;
     BtnPreVis.Enabled :=       False;
     btnPreVisCont.Enabled :=   False;
     btnPreVisSped.Enabled :=   False;
     btnPreVisDPEC.Enabled :=   False;
     btnPreVisFSDA.Enabled :=   False;
   end;

end;

procedure TfNFeletronica.btnGeraNFeClick(Sender: TObject);
var TD: TTransactionDesc;
  i: integer;
  Protocolo, Recibo, str, itensnf, protenv, vAux, valida : String;
begin
   ACBrNFeDANFERave1.RavFile := str_relatorio + 'NotaFiscalEletronica.rav';

   if (not cds_ccusto.Active) then
     cds_ccusto.Open;
   cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);

   //Seleciona Empresa de acordo com o CCusto selecionado
   if (sEmpresa.Active) then
     sEmpresa.Close;
   sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
   sEmpresa.Open;

   //verifica se o CC foi selecionado caso n�o da mensagem avisando
   if(sEmpresa.IsEmpty) then
     MessageDlg('Centro de custo n�o selecionado', mtError, [mbOK], 0);

   cdsNF.First;
   while not cdsNF.Eof do
   begin
      if (cdsNFSELECIONOU.AsString = 'S') then
      begin
        if(not cdsNFPROTOCOLOENV.IsNull) then
          exit;
         { isto estava fora do IF}
         if (tpNF.ItemIndex = 1) then
         begin
           if (sCliente.Active) then
             sCliente.Close;
           sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
           sCliente.Open;
         end
         else
         begin
          if (sFornec.Active) then
            sFornec.Close;
          sFornec.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
          sFornec.Open;
         end;

         if (sCFOP.Active) then
           sCFOP.Close;
         sCFOP.Params[0].AsString := cdsNFCFOP.AsString;
         if (tpNF.ItemIndex = 1) then
         begin
          sCFOP.Params[1].AsString := sClienteUF.AsString;
          sCFOP.Params[2].AsString := cdsNFCFOP.AsString;
         end
         else
         begin
          sCFOP.Params[1].AsString := sFornecUF.AsString;
          sCFOP.Params[2].AsString := cdsNFCFOP.AsString;
         end;
         sCFOP.Open;
         if (sCFOP.IsEmpty) then
         begin
           MessageDlg('N�o existe este CFOP cadastrado para este ESTADO.'+#13+#10+'(Cadastros -> CFOP-ESTADO).', mtWarning, [mbOK], 0);
           exit;
         end;

          ACBrNFe1.NotasFiscais.Clear;
          with ACBrNFe1.NotasFiscais.Add.NFe do
          begin
            //infNFe.ID := 0                                  // Chave de acesso da NF-e precedida do literal NFe acrescentado a valida��o do formato 2.0

            if (sEstado.Active) then
              sEstado.Close;
            sEstado.Params[0].AsString := sEmpresaUF.asString;
            sEstado.Open;
            Ide.cUF       := sEstadoCODIGO.AsInteger;                   // Codigo do UF do Emitente do documento fiscal
            Ide.cNF       := cdsNFNUMNF.AsInteger;
            Ide.natOp     := sCFOPCFNOME.AsString;

            //Verifica tipo de Pagamento
            getPagamento;

            Ide.cMunFG    := 3554003;
            Ide.modelo    := 55;
            Ide.serie     := 1;
            if (tp_amb = 1) then
            begin
              Ide.tpEmis    := teNormal;
            end
            else if (tp_amb = 2) then
            begin
              Ide.tpEmis    := teContingencia;
              Ide.dhCont    := Now;
              InputQuery('Justificativa de entrada em Conting�ncia', 'Justificativa', vAux);
              Ide.xJust     := vAux;
            end
            else if (tp_amb = 3) then
            begin
              Ide.tpEmis    := teSCAN;
              Ide.serie     := 900;
            end
            else if (tp_amb = 4) then
            begin
              Ide.tpEmis    := teDPEC;
              Ide.dhCont    := Now;
              InputQuery('Justificativa de entrada em Conting�ncia', 'Justificativa', vAux);
              Ide.xJust     := vAux;
            end
            else if (tp_amb = 5) then
            begin
              Ide.tpEmis    := teFSDA;
              Ide.dhCont    := Now;
              InputQuery('Justificativa de entrada em Conting�ncia', 'Justificativa', vAux);
              Ide.xJust     := vAux;
            end;
            if( (cdsNFIDCOMPLEMENTAR.IsNull) or (cdsNFIDCOMPLEMENTAR.AsString = '')) then
              ide.finNFe    := fnNormal
            else
            begin
              ide.finNFe    := fnComplementar;
              ide.NFref.Add.refNFe := cdsNFIDCOMPLEMENTAR.AsString;
            end;
            Ide.nNF       := StrToInt(cdsNFNOTASERIE.AsString);
            protenv       := cdsNFNOTASERIE.AsString;
            Ide.dEmi      := cdsNFDTAEMISSAO.AsDateTime;
            Ide.dSaiEnt   := cdsNFDTASAIDA.AsDateTime;
            Ide.hSaiEnt   := cdsNFHORASAIDA.AsDateTime;
            InfAdic.infCpl := cdsNFCORPONF1.AsString + ' ' + cdsNFCORPONF2.AsString + ' ' + cdsNFCORPONF3.AsString + ' ' + cdsNFCORPONF4.AsString + ' ' + cdsNFCORPONF5.AsString + ' ' + cdsNFCORPONF6.AsString;
            // Tipo de movimenta��o 0 entrada 1 saida
            if ((cdsNFNATUREZA.AsInteger = 20) or (cdsNFNATUREZA.AsInteger = 16)) then
            Ide.tpNF      := tnEntrada
            else
            begin
              Ide.tpNF    := tnSaida;
            end;
            //Ide.tpAmb     := tn2;                           // 1 - Produ��o // 2 Homologa��o
            Ide.verProc   := '1.0.0.0';

            if (sTabIBGE.Active) then
              sTabIBGE.Close;
            sTabIBGE.Params[0].AsString := sEmpresaCIDADE.AsString;
            sTabIBGE.Open;
            //Carrega dados do Emitente
            if ((sEmpresaCD_IBGE.IsNull) or (sEmpresaCD_IBGE.AsString = '')) then
            begin
              MessageDlg('Codigo do IBGE da empresa n�o definido', mtError, [mbOK], 0);
              valida := 'N';
            end;
            if (valida = 'N') then
              exit;
            getEmpresa();
            //CARREGA OS DADOS DO DESTINATARIO CLIENTE/FORNECEDOR
            if( sFornec.Active) then
              if ((sFornecCD_IBGE.IsNull) or (sFornecCD_IBGE.AsString = '')) then
              begin
                MessageDlg('Codigo do IBGE do Fornecedor n�o definido', mtError, [mbOK], 0);
                valida := 'N';
              end;
            if( sCliente.Active) then
              if ((sClienteCD_IBGE.IsNull) or (sClienteCD_IBGE.AsString = '')) then
              begin
                MessageDlg('Codigo do IBGE do Cliente n�o definido', mtError, [mbOK], 0);
                valida := 'N';
              end;
            if (valida = 'N') then
              exit;
            getCLi_Fornec();

            //Carrega os itens da NF
            if (tpNF.ItemIndex = 0) then
            begin
            itensnf := 'select md.CODPRODUTO, md.coddetalhe, md.pIPI, md.vIPI, md.QUANTIDADE, md.CFOP, md.PRECO, md.DESCPRODUTO,'+
                'case when udf_Pos(' + quotedstr('-') +', pr.CODPRO) > 0 then udf_Copy(pr.CODPRO, 0, (udf_Pos(' + quotedstr('-') + ', pr.CODPRO)-1)) ' +
                'ELSE pr.CODPRO END as codpro, md.VLR_BASEICMS, ' +
                'pr.UNIDADEMEDIDA, UDF_TRIM(md.CST) CST, md.CSOSN, md.ICMS, md.pIPI, md.vIPI, md.VLR_BASEICMS, UDF_ROUNDDEC(md.VALOR_ICMS, 2) as VALOR_ICMS, UDF_ROUNDDEC(md.VLR_BASE, 2) as VLR_BASE, ' +
                'UDF_ROUNDDEC(md.ICMS_SUBST, 2) as ICMS_SUBST, md.ICMS_SUBSTD, UDF_ROUNDDEC(md.FRETE, 2) as FRETE, UDF_ROUNDDEC(md.VALOR_DESCONTO, 2) as VALOR_DESCONTO, (md.VLR_BASE * md.QUANTIDADE) as VALTOTAL, ' +
                'UDF_ROUNDDEC(md.VALOR_PIS, 2) as VALOR_PIS, UDF_ROUNDDEC(md.VALOR_COFINS, 2) as VALOR_COFINS, md.VALOR_SEGURO, md.VALOR_OUTROS, UDF_ROUNDDEC(md.II, 2) as II, UDF_ROUNDDEC(md.BCII, 2) as BCII ' +
                ' from compra cp  inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = cp.CODMOVIMENTO ' +
                'inner join NOTAFISCAL nf on nf.CODVENDA = cp.CODCOMPRA ' +
                'inner join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO ' +
                'where cp.CODCOMPRA = ' + IntToStr(cdsNFCODVENDA.AsInteger)  + ' and ((nf.NATUREZA = 20) or (nf.NATUREZA = 21))' ;
            end
            else
            begin
            itensnf :=  'select md.CODPRODUTO, md.coddetalhe, md.QUANTIDADE, md.PRECO, md.CFOP, md.DESCPRODUTO, ' +
                'case when udf_Pos(' + quotedstr('-') +', pr.CODPRO) > 0 then udf_Copy(pr.CODPRO, 0, (udf_Pos(' + quotedstr('-') + ', pr.CODPRO)-1)) ' +
                'ELSE pr.CODPRO END as codpro, pr.UNIDADEMEDIDA, UDF_TRIM(md.CST) CST, md.ICMS, md.pIPI, ' +
                'md.vIPI, md.CSOSN, md.VLR_BASEICMS, UDF_ROUNDDEC(md.VALOR_ICMS, 2) as VALOR_ICMS, ' +
                'UDF_ROUNDDEC(md.VLR_BASE, 2) as VLR_BASE, UDF_ROUNDDEC(md.ICMS_SUBST, 2) as ICMS_SUBST, ' +
                'UDF_ROUNDDEC(md.VALOR_PIS, 2) as VALOR_PIS, UDF_ROUNDDEC(md.VALOR_COFINS, 2) as VALOR_COFINS,  UDF_ROUNDDEC(md.FRETE, 2) as FRETE, UDF_ROUNDDEC(md.VALOR_DESCONTO, 2) as VALOR_DESCONTO, ' +
                'md.ICMS_SUBSTD, UDF_ROUNDDEC((md.VLR_BASE * md.QUANTIDADE), 2) as VALTOTAL, md.VALOR_SEGURO, md.VALOR_OUTROS, UDF_ROUNDDEC(md.II, 2) as II, UDF_ROUNDDEC(md.BCII, 2) as BCII ' +
                'from VENDA vd inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = vd.CODMOVIMENTO ' +
                'inner join NOTAFISCAL nf on nf.CODVENDA = vd.CODVENDA ' +
                'inner join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO ' +
                'where vd.CODVENDA = ' + IntToStr(cdsNFCODVENDA.AsInteger)  + ' and ((nf.NATUREZA = 12) or (nf.NATUREZA = 15) or (nf.NATUREZA = 16))' ;
            end;

            if (cdsItensNF.Active) then
              cdsItensNF.Close;

            cdsItensNF.CommandText := itensnf;
            cdsItensNF.Open;
            i := 1;
            while not cdsItensNF.Eof do // Escrevo os itens
            begin
              if (sProdutos.Active) then
                sProdutos.Close;
              sProdutos.Params[0].AsInteger := cdsItensNFCODPRODUTO.AsInteger;
              try
                sProdutos.Open;
              finally
                if ((sProdutosUNIDADEMEDIDA.AsString = '') or (sProdutosUNIDADEMEDIDA.IsNull) or (sProdutosUNIDADEMEDIDA.AsString = ' ')) then
                begin
                  MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' sem Unidade de Medida', mtError, [mbOK], 0);
                  valida := 'N';
                end;
                if ((sProdutosNCM.AsString = '00000000') or (sProdutosNCM.IsNull) ) then
                begin
                  MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' com NCM Nulo ou Inv�lido', mtError, [mbOK], 0);
                  valida := 'N';
                end;
                if ((sProdutosORIGEM.IsNull) ) then
                begin
                  MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' com Origem Nula', mtError, [mbOK], 0);
                  valida := 'N';
                end;
                if (((cdsItensNFCSOSN.IsNull) or (cdsItensNFCSOSN.AsString = '')) and ((cdsItensNFCST.IsNull) or (cdsItensNFCST.AsString = ''))) then
                begin
                  MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' sem CST ou CSOSN', mtError, [mbOK], 0);
                  valida := 'N';
                end;
              end;
              // DADOS DOS PRODUTOS DA NOTA
              getItens(i);
              i := i + 1;
              cdsItensNF.Next;
            end;
            getTransportadora();

            {exporta.UFembarq := 'SP';
            exporta.xLocEmbarq := 'Aeroporto Internacional de Viracopos - Campinas';}

            //VALOR TORAL
            if (cdsNFBASE_ICMS.IsNull) then
                MessageDlg('Base de c�lculo nula', mtError, [mbOK], 0);
            Total.ICMSTot.vBC   := cdsNFBASE_ICMS.AsVariant;
            if (cdsNFVALOR_ICMS.IsNull) then
                MessageDlg('ICMS nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vICMS   := cdsNFVALOR_ICMS.AsVariant;
            if (cdsNFBASE_ICMS_SUBST.IsNull) then
                MessageDlg('Base ICMS ST nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;
            if (cdsNFVALOR_ICMS_SUBST.IsNull) then
                MessageDlg('ICMS ST nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vST   := cdsNFVALOR_ICMS_SUBST.AsVariant;
            if (cdsNFVALOR_PRODUTO.IsNull) then
                MessageDlg('Valor dos produtos nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vProd := cdsNFVALOR_PRODUTO.AsVariant;
            if (cdsNFVALOR_FRETE.IsNull) then
                MessageDlg('Valor do Frete nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vFrete := cdsNFVALOR_FRETE.AsVariant;
            if (cdsNFVALOR_SEGURO.IsNull) then
                MessageDlg('Valor do Seguro nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vSeg := cdsNFVALOR_SEGURO.AsVariant;
            Total.ICMSTot.vDesc := cdsNFVALOR_DESCONTO.AsVariant;
            Total.ICMSTot.vII := cdsNFII.AsVariant;
            if (cdsNFVALOR_IPI.IsNull) then
                MessageDlg('Valor do IPI nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vIPI := cdsNFVALOR_IPI.AsVariant;
            if ( (cdsNFVALOR_PIS.AsFloat <> 0 )or (cdsNFVALOR_PIS.AsFloat <> null )) then
              Total.ICMSTot.vPIS := cdsNFVALOR_PIS.AsFloat;
            if ( (cdsNFVALOR_COFINS.AsFloat <> 0) or (cdsNFVALOR_COFINS.AsFloat <> null )) then
              Total.ICMSTot.vCOFINS := cdsNFVALOR_COFINS.AsFloat;
            if (cdsNFOUTRAS_DESP.IsNull) then
                MessageDlg('Valor de outras despesas nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vOutro := cdsNFOUTRAS_DESP.AsVariant;
            if (cdsNFVALOR_TOTAL_NOTA.IsNull) then
                MessageDlg('Valor do Total da Nota nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vNF   := cdsNFVALOR_TOTAL_NOTA.AsVariant;
          end;
      end;
      cdsNF.Next;
   end;
   AcbrNfe1.Configuracoes.Geral.PathSalvar := sempresaDIVERSOS1.AsString;
   ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
   MemoResp.Lines.LoadFromFile(ACBrNFe1.Configuracoes.Geral.PathSalvar+'\'+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
   MessageDlg('Arquivo gerado com sucesso.', mtInformation, [mbOK], 0);
   //Gera Envio da Nota
   ACBrNFeDANFERave1.Site := sEmpresaWEB.AsString;
   ACBrNFeDANFERave1.Email := sEmpresaE_MAIL.AsString;
   ACBrNFeDANFERave1.CasasDecimais._vUnCom := 3;

   if ( (tp_amb = 2) or (tp_amb = 5)) then
   begin
     ACBrNFe1.NotasFiscais.Assinar;
     ACBrNFe1.NotasFiscais.Valida;
     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     DecimalSeparator := '.';
     //SALVA NFe e NOMEXML no BD
     dm.sqlsisAdimin.ExecuteDirect('UPDATE NOTAFISCAL SET XMLNFE = ' + quotedStr(ACBrNFe1.NotasFiscais.Items[0].XML)
     + ', NOMEXML = ' + QuotedStr(copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml')
     + ' WHERE NOTASERIE = ' + quotedStr(protenv));
     dm.sqlsisAdimin.StartTransaction(TD);
     dm.sqlsisAdimin.Commit(TD);
     DecimalSeparator := ',';
     ACBrNFe1.NotasFiscais.Imprimir;
   end
   else if (tp_amb = 4) then
   begin
     ACBrNFe1.NotasFiscais.Assinar;
     ACBrNFe1.NotasFiscais.Valida;
     ACBrNFe1.WebServices.EnviarDPEC.Executar;
    //protocolo de envio ao DPEC e impress�o do DANFE
     ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC + ' ' +
      DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
     ACBrNFe1.NotasFiscais.Imprimir;
     ShowMessage(DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC));
     ShowMessage(ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC);

     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     DecimalSeparator := '.';
     //SALVA NFe e NOMEXML no BD
     dm.sqlsisAdimin.ExecuteDirect('UPDATE NOTAFISCAL SET XMLNFE = ' + quotedStr(ACBrNFe1.NotasFiscais.Items[0].XML)
     + ', NOMEXML = ' + QuotedStr(copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml')
     + ' WHERE NOTASERIE = ' + quotedStr(protenv));
     //SALVA PROTOCOLO DPEC
     str := 'UPDATE NOTAFISCAL SET PROTOCOLOENV = ' + quotedStr(ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC);
     str := str + ' WHERE NOTASERIE = ' + quotedStr(protenv);
     dm.sqlsisAdimin.ExecuteDirect(str);
     dm.sqlsisAdimin.StartTransaction(TD);
     dm.sqlsisAdimin.Commit(TD);

   end
   else
     ACBrNFe1.Enviar(0);
   AcbrNfe1.Configuracoes.Geral.PathSalvar := sempresaDIVERSOS1.AsString;
   if ( (tp_amb <> 2) or (tp_amb <> 5)) then
   begin
     ShowMessage('N� do Protocolo de envio ' + ACBrNFe1.WebServices.Retorno.Protocolo);
     ShowMessage('N� do Recibo de envio ' + ACBrNFe1.WebServices.Retorno.Recibo);

     Protocolo := ACBrNFe1.WebServices.Retorno.Protocolo;
     Recibo := ACBrNFe1.WebServices.Retorno.Recibo;

    //PEGA A RESPOSTA
     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     DecimalSeparator := '.';
     //SALVA NFe e NOMEXML no BD
     dm.sqlsisAdimin.ExecuteDirect('UPDATE NOTAFISCAL SET XMLNFE = ' + quotedStr(ACBrNFe1.NotasFiscais.Items[0].XML)
     + ', NOMEXML = ' + QuotedStr(copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml')
     + ' WHERE NOTASERIE = ' + quotedStr(protenv));
     //SALVA OS PROTOCOLOS
     str := 'UPDATE NOTAFISCAL SET PROTOCOLOENV = ' + quotedStr(Protocolo);
     str := str + ', NUMRECIBO = ' + QuotedStr(Recibo);
     str := str + ' WHERE NOTASERIE = ' + quotedStr(protenv);
     dm.sqlsisAdimin.ExecuteDirect(str);
     dm.sqlsisAdimin.StartTransaction(TD);
     dm.sqlsisAdimin.Commit(TD);
     DecimalSeparator := ',';
   end;

   btnListar.Click;
   ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
end;

procedure TfNFeletronica.JvDBGrid1CellClick(Column: TColumn);
begin
     cdsNF.Edit;
     if cdsNFSELECIONOU.AsString = 'S' then
       cdsNFSELECIONOU.AsString := ''
     else
       cdsNFSELECIONOU.AsString := 'S';
end;

procedure TfNFeletronica.JvDBGrid1ColEnter(Sender: TObject);
begin
   if JvDBGrid1.SelectedField = cdsNFSELECIONOU then
     JvDBGrid1.Options := JvDBGrid1.Options - [dgEditing]
   else
      JvDBGrid1.Options := JvDBGrid1.Options + [dgEditing];
end;

procedure TfNFeletronica.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  // Selecionou
  if Column.Field = cdsNFSELECIONOU then
  begin
     JvDBGrid1.Canvas.FillRect(Rect);
     ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 1);
     if cdsNFSELECIONOU.AsString = 'S' then
       ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 2)
     else
       ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 0);
  end;
end;

procedure TfNFeletronica.BitBtn3Click(Sender: TObject);
begin
  cdsNF.DisableControls;
  cdsNF.First;
  while not cdsNF.Eof do
  begin
     cdsNF.Edit;
     cdsNFSELECIONOU.AsString := 'S';
     cdsNF.Post;
     cdsNF.Next;
  end;
  cdsNF.First;
  cdsNF.EnableControls;
end;

procedure TfNFeletronica.BitBtn4Click(Sender: TObject);
begin
  cdsNF.DisableControls;
  cdsNF.First;
  while not cdsNF.Eof do
  begin
     cdsNF.Edit;
     cdsNFSELECIONOU.AsString := '';
     cdsNF.Post;
     cdsNF.Next;
  end;
  cdsNF.First;
  cdsNF.EnableControls;
end;

procedure TfNFeletronica.FormCreate(Sender: TObject);
var
 diretorio : string;
begin
//  sCtrlResize.CtrlResize(TForm(fNFeletronica));
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if cds_ccusto.Active then
    cds_ccusto.Close;
  cds_ccusto.Params[0].AsString := conta_local;
  cds_ccusto.Open;
  // populo a combobox
  cds_ccusto.First;
  while not cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(cds_ccustoNOME.AsString);
    cds_ccusto.Next;
  end;
  tp_amb := 1;
  ACBrNFeDANFERave1.RavFile := str_relatorio + 'NotaFiscalEletronica.rav';
  diretorio := GetCurrentDir;
  ACBrNFeDANFERave1.Logo :=  diretorio + '\logo.bmp';
  ACBrNFe1.NotasFiscais.Add.NFe.Ide.tpEmis    := teNormal;
end;

procedure TfNFeletronica.btnImprimeClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFeDANFERave1.Site := sEmpresaWEB.AsString;
    ACBrNFeDANFERave1.Email := sEmpresaE_MAIL.AsString;
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
    begin
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC + ' ' +
       DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
      ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
      ACBrNFe1.WebServices.ConsultaDPEC.Executar;
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.Retorno.Protocolo;
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
    end
    else
    begin
      ACBrNFe1.Consultar;
    end;
    ACBrNFe1.NotasFiscais.Imprimir;
   ACBrNFe1.NotasFiscais.Items[0].SaveToFile;    

  end;
end;

procedure TfNFeletronica.sbtnGetCertClick(Sender: TObject);
begin
   {$IFNDEF ACBrNFeOpenSSL}
   edtNumSerie.Text := ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
   {$ENDIF}

end;

procedure TfNFeletronica.btnGeraPDFClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFeDANFERave1.PathPDF := Edit1.Text;
    ACBrNFe1.NotasFiscais.ImprimirPDF;
  end;
end;

procedure TfNFeletronica.btnStatusClick(Sender: TObject);
var vXMLDoc: TXMLDocument;
    motivo: WideString;
    NomArquivo, Registro: String;
    arquivo: TextFile;
begin
  NomArquivo := 'c:\home\stats.xml';
  vXMLDoc := TXMLDocument.Create(self);
  Try
  //TESTA STATUS DO SERVI�O
  ACBrNFe1.WebServices.StatusServico.Executar;
  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);

  //SALVA RESPOSTA NO ARQUIVO
  AssignFile(Arquivo, NomArquivo);
  Rewrite(Arquivo);
  Registro := MemoResp.Text;
  writeln(Arquivo, Registro);
  CloseFile(arquivo);

  //ABRE A RESPOSTA NO ARQUIVO
  vXMLDoc.LoadFromFile('c:\home\stats.xml');

  //PEGA A RESPOSTA
   with vXMLDoc.DocumentElement  do
   begin
     motivo :=    ChildNodes['xMotivo'].text;
   end;
  MessageDlg( motivo, mtInformation, [mbOK], 0);
  finally
    VXMLDoc.Free;
  end;
end;

procedure TfNFeletronica.btnCancelaNFeClick(Sender: TObject);
var
  vXMLDoc: TXMLDocument;
  vAux, Protocolo, caminho, str : String;
  //numnf : WideString;
begin
  vXMLDoc := TXMLDocument.Create(self);
  Try
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt:= '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
   if OpenDialog1.Execute then
   begin
    ACBrNFe1.NotasFiscais.Clear;
    caminho := OpenDialog1.FileName;
    ACBrNFe1.NotasFiscais.LoadFromFile(caminho);
    if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux)) then
      exit;
     ACBrNFe1.Cancelamento(vAux);
     MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Cancelamento.RetWS);
     ShowMessage(IntToStr(ACBrNFe1.WebServices.Cancelamento.cStat));
     ShowMessage('N� do Protocolo de Cancelamento ' + ACBrNFe1.WebServices.Cancelamento.Protocolo);
    Protocolo := ACBrNFe1.WebServices.Cancelamento.Protocolo;
    AcbrNfe1.Configuracoes.Geral.Salvar := True;
   end;

  //ABRE A NOTA
  vXMLDoc.LoadFromFile(caminho);

   //PEGA A RESPOSTA
   with vXMLDoc.DocumentElement  do
   begin
     numnf := ChildNodes['NFe'].ChildNodes['infNFe'].ChildNodes['ide'].ChildNodes['nNF'].Text;
     if (numnf = '') then
       numnf := ChildNodes['infNFe'].ChildNodes['ide'].ChildNodes['nNF'].Text;
   end;
   DecimalSeparator := '.';
   str := 'Update NOTAFISCAL set PROTOCOLOCANC = ' + quotedstr(Protocolo);
   str := str + ' WHERE NOTAFISCAL = ' + numnf;
   dm.sqlsisAdimin.ExecuteDirect(str);
   DecimalSeparator := ',';
  finally
  VXMLDoc.Free;
  end;
  chkTodas.Checked := True;
  btnListar.Click;

end;

procedure TfNFeletronica.btnConsultaClick(Sender: TObject);
var vXMLDoc: TXMLDocument;
    motivo: WideString;
    NomArquivo, Registro: String;
    arquivo: TextFile;
begin
  NomArquivo := 'c:\home\stats.xml';
  vXMLDoc := TXMLDocument.Create(self);
 Try
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.Consultar;
    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
  end;

  //SALVA RESPOSTA NO ARQUIVO
  AssignFile(Arquivo, NomArquivo);
  Rewrite(Arquivo);
  Registro := MemoResp.Text;
  writeln(Arquivo, Registro);
  CloseFile(arquivo);

  //ABRE A RESPOSTA NO ARQUIVO
  vXMLDoc.LoadFromFile('c:\home\stats.xml');

  //PEGA A RESPOSTA
  with vXMLDoc.DocumentElement  do
  begin
    motivo := ChildNodes['infProt'].ChildNodes['xMotivo'].text;
  end;
 MessageDlg( motivo, mtInformation, [mbOK], 0);
 finally
 VXMLDoc.Free;
 end;
end;

procedure TfNFeletronica.ValidaNFeClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.NotasFiscais.Valida;
    showmessage('Nota Fiscal Eletr�nica Valida');
  end;
end;

procedure TfNFeletronica.BtnEnvEmailClick(Sender: TObject);
begin
  fNFeMail:=TfNFeMail.Create(Application);
  try
    fNFeMail.ShowModal;
  finally
    fNFeMail.Free;
  end;
end;

procedure TfNFeletronica.btnInutilizarClick(Sender: TObject);
begin
 ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
 fNFeInutilizar:=TfNFeInutilizar.Create(Application);
 try
   fNFeInutilizar.ShowModal;
 finally
   fNFeInutilizar.Free;
 end;
end;

procedure TfNFeletronica.FormShow(Sender: TObject);
begin
 cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);

 if (sEmpresa.Active) then
   sEmpresa.Close;
 sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
 sEmpresa.Open;

 if (sEmpresa1.Active) then
   sEmpresa1.Close;
 sEmpresa1.Open;

 Edit1.Text := sEmpresa1DIVERSOS1.AsString;

 if (sEmpresa1TIPO.AsString = '1') then
 begin
   ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao;
   label5.Font.Color := clBlue;
   Label5.Caption :=  'PRODU��O.';
 end
 else
 begin
  ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
  label5.Font.Color := clRed;
  Label5.Caption :=  'HOMOLOGA��O.';
 end;
 ACBrNFe1.Configuracoes.Geral.PathSalvar := sEmpresa1DIVERSOS1.AsString;
 ACBrNFeDANFERave1.PathPDF := sEmpresa1DIVERSOS1.AsString;
 sEmpresa1.Close;
 if (JvDateEdit1.Text = '  /  /    ') then
   JvDateEdit1.Text := DateToStr(Now);
 if (JvDateEdit2.Text = '  /  /    ') then
   JvDateEdit2.Text := DateToStr(Now)

end;

procedure TfNFeletronica.BtnPreVisClick(Sender: TObject);
var
  i: integer;
  itensnf, valida : String;
begin

 if (not cds_ccusto.Active) then
   cds_ccusto.Open;
 cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);

 //Seleciona Empresa de acordo com o CCusto selecionado
 if (sEmpresa.Active) then
   sEmpresa.Close;
 sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
 sEmpresa.Open;

 //verifica se o CC foi selecionado caso n�o da mensagem avisando
 if(sEmpresa.IsEmpty) then
   MessageDlg('Centro de custo n�o selecionado', mtError, [mbOK], 0);

 cdsNF.First;
 while not cdsNF.Eof do
 begin
  if (cdsNFSELECIONOU.AsString = 'S') then
  begin
   { Isto estava fora do IF }
   if (tpNF.ItemIndex = 1) then
   begin
     if (sCliente.Active) then
       sCliente.Close;
     sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
     sCliente.Open;
   end
   else
   begin
    if (sFornec.Active) then
      sFornec.Close;
    sFornec.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
    sFornec.Open;
   end;

   if (sCFOP.Active) then
     sCFOP.Close;
   sCFOP.Params[0].AsString := cdsNFCFOP.AsString;
   if (tpNF.ItemIndex = 1) then
   begin
    sCFOP.Params[1].AsString := sClienteUF.AsString;
    sCFOP.Params[2].AsString := cdsNFCFOP.AsString;
   end
   else
   begin
    sCFOP.Params[1].AsString := sFornecUF.AsString;
    sCFOP.Params[2].AsString := cdsNFCFOP.AsString;
   end;
   sCFOP.Open;

   ACBrNFe1.NotasFiscais.Clear;
   with ACBrNFe1.NotasFiscais.Add.NFe do
   begin
    //infNFe.ID := 0                                  // Chave de acesso da NF-e precedida do literal NFe acrescentado a valida��o do formato 2.0
    if (sEstado.Active) then
      sEstado.Close;
    sEstado.Params[0].AsString := sEmpresaUF.asString;
    sEstado.Open;
    Ide.cUF       := sEstadoCODIGO.AsInteger;                               // Codigo do UF do Emitente do documento fiscal
    Ide.cNF       := cdsNFNUMNF.AsInteger;
    Ide.natOp     := sCFOPCFNOME.AsString;
         //Verifica tipo de Pagamento
    getPagamento;
    Ide.cMunFG    := 3554003;
    Ide.modelo    := 55;
    if (tp_amb = 1) then
    begin
      Ide.serie     := 1;
      Ide.tpEmis    := teNormal;
    end
    else if (tp_amb = 2) then
    begin
      Ide.tpEmis    := teContingencia;
      Ide.serie     := 1;
    end
    else if (tp_amb = 3) then
    begin
      Ide.tpEmis    := teSCAN;
      Ide.serie     := 900;
    end
    else if (tp_amb = 4) then
    begin
      Ide.tpEmis    := teDPEC;
      Ide.serie     := 1;
    end
    else if (tp_amb = 5) then
    begin
      Ide.tpEmis    := teFSDA;
      Ide.serie     := 1;
    end;

    if( (cdsNFIDCOMPLEMENTAR.IsNull) or (cdsNFIDCOMPLEMENTAR.AsString = '')) then
      ide.finNFe    := fnNormal
    else
    begin
      ide.finNFe    := fnComplementar;
      ide.NFref.Add.refNFe := cdsNFIDCOMPLEMENTAR.AsString;
    end;
    Ide.nNF       := StrToInt(cdsNFNOTASERIE.AsString);
    Ide.dEmi      := cdsNFDTAEMISSAO.AsDateTime;
    Ide.dSaiEnt   := cdsNFDTASAIDA.AsDateTime;
    Ide.hSaiEnt   := cdsNFHORASAIDA.AsDateTime;
    InfAdic.infCpl := cdsNFCORPONF1.AsString + ' ' + cdsNFCORPONF2.AsString + ' ' + cdsNFCORPONF3.AsString + ' ' + cdsNFCORPONF4.AsString + ' ' + cdsNFCORPONF5.AsString + ' ' + cdsNFCORPONF6.AsString;
    // Tipo de movimenta��o 0 entrada 1 saida
    if ((cdsNFNATUREZA.AsInteger = 20) or (cdsNFNATUREZA.AsInteger = 16)) then
    Ide.tpNF      := tnEntrada
    else
    begin
      Ide.tpNF    := tnSaida;
    end;
    //Ide.tpAmb     := tn2;                           // 1 - Produ��o // 2 Homologa��o
    Ide.verProc   := '1.0.0.0';

    if (sTabIBGE.Active) then
      sTabIBGE.Close;
    sTabIBGE.Params[0].AsString := sEmpresaCIDADE.AsString;
    sTabIBGE.Open;
    //Carrega dados do Emitente
    //VERIFICA SE CODIGO IBGE EST� PREENCHIDO NA EMPRESA
    if ( (sEmpresaCD_IBGE.IsNull) or (sEmpresaCD_IBGE.AsString = '') ) then
    begin
      MessageDlg('Codigo do IBGE da empresa n�o definido', mtError, [mbOK], 0);
      valida := 'N';
    end;
    getEmpresa();
    //CARREGA OS DADOS DO DESTINATARIO CLIENTE/FORNECEDOR
    if( sFornec.Active) then
      if ((sFornecCD_IBGE.IsNull) or (sFornecCD_IBGE.AsString = '') ) then
      begin
        MessageDlg('Codigo do IBGE do Fornecedor n�o definido', mtError, [mbOK], 0);
        valida := 'N';
      end;
    if( sCliente.Active) then
      if ((sClienteCD_IBGE.IsNull) or (sClienteCD_IBGE.AsString = '') ) then
      begin
        MessageDlg('Codigo do IBGE do Cliente n�o definido', mtError, [mbOK], 0);
        valida := 'N';
      end;
      if (valida = 'N') then
        exit;
    getCLi_Fornec();


    //Carrega os itens da NF
    if (tpNF.ItemIndex = 0) then
    begin
    itensnf := 'select md.CODPRODUTO, md.coddetalhe, md.pIPI, md.vIPI, md.QUANTIDADE, md.CFOP, md.PRECO, md.DESCPRODUTO,'+
        'case when udf_Pos(' + quotedstr('-') +', pr.CODPRO) > 0 then udf_Copy(pr.CODPRO, 0, (udf_Pos(' + quotedstr('-') + ', pr.CODPRO)-1)) ' +
        'ELSE pr.CODPRO END as codpro, md.VLR_BASEICMS, ' +
        'pr.UNIDADEMEDIDA, UDF_TRIM(md.CST) CST, md.CSOSN, md.ICMS, md.pIPI, md.vIPI, md.VLR_BASEICMS, UDF_ROUNDDEC(md.VALOR_ICMS, 2) as VALOR_ICMS, UDF_ROUNDDEC(md.VLR_BASE, 2) as VLR_BASE, ' +
        'UDF_ROUNDDEC(md.ICMS_SUBST, 2) as ICMS_SUBST, md.ICMS_SUBSTD, UDF_ROUNDDEC(md.FRETE, 2) as FRETE, UDF_ROUNDDEC(md.VALOR_DESCONTO, 2) as VALOR_DESCONTO, (md.VLR_BASE * md.QUANTIDADE) as VALTOTAL, ' +
        'UDF_ROUNDDEC(md.VALOR_PIS, 2) as VALOR_PIS, UDF_ROUNDDEC(md.VALOR_COFINS, 2) as VALOR_COFINS, md.VALOR_SEGURO, md.VALOR_OUTROS, UDF_ROUNDDEC(md.II, 2) as II, UDF_ROUNDDEC(md.BCII, 2) as BCII ' +
        ' from compra cp  inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = cp.CODMOVIMENTO ' +
        'inner join NOTAFISCAL nf on nf.CODVENDA = cp.CODCOMPRA ' +
        'inner join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO ' +
        'where cp.CODCOMPRA = ' + IntToStr(cdsNFCODVENDA.AsInteger)  + ' and ((nf.NATUREZA = 20) or (nf.NATUREZA = 21))' ;
    end
    else
    begin
    itensnf :=  'select md.CODPRODUTO, md.coddetalhe, md.QUANTIDADE, md.PRECO, md.CFOP, md.DESCPRODUTO, ' +
        'case when udf_Pos(' + quotedstr('-') +', pr.CODPRO) > 0 then udf_Copy(pr.CODPRO, 0, (udf_Pos(' + quotedstr('-') + ', pr.CODPRO)-1)) ' +
        'ELSE pr.CODPRO END as codpro, pr.UNIDADEMEDIDA, UDF_TRIM(md.CST) CST, md.ICMS, md.pIPI, ' +
        'md.vIPI, md.CSOSN, md.VLR_BASEICMS, UDF_ROUNDDEC(md.VALOR_ICMS, 2) as VALOR_ICMS, ' +
        'UDF_ROUNDDEC(md.VLR_BASE, 2) as VLR_BASE, UDF_ROUNDDEC(md.ICMS_SUBST, 2) as ICMS_SUBST, ' +
        'UDF_ROUNDDEC(md.VALOR_PIS, 2) as VALOR_PIS, UDF_ROUNDDEC(md.VALOR_COFINS, 2) as VALOR_COFINS,  UDF_ROUNDDEC(md.FRETE, 2) as FRETE, UDF_ROUNDDEC(md.VALOR_DESCONTO, 2) as VALOR_DESCONTO, ' +
        'md.ICMS_SUBSTD, UDF_ROUNDDEC((md.VLR_BASE * md.QUANTIDADE), 2) as VALTOTAL, md.VALOR_SEGURO, md.VALOR_OUTROS, UDF_ROUNDDEC(md.II, 2) as II, UDF_ROUNDDEC(md.BCII, 2) as BCII ' +
        'from VENDA vd inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = vd.CODMOVIMENTO ' +
        'inner join NOTAFISCAL nf on nf.CODVENDA = vd.CODVENDA ' +
        'inner join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO ' +
        'where vd.CODVENDA = ' + IntToStr(cdsNFCODVENDA.AsInteger)  + ' and ((nf.NATUREZA = 12) or (nf.NATUREZA = 15) or (nf.NATUREZA = 16))' ;
    end;

    if (cdsItensNF.Active) then
      cdsItensNF.Close;

    cdsItensNF.CommandText := itensnf;
    cdsItensNF.Open;
    i := 1;
    while not cdsItensNF.Eof do // Escrevo os itens
    begin
     if (sProdutos.Active) then
       sProdutos.Close;
     sProdutos.Params[0].AsInteger := cdsItensNFCODPRODUTO.AsInteger;
     try
       sProdutos.Open;
     finally
       if ((sProdutosUNIDADEMEDIDA.AsString = '') or (sProdutosUNIDADEMEDIDA.IsNull) or (sProdutosUNIDADEMEDIDA.AsString = ' ')) then
       begin
         MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' sem Unidade de Medida', mtError, [mbOK], 0);
         valida := 'N';
       end;
       if ((sProdutosNCM.AsString = '00000000') or (sProdutosNCM.IsNull) ) then
       begin
         MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' com NCM Nulo ou Inv�lido', mtError, [mbOK], 0);
         valida := 'N';
       end;
       if ((sProdutosORIGEM.IsNull) ) then
       begin
         MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' com Origem Nula', mtError, [mbOK], 0);
         valida := 'N';
       end;
       if (((cdsItensNFCSOSN.IsNull) or (cdsItensNFCSOSN.AsString = '')) and ((cdsItensNFCST.IsNull) or (cdsItensNFCST.AsString = ''))) then
       begin
         MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' sem CST ou CSOSN', mtError, [mbOK], 0);
         valida := 'N';
       end;
     end;
     if (valida = 'N') then
       exit;
      // DADOS DOS PRODUTOS DA NOTA
      getItens(i);
      i := i + 1;
      cdsItensNF.Next;
    end;
    getTransportadora();
    //VALOR TORAL
    Total.ICMSTot.vBC   := cdsNFBASE_ICMS.AsVariant;
    Total.ICMSTot.vICMS   := cdsNFVALOR_ICMS.AsVariant;
    Total.ICMSTot.vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;
    Total.ICMSTot.vST   := cdsNFVALOR_ICMS_SUBST.AsVariant;
    Total.ICMSTot.vProd := cdsNFVALOR_PRODUTO.AsVariant;
    Total.ICMSTot.vFrete := cdsNFVALOR_FRETE.AsVariant;
    Total.ICMSTot.vSeg := cdsNFVALOR_SEGURO.AsVariant;
    Total.ICMSTot.vDesc   := cdsNFVALOR_DESCONTO.AsVariant;
    Total.ICMSTot.vIPI := cdsNFVALOR_IPI.AsVariant;
    if ( (cdsNFVALOR_PIS.AsFloat <> 0 )or (cdsNFVALOR_PIS.AsFloat <> null )) then
      Total.ICMSTot.vPIS := cdsNFVALOR_PIS.AsFloat;
    if ( (cdsNFVALOR_COFINS.AsFloat <> 0) or (cdsNFVALOR_COFINS.AsFloat <> null )) then
      Total.ICMSTot.vCOFINS := cdsNFVALOR_COFINS.AsFloat;
    Total.ICMSTot.vOutro := cdsNFOUTRAS_DESP.AsVariant;
    Total.ICMSTot.vNF   := cdsNFVALOR_TOTAL_NOTA.AsVariant;
    end;
  end;
  cdsNF.Next;
 end;
 ACBrNFeDANFERave1.RavFile := str_relatorio + 'NFe_Teste.rav';
 ACBrNFeDANFERave1.Site := sEmpresaWEB.AsString;
 ACBrNFeDANFERave1.Email := sEmpresaE_MAIL.AsString;
 ACBrNFeDANFERave1.CasasDecimais._vUnCom := 3;
 ACBrNFe1.NotasFiscais.Imprimir;
 ACBrNFeDANFERave1.RavFile := str_relatorio + 'NotaFiscalEletronica.rav';

end;

procedure TfNFeletronica.btnSPEDClick(Sender: TObject);
begin
    tp_amb := 3;
    btnGeraNFeClick(Sender);
    tp_amb := 1;
end;

procedure TfNFeletronica.btnSairVendaClick(Sender: TObject);
begin
  if (dmnf.FormExiste(fVendas) = True) then
  begin
    if (dmnf.FormExiste(fVendaFinalizar) = True) then
    begin
      if (dmnf.FormExiste(fNotaf) = True) then
      begin
        fNotaf.Close;
        fVendaFinalizar.Close;
        fVendas.btnIncluir.Click;
        fVendas.btnCancelar.Click;
        Close;
      end;
    end;
  end;
end;

procedure TfNFeletronica.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfNFeletronica.getCLi_Fornec();
var
  IERG : integer;
begin
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    //Carrega dados do Destinat�rio
    // FORNECEDOR
    if (tpNF.ItemIndex = 0) then
    begin
      Dest.CNPJCPF           := RemoveChar(sFornecCNPJ.AsString);
      Dest.xNome             := sFornecRAZAOSOCIAL.AsString;
      Dest.EnderDest.xLgr    := sFornecLOGRADOURO.AsString;
      if ((sFornecNUMERO.IsNull) or (sFornecNUMERO.AsString = '')) then
      begin
        Dest.EnderDest.nro     := 'sn';
      end
      else
        Dest.EnderDest.nro     := sFornecNUMERO.AsString;
      if ((not sFornecCOMPLEMENTO.IsNull) or ( sFornecCOMPLEMENTO.AsString <> '')) then
        Dest.EnderDest.xCpl    := sFornecCOMPLEMENTO.AsString;
      Dest.EnderDest.xBairro := sFornecBAIRRO.AsString;
      Dest.EnderDest.cMun    := StrToInt(RemoveChar(sFornecCD_IBGE.AsString));
      Dest.EnderDest.xMun    := sFornecCIDADE.AsString;
      Dest.EnderDest.UF      := sFornecUF.AsString;
      Dest.EnderDest.CEP     := StrToInt(RemoveChar(sFornecCEP.AsString));
      Dest.EnderDest.cPais   := StrToInt(sFornecCODPAIS.asString);
      Dest.EnderDest.xPais   := sFornecPAIS.AsString;
      Dest.EnderDest.Fone    := sFornecDDD.AsString + sFornecTELEFONE.AsString;
      Dest.IE                := RemoveChar(sFornecINSCESTADUAL.AsString);
    end
    //CLIENTE
    else
    begin
      Dest.CNPJCPF           := RemoveChar(sClienteCNPJ.AsString);
      Dest.xNome             := sClienteRAZAOSOCIAL.AsString;
      Dest.EnderDest.xLgr    := sClienteLOGRADOURO.AsString;
      if ((sClienteNUMERO.IsNull) or (sClienteNUMERO.AsString = '')) then
      begin
        Dest.EnderDest.nro     := 'sn';
      end
      else
        Dest.EnderDest.nro     := sClienteNUMERO.AsString;
      if ((not sClienteCOMPLEMENTO.IsNull) or ( sClienteCOMPLEMENTO.AsString <> '')) then
        Dest.EnderDest.xCpl    := sClienteCOMPLEMENTO.AsString;
      Dest.EnderDest.xBairro := sClienteBAIRRO.AsString;
      Dest.EnderDest.cMun    := StrToInt(RemoveChar(sClienteCD_IBGE.AsString));
      Dest.EnderDest.xMun    := sClienteCIDADE.AsString;
      Dest.EnderDest.UF      := sClienteUF.AsString;
      Dest.EnderDest.CEP     := StrToInt(RemoveChar(sClienteCEP.AsString));
      Dest.EnderDest.cPais   := StrToInt(sClienteCODPAIS.AsString);
      Dest.EnderDest.xPais   := sClientePAIS.AsString;
      Dest.EnderDest.Fone    := sClienteDDD.AsString + sClienteTELEFONE.AsString;
      IERG := StrLen(PChar(RemoveChar(sClienteINSCESTADUAL.AsString)));
      if ((sClienteUF.AsString = 'SP') or (sClienteUF.AsString = 'MG')) then
      begin
        if (IERG > 11) then
          Dest.IE := RemoveChar(sClienteINSCESTADUAL.AsString);
      end
      else
        if (IERG >= 7) then
          Dest.IE := RemoveChar(sClienteINSCESTADUAL.AsString);
    end;
  end;
end;

procedure TfNFeletronica.getEmpresa();
begin
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    Emit.CNPJCPF           := RemoveChar(sEmpresaCNPJ_CPF.AsString);
    Emit.xNome             := sEmpresaRAZAO.AsString;
    Emit.xFant             := sEmpresaEMPRESA.AsString;
    Emit.EnderEmit.xLgr    := sEmpresaENDERECO.AsString;
    Emit.EnderEmit.nro     := sEmpresaNUMERO.AsString;
    if ((not sEmpresaOUTRAS_INFO.IsNull) or ( sEmpresaOUTRAS_INFO.AsString <> '')) then
      Emit.EnderEmit.xCpl    := sEmpresaLOGRADOURO.AsString;
    Emit.EnderEmit.xBairro := sEmpresaBAIRRO.AsString;
    Emit.EnderEmit.cMun    := StrToInt(RemoveChar(sEmpresaCD_IBGE.AsString));
    Emit.EnderEmit.xMun    := sEmpresaCIDADE.AsString;
    Emit.EnderEmit.UF      := sEmpresaUF.AsString;
    if (not sEmpresaCEP.IsNull) then
      Emit.EnderEmit.CEP     := StrToInt(RemoveChar(sEmpresaCEP.AsString));
    Emit.enderEmit.cPais   := 1058;
    Emit.enderEmit.xPais   := 'BRASIL';
    Emit.EnderEmit.fone    := sEmpresaDDD.AsString + sEmpresaFONE.AsString;
    Emit.IE                := RemoveChar(sEmpresaIE_RG.AsString);
    if ( sEmpresaCRT.AsInteger = 0) Then
      Emit.CRT               := crtSimplesNacional
    else if ( sEmpresaCRT.AsInteger = 1) Then
      Emit.CRT               := crtSimplesExcessoReceita
    else if ( sEmpresaCRT.AsInteger = 2) Then
      Emit.CRT               := crtRegimeNormal;
  end;
end;

procedure TfNFeletronica.getItens(contador: integer);
var
  BC, BCST, desc : Variant;
begin
   BC := 0;
   BCST := 4;
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    with Det.Add do
    begin
      if (sCFOP.Active) then
        sCFOP.Close;
      sCFOP.Params[0].AsString := cdsItensNFCFOP.AsString;
      sCFOP.Params[2].AsString := cdsItensNFCFOP.AsString;
      if (tpNF.ItemIndex = 1) then
        sCFOP.Params[1].AsString := sClienteUF.AsString
      else
        sCFOP.Params[1].AsString := sFornecUF.AsString;
      sCFOP.Open;

      Prod.nItem    := contador;
      Prod.cProd    := cdsItensNFCODPRO.AsString;
      Prod.xProd    := LeftStr(cdsItensNFDESCPRODUTO.AsString, 99);
      Prod.CFOP     := cdsItensNFCFOP.AsString;
      Prod.uCom     := sProdutosUNIDADEMEDIDA.AsString;
      Prod.qCom     := cdsItensNFQUANTIDADE.AsFloat;
      Prod.vUnCom   := cdsItensNFVLR_BASE.AsFloat;
      Prod.uTrib    := sProdutosUNIDADEMEDIDA.AsString;
      Prod.qTrib    := cdsItensNFQUANTIDADE.AsFloat;
      Prod.vUnTrib  := cdsItensNFVLR_BASE.AsFloat;
      desc := StrLen(PChar(MidStr(cdsItensNFDESCPRODUTO.AsString, 100, 200)));
      if ( desc > 0) then
        infAdProd     := MidStr(cdsItensNFDESCPRODUTO.AsString, 100, 200)
      else
        infAdProd     := '';
      Prod.NCM      := sProdutosNCM.AsString;
      Prod.vProd    := cdsItensNFVALTOTAL.AsFloat;
      Prod.vFrete   := cdsItensNFFRETE.AsCurrency;
      Prod.vDesc    := cdsItensNFVALOR_DESCONTO.AsCurrency;
      Prod.vOutro   := cdsItensNFVALOR_OUTROS.AsCurrency;
      Prod.vSeg     := cdsItensNFVALOR_SEGURO.AsCurrency;

      if(sFornec.Active) then
        if(sFornecUF.AsString = 'EX') then
        begin
          if(sAdicao.Active) then
            sAdicao.Close;
          sAdicao.Params[0].AsInteger := cdsItensNFCODDETALHE.AsInteger;
          sAdicao.Open;
          if(sDI.Active) then
           sDI.Close;
          sDi.Params[0].AsInteger := sAdicaoADIC_CODDI.AsInteger;
          sDI.Open;
          with prod.DI.Add do
          begin
            nDi         := sDIDI_NUMDI.AsString;
            dDi         := sDIDI_DATA.AsDateTime;
            xLocDesemb  := sDIDI_LOCALDESEMB.AsString;
            UFDesemb    := sDIDI_UFDESEMB.AsString;
            dDesemb     := sDIDI_DATADESEMB.AsDateTime;
            cExportador := sDIDI_CODEXPORTADOR.AsString;
            with adi.Add do
            begin
              nAdicao     := sAdicaoADIC_NADICAO.AsInteger;
              nSeqAdi     := sAdicaoADIC_NSEQUEN.AsInteger;
              cFabricante := sAdicaoADIC_CODFAB.AsString;
              vDescDI     := sAdicaoADIC_VDESC.AsInteger;
            end;
          end;
        end;
      Prod.genero   := sProdutosGENERO.AsInteger;
      //IMPOSTOS Do Produto
      with Imposto do
      begin
        with IPI do
        begin
          if (sCFOPCSTIPI.AsString = '00') then
            CST := ipi00
          else if (sCFOPCSTIPI.AsString = '01') then
            CST := ipi01
          else if (sCFOPCSTIPI.AsString = '02') then
            CST := ipi02
          else if (sCFOPCSTIPI.AsString = '03') then
            CST := ipi03
          else if (sCFOPCSTIPI.AsString = '04') then
            CST :=  ipi04
          else if (sCFOPCSTIPI.AsString = '05') then
            CST :=  ipi05
          else if (sCFOPCSTIPI.AsString = '49') then
            CST :=  ipi49
          else if (sCFOPCSTIPI.AsString = '50') then
            CST := ipi50
          else if (sCFOPCSTIPI.AsString = '51') then
            CST := ipi51
          else if (sCFOPCSTIPI.AsString = '52') then
            CST := ipi52
          else if (sCFOPCSTIPI.AsString = '53') then
            CST := ipi53
          else if (sCFOPCSTIPI.AsString = '54') then
            CST := ipi54
          else if (sCFOPCSTIPI.AsString = '55') then
            CST := ipi55
          else if (sCFOPCSTIPI.AsString = '99') then
            CST := ipi99
          else
            CST := ipi00;
          pIPI := cdsItensNFpIPI.AsCurrency;
          vIPI := cdsItensNFvIPI.AsCurrency;
        end;
        with ICMS do
        begin
          // Verifica Origem do Produto
          if (sProdutosORIGEM.IsNull) then
            MessageDlg('Origem do Produto n�o definida', mtError, [mbOK], 0);

          //CSOSN PREENCHIDO APENAS QUANDO EMPRESA OPTANTE PELO SIMPLES.
          //101 - Tributada pelo Simples Nacional com permiss�o de cr�dito - Classificam-se neste c�digo as opera��es que permitem a indica��o da al�quota do ICMS devido no Simples Nacional e o valor do cr�dito correspondente.
          //102 - Tributada pelo Simples Nacional sem permiss�o de cr�dito - Classificam-se neste c�digo as opera��es que n�o permitem a indica��o da al�quota do ICMS devido pelo Simples Nacional e do valor do cr�dito, e n�o estejam abrangidas nas hip�teses dos c�digos 103, 203, 300, 400, 500 e 900.
          //103 - Isen��o do ICMS no Simples Nacional para faixa de receita bruta - Classificam-se neste c�digo as opera��es praticadas por optantes pelo Simples Nacional contemplados com isen��o concedida para faixa de receita bruta nos termos da Lei Complementar n� 123, de 2006.
          //201 - Tributada pelo Simples Nacional com permiss�o de cr�dito e com cobran�a do ICMS por substitui��o tribut�ria - Classificam-se neste c�digo as opera��es que permitem a indica��o da al�quota do ICMS devido pelo Simples Nacional e do valor do cr�dito, e com cobran�a do ICMS por substitui��o tribut�ria.
          //202 - Tributada pelo Simples Nacional sem permiss�o de cr�dito e com cobran�a do ICMS por substitui��o tribut�ria - Classificam-se neste c�digo as opera��es que n�o permitem a indica��o da al�quota do ICMS devido pelo Simples Nacional e do valor do cr�dito, e n�o estejam abrangidas nas hip�teses dos c�digos 103, 203, 300, 400, 500 e 900, e com cobran�a do ICMS por substitui��o tribut�ria.
          //203 - Isen��o do ICMS no Simples Nacional para faixa de receita bruta e com cobran�a do ICMS por substitui��o tribut�ria - Classificam-se neste c�digo as opera��es praticadas por optantes pelo Simples Nacional contemplados com isen��o para faixa de receita bruta nos termos da Lei Complementar n� 123, de 2006, e com cobran�a do ICMS por substitui��o tribut�ria.
          //300 - Imune - Classificam-se neste c�digo as opera��es praticadas por optantes pelo Simples Nacional contempladas com imunidade do ICMS.
          //400 - N�o tributada pelo Simples Nacional - Classificam-se neste c�digo as opera��es praticadas por optantes pelo Simples Nacional n�o sujeitas � tributa��o pelo ICMS dentro do Simples Nacional.
          //500 - ICMS cobrado anteriormente por substitui��o tribut�ria (substitu�do) ou por antecipa��o - Classificam-se neste c�digo as opera��es sujeitas exclusivamente ao regime de substitui��o tribut�ria na condi��o de substitu�do tribut�rio ou no caso de antecipa��es.
          //900 - Outros - Classificam-se neste c�digo as demais opera��es que n�o se enquadrem nos c�digos 101, 102, 103, 201, 202, 203, 300, 400 e 500.
          if( sEmpresaCRT.AsInteger = 0) then
          begin
            if (( cdsItensNFCSOSN.AsString = null) or ( cdsItensNFCSOSN.AsString = '')) then
              CSOSN := csosnVazio
            else if ( cdsItensNFCSOSN.AsString = '101') then
              CSOSN := csosn101
            else if ( cdsItensNFCSOSN.AsString = '102') then
              CSOSN := csosn102
            else if ( cdsItensNFCSOSN.AsString = '103') then
              CSOSN := csosn103
            else if ( cdsItensNFCSOSN.AsString = '201') then
              CSOSN := csosn201
            else if ( cdsItensNFCSOSN.AsString = '202') then
              CSOSN := csosn202
            else if ( cdsItensNFCSOSN.AsString = '203') then
              CSOSN := csosn203
            else if ( cdsItensNFCSOSN.AsString = '300') then
              CSOSN := csosn300
            else if ( cdsItensNFCSOSN.AsString = '400') then
              CSOSN := csosn400
            else if ( cdsItensNFCSOSN.AsString = '500') then
              CSOSN := csosn500
            else if ( cdsItensNFCSOSN.AsString = '900') then
              CSOSN := csosn900;
          end;

          // CST's
          //10 TRIBUTADA
          //10 TRIBUTADA E COM COBRAN�A DO ICMS POR SUBS.TRIBUT�RIA
          //20 COM REDU��O DE BASE DE C�LCULO
          //30 ISENTA OU N�O TRIBUTADA E COM COBRAN�A DE ICMS POR SUBS.TRIBUT�RIA
          //40 - ISENTA
          //41 N�O TRIBUTADA
          //50 SUSPENS�O
          //51 DIFERIMENTO A EXIG�NCIA DO PREENCHIMENTO DAS INFORMA��ES DO ICMS DIFERIDO FICA a CRIT�RIO DE CADA UF
          //60 ICMS COBRADO ANTERIORMENTE POR SUBS.TRIBUT�RIA
          //70 COM REDU��O DA BASE DE CALCULO E COBRAN�A DO ICMS POR SUBS.TRIB. ICMS POR SUBS.TRIB.
          //90 OUTROS

          if ((cdsItensNFCST.AsString = '000') or (cdsItensNFCST.AsString = '100') or (cdsItensNFCST.AsString = '200') or (cdsItensNFCST.AsString = '00')) then
            CST := cst00
          else if ((cdsItensNFCST.AsString = '010') or (cdsItensNFCST.AsString = '110') or (cdsItensNFCST.AsString = '210') or (cdsItensNFCST.AsString = '10')) then
            CST := cst10
          else if ((cdsItensNFCST.AsString = '020') or (cdsItensNFCST.AsString = '120') or (cdsItensNFCST.AsString = '220') or (cdsItensNFCST.AsString = '20')) then
            CST := cst20
          else if ((cdsItensNFCST.AsString = '030') or (cdsItensNFCST.AsString = '130') or (cdsItensNFCST.AsString = '230') or (cdsItensNFCST.AsString = '30')) then
            CST := cst30
          else if ((cdsItensNFCST.AsString = '040') or (cdsItensNFCST.AsString = '140') or (cdsItensNFCST.AsString = '240') or (cdsItensNFCST.AsString = '40')) then
            CST :=  cst40
          else if ((cdsItensNFCST.AsString = '041') or (cdsItensNFCST.AsString = '141') or (cdsItensNFCST.AsString = '241') or (cdsItensNFCST.AsString = '41')) then
            CST :=  cst41
          else if ((cdsItensNFCST.AsString = '050') or (cdsItensNFCST.AsString = '150') or (cdsItensNFCST.AsString = '250') or (cdsItensNFCST.AsString = '50')) then
            CST :=  cst50
          else if ((cdsItensNFCST.AsString = '051') or (cdsItensNFCST.AsString = '151') or (cdsItensNFCST.AsString = '251') or (cdsItensNFCST.AsString = '51')) then
            CST := cst51
          else if ((cdsItensNFCST.AsString = '060') or (cdsItensNFCST.AsString = '160') or (cdsItensNFCST.AsString = '260') or (cdsItensNFCST.AsString = '60')) then
            CST := cst60
          else if ((cdsItensNFCST.AsString = '070') or (cdsItensNFCST.AsString = '170') or (cdsItensNFCST.AsString = '270') or (cdsItensNFCST.AsString = '70')) then
            CST := cst70
          else if ((cdsItensNFCST.AsString = '090') or (cdsItensNFCST.AsString = '190') or (cdsItensNFCST.AsString = '290') or (cdsItensNFCST.AsString = '90')) then
            CST := cst90
          else
            CST := cst00;

          orig :=     sProdutosORIGEM.AsVariant;                       //ORIGEM DO PRODUTO
          modBC :=    BC;                                              //MODO DE BASE DE CALCULO (0) POR %
          vBC :=      cdsItensNFVLR_BASEICMS.AsVariant;                //VALOR DA BASE DE CALCULO
          pICMS :=    cdsItensNFICMS.AsVariant;                        //ALIQUOTA DO ICMS
          vICMS :=    cdsItensNFVALOR_ICMS.AsVariant;                  //VALOR DO ICMS
          modBCST :=  BCST;                                            //MODO DE BASE DE CALCULO SUBST. TRIBUT�RIA(4) POR %
          vBCST :=    cdsItensNFICMS_SUBSTD.AsVariant;                 //VALOR DA BASE DE CALCULO DA SUBST. TRIBUT�RIA
          pMVAST :=   sCFOPICMS_SUBSTRIB_IND.AsVariant;                //% MARGEM DE VALOR ADICIONADO DO ICMSST
          pRedBCST := sCFOPICMS_SUBSTRIB_IC.AsVariant;                 //ALIQUOTA DA REDU��O DA BASE DE CALCULO DA SUBST. TRIBUT�RIA
          pICMSST :=  sCFOPICMS_SUBSTRIB.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUT�RIA
          pRedBC :=   sCFOPREDUCAO.AsVariant;                          //ALIQUOTA DA REDU��O DA BASE DE CALCULO
          vICMSST :=  cdsItensNFICMS_SUBST.AsVariant;                  //VALOR DO ICMS DA SUBST. TRIBUT�RIA
        end;

        //CST PIS E COFINS
        //01	Opera��o Tribut�vel com Al�quota B�sica
        //02	Opera��o Tribut�vel com Al�quota Diferenciada
        //03	Opera��o Tribut�vel com Al�quota por Unidade de Medida de Produto
        //04	Opera��o Tribut�vel Monof�sica - Revenda a Al�quota Zero
        //05	Opera��o Tribut�vel por Substitui��o Tribut�ria
        //06	Opera��o Tribut�vel a Al�quota Zero
        //07	Opera��o Isenta da Contribui��o
        //08	Opera��o sem Incid�ncia da Contribui��o
        //09	Opera��o com Suspens�o da Contribui��o
        //49	Outras Opera��es de Sa�da
        //50	Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
        //51	Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita N�o Tributada no Mercado Interno
        //52	Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita de Exporta��o
        //53	Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno
        //54	Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas no Mercado Interno e de Exporta��o
        //55	Opera��o com Direito a Cr�dito - Vinculada a Receitas N�o-Tributadas no Mercado Interno e de Exporta��o
        //56	Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno, e de Exporta��o
        //60	Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita Tributada no Mercado Interno
        //61	Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita N�o-Tributada no Mercado Interno
        //62	Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita de Exporta��o
        //63	Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno
        //64	Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas no Mercado Interno e de Exporta��o
        //65	Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas N�o-Tributadas no Mercado Interno e de Exporta��o
        //66	Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno, e de Exporta��o
        //67	Cr�dito Presumido - Outras Opera��es
        //70	Opera��o de Aquisi��o sem Direito a Cr�dito
        //71	Opera��o de Aquisi��o com Isen��o
        //72	Opera��o de Aquisi��o com Suspens�o
        //73	Opera��o de Aquisi��o a Al�quota Zero
        //74	Opera��o de Aquisi��o sem Incid�ncia da Contribui��o
        //75	Opera��o de Aquisi��o por Substitui��o Tribut�ria
        //98	Outras Opera��es de Entrada
        //99	Outras Opera��es

        with PIS do
        begin
          if (sCFOPCSTPIS.AsString = '01') then
            CST   := pis01
          else if (sCFOPCSTPIS.AsString = '02') then
            CST   := pis02
          else if (sCFOPCSTPIS.AsString = '03') then
            CST   := pis03
          else if (sCFOPCSTPIS.AsString = '04') then
            CST   := pis04
          else if (sCFOPCSTPIS.AsString = '06') then
            CST   := pis06
          else if (sCFOPCSTPIS.AsString = '07') then
            CST   := pis07
          else if (sCFOPCSTPIS.AsString = '08') then
            CST   := pis08
          else if (sCFOPCSTPIS.AsString = '09') then
            CST   := pis09
          else if (sCFOPCSTPIS.AsString = '99') then
            CST   := pis99;

          vBC   := cdsItensNFVALTOTAL.AsVariant;
          pPIS  := sCFOPPIS.AsVariant;
          vPIS  := cdsItensNFVALOR_PIS.AsVariant;


        end;
        with COFINS do
        begin
          if (sCFOPCSTCOFINS.AsString = '01') then
            CST   := cof01
          else if (sCFOPCSTCOFINS.AsString = '02') then
            CST   := cof02
          else if (sCFOPCSTCOFINS.AsString = '03') then
            CST   := cof03
          else if (sCFOPCSTCOFINS.AsString = '04') then
            CST   := cof04
          else if (sCFOPCSTCOFINS.AsString = '06') then
            CST   := cof06
          else if (sCFOPCSTCOFINS.AsString = '07') then
            CST   := cof07
          else if (sCFOPCSTCOFINS.AsString = '08') then
            CST   := cof08
          else if (sCFOPCSTCOFINS.AsString = '09') then
            CST   := cof09
          else if (sCFOPCSTCOFINS.AsString = '99') then
            CST   := cof99;

          vBC   := cdsItensNFVALTOTAL.AsVariant;
          pCOFINS  := sCFOPCOFINS.AsVariant;
          vCOFINS  := cdsItensNFVALOR_COFINS.AsVariant;
        end;
        if (cdsItensNFII.asFloat > 0) then
        begin
          with II do
          begin
            vBc := cdsItensNFBCII.AsVariant;
            vII := cdsItensNFII.AsVariant;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfNFeletronica.getTransportadora();
var
  tpfrete: integer;
  tfrete: Variant;
begin
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    if (cdsNFFRETE.IsNull) then
      tfrete := 9
    else
    begin
      tpfrete := StrToInt(cdsNFFRETE.AsString);
      tpfrete := tpfrete - 1;
      tfrete := IntToStr(tpfrete);

      //Carrega dados da transportadora
      with Transp do
      begin
        with transporta do
        begin
          modFrete := tfrete;
          CNPJCPF := RemoveChar(cdsNFCNPJ_CPF.AsString);
          DMNF.listaTransp.Open;
          DMNF.listaTransp.Locate('FANTASIA',cdsNFNOMETRANSP.AsString,[loCaseInsensitive]);
          if (cdsNFNOMETRANSP.AsString <> '') then
            xNome := DMNF.listaTranspNOMETRANSP.AsString;
          DMNF.listaTransp.Close;
          IE := RemoveChar(cdsNFINSCRICAOESTADUAL.AsString);
          xEnder := cdsNFEND_TRANSP.AsString;
          xMun := cdsNFCIDADE_TRANSP.AsString;
          UF :=  cdsNFUF_TRANSP.AsString;
          //Carrega dados da Carga para Transporte
          with Vol.Add do
          begin
            if (cdsNFQUANTIDADE.AsVariant > 0) then
              qVol := cdsNFQUANTIDADE.AsVariant
            else
              qVol := 0;

            if ( (cdsNFESPECIE.AsString <> '') and (cdsNFESPECIE.AsString <> Null) ) then
              esp := cdsNFESPECIE.AsString
            else
              esp := '';

            if ( (cdsNFMARCA.AsString <> '') and (cdsNFMARCA.AsString <>  null) ) then
               marca := cdsNFMARCA.AsString
            else
              marca := '';

            if ( (cdsNFNUMERO.AsString <> '') and ( cdsNFNUMERO.AsString <> null) ) then
              nVol :=cdsNFNUMERO.AsString
            else
              nVol := '';

            if (cdsNFPESOLIQUIDO.AsCurrency > 0) then
              pesoL :=cdsNFPESOLIQUIDO.AsCurrency
            else
              pesoL := 0;

            if (cdsNFPESOBRUTO.AsCurrency > 0) then
              pesoB :=cdsNFPESOBRUTO.AsCurrency
            else
              pesoB := 0;
            end;

            if ( (cdsNFPLACATRANSP.AsString <> '') and (cdsNFPLACATRANSP.AsString <> null) ) then
             if ( (cdsNFUF_VEICULO_TRANSP.AsString <> '') and (cdsNFUF_VEICULO_TRANSP.AsString <> null) ) then
             begin
               veicTransp.placa := cdsNFPLACATRANSP.AsString;
               veicTransp.UF := cdsNFUF_VEICULO_TRANSP.AsString;
             end;
        end;
      end;
    end;
  end;
end;

procedure TfNFeletronica.getPagamento();
var
 c: integer;
begin
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  if(sCFOPNAOENVFATURA.AsString = 'S') then
    ide.indPag := ipOutras
  else
  begin
    if (tpNF.ItemIndex = 1) then
    begin
      if (cdsNFVALOR_PAGAR.AsFloat = cdsNFENTRADA.AsFloat) then
        Ide.indPag    := ipVista
      else
        Ide.indPag    := ipPrazo;
      //pesquisa pagamento
      if ( (cdsNFFATURA.IsNull) or (cdsNFFATURA.AsString = '') ) then
      begin
        if(cdsFatura.Active) then
          cdsFatura.Close;
        cdsFatura.Params[0].AsInteger := cdsNFCODVENDA.AsInteger;
        cdsFatura.Open;
        if (sNFC.Active) then
          sNFC.Close;
        sNFC.Params[0].AsInteger := cdsNFNUMNF.AsInteger;
        sNFC.Open;
        //Carrega dados do Pagamento
        cdsFatura.first;
        c := 0;
        while not cdsFatura.eof do
        begin
          if (cdsFaturaVALOR.AsFloat > 0) then
          begin
            Cobr.Dup.Add;
            Cobr.Dup.Items[c].nDup  := cdsFaturaNUMEROFATURA.ASSTRING;
            Cobr.Dup.Items[c].dVenc := cdsFaturaDATAFATURA.AsDateTime;
            Cobr.Dup.Items[c].vDup  := cdsFaturaVALOR.AsCurrency;
            Inc ( c );
          end;
          cdsFatura.next;
        end;
        if (c = 0) then
          Ide.indPag    := ipOutras;
      end;
      if ((UpperCase(cdsNFFATURA.AsString) = 'PRAZO') or (UpperCase(cdsNFFATURA.AsString) = 'A PRAZO')) then
        Ide.indPag    := ipPrazo;
      if ((UpperCase(cdsNFFATURA.AsString) = 'VISTA') or (UpperCase(cdsNFFATURA.AsString) = 'A VISTA')) then
        Ide.indPag    := ipVista;
    end
    else
      if ((UpperCase(cdsNFFATURA.AsString) = 'PRAZO') or (UpperCase(cdsNFFATURA.AsString) = 'A PRAZO')) then
        Ide.indPag    := ipPrazo;
      if ((UpperCase(cdsNFFATURA.AsString) = 'VISTA') or (UpperCase(cdsNFFATURA.AsString) = 'A VISTA')) then
        Ide.indPag    := ipVista;
      if ((cdsNFFATURA.AsString = '') or (cdsNFFATURA.IsNull)) then
        Ide.indPag    := ipOutras;
  end;
end;


procedure TfNFeletronica.btnContingenciaClick(Sender: TObject);
begin
    tp_amb := 2;
    btnGeraNFeClick(Sender);
    tp_amb := 1;
end;

procedure TfNFeletronica.btnPreVisContClick(Sender: TObject);
begin
    tp_amb := 2;
    BtnPreVisClick(Sender);
    tp_amb := 1;
end;

procedure TfNFeletronica.btnPreVisSpedClick(Sender: TObject);
begin
    tp_amb := 3;
    BtnPreVisClick(Sender);
    tp_amb := 1;
end;

procedure TfNFeletronica.btnPreVisDPECClick(Sender: TObject);
begin
    BtnPreVisClick(Sender);
end;

procedure TfNFeletronica.btnDpecClick(Sender: TObject);
begin
    tp_amb := 4;
    btnGeraNFeClick(Sender);
    tp_amb := 1;
end;

procedure TfNFeletronica.btnFSDAClick(Sender: TObject);
begin
    tp_amb := 5;
    btnGeraNFeClick(Sender);
    tp_amb := 1;
end;

procedure TfNFeletronica.btnPreVisFSDAClick(Sender: TObject);
begin
    tp_amb := 5;
    BtnPreVisClick(Sender);
    tp_amb := 1;
end;

procedure TfNFeletronica.BitBtn1Click(Sender: TObject);
var
 vAux : String;
begin
  if not(InputQuery('WebServices DPEC', 'Informe o Numero do Registro do DPEC ou a Chave da NFe', vAux)) then
    exit;

  if Length(Trim(vAux)) < 44 then
     ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC := vAux
  else
     ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := vAux;
  ACBrNFe1.WebServices.ConsultaDPEC.Executar;

end;

procedure TfNFeletronica.btnValidaXMLClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
  ACBrNFe1.Enviar(0);
  end;
end;

end.
