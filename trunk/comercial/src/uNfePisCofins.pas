unit uNfePisCofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrSpedPisCofins, StdCtrls, ExtCtrls, ComCtrls, JvExComCtrls,
  JvProgressBar, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, ACBrEPCBlocos, ACBrTXTClass, ACBrUtil, FMTBcd,
  DBClient, Provider, DB, SqlExpr, uUtils;

type
  TfNfePisCofins = class(TForm)
    btnTXT: TButton;
    ACBrSPEDPisCofins1: TACBrSPEDPisCofins;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtFile: TEdit;
    cbConcomitante: TCheckBox;
    edNotas: TEdit;
    Label2: TLabel;
    memoError: TMemo;
    Label3: TLabel;
    memoTXT: TMemo;
    Label7: TLabel;
    edBufLinhas: TEdit;
    Label8: TLabel;
    edBufNotas: TEdit;
    ProgressBar1: TJvProgressBar;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cbMes: TComboBox;
    data_ini: TJvDatePickerEdit;
    data_fim: TJvDatePickerEdit;
    btnError: TButton;
    cbTipo: TComboBox;
    Label11: TLabel;
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaEMPRESA: TStringField;
    cdsEmpresaRAZAO: TStringField;
    cdsEmpresaCNPJ_CPF: TStringField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaLOGRADOURO: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCIDADE: TStringField;
    cdsEmpresaUF: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaDDD: TStringField;
    cdsEmpresaFONE: TStringField;
    cdsEmpresaFONE_1: TStringField;
    cdsEmpresaFONE_2: TStringField;
    cdsEmpresaFAX: TStringField;
    cdsEmpresaE_MAIL: TStringField;
    cdsEmpresaWEB: TStringField;
    cdsEmpresaLOGOTIPO: TGraphicField;
    cdsEmpresaCODIGO: TIntegerField;
    cdsEmpresaTIPO: TStringField;
    cdsEmpresaIE_RG: TStringField;
    cdsEmpresaSLOGAN: TStringField;
    cdsEmpresaOUTRAS_INFO: TStringField;
    cdsEmpresaCODIGO_CONTA: TIntegerField;
    cdsEmpresaDIVERSOS1: TStringField;
    cdsEmpresaDIVERSOS2: TStringField;
    cdsEmpresaDIVERSOS3: TStringField;
    cdsEmpresaANOLETIVO: TIntegerField;
    cdsEmpresaMEDIA_ESCOLA: TFloatField;
    cdsEmpresaPORTA: TIntegerField;
    cdsEmpresaSMTP: TStringField;
    cdsEmpresaSENHA: TStringField;
    cdsEmpresaCCUSTO: TIntegerField;
    cdsEmpresaNUMERO: TStringField;
    cdsEmpresaCD_IBGE: TStringField;
    cdsEmpresaCRT: TIntegerField;
    cdsEmpresaTREGIME: TIntegerField;
    cdsEmpresaIM: TStringField;
    cdsEmpresaCONTADOR: TStringField;
    cdsEmpresaCONTADOR_CRC: TStringField;
    cdsEmpresaCONTADOR_CNPJ: TStringField;
    cdsEmpresaCONTADOR_CPF: TStringField;
    cdsEmpresaCONTADOR_CEP: TStringField;
    cdsEmpresaCONTADOR_END: TStringField;
    cdsEmpresaCONTADOR_NUMEND: TStringField;
    cdsEmpresaCONTADOR_COMPL: TStringField;
    cdsEmpresaCONTADOR_BAIRRO: TStringField;
    cdsEmpresaCONTADOR_FONE: TStringField;
    cdsEmpresaCONTADOR_FAX: TStringField;
    cdsEmpresaCONTADOR_EMAIL: TStringField;
    cdsEmpresaCONTADOR_COD_MUN: TStringField;
    cdsEmpresaINDICADORNATUREZAPJ: TSmallintField;
    cdsEmpresaINDICADORATIVIDADE: TSmallintField;
    cdsEmpresaCODINDINCTRIBUTARIA: TSmallintField;
    cdsEmpresaINDAPROCRED: TSmallintField;
    cdsEmpresaCODINDTIPOCON: TSmallintField;
    cdsEmpresaCODINDCRITESCRIT: TSmallintField;
    cdsEmpresaINDCODINCIDENCIA: TSmallintField;
    cdsEmpresaINDCTA: TSmallintField;
    cdsEmpresaINDESCRITURACAO: TSmallintField;
    cdsEmpresaBASECALCULOCREDITO: TSmallintField;
    cdsEmpresaINDAJ: TSmallintField;
    cdsEmpresaCODAJ: TSmallintField;
    cdsEmpresaINDNATREC: TSmallintField;
    cdsEmpresaNATCREDDESC: TSmallintField;
    cdsEmpresaCODCRED: TSmallintField;
    cdsEmpresaINDTIPCOOP: TSmallintField;
    cdsEmpresaINDCREDORI: TSmallintField;
    cdsEmpresaINDREC: TSmallintField;
    cdsEmpresaINDDESCCRED: TSmallintField;
    cdsEmpresaCODCONT: TSmallintField;
    cdsEmpresaINDNATRETFONTE: TSmallintField;
    cdsEmpresaINDORIGEMDIVERSAS: TSmallintField;
    cdsEmpresaINDNATDEDUCAO: TSmallintField;
    cdsEmpresaINDTPOPERACAORECEITA: TSmallintField;
    sdsNFVenda: TSQLDataSet;
    dspNFVenda: TDataSetProvider;
    cdsNFVenda: TClientDataSet;
    sdsNFVendaNOTASERIE: TStringField;
    sdsNFVendaNUMNF: TIntegerField;
    sdsNFVendaNATUREZA: TSmallintField;
    sdsNFVendaQUANTIDADE: TFloatField;
    sdsNFVendaMARCA: TStringField;
    sdsNFVendaPESOBRUTO: TBCDField;
    sdsNFVendaPESOLIQUIDO: TBCDField;
    sdsNFVendaESPECIE: TStringField;
    sdsNFVendaDTAEMISSAO: TDateField;
    sdsNFVendaDTASAIDA: TDateField;
    sdsNFVendaUF: TStringField;
    sdsNFVendaCODVENDA: TIntegerField;
    sdsNFVendaCODTRANSP: TIntegerField;
    sdsNFVendaNUMERO: TStringField;
    sdsNFVendaNOTAFISCAL: TIntegerField;
    sdsNFVendaHORASAIDA: TTimeField;
    sdsNFVendaDATA_SISTEMA: TSQLTimeStampField;
    sdsNFVendaBASE_ICMS: TFloatField;
    sdsNFVendaVALOR_ICMS: TFloatField;
    sdsNFVendaBASE_ICMS_SUBST: TFloatField;
    sdsNFVendaVALOR_ICMS_SUBST: TFloatField;
    sdsNFVendaVALOR_PRODUTO: TFloatField;
    sdsNFVendaVALOR_FRETE: TFloatField;
    sdsNFVendaVALOR_SEGURO: TFloatField;
    sdsNFVendaOUTRAS_DESP: TFloatField;
    sdsNFVendaVALOR_IPI: TFloatField;
    sdsNFVendaVALOR_TOTAL_NOTA: TFloatField;
    sdsNFVendaCORPONF1: TStringField;
    sdsNFVendaCORPONF2: TStringField;
    sdsNFVendaCORPONF3: TStringField;
    sdsNFVendaCORPONF4: TStringField;
    sdsNFVendaCORPONF5: TStringField;
    sdsNFVendaCORPONF6: TStringField;
    sdsNFVendaCFOP: TStringField;
    sdsNFVendaCODCLIENTE: TIntegerField;
    sdsNFVendaFATURA: TStringField;
    sdsNFVendaICMS: TFloatField;
    sdsNFVendaREDUZICMS: TFloatField;
    sdsNFVendaNOMETRANSP: TStringField;
    sdsNFVendaPLACATRANSP: TStringField;
    sdsNFVendaCNPJ_CPF: TStringField;
    sdsNFVendaEND_TRANSP: TStringField;
    sdsNFVendaCIDADE_TRANSP: TStringField;
    sdsNFVendaUF_VEICULO_TRANSP: TStringField;
    sdsNFVendaUF_TRANSP: TStringField;
    sdsNFVendaFRETE: TStringField;
    sdsNFVendaINSCRICAOESTADUAL: TStringField;
    sdsNFVendaSTATUS: TStringField;
    sdsNFVendaVLRTOTALEXP: TFloatField;
    sdsNFVendaIMPRESSA: TStringField;
    sdsNFVendaSERIE: TStringField;
    sdsNFVendaID_GUIA: TIntegerField;
    sdsNFVendaSELECIONOU: TStringField;
    sdsNFVendaPROTOCOLOENV: TStringField;
    sdsNFVendaNUMRECIBO: TStringField;
    sdsNFVendaPROTOCOLOCANC: TStringField;
    sdsNFVendaPESOREMESSA: TBCDField;
    sdsNFVendaNOTAMAE: TIntegerField;
    sdsNFVendaVALOR_PIS: TFloatField;
    sdsNFVendaVALOR_COFINS: TFloatField;
    sdsNFVendaVALOR_DESCONTO: TFloatField;
    sdsNFVendaCCUSTO: TIntegerField;
    sdsNFVendaIDCOMPLEMENTAR: TStringField;
    sdsNFVendaXMLNFE: TGraphicField;
    sdsNFVendaII: TFloatField;
    sdsNFVendaBCII: TFloatField;
    sdsNFVendaNOMEXML: TStringField;
    sdsNFVendaCODCLIENTE_1: TIntegerField;
    sdsNFVendaNOMECLIENTE: TStringField;
    sdsNFVendaRAZAOSOCIAL: TStringField;
    sdsNFVendaCONTATO: TStringField;
    sdsNFVendaTIPOFIRMA: TSmallintField;
    sdsNFVendaCPF: TStringField;
    sdsNFVendaCNPJ: TStringField;
    sdsNFVendaINSCESTADUAL: TStringField;
    sdsNFVendaRG: TStringField;
    sdsNFVendaSEGMENTO: TSmallintField;
    sdsNFVendaREGIAO: TSmallintField;
    sdsNFVendaLIMITECREDITO: TFloatField;
    sdsNFVendaDATACADASTRO: TDateField;
    sdsNFVendaCODUSUARIO: TIntegerField;
    sdsNFVendaSTATUS_1: TSmallintField;
    sdsNFVendaHOMEPAGE: TStringField;
    sdsNFVendaPRAZORECEBIMENTO: TSmallintField;
    sdsNFVendaPRAZOENTREGA: TSmallintField;
    sdsNFVendaCODBANCO: TSmallintField;
    sdsNFVendaBASE_ICMS_1: TSmallintField;
    sdsNFVendaDATANASC: TDateField;
    sdsNFVendaCONTA_CLIENTE: TStringField;
    sdsNFVendaOBS: TStringField;
    sdsNFVendaTEM_IE: TStringField;
    sdsNFVendaDATARESC: TDateField;
    sdsNFVendaNOMEMAE: TStringField;
    sdsNFVendaSEXO: TStringField;
    sdsNFVendaFORMA_CORRESPOND: TStringField;
    sdsNFVendaGRUPO_CLIENTE: TStringField;
    sdsNFVendaCODINCLUCANC: TIntegerField;
    sdsNFVendaEXIST_COBERT: TStringField;
    sdsNFVendaEXISTCOPART: TStringField;
    sdsNFVendaDATAREINC: TDateField;
    sdsNFVendaGERAAVISO: TStringField;
    sdsNFVendaGERAENV: TStringField;
    sdsNFVendaGERABOL: TStringField;
    sdsNFVendaEMVIAGEM: TStringField;
    sdsNFVendaDTAALTERA: TDateField;
    sdsNFVendaSERIELETRA: TStringField;
    sdsNFVendaSERIE_1: TStringField;
    sdsNFVendaRA: TStringField;
    sdsNFVendaCURSO: TStringField;
    sdsNFVendaIP: TStringField;
    sdsNFVendaN_CONTRATO: TStringField;
    sdsNFVendaMAC: TStringField;
    sdsNFVendaMARCA_1: TStringField;
    sdsNFVendaBANDA_UPLOAD: TStringField;
    sdsNFVendaBANDA_DOWLOAD: TStringField;
    sdsNFVendaTORRE_CONECCAO: TStringField;
    sdsNFVendaCOD_FAIXA: TIntegerField;
    sdsNFVendaDESCONTO: TFloatField;
    sdsNFVendaMENSALIDADE: TFloatField;
    sdsNFVendaANUIDADE: TFloatField;
    sdsNFVendaPARCELA: TIntegerField;
    sdsNFVendaPARCELAGERADAS: TIntegerField;
    sdsNFVendaNUMERO_1: TIntegerField;
    sdsNFVendaDATANASCIMENTO: TSQLTimeStampField;
    sdsNFVendaANOLETIVO: TStringField;
    sdsNFVendaSITUACAOESCOLAR: TStringField;
    sdsNFVendaRGMAE: TStringField;
    sdsNFVendaCPFMAE: TStringField;
    sdsNFVendaPAI: TStringField;
    sdsNFVendaRGPAI: TStringField;
    sdsNFVendaCPFPAI: TStringField;
    sdsNFVendaLANCADOCLASSE: TIntegerField;
    sdsNFVendaTRANSPORTE: TStringField;
    sdsNFVendaCIDADENASC: TStringField;
    sdsNFVendaUFNASC: TStringField;
    sdsNFVendaNACIONALIDADE: TStringField;
    sdsNFVendaCERTIDAONASCNUM: TStringField;
    sdsNFVendaLIVRONASC: TStringField;
    sdsNFVendaFLLIVRONASC: TStringField;
    sdsNFVendaLOCALTRABPAI: TStringField;
    sdsNFVendaLOCALTRABMAE: TStringField;
    sdsNFVendaTELTRABPAI: TStringField;
    sdsNFVendaTELTRABMAE: TStringField;
    sdsNFVendaINFONECESSARIAS: TStringField;
    sdsNFVendaCARTEIRAVACINACAO: TStringField;
    sdsNFVendaRAPRODESP: TStringField;
    sdsNFVendaLOCALTRABALUNO: TStringField;
    sdsNFVendaTELTRABALUNO: TStringField;
    sdsNFVendaRAPROD: TStringField;
    sdsNFVendaCERT_NAS_COMARCA: TStringField;
    sdsNFVendaCERT_NAS_UF: TStringField;
    sdsNFVendaCERT_NAS_MUNICIPIO: TStringField;
    sdsNFVendaCERT_NAS_DISTRITO: TStringField;
    sdsNFVendaCERT_NAS_SUBDISTRITO: TStringField;
    sdsNFVendaDIVERSO1: TStringField;
    sdsNFVendaDIVERSO2: TStringField;
    sdsNFVendaDATAEMISSAORG: TDateField;
    sdsNFVendaESTADORG: TStringField;
    sdsNFVendaCOMUNICAALUNO: TStringField;
    sdsNFVendaFONEMAE: TStringField;
    sdsNFVendaCELULARMAE: TStringField;
    sdsNFVendaCOMUNICAMAE: TStringField;
    sdsNFVendaFONEPAI: TStringField;
    sdsNFVendaCELULARPAI: TStringField;
    sdsNFVendaCOMUNICAPAI: TStringField;
    sdsNFVendaVALOR_MATRICULA: TFloatField;
    sdsNFVendaDATATRANSF: TDateField;
    sdsNFVendaCOR_RACA: TStringField;
    sdsNFVendaPERIODO: TStringField;
    sdsNFVendaFOTO: TStringField;
    sdsNFVendaDATA_MATRICULA: TSQLTimeStampField;
    sdsNFVendaCODRESPONSAVEL: TIntegerField;
    sdsNFVendaID_COB: TIntegerField;
    sdsNFVendaCOD_TRANPORTADORA: TIntegerField;
    sdsNFVendaBLOQUEIO: TStringField;
    sdsNFVendaCODCLI: TStringField;
    sdsNFVendaCFOP_1: TStringField;
    sdsNFVendaCOD_CLI: TStringField;
    sdsNFVendaCODENDERECO: TIntegerField;
    sdsNFVendaCODCLIENTE_2: TIntegerField;
    sdsNFVendaLOGRADOURO: TStringField;
    sdsNFVendaBAIRRO: TStringField;
    sdsNFVendaCOMPLEMENTO: TStringField;
    sdsNFVendaCIDADE: TStringField;
    sdsNFVendaUF_1: TStringField;
    sdsNFVendaCEP: TStringField;
    sdsNFVendaTELEFONE: TStringField;
    sdsNFVendaTELEFONE1: TStringField;
    sdsNFVendaTELEFONE2: TStringField;
    sdsNFVendaFAX: TStringField;
    sdsNFVendaE_MAIL: TStringField;
    sdsNFVendaRAMAL: TStringField;
    sdsNFVendaTIPOEND: TSmallintField;
    sdsNFVendaDADOSADICIONAIS: TStringField;
    sdsNFVendaDDD: TStringField;
    sdsNFVendaDDD1: TStringField;
    sdsNFVendaDDD2: TStringField;
    sdsNFVendaDDD3: TStringField;
    sdsNFVendaNUMERO_2: TStringField;
    sdsNFVendaCD_IBGE: TStringField;
    sdsNFVendaPAIS: TStringField;
    cdsNFVendaNOTASERIE: TStringField;
    cdsNFVendaNUMNF: TIntegerField;
    cdsNFVendaNATUREZA: TSmallintField;
    cdsNFVendaQUANTIDADE: TFloatField;
    cdsNFVendaMARCA: TStringField;
    cdsNFVendaPESOBRUTO: TBCDField;
    cdsNFVendaPESOLIQUIDO: TBCDField;
    cdsNFVendaESPECIE: TStringField;
    cdsNFVendaDTAEMISSAO: TDateField;
    cdsNFVendaDTASAIDA: TDateField;
    cdsNFVendaUF: TStringField;
    cdsNFVendaCODVENDA: TIntegerField;
    cdsNFVendaCODTRANSP: TIntegerField;
    cdsNFVendaNUMERO: TStringField;
    cdsNFVendaNOTAFISCAL: TIntegerField;
    cdsNFVendaHORASAIDA: TTimeField;
    cdsNFVendaDATA_SISTEMA: TSQLTimeStampField;
    cdsNFVendaBASE_ICMS: TFloatField;
    cdsNFVendaVALOR_ICMS: TFloatField;
    cdsNFVendaBASE_ICMS_SUBST: TFloatField;
    cdsNFVendaVALOR_ICMS_SUBST: TFloatField;
    cdsNFVendaVALOR_PRODUTO: TFloatField;
    cdsNFVendaVALOR_FRETE: TFloatField;
    cdsNFVendaVALOR_SEGURO: TFloatField;
    cdsNFVendaOUTRAS_DESP: TFloatField;
    cdsNFVendaVALOR_IPI: TFloatField;
    cdsNFVendaVALOR_TOTAL_NOTA: TFloatField;
    cdsNFVendaCORPONF1: TStringField;
    cdsNFVendaCORPONF2: TStringField;
    cdsNFVendaCORPONF3: TStringField;
    cdsNFVendaCORPONF4: TStringField;
    cdsNFVendaCORPONF5: TStringField;
    cdsNFVendaCORPONF6: TStringField;
    cdsNFVendaCFOP: TStringField;
    cdsNFVendaCODCLIENTE: TIntegerField;
    cdsNFVendaFATURA: TStringField;
    cdsNFVendaICMS: TFloatField;
    cdsNFVendaREDUZICMS: TFloatField;
    cdsNFVendaNOMETRANSP: TStringField;
    cdsNFVendaPLACATRANSP: TStringField;
    cdsNFVendaCNPJ_CPF: TStringField;
    cdsNFVendaEND_TRANSP: TStringField;
    cdsNFVendaCIDADE_TRANSP: TStringField;
    cdsNFVendaUF_VEICULO_TRANSP: TStringField;
    cdsNFVendaUF_TRANSP: TStringField;
    cdsNFVendaFRETE: TStringField;
    cdsNFVendaINSCRICAOESTADUAL: TStringField;
    cdsNFVendaSTATUS: TStringField;
    cdsNFVendaVLRTOTALEXP: TFloatField;
    cdsNFVendaIMPRESSA: TStringField;
    cdsNFVendaSERIE: TStringField;
    cdsNFVendaID_GUIA: TIntegerField;
    cdsNFVendaSELECIONOU: TStringField;
    cdsNFVendaPROTOCOLOENV: TStringField;
    cdsNFVendaNUMRECIBO: TStringField;
    cdsNFVendaPROTOCOLOCANC: TStringField;
    cdsNFVendaPESOREMESSA: TBCDField;
    cdsNFVendaNOTAMAE: TIntegerField;
    cdsNFVendaVALOR_PIS: TFloatField;
    cdsNFVendaVALOR_COFINS: TFloatField;
    cdsNFVendaVALOR_DESCONTO: TFloatField;
    cdsNFVendaCCUSTO: TIntegerField;
    cdsNFVendaIDCOMPLEMENTAR: TStringField;
    cdsNFVendaXMLNFE: TGraphicField;
    cdsNFVendaII: TFloatField;
    cdsNFVendaBCII: TFloatField;
    cdsNFVendaNOMEXML: TStringField;
    cdsNFVendaCODCLIENTE_1: TIntegerField;
    cdsNFVendaNOMECLIENTE: TStringField;
    cdsNFVendaRAZAOSOCIAL: TStringField;
    cdsNFVendaCONTATO: TStringField;
    cdsNFVendaTIPOFIRMA: TSmallintField;
    cdsNFVendaCPF: TStringField;
    cdsNFVendaCNPJ: TStringField;
    cdsNFVendaINSCESTADUAL: TStringField;
    cdsNFVendaRG: TStringField;
    cdsNFVendaSEGMENTO: TSmallintField;
    cdsNFVendaREGIAO: TSmallintField;
    cdsNFVendaLIMITECREDITO: TFloatField;
    cdsNFVendaDATACADASTRO: TDateField;
    cdsNFVendaCODUSUARIO: TIntegerField;
    cdsNFVendaSTATUS_1: TSmallintField;
    cdsNFVendaHOMEPAGE: TStringField;
    cdsNFVendaPRAZORECEBIMENTO: TSmallintField;
    cdsNFVendaPRAZOENTREGA: TSmallintField;
    cdsNFVendaCODBANCO: TSmallintField;
    cdsNFVendaBASE_ICMS_1: TSmallintField;
    cdsNFVendaDATANASC: TDateField;
    cdsNFVendaCONTA_CLIENTE: TStringField;
    cdsNFVendaOBS: TStringField;
    cdsNFVendaTEM_IE: TStringField;
    cdsNFVendaDATARESC: TDateField;
    cdsNFVendaNOMEMAE: TStringField;
    cdsNFVendaSEXO: TStringField;
    cdsNFVendaFORMA_CORRESPOND: TStringField;
    cdsNFVendaGRUPO_CLIENTE: TStringField;
    cdsNFVendaCODINCLUCANC: TIntegerField;
    cdsNFVendaEXIST_COBERT: TStringField;
    cdsNFVendaEXISTCOPART: TStringField;
    cdsNFVendaDATAREINC: TDateField;
    cdsNFVendaGERAAVISO: TStringField;
    cdsNFVendaGERAENV: TStringField;
    cdsNFVendaGERABOL: TStringField;
    cdsNFVendaEMVIAGEM: TStringField;
    cdsNFVendaDTAALTERA: TDateField;
    cdsNFVendaSERIELETRA: TStringField;
    cdsNFVendaSERIE_1: TStringField;
    cdsNFVendaRA: TStringField;
    cdsNFVendaCURSO: TStringField;
    cdsNFVendaIP: TStringField;
    cdsNFVendaN_CONTRATO: TStringField;
    cdsNFVendaMAC: TStringField;
    cdsNFVendaMARCA_1: TStringField;
    cdsNFVendaBANDA_UPLOAD: TStringField;
    cdsNFVendaBANDA_DOWLOAD: TStringField;
    cdsNFVendaTORRE_CONECCAO: TStringField;
    cdsNFVendaCOD_FAIXA: TIntegerField;
    cdsNFVendaDESCONTO: TFloatField;
    cdsNFVendaMENSALIDADE: TFloatField;
    cdsNFVendaANUIDADE: TFloatField;
    cdsNFVendaPARCELA: TIntegerField;
    cdsNFVendaPARCELAGERADAS: TIntegerField;
    cdsNFVendaNUMERO_1: TIntegerField;
    cdsNFVendaDATANASCIMENTO: TSQLTimeStampField;
    cdsNFVendaANOLETIVO: TStringField;
    cdsNFVendaSITUACAOESCOLAR: TStringField;
    cdsNFVendaRGMAE: TStringField;
    cdsNFVendaCPFMAE: TStringField;
    cdsNFVendaPAI: TStringField;
    cdsNFVendaRGPAI: TStringField;
    cdsNFVendaCPFPAI: TStringField;
    cdsNFVendaLANCADOCLASSE: TIntegerField;
    cdsNFVendaTRANSPORTE: TStringField;
    cdsNFVendaCIDADENASC: TStringField;
    cdsNFVendaUFNASC: TStringField;
    cdsNFVendaNACIONALIDADE: TStringField;
    cdsNFVendaCERTIDAONASCNUM: TStringField;
    cdsNFVendaLIVRONASC: TStringField;
    cdsNFVendaFLLIVRONASC: TStringField;
    cdsNFVendaLOCALTRABPAI: TStringField;
    cdsNFVendaLOCALTRABMAE: TStringField;
    cdsNFVendaTELTRABPAI: TStringField;
    cdsNFVendaTELTRABMAE: TStringField;
    cdsNFVendaINFONECESSARIAS: TStringField;
    cdsNFVendaCARTEIRAVACINACAO: TStringField;
    cdsNFVendaRAPRODESP: TStringField;
    cdsNFVendaLOCALTRABALUNO: TStringField;
    cdsNFVendaTELTRABALUNO: TStringField;
    cdsNFVendaRAPROD: TStringField;
    cdsNFVendaCERT_NAS_COMARCA: TStringField;
    cdsNFVendaCERT_NAS_UF: TStringField;
    cdsNFVendaCERT_NAS_MUNICIPIO: TStringField;
    cdsNFVendaCERT_NAS_DISTRITO: TStringField;
    cdsNFVendaCERT_NAS_SUBDISTRITO: TStringField;
    cdsNFVendaDIVERSO1: TStringField;
    cdsNFVendaDIVERSO2: TStringField;
    cdsNFVendaDATAEMISSAORG: TDateField;
    cdsNFVendaESTADORG: TStringField;
    cdsNFVendaCOMUNICAALUNO: TStringField;
    cdsNFVendaFONEMAE: TStringField;
    cdsNFVendaCELULARMAE: TStringField;
    cdsNFVendaCOMUNICAMAE: TStringField;
    cdsNFVendaFONEPAI: TStringField;
    cdsNFVendaCELULARPAI: TStringField;
    cdsNFVendaCOMUNICAPAI: TStringField;
    cdsNFVendaVALOR_MATRICULA: TFloatField;
    cdsNFVendaDATATRANSF: TDateField;
    cdsNFVendaCOR_RACA: TStringField;
    cdsNFVendaPERIODO: TStringField;
    cdsNFVendaFOTO: TStringField;
    cdsNFVendaDATA_MATRICULA: TSQLTimeStampField;
    cdsNFVendaCODRESPONSAVEL: TIntegerField;
    cdsNFVendaID_COB: TIntegerField;
    cdsNFVendaCOD_TRANPORTADORA: TIntegerField;
    cdsNFVendaBLOQUEIO: TStringField;
    cdsNFVendaCODCLI: TStringField;
    cdsNFVendaCFOP_1: TStringField;
    cdsNFVendaCOD_CLI: TStringField;
    cdsNFVendaCODENDERECO: TIntegerField;
    cdsNFVendaCODCLIENTE_2: TIntegerField;
    cdsNFVendaLOGRADOURO: TStringField;
    cdsNFVendaBAIRRO: TStringField;
    cdsNFVendaCOMPLEMENTO: TStringField;
    cdsNFVendaCIDADE: TStringField;
    cdsNFVendaUF_1: TStringField;
    cdsNFVendaCEP: TStringField;
    cdsNFVendaTELEFONE: TStringField;
    cdsNFVendaTELEFONE1: TStringField;
    cdsNFVendaTELEFONE2: TStringField;
    cdsNFVendaFAX: TStringField;
    cdsNFVendaE_MAIL: TStringField;
    cdsNFVendaRAMAL: TStringField;
    cdsNFVendaTIPOEND: TSmallintField;
    cdsNFVendaDADOSADICIONAIS: TStringField;
    cdsNFVendaDDD: TStringField;
    cdsNFVendaDDD1: TStringField;
    cdsNFVendaDDD2: TStringField;
    cdsNFVendaDDD3: TStringField;
    cdsNFVendaNUMERO_2: TStringField;
    cdsNFVendaCD_IBGE: TStringField;
    cdsNFVendaPAIS: TStringField;
    sdsItens: TSQLDataSet;
    dspItens: TDataSetProvider;
    cdsItens: TClientDataSet;
    sdsUnimed: TSQLQuery;
    cdsItensCODMOVIMENTO: TIntegerField;
    cdsItensDATAMOVIMENTO: TDateField;
    cdsItensCODCLIENTE: TIntegerField;
    cdsItensCODNATUREZA: TSmallintField;
    cdsItensSTATUS: TSmallintField;
    cdsItensCODUSUARIO: TSmallintField;
    cdsItensCODVENDEDOR: TSmallintField;
    cdsItensCODALMOXARIFADO: TIntegerField;
    cdsItensCODFORNECEDOR: TIntegerField;
    cdsItensCODPRODUTO: TIntegerField;
    cdsItensQUANTIDADE: TFloatField;
    cdsItensPRECO: TFloatField;
    cdsItensICMS: TFloatField;
    cdsItensUN: TStringField;
    cdsItensQTDE_ALT: TFloatField;
    cdsItensNOTAFISCAL: TStringField;
    cdsItensDESCPRODUTO: TStringField;
    cdsItensCST: TStringField;
    cdsItensVALOR_ICMS: TFloatField;
    cdsItensVLR_BASE: TFloatField;
    cdsItensPORCENTAGENDESC: TFloatField;
    cdsItensICMS_SUBST: TFloatField;
    cdsItensICMS_SUBSTD: TFloatField;
    cdsItensVLR_BASEICMS: TFloatField;
    cdsItensPIPI: TFloatField;
    cdsItensVIPI: TFloatField;
    cdsItensCFOP: TStringField;
    cdsItensFRETE: TFloatField;
    cdsItensBCFRETE: TFloatField;
    cdsItensSTFRETE: TStringField;
    cdsItensBCSTFRETE: TFloatField;
    cdsItensICMSFRETE: TFloatField;
    cdsItensCSOSN: TStringField;
    cdsItensVALOR_DESCONTO: TFloatField;
    cdsItensVALOR_SEGURO: TFloatField;
    cdsItensVALOR_OUTROS: TFloatField;
    cdsItensOBS: TStringField;
    cdsItensCODSOLICITACAO: TIntegerField;
    cdsItensVALOR_PIS: TFloatField;
    cdsItensVALOR_COFINS: TFloatField;
    cdsItensII: TFloatField;
    cdsItensBCII: TFloatField;
    cdsItensCODPRO: TStringField;
    cdsItensNCM: TStringField;
    sdsMov: TSQLDataSet;
    dspMov: TDataSetProvider;
    cdsMov: TClientDataSet;
    sdsCompra: TSQLDataSet;
    dspCompra: TDataSetProvider;
    cdsCompra: TClientDataSet;
    sdsEmpS: TSQLDataSet;
    dspEmpS: TDataSetProvider;
    cdsEmpS: TClientDataSet;
    sdsEmpSRAZAOSOCIAL: TStringField;
    sdsEmpSCNPJ: TStringField;
    sdsEmpSINSCESTADUAL: TStringField;
    sdsEmpSTIPOFIRMA: TSmallintField;
    sdsEmpSCODENDERECO: TIntegerField;
    sdsEmpSCODCLIENTE: TIntegerField;
    sdsEmpSLOGRADOURO: TStringField;
    sdsEmpSBAIRRO: TStringField;
    sdsEmpSCOMPLEMENTO: TStringField;
    sdsEmpSCIDADE: TStringField;
    sdsEmpSUF: TStringField;
    sdsEmpSCEP: TStringField;
    sdsEmpSTELEFONE: TStringField;
    sdsEmpSTELEFONE1: TStringField;
    sdsEmpSTELEFONE2: TStringField;
    sdsEmpSFAX: TStringField;
    sdsEmpSE_MAIL: TStringField;
    sdsEmpSRAMAL: TStringField;
    sdsEmpSTIPOEND: TSmallintField;
    sdsEmpSDADOSADICIONAIS: TStringField;
    sdsEmpSDDD: TStringField;
    sdsEmpSDDD1: TStringField;
    sdsEmpSDDD2: TStringField;
    sdsEmpSDDD3: TStringField;
    sdsEmpSNUMERO: TStringField;
    sdsEmpSCD_IBGE: TStringField;
    sdsEmpSPAIS: TStringField;
    sdsEmpE: TSQLDataSet;
    dspEmpE: TDataSetProvider;
    cdsEmpE: TClientDataSet;
    sdsEmpECODFORNECEDOR: TIntegerField;
    sdsEmpERAZAOSOCIAL: TStringField;
    sdsEmpECNPJ: TStringField;
    sdsEmpEINSCESTADUAL: TStringField;
    sdsEmpETIPOFIRMA: TSmallintField;
    sdsEmpELOGRADOURO: TStringField;
    sdsEmpEBAIRRO: TStringField;
    sdsEmpECIDADE: TStringField;
    sdsEmpECD_IBGE: TStringField;
    sdsEmpECEP: TStringField;
    sdsEmpECOMPLEMENTO: TStringField;
    sdsEmpEDDD: TSmallintField;
    sdsEmpETELEFONE: TStringField;
    sdsEmpENUMERO: TStringField;
    sdsEmpEPAIS: TStringField;
    cdsEmpECODFORNECEDOR: TIntegerField;
    cdsEmpERAZAOSOCIAL: TStringField;
    cdsEmpECNPJ: TStringField;
    cdsEmpEINSCESTADUAL: TStringField;
    cdsEmpETIPOFIRMA: TSmallintField;
    cdsEmpELOGRADOURO: TStringField;
    cdsEmpEBAIRRO: TStringField;
    cdsEmpECIDADE: TStringField;
    cdsEmpECD_IBGE: TStringField;
    cdsEmpECEP: TStringField;
    cdsEmpECOMPLEMENTO: TStringField;
    cdsEmpEDDD: TSmallintField;
    cdsEmpETELEFONE: TStringField;
    cdsEmpENUMERO: TStringField;
    cdsEmpEPAIS: TStringField;
    cdsEmpSRAZAOSOCIAL: TStringField;
    cdsEmpSCNPJ: TStringField;
    cdsEmpSINSCESTADUAL: TStringField;
    cdsEmpSTIPOFIRMA: TSmallintField;
    cdsEmpSCODENDERECO: TIntegerField;
    cdsEmpSCODCLIENTE: TIntegerField;
    cdsEmpSLOGRADOURO: TStringField;
    cdsEmpSBAIRRO: TStringField;
    cdsEmpSCOMPLEMENTO: TStringField;
    cdsEmpSCIDADE: TStringField;
    cdsEmpSUF: TStringField;
    cdsEmpSCEP: TStringField;
    cdsEmpSTELEFONE: TStringField;
    cdsEmpSTELEFONE1: TStringField;
    cdsEmpSTELEFONE2: TStringField;
    cdsEmpSFAX: TStringField;
    cdsEmpSE_MAIL: TStringField;
    cdsEmpSRAMAL: TStringField;
    cdsEmpSTIPOEND: TSmallintField;
    cdsEmpSDADOSADICIONAIS: TStringField;
    cdsEmpSDDD: TStringField;
    cdsEmpSDDD1: TStringField;
    cdsEmpSDDD2: TStringField;
    cdsEmpSDDD3: TStringField;
    cdsEmpSNUMERO: TStringField;
    cdsEmpSCD_IBGE: TStringField;
    cdsEmpSPAIS: TStringField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    sdsProdutoCODPRODUTO: TIntegerField;
    sdsProdutoCODPRO: TStringField;
    sdsProdutoNCM: TStringField;
    sdsProdutoPRODUTO: TStringField;
    cdsProdutoCODPRODUTO: TIntegerField;
    cdsProdutoCODPRO: TStringField;
    cdsProdutoNCM: TStringField;
    cdsProdutoPRODUTO: TStringField;
    sdsCompraDet: TSQLDataSet;
    DateField1: TDateField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField2: TIntegerField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    StringField1: TStringField;
    FloatField8: TFloatField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    StringField4: TStringField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    StringField5: TStringField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField6: TStringField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    IntegerField3: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    SmallintField1: TSmallintField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    SmallintField2: TSmallintField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    IntegerField4: TIntegerField;
    dspCompraDet: TDataSetProvider;
    cdsCompraDet: TClientDataSet;
    sdsCompraDATACOMPRA: TDateField;
    sdsCompraNOTAFISCAL: TIntegerField;
    sdsCompraVALOR_ICMS: TFloatField;
    sdsCompraVALOR_FRETE: TFloatField;
    sdsCompraVALOR_SEGURO: TFloatField;
    sdsCompraVALOR_IPI: TFloatField;
    sdsCompraCODFORNECEDOR: TIntegerField;
    sdsCompraRAZAOSOCIAL: TStringField;
    sdsCompraCNPJ: TStringField;
    sdsCompraINSCESTADUAL: TStringField;
    sdsCompraTIPOFIRMA: TSmallintField;
    sdsCompraLOGRADOURO: TStringField;
    sdsCompraBAIRRO: TStringField;
    sdsCompraCIDADE: TStringField;
    sdsCompraCD_IBGE: TStringField;
    sdsCompraCEP: TStringField;
    sdsCompraCOMPLEMENTO: TStringField;
    sdsCompraDDD: TSmallintField;
    sdsCompraTELEFONE: TStringField;
    sdsCompraNUMERO: TStringField;
    sdsCompraPAIS: TStringField;
    sdsCompraSERIE: TStringField;
    sdsCompraVALOR: TFloatField;
    sdsCompraICMS_ST: TFloatField;
    sdsCompraICMS_BASE_ST: TFloatField;
    sdsCompraCODMOVIMENTO: TIntegerField;
    cdsCompraDATACOMPRA: TDateField;
    cdsCompraNOTAFISCAL: TIntegerField;
    cdsCompraVALOR_ICMS: TFloatField;
    cdsCompraVALOR_FRETE: TFloatField;
    cdsCompraVALOR_SEGURO: TFloatField;
    cdsCompraVALOR_IPI: TFloatField;
    cdsCompraCODFORNECEDOR: TIntegerField;
    cdsCompraRAZAOSOCIAL: TStringField;
    cdsCompraCNPJ: TStringField;
    cdsCompraINSCESTADUAL: TStringField;
    cdsCompraTIPOFIRMA: TSmallintField;
    cdsCompraLOGRADOURO: TStringField;
    cdsCompraBAIRRO: TStringField;
    cdsCompraCIDADE: TStringField;
    cdsCompraCD_IBGE: TStringField;
    cdsCompraCEP: TStringField;
    cdsCompraCOMPLEMENTO: TStringField;
    cdsCompraDDD: TSmallintField;
    cdsCompraTELEFONE: TStringField;
    cdsCompraNUMERO: TStringField;
    cdsCompraPAIS: TStringField;
    cdsCompraSERIE: TStringField;
    cdsCompraVALOR: TFloatField;
    cdsCompraICMS_ST: TFloatField;
    cdsCompraICMS_BASE_ST: TFloatField;
    cdsCompraCODMOVIMENTO: TIntegerField;
    cdsCompraDetDATACOMPRA: TDateField;
    cdsCompraDetNOTAFISCAL: TIntegerField;
    cdsCompraDetVALOR_ICMS: TFloatField;
    cdsCompraDetVALOR_FRETE: TFloatField;
    cdsCompraDetVALOR_SEGURO: TFloatField;
    cdsCompraDetVALOR_IPI: TFloatField;
    cdsCompraDetCODPRODUTO: TIntegerField;
    cdsCompraDetQUANTIDADE: TFloatField;
    cdsCompraDetPRECO: TFloatField;
    cdsCompraDetICMS: TFloatField;
    cdsCompraDetUN: TStringField;
    cdsCompraDetQTDE_ALT: TFloatField;
    cdsCompraDetDESCPRODUTO: TStringField;
    cdsCompraDetCST: TStringField;
    cdsCompraDetVALOR_ICMS_1: TFloatField;
    cdsCompraDetVLR_BASE: TFloatField;
    cdsCompraDetICMS_SUBST: TFloatField;
    cdsCompraDetICMS_SUBSTD: TFloatField;
    cdsCompraDetVLR_BASEICMS: TFloatField;
    cdsCompraDetPIPI: TFloatField;
    cdsCompraDetVIPI: TFloatField;
    cdsCompraDetCFOP: TStringField;
    cdsCompraDetFRETE: TFloatField;
    cdsCompraDetBCFRETE: TFloatField;
    cdsCompraDetSTFRETE: TStringField;
    cdsCompraDetBCSTFRETE: TFloatField;
    cdsCompraDetICMSFRETE: TFloatField;
    cdsCompraDetCSOSN: TStringField;
    cdsCompraDetVALOR_SEGURO_1: TFloatField;
    cdsCompraDetVALOR_OUTROS: TFloatField;
    cdsCompraDetVALOR_PIS: TFloatField;
    cdsCompraDetVALOR_COFINS: TFloatField;
    cdsCompraDetII: TFloatField;
    cdsCompraDetBCII: TFloatField;
    cdsCompraDetCSTIPI: TStringField;
    cdsCompraDetCSTPIS: TStringField;
    cdsCompraDetCSTCOFINS: TStringField;
    cdsCompraDetPPIS: TFloatField;
    cdsCompraDetPCOFINS: TFloatField;
    cdsCompraDetCODFORNECEDOR: TIntegerField;
    cdsCompraDetRAZAOSOCIAL: TStringField;
    cdsCompraDetCNPJ: TStringField;
    cdsCompraDetINSCESTADUAL: TStringField;
    cdsCompraDetTIPOFIRMA: TSmallintField;
    cdsCompraDetLOGRADOURO: TStringField;
    cdsCompraDetBAIRRO: TStringField;
    cdsCompraDetCIDADE: TStringField;
    cdsCompraDetCD_IBGE: TStringField;
    cdsCompraDetCEP: TStringField;
    cdsCompraDetCOMPLEMENTO: TStringField;
    cdsCompraDetDDD: TSmallintField;
    cdsCompraDetTELEFONE: TStringField;
    cdsCompraDetNUMERO: TStringField;
    cdsCompraDetPAIS: TStringField;
    cdsCompraDetSERIE: TStringField;
    cdsCompraDetVALOR: TFloatField;
    cdsCompraDetICMS_ST: TFloatField;
    cdsCompraDetICMS_BASE_ST: TFloatField;
    cdsCompraDetCODDETALHE: TIntegerField;
    procedure cbMesChange(Sender: TObject);
    procedure edtFileChange(Sender: TObject);
    procedure edtFileExit(Sender: TObject);
    procedure cbConcomitanteClick(Sender: TObject);
    procedure btnTXTClick(Sender: TObject);
    procedure btnErrorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    util : Tutils;
    tipo: String;
    function validaCodMunicipio(cod: String; quem: String):String;
    function cstPis(cstP: String): TACBrSituacaoTribPIS;
    function cstCofins(cstC: String): TACBrSituacaoTribCOFINS;
    procedure LoadToMemo;
    procedure blocoO;
    procedure bloco1;
    procedure blocoA;
    procedure blocoC;
    procedure blocoD;
    procedure blocoF;
    procedure blocoM;
    procedure abrirTabelas;
    { Private declarations }
  public
    codMovMin, codMovMax: Integer;
    { Public declarations }
  end;

var
  fNfePisCofins: TfNfePisCofins;

implementation

uses UDm, ACBrEPCBloco_0;

{$R *.dfm}

{ TForm1 }

procedure TfNfePisCofins.bloco1;
begin
  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco 1.

  with ACBrSPEDPisCofins1.Bloco_1 do
  begin
    with Registro1001New do
    begin
       IND_MOV := imSemDados;
    end;
  end;


  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_1;
    LoadToMemo;
  end;
end;

procedure TfNfePisCofins.blocoA;
var
  INotas: Integer;
  IItens: Integer;
  NNotas: Integer;
  BNotas: Integer;
begin
   // Alimenta o componente com informa��es para gerar todos os registros do
   // Bloco A.

   NNotas := StrToInt64Def(edNotas.Text,1);
   BNotas := StrToInt64Def(edBufNotas.Text,1);

   ProgressBar1.Visible := cbConcomitante.Checked ;
   ProgressBar1.Max     := NNotas;
   ProgressBar1.Position:= 0 ;

   with ACBrSPEDPisCofins1.Bloco_A do
   begin
      with RegistroA001New do
      begin
         IND_MOV := imComDados;
         //
         for INotas := 1 to NNotas do
         begin
           with RegistroA010New do
           begin
              CNPJ := '11111111111180';
              with RegistroA100New do
              begin
                 IND_OPER      := itoContratado;
                 IND_EMIT      := iedfProprio;
                 COD_PART      := '001';
                 COD_SIT       := sdfRegular;
                 SER           := '';
                 SUB           := '';
                 NUM_DOC       := FormatFloat('NF000000',INotas);
                 CHV_NFSE      := '';
                 DT_DOC        := DT_INI + INotas;
                 DT_EXE_SERV   := DT_INI + INotas;
                 VL_DOC        := 0;
                 IND_PGTO      := tpSemPagamento;
                 VL_DESC       := 0;
                 VL_BC_PIS     := 0;
                 VL_PIS        := 0;
                 VL_BC_COFINS  := 0;
                 VL_COFINS     := 0;
                 VL_PIS_RET    := 0;
                 VL_COFINS_RET := 0;
                 VL_ISS        := 0;

                 //A170
                 for IItens := 1 to 10 do
                 begin
                   with RegistroA170New do   //Inicio Adicionar os Itens:
                   begin
                      NUM_ITEM         := IItens;
                      COD_ITEM         := IntToStr(NUM_ITEM);
                      DESCR_COMPL      := FormatFloat('NF000000',INotas)+' -> ITEM '+COD_ITEM;
                      VL_ITEM          := 0;
                      VL_DESC          := 0;
                      NAT_BC_CRED      := bccAqBensRevenda;
                      IND_ORIG_CRED    := opcMercadoInterno;
                      CST_PIS          := stpisOutrasOperacoesSaida;
                      VL_BC_PIS        := 0;
                      ALIQ_PIS         := 0;
                      VL_PIS           := 0;
                      CST_COFINS       := stcofinsOutrasOperacoesSaida;
                      VL_BC_COFINS     := 0;
                      ALIQ_COFINS      := 0;
                      VL_COFINS        := 0;
                      COD_CTA          := '000';
                      COD_CCUS         := '123';
                    end; //Fim dos Itens;
                 end;
              end;
              if cbConcomitante.Checked then
              begin
                 if (INotas mod BNotas) = 0 then   // Gravar a cada N notas
                 begin
                    // Grava registros na memoria para o TXT, e limpa memoria
                    ACBrSPEDPisCofins1.WriteBloco_A( False );  // False, NAO fecha o Bloco
                    ProgressBar1.Position := INotas;
                    Application.ProcessMessages;
                 end;
              end;
           end;
         end;
      end;
   end;
   if cbConcomitante.Checked then
   begin
      ACBrSPEDPisCofins1.WriteBloco_A(True);  // True, fecha o Bloco
      LoadToMemo;
   end;

   ProgressBar1.Visible := False ;
end;

procedure TfNfePisCofins.blocoO;
const
  strUNID: array[0..4] of string = ('PC', 'UN', 'LT', 'PC', 'MT');

var
  int0140: integer;
  int0150: integer;
  int0190: integer;
  int0200: integer;
begin
  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco 0.

  cbConcomitante.Enabled := False ;

  ACBrSPEDPisCofins1.DT_INI := data_ini.Date;
  ACBrSPEDPisCofins1.DT_FIN := data_fim.Date;
  ACBrSPEDPisCofins1.IniciaGeracao;

  if cbConcomitante.Checked then
  begin
    with ACBrSPEDPisCofins1 do
    begin
      //DT_INI := StrToDate('01/04/2011');
      //DT_FIN := StrToDate('30/04/2011');
      LinhasBuffer := StrToIntDef( edBufLinhas.Text, 0 );

     //IniciaGeracao;
    end;

    LoadToMemo;
  end;

  with ACBrSPEDPisCofins1.Bloco_0 do
  begin
    // Dados da Empresa
    with Registro0000New do
    begin
      COD_VER          := vlVersao101;
      TIPO_ESCRIT      := tpEscrOriginal;
      IND_SIT_ESP      := indSitAbertura;
      NUM_REC_ANTERIOR := '';
      NOME             := cdsEmpresaRAZAO.AsString;
      CNPJ             := util.RemoveChar(cdsEmpresaCNPJ_CPF.AsString);
      UF               := cdsEmpresaUF.AsString;
      COD_MUN          := StrToInt(validaCodMunicipio(cdsEmpresaCD_IBGE.AsString, cdsEmpresaRAZAO.AsString));
      SUFRAMA          := '';
      IND_NAT_PJ       := TACBrIndicadorNaturezaPJ(cdsEmpresaINDICADORNATUREZAPJ.AsInteger); // indNatPJSocEmpresariaGeral;
      IND_ATIV         := TACBrIndicadorAtividade(cdsEmpresaINDICADORATIVIDADE.asInteger); // indAtivIndustrial;
      {COD_IND_INC_TRIB := TACBrCodIndIncTributaria(cdsEmpresaCODINDINCTRIBUTARIA.AsInteger);
      IND_APRO_CRED    := TACBrIndAproCred(cdsEmpresaINDAPROCRED.AsInteger);
      COD_IND_TIPO_CON := TACBrCodIndTipoCon(cdsEmpresaCODINDTIPOCON.AsInteger);
      COD_IND_CRIT_ESC := TACBrCodIndCritEscrit(cdsEmpresaCODINDCRITESCRIT.AsInteger);
      IND_COD_INC      := TACBrIndCodIncidencia(cdsEmpresaINDCODINCIDENCIA.AsInteger);
      IND_CTA          := TACBrIndCTA(cdsEmpresaINDCTA.AsInteger);
      IND_ESCRIT       := TACBrIndEscrituracao(cdsEmpresaINDESCRITURACAO.AsInteger);
      BASE_CALC_CRED   := TACBrBaseCalculoCredito(cdsEmpresaBASECALCULOCREDITO.AsInteger);
      IND_AJ           := TACBrIndAJ(cdsEmpresaINDAJ.AsInteger);}

      with Registro0001New do
      begin
         IND_MOV := imComDados;

         // FILHO - Dados do contador.
         with Registro0100New do
         begin
           if (cdsEmpresaCONTADOR.AsString <> '') then
           begin
            NOME       := cdsEmpresaCONTADOR.AsString;
            CPF        := util.RemoveChar(cdsEmpresaCONTADOR_CPF.AsString);
            CRC        := util.RemoveChar(cdsEmpresaCONTADOR_CRC.AsString);
            CNPJ       := util.RemoveChar(cdsEmpresaCONTADOR_CNPJ.AsString);
            CEP        := util.RemoveChar(cdsEmpresaCONTADOR_CEP.AsString);
            ENDERECO   := cdsEmpresaCONTADOR_END.AsString;
            NUM        := util.RemoveChar(cdsEmpresaCONTADOR_NUMEND.AsString);
            COMPL      := cdsEmpresaCONTADOR_COMPL.AsString;
            BAIRRO     := cdsEmpresaCONTADOR_BAIRRO.AsString;
            FONE       := cdsEmpresaCONTADOR_FONE.AsString;
            FAX        := cdsEmpresaCONTADOR_FAX.AsString;
            EMAIL      := cdsEmpresaCONTADOR_EMAIL.AsString;
            COD_MUN    := StrToInt(validaCodMunicipio(cdsEmpresaCONTADOR_COD_MUN.AsString, 'Contador: ' + cdsEmpresaCONTADOR.AsString));
           end;
         end;

         // FILHO - Regime de Apura��o
         with Registro0110New do
         begin
           COD_INC_TRIB  := TACBrCodIndIncTributaria(cdsEmpresaCODINDINCTRIBUTARIA.AsInteger);
           IND_APRO_CRED := TACBrIndAproCred(cdsEmpresaINDAPROCRED.AsInteger);
           COD_TIPO_CONT := TACBrCodIndTipoCon(cdsEmpresaCODINDTIPOCON.AsInteger);
           //Campo IND_REG_CUM apenas para Lucro Presumido e (COD_INC_TRIB = 2)
           //IND_REG_CUM := 1;
         end;

         //0140 - Tabela de Cadastro de Estabelecimento
         // FILHO
         int0140 := 1;  // 1 Estabelecimento
         with Registro0140New do
         begin
           COD_EST := IntToStr(int0140);
           NOME    := cdsEmpresaRAZAO.AsString + IntToStr(int0140);
           CNPJ    := util.RemoveChar(cdsEmpresaCNPJ_CPF.AsString);
           UF      := cdsEmpresaUF.AsString;
           IE      := util.RemoveChar(cdsEmpresaIE_RG.AsString);
           COD_MUN := StrToInt(validaCodMunicipio(cdsEmpresaCD_IBGE.AsString, cdsEmpresaRAZAO.AsString));
           IM      := cdsEmpresaIM.AsString;
           SUFRAMA := '';


           int0150 := 1;

           if (cdsEmpS.Active) then
              cdsEmpS.Close;
           cdsEmpS.Params[0].AsDateTime := data_ini.Date;
           cdsEmpS.Params[1].AsDateTime := data_fim.Date;
           cdsEmpS.Params[2].AsInteger := codMovMin;
           cdsEmpS.Params[3].AsInteger := codMovMax;
           cdsEmpS.Open;

           if (cdsEmpE.Active) then
             cdsEmpE.Close;
           cdsEmpE.Params[0].AsDateTime := data_ini.Date;
           cdsEmpE.Params[1].AsDateTime := data_fim.Date;
           cdsEmpE.Params[2].AsInteger := codMovMin;
           cdsEmpE.Params[3].AsInteger := codMovMax;
           cdsEmpE.Open;

           if (not cdsEmpE.IsEmpty) then
           begin
             while not cdsEmpE.Eof do
             begin
               // 10 Clientes por estabelecimento
               //0150 - Tabela de Cadastro do Participante
               with Registro0150New do
               begin
                 int0150 := cdsEmpECODFORNECEDOR.AsInteger;
                 COD_PART := IntToStr(int0150);
                 NOME     := cdsEmpERAZAOSOCIAL.AsString + IntToStr(int0150);
                 if (cdsEmpEPAIS.AsString = 'Brasil') then
                 COD_PAIS := '1058';
                 if (cdsEmpETIPOFIRMA.AsInteger = 1) then
                 begin
                   CNPJ     := util.RemoveChar(cdsEmpECNPJ.AsString);
                   CPF      := '';
                 end
                 else begin
                   CPF      := util.RemoveChar(cdsEmpECNPJ.AsString);
                   CNPJ     := '';
                 end;

                 IE       := util.RemoveChar(cdsEmpEINSCESTADUAL.AsString);
                 COD_MUN  := StrToInt(validaCodMunicipio(cdsEmpECD_IBGE.AsString, cdsEmpERAZAOSOCIAL.AsString));
                 SUFRAMA  := '';
                 ENDERECO := cdsEmpELOGRADOURO.AsString + IntToStr(int0150);
                 NUM      := cdsEmpENUMERO.AsString;
                 COMPL    := cdsEmpECOMPLEMENTO.AsString + IntToStr(int0150);
                 BAIRRO   := cdsEmpEBAIRRO.AsString;
                 //
               end;
               cdsEmpE.Next;
             end;
           end;

           {if (not cdsEmpS.IsEmpty) then
           begin
             while not cdsEmpS.Eof do
             begin
               // 10 Clientes por estabelecimento
               //0150 - Tabela de Cadastro do Participante
               with Registro0150New do
               begin
                 int0150 := cdsEmpSCODCLIENTE.AsInteger;
                 COD_PART := IntToStr(int0150);
                 NOME     := cdsEmpSRAZAOSOCIAL.AsString + IntToStr(int0150);
                 COD_PAIS := cdsEmpSPAIS.AsString;
                 if (cdsEmpSTIPOFIRMA.AsInteger = 0) then
                 begin
                   CNPJ     := util.RemoveChar(cdsEmpSCNPJ.AsString);
                   CPF      := '';
                 end
                 else begin
                   CPF      := util.RemoveChar(cdsEmpSCNPJ.AsString);
                   CNPJ     := '';
                 end;

                 IE       := util.RemoveChar(cdsEmpSINSCESTADUAL.AsString);
                 COD_MUN  := StrToInt(validaCodMunicipio(cdsEmpSCD_IBGE.AsString, cdsEmpSRAZAOSOCIAL.AsString));
                 SUFRAMA  := '';
                 ENDERECO := cdsEmpSLOGRADOURO.AsString + IntToStr(int0150);
                 NUM      := cdsEmpSNUMERO.AsString;
                 COMPL    := cdsEmpSCOMPLEMENTO.AsString + IntToStr(int0150);
                 BAIRRO   := cdsEmpSBAIRRO.AsString;
                 //
                 cdsEmpS.Next;
               end;
             end;
           end;

           if (sdsUnimed.Active) then
             sdsUnimed.Close;
           sdsUnimed.Params[0].AsInteger := cdsNFVendaCODVENDA.AsInteger;
           sdsUnimed.Open;

           while (not sdsUnimed.Eof) do
           begin
             // 0190 - Identifica��o das Unidades de Medida
             with Registro0190New do
             begin
               UNID  := sdsUnimed.Fields[0].AsString[int0190];
               DESCR := sdsUnimed.Fields[0].AsString + sdsUnimed.Fields[0].AsString[int0190];
             end;
             sdsUnimed.Next;
           end;


           // ITENS  ############################################################
           if (cdsProduto.Active) then
             cdsProduto.Close;

           cdsProduto.Params[0].AsInteger := codMovMin;
           cdsProduto.Params[1].AsInteger := codMovMax;
           cdsProduto.Open;
           While (not cdsProduto.Eof) do
           begin
             //10 produtos/servi�os
             int0200 := 1;
             // 0200 - Tabela de Identifica��o do Item (Produtos e Servi�os)
             with Registro0200New do
             begin
               COD_ITEM     := FORMATFLOAT(Format('%6.6d',[cdsProdutoCODPRODUTO.AsInteger]), int0200);
               DESCR_ITEM   := cdsProdutoPRODUTO.AsString;
               COD_BARRA    := '';
               COD_ANT_ITEM := '';
               UNID_INV     := '';
               TIPO_ITEM    := tiMercadoriaRevenda;
               COD_NCM      := cdsProdutoNCM.AsString;
               EX_IPI       := '';
               COD_GEN      := '';
               COD_LST      := '';
               ALIQ_ICMS    := 0;
             end;
             int0200 := int0200 + 1;
             cdsProduto.Next;
           end; }
         end;

         // FILHO - REGISTRO 0500: PLANO DE CONTAS CONT�BEIS
        { with Registro0500New do
         begin
           DT_ALT := StrToDate('01/04/2011');
           COD_NAT_CC := ncgAtivo;
           IND_CTA := indCTASintetica;
           NIVEL := '0';
           COD_CTA := '0';
           NOME_CTA := 'NOME CTA';
           COD_CTA_REF := '0';
           CNPJ_EST := '123456789';
         end; }
        end;
      //end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_0;
    LoadToMemo;
  end;

end;

procedure TfNfePisCofins.LoadToMemo;
begin
   memoTXT.Lines.Clear;
   if FileExists( ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo ) then
      memoTXT.Lines.LoadFromFile(ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo);
end;

procedure TfNfePisCofins.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  data_ini.Text := periodo.PeriodoIni;
  data_fim.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfNfePisCofins.blocoC;
var
INotas: Integer;
IItens: Integer;
NNotas: Integer;
BNotas: Integer;
parametroVer: Integer;
begin
  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco C.
  NNotas := StrToInt64Def(edNotas.Text,1);
  BNotas := StrToInt64Def(edBufNotas.Text,1);

  ProgressBar1.Visible := cbConcomitante.Checked ;
  ProgressBar1.Max     := NNotas;
  ProgressBar1.Position:= 0 ;

  //Primeiro as NFs de Entrada
  if (cdsCompra.Active) then
    cdsCompra.Close;
  cdsCompra.Params[0].AsInteger := codMovMin;
  cdsCompra.Params[1].AsInteger := codMovMax;
  cdsCompra.Params[2].AsDate    := data_ini.Date;
  cdsCompra.Params[3].AsDate    := data_fim.Date;
  cdsCompra.Open;
  // INICIO BLOCO COMPRAS  ######################
  While not cdsCompra.Eof do
  begin
    with ACBrSPEDPisCofins1.Bloco_C do
    begin
      with RegistroC001New do
      begin
        IND_MOV := imComDados;
        //parametroVer := cdsCompraCODDETALHE.AsInteger;
        //C010 - Identifica��o do Estabelecimento
        with RegistroC010New do
        begin
          CNPJ := util.RemoveChar(cdsCompraCNPJ.AsString);
          IND_ESCRI := IndEscriIndividualizado;
          //Inserir Notas...
          //for INotas := 1 to NNotas do
          //begin
          //C100 - Documento - Nota Fiscal (c�digo 01), Nota Fiscal Avulsa (c�digo 1B), Nota
          // Fiscal de Produtor (c�digo 04) e NF-e (c�digo 55)
          with RegistroC100New do
          begin
            IND_OPER      := tpEntradaAquisicao; // tpEntradaAquisicao, // 0 - Entrada
            IND_EMIT      := edTerceiros;   // 0 - Emiss�o pr�pria // 1 - Terceiro
            COD_PART      := InttoStr(cdsCompraCODFORNECEDOR.asInteger);
            COD_MOD       := '55'; //COD_MOD	C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 (C�digo 02 � Nota Fiscal de Venda a Consumidor)	C	002*
            if (cdsCompraSERIE.AsString = '1A') then
              COD_MOD       := '01';
            COD_SIT       := sdRegular;
            SER           := ''; //04	SER	S�rie do documento fiscal	C	003	-
            //NUM_DOC       := FormatFloat('NF000000', cdsCompraNOTAFISCAL.AsInteger);  //INotas
            NUM_DOC       := IntToStr(cdsCompraNOTAFISCAL.AsInteger);
            CHV_NFE       := '';  //cdsCOMPRANOMEXML.AsString;
            DT_DOC        := cdsCompraDATACOMPRA.AsDateTime;
            DT_E_S        := cdsCompraDATACOMPRA.AsDateTime;
            VL_DOC        := cdsCompraVALOR.AsFloat;
            IND_PGTO      := tpPrazo;
            VL_DESC       := 0;
            VL_ABAT_NT    := 0;
            VL_MERC       := cdsCompraVALOR.AsFloat;
            IND_FRT       := tfSemCobrancaFrete;
            VL_FRT        := cdsCompraVALOR_FRETE.AsFloat;
            VL_SEG        := cdsCompraVALOR_SEGURO.AsFloat;
            VL_OUT_DA     := 0;
            VL_BC_ICMS    := cdsCompraVALOR.AsFloat;
            VL_ICMS       := cdsCompraVALOR_ICMS.AsFloat;
            VL_BC_ICMS_ST := cdsCompraICMS_BASE_ST.AsFloat;
            VL_ICMS_ST    := cdsCompraICMS_ST.AsFloat;
            VL_IPI        := cdsCompraVALOR_IPI.AsFloat;
            VL_PIS        := 0;
            VL_COFINS     := 0;
            VL_PIS_ST     := 0;
            VL_COFINS_ST  := 0;

            if (cdsCompraDet.Active) then
              cdsCompraDet.Close;
            cdsCompraDet.Params[0].AsInteger := cdsCompraCODMOVIMENTO.AsInteger;
            cdsCompraDet.Open;
            // INICIO BLOCO COMPRAS  ######################
            IItens := 1;
            While not cdsCompraDet.Eof do
            begin
              //10 itens para cada nota...
              //for IItens := 1 to 10 do
              //begin
              //c170 - Complemento de Documento � Itens do Documento (c�digos 01, 1B, 04 e 55)
              with RegistroC170New do   //Inicio Adicionar os Itens:
              begin
                NUM_ITEM         := FormatFloat('000', IItens);
                COD_ITEM         := FormatFloat('000000', cdsCompraDetCODPRODUTO.AsInteger);
                DESCR_COMPL      := FormatFloat('NF000000',INotas)+' -> ITEM '+COD_ITEM;
                QTD              := cdsCompraDetQUANTIDADE.AsFloat;
                UNID             := cdsCompraDetUN.AsString;
                VL_ITEM          := cdsCompraDetPRECO.AsFloat;
                VL_DESC          := 0;
                IND_MOV          := mfSim;
                CST_ICMS         := sticmsTributadaIntegralmente;
                CFOP             := cdsCompraDetCFOP.AsString;
                COD_NAT          := '04';
                VL_BC_ICMS       := cdsCompraDetVLR_BASEICMS.AsFloat;
                ALIQ_ICMS        := cdsCompraDetICMS.AsFloat;
                VL_ICMS          := cdsCompraDetVALOR_ICMS.AsFloat;
                VL_BC_ICMS_ST    := cdsCompraDetICMS_SUBST.AsFloat;
                ALIQ_ST          := cdsCompraDetICMS_SUBSTD.AsFloat;
                VL_ICMS_ST       := 0;
                if (cdsCompraDetICMS_SUBSTD.AsFloat > 0) then
                  VL_ICMS_ST     := cdsCompraDetICMS_SUBST.AsFloat/cdsCompraDetICMS_SUBSTD.AsFloat;
                IND_APUR         := iaMensal;
                Case StrToInt(cdsCompraDetCSTIPI.AsString) of
                   0 : CST_IPI := stipiEntradaRecuperacaoCredito;// '00' // Entrada com recupera��o de cr�dito
                   1 : CST_IPI := stipiEntradaTributradaZero;    // '01' // Entrada tributada com al�quota zero
                   2 : CST_IPI := stipiEntradaIsenta;            // '02' // Entrada isenta
                   3 : CST_IPI := stipiEntradaNaoTributada;      // '03' // Entrada n�o-tributada
                   4 : CST_IPI := stipiEntradaImune;             // '04' // Entrada imune
                   5 : CST_IPI := stipiEntradaComSuspensao;      // '05' // Entrada com suspens�o
                  49 : CST_IPI := stipiOutrasEntradas;           // '49' // Outras entradas
                  50 : CST_IPI := stipiSaidaTributada;           // '50' // Sa�da tributada
                  51 : CST_IPI := stipiSaidaTributadaZero;       // '51' // Sa�da tributada com al�quota zero
                  52 : CST_IPI := stipiSaidaIsenta;              // '52' // Sa�da isenta
                  53 : CST_IPI := stipiSaidaNaoTributada;        // '53' // Sa�da n�o-tributada
                  54 : CST_IPI := stipiSaidaImune;               // '54' // Sa�da imune
                  55 : CST_IPI := stipiSaidaComSuspensao;        // '55' // Sa�da com suspens�o
                  99 : CST_IPI := stipiOutrasSaidas;             // '99' // Outras sa�das
                end;
                COD_ENQ          := '';
                VL_BC_IPI        := cdsCompraDetVLR_BASEICMS.AsFloat;
                ALIQ_IPI         := 0;
                if (cdsCompraDetVLR_BASEICMS.AsFloat > 0) then
                  ALIQ_IPI       := cdsCompraDetVIPI.AsFloat/cdsCompraDetVLR_BASEICMS.AsFloat;
                VL_IPI           := cdsCompraDetVIPI.AsFloat;
                CST_PIS          := cstPis(cdsCompraDetCSTPIS.AsString); //  stpisOutrasOperacoesSaida;  // #########
                VL_BC_PIS        := 0;
                ALIQ_PIS_PERC    := 0;
                QUANT_BC_PIS     := 0;
                ALIQ_PIS_R       := 0;
                VL_PIS           := 0;
                CST_COFINS       := cstCofins(cdsCompraDetCSTCOFINS.AsString);
                VL_BC_COFINS     := 0;
                ALIQ_COFINS_PERC := 0;
                QUANT_BC_COFINS  := 0;
                ALIQ_COFINS_R    := 0;
                VL_COFINS        := 0;
                COD_CTA          := '000';
              end; //Fim dos Itens;
              IItens := IItens + 1;
               // end;
              cdsCompraDet.Next;
            end;
            if cbConcomitante.Checked then
            begin
              if (INotas mod BNotas) = 0 then   // Gravar a cada BNotas notas
              begin
                // Grava registros na memoria para o TXT, e limpa memoria
                ACBrSPEDPisCofins1.WriteBloco_C( False );  // False, NAO fecha o Bloco
                ProgressBar1.Position := INotas;
                Application.ProcessMessages;
              end;
            end;

          end;

          //10 itens c190    // CARLOS - CONSOLIDADO N�O PRECISO, POIS, ESTOU INFORMANDO
                                 // INDIVIDUALIZADO

          //CARLOS                       aqui
          {   for IItens := 1 to 10 do
              begin
                // c190 - Consolida��o de Notas Fiscais Eletr�nicas (C�digo 55) � Opera��es de
                // Aquisi��o com Direito a Cr�dito, e Opera��es de Devolu��o de Compras e
                // Vendas.
                with RegistroC190New do
                begin
                   COD_MOD := '';
                   DT_REF_INI := Date;
                   DT_REF_FIN := Date;
                   COD_ITEM := '';
                   COD_NCM := '';
                   EX_IPI := '';
                   VL_TOT_ITEM := 0;
                end;//Fim dos Itens;
              end;
          }
        end;
      end;
    end;
    cdsCompra.Next;
  end;  // FIM BLOCO COMPRAS ######################

  //While (not cdsMov.Eof) do
  //begin

  {  if (cdsNFVenda.Active) then
      cdsNFVenda.Close;
    cdsNFVenda.Params[0].AsDateTime := data_ini.Date;
    cdsNFVenda.Params[1].AsDateTime := data_fim.Date;
    cdsNFVenda.Params[2].AsInteger := cdsMov.Fields[0].AsInteger;
    cdsNFVenda.Open;



    if (not cdsNFVenda.IsEmpty) then
    begin

    with ACBrSPEDPisCofins1.Bloco_C do
    begin
      with RegistroC001New do
      begin
         IND_MOV := imComDados;

         //C010 - Identifica��o do Estabelecimento
         with RegistroC010New do
         begin
           CNPJ := util.RemoveChar(cdsNFVendaCNPJ.AsString);
           IND_ESCRI := IndEscriConsolidado;

           //Inserir Notas...
           for INotas := 1 to NNotas do
           begin
              //C100 - Documento - Nota Fiscal (c�digo 01), Nota Fiscal Avulsa (c�digo 1B), Nota
              // Fiscal de Produtor (c�digo 04) e NF-e (c�digo 55)
              with RegistroC100New do
              begin
                IND_OPER      :=  tpSaidaPrestacao; // tpEntradaAquisicao, // 0 - Entrada
                IND_EMIT      := edEmissaoPropria;   // 0 - Emiss�o pr�pria // 1 - Terceiro
                COD_PART      := InttoStr(cdsNFVendaCODCLIENTE.asInteger);
                COD_MOD       := '55';               //COD_MOD	C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 (C�digo 02 � Nota Fiscal de Venda a Consumidor)	C	002*
                COD_SIT       := sdRegular;
                SER           := cdsNFVendaSERIE.AsString;                 //04	SER	S�rie do documento fiscal	C	003	-
                NUM_DOC       := FormatFloat('NF000000', StrToInt(cdsNFVendaNOTASERIE.AsString));  //INotas
                CHV_NFE       := cdsNFVendaNOMEXML.AsString;
                DT_DOC        := cdsNFVendaDTAEMISSAO.AsDateTime;
                DT_E_S        := cdsNFVendaDTASAIDA.AsDateTime;
                VL_DOC        := cdsNFVendaVALOR_TOTAL_NOTA.AsFloat;
                IND_PGTO      := tpPrazo;
                VL_DESC       := cdsNFVendaVALOR_DESCONTO.AsFloat;
                VL_ABAT_NT    := 0;
                VL_MERC       := cdsNFVendaVALOR_PRODUTO.AsFloat;
                IND_FRT       := tfSemCobrancaFrete;
                VL_FRT        := cdsNFVendaVALOR_FRETE.AsFloat;
                VL_SEG        := cdsNFVendaVALOR_SEGURO.AsFloat;
                VL_OUT_DA     := 0;
                VL_BC_ICMS    := cdsNFVendaBASE_ICMS.AsFloat;
                VL_ICMS       := cdsNFVendaVALOR_ICMS.AsFloat;
                VL_BC_ICMS_ST := cdsNFVendaBASE_ICMS_SUBST.AsFloat;
                VL_ICMS_ST    := cdsNFVendaVALOR_ICMS_SUBST.AsFloat;
                VL_IPI        := cdsNFVendaVALOR_IPI.AsFloat;
                VL_PIS        := cdsNFVendaVALOR_PIS.AsFloat;
                VL_COFINS     := cdsNFVendaVALOR_COFINS.AsFloat;
                VL_PIS_ST     := 0;
                VL_COFINS_ST  := 0;

                //10 itens para cada nota...
                for IItens := 1 to 10 do
                begin
                  //c170 - Complemento de Documento � Itens do Documento (c�digos 01, 1B, 04 e 55)
                  with RegistroC170New do   //Inicio Adicionar os Itens:
                  begin
                     NUM_ITEM         := FormatFloat('000', IItens);
                     COD_ITEM         := FormatFloat('000000',StrToInt(NUM_ITEM));
                     DESCR_COMPL      := FormatFloat('NF000000',INotas)+' -> ITEM '+COD_ITEM;
                     QTD              := 1;
                     UNID             := 'UN';
                     VL_ITEM          := 0;
                     VL_DESC          := 0;
                     IND_MOV          := mfNao;
                     CST_ICMS         := sticmsTributadaIntegralmente;
                     CFOP             := '1252';
                     COD_NAT          := '64';
                     VL_BC_ICMS       := 0;
                     ALIQ_ICMS        := 0;
                     VL_ICMS          := 0;
                     VL_BC_ICMS_ST    := 0;
                     ALIQ_ST          := 0;
                     VL_ICMS_ST       := 0;
                     IND_APUR         := iaMensal;
                     CST_IPI          := stipiEntradaIsenta;
                     COD_ENQ          := '';
                     VL_BC_IPI        := 0;
                     ALIQ_IPI         := 0;
                     VL_IPI           := 0;
                     CST_PIS          := stpisOutrasOperacoesSaida;
                     VL_BC_PIS        := 0;
                     ALIQ_PIS_PERC    := 0;
                     QUANT_BC_PIS     := 0;
                     ALIQ_PIS_R       := 0;
                     VL_PIS           := 0;
                     CST_COFINS       := stcofinsOutrasOperacoesSaida;
                     VL_BC_COFINS     := 0;
                     ALIQ_COFINS_PERC := 0;
                     QUANT_BC_COFINS  := 0;
                     ALIQ_COFINS_R    := 0;
                     VL_COFINS        := 0;
                     COD_CTA          := '000';
                  end; //Fim dos Itens;
                end;

                if cbConcomitante.Checked then
                begin
                   if (INotas mod BNotas) = 0 then   // Gravar a cada BNotas notas
                   begin
                      // Grava registros na memoria para o TXT, e limpa memoria
                      ACBrSPEDPisCofins1.WriteBloco_C( False );  // False, NAO fecha o Bloco
                      ProgressBar1.Position := INotas;
                      Application.ProcessMessages;
                   end;
                end;

              end;

              //10 itens c190
              for IItens := 1 to 10 do
              begin
                // c190 - Consolida��o de Notas Fiscais Eletr�nicas (C�digo 55) � Opera��es de
                // Aquisi��o com Direito a Cr�dito, e Opera��es de Devolu��o de Compras e
                // Vendas.
                with RegistroC190New do
                begin
                   COD_MOD := '';
                   DT_REF_INI := Date;
                   DT_REF_FIN := Date;
                   COD_ITEM := '';
                   COD_NCM := '';
                   EX_IPI := '';
                   VL_TOT_ITEM := 0;
                end;//Fim dos Itens;
              end;

           end;
         end;
      end;
    end;
  end;
  cdsMov.Next;
  end; // While }
  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_C(True);  // True, fecha o Bloco
    LoadToMemo;
  end;

  ProgressBar1.Visible := False ;
end;

procedure TfNfePisCofins.blocoD;
begin
  // SERICOS

  {with ACBrSPEDPisCofins1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      IND_MOV := imComDados;


      //Estabelecimento
      with RegistroD010New do
      begin
        CNPJ := '11111111111180';

  //          for INotas := 1 to NNotas do
  //          begin
  //            with RegistroD100New do
  //            begin
  //              IND_OPER := 0;
  //              IND_EMIT := 0;
  //              COD_PART := '';
  //              COD_MOD :=  '';
  //            end;
  //          end;

        //D200 - Resumo da Escritura��o Di�ria � Presta��o de Servi�os de Transportes
        // (C�digos 07, 08, 8B, 09, 10, 11, 26, 27 e 57).
        with RegistroD200New do
        begin
        //|D200|08|00|||11574|11854|6352|000011574|000011854|6352|25072011|6807,57|0,00|
          COD_MOD := '08';
          COD_SIT := sdfRegular;
          SER := '';
          SUB := '';
          NUM_DOC_INI := 11574;
          NUM_DOC_FIN := 11854;
          CFOP := 6352;
          DT_REF := DT_INI;// StrToDate('15/04/2011');
          VL_DOC := 6807.57;
          VL_DESC := 0;
        end;
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_D;
    LoadToMemo;
  end;}
end;

procedure TfNfePisCofins.blocoF;
begin
  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco F.
  with ACBrSPEDPisCofins1.Bloco_F do
  begin
    with RegistroF001New do
    begin
      IND_MOV := imComDados;

      //F010 - Identifica��o do Estabelecimento
      with RegistroF010New do
      begin
         CNPJ := '11111111111180';

         //F100 - Demais Documentos e Opera��es Geradoras de Contribui��o e Cr�ditos
         with RegistroF100New do
         begin
            IND_OPER      := indRepCustosDespesasEncargos;
            COD_PART      := '001';
            COD_ITEM      := '000'; //Codigo do Item no registro 0200
            DT_OPER       := Date();
            VL_OPER       := 0;
            CST_PIS       := stpisOutrasOperacoesSaida;
            VL_BC_PIS     := 0;
            ALIQ_PIS      := 1.2375;
            VL_PIS        := 0;
            CST_COFINS    := stcofinsOutrasOperacoesSaida;
            VL_BC_COFINS  := 0;
            ALIQ_COFINS   := 0;
            VL_COFINS     := 0;
            NAT_BC_CRED   := bccAqBensRevenda;
            IND_ORIG_CRED := opcMercadoInterno;
            COD_CTA       := '';
            COD_CCUS      := '123';
            DESC_DOC_OPER := '';
         end;
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_F;
    LoadToMemo;
  end;
end;

procedure TfNfePisCofins.blocoM;
begin
  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco M.
  with ACBrSPEDPisCofins1.Bloco_M do
  begin
    with RegistroM001New do
    begin
      IND_MOV := imComDados;

      //M100 - Cr�dito de PIS/PASEP Relativo ao Per�odo
       with RegistroM100New do
       begin
          COD_CRED       := '';
          IND_CRED_ORI   := TACBrIndCredOri(0);
          VL_BC_PIS      := 0;
          ALIQ_PIS       := 0;
          QUANT_BC_PIS   := 0;
          ALIQ_PIS_QUANT := 0;
          VL_CRED        := 0;
          VL_AJUS_ACRES  := 0;
          VL_AJUS_REDUC  := 0;
          VL_CRED_DIF    := 0;
          VL_CRED_DISP   := 0;
          IND_DESC_CRED  := TACBrIndDescCred(0);
          VL_CRED_DESC   := 0;
          SLD_CRED       := 0;
       end;

       with RegistroM200New do
       begin
         VL_TOT_CONT_NC_PER := 0;
         VL_TOT_CRED_DESC := 0;
         VL_TOT_CRED_DESC_ANT := 0;
         VL_TOT_CONT_NC_DEV := 0;
         VL_RET_NC := 0;
         VL_OUT_DED_NC := 0;
         VL_CONT_NC_REC := 0;
         VL_TOT_CONT_CUM_PER := 0;
         VL_RET_CUM := 0;
         VL_OUT_DED_CUM := 0;
         VL_CONT_CUM_REC := 0;
         VL_TOT_CONT_REC := 0;

         with RegistroM210New do
         begin
           COD_CONT := ccNaoAcumAliqBasica;
           VL_REC_BRT := 0;
           VL_BC_CONT := 0;
           ALIQ_PIS := 0;
           QUANT_BC_PIS := 0;
           ALIQ_PIS_QUANT := 0;
           VL_CONT_APUR := 0;
           VL_AJUS_ACRES := 0;
           VL_AJUS_REDUC := 0;
           VL_CONT_DIFER := 0;
           VL_CONT_DIFER_ANT := 0;
           VL_CONT_PER := 0;
         end;

       end;

       with RegistroM600 do
       begin
         VL_TOT_CONT_NC_PER := 1;
         VL_TOT_CRED_DESC := 2;
         VL_TOT_CRED_DESC_ANT := 3;
         VL_TOT_CONT_NC_DEV := 4;
         VL_RET_NC := 5;
         VL_OUT_DED_NC := 6;
         VL_CONT_NC_REC := 7;
         VL_TOT_CONT_CUM_PER := 8;
         VL_RET_CUM := 9;
         VL_OUT_DED_CUM := 10;
         VL_CONT_CUM_REC := 11;
         VL_TOT_CONT_REC := 12;

         with RegistroM610New do
         begin
           COD_CONT := ccNaoAcumAliqBasica;
           VL_REC_BRT := 2;
           VL_BC_CONT := 3;
           ALIQ_COFINS := 4;
           QUANT_BC_COFINS := 5;
           ALIQ_COFINS_QUANT := 6;
           VL_CONT_APUR := 7;
           VL_AJUS_ACRES := 8;
           VL_AJUS_REDUC := 9;
           VL_CONT_DIFER := 10;
           VL_CONT_DIFER_ANT := 11;
           VL_CONT_PER := 12;
         end;

       end;

    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_M;
    LoadToMemo;
  end;
end;

procedure TfNfePisCofins.edtFileChange(Sender: TObject);
begin
  ACBrSPEDPisCofins1.Arquivo := edtFile.Text ;
end;

procedure TfNfePisCofins.edtFileExit(Sender: TObject);
begin
  ACBrSPEDPisCofins1.Arquivo := edtFile.Text ;
end;

procedure TfNfePisCofins.cbConcomitanteClick(Sender: TObject);
begin
  btnTXT.Enabled   := not cbConcomitante.Checked ;
  btnError.Enabled := btnTXT.Enabled ;

  edBufNotas.Enabled := cbConcomitante.Checked ;

end;

procedure TfNfePisCofins.btnTXTClick(Sender: TObject);
begin
  abrirTabelas;

  ACBrSPEDPisCofins1.LinhasBuffer := StrToIntDef( edBufLinhas.Text, 0 );

  ACBrSPEDPisCofins1.DT_INI := data_ini.Date;
  ACBrSPEDPisCofins1.DT_FIN := StrtoDate('31/05/12');//data_fim.Date;

  // Limpa a lista de erros.
  memoError.Lines.Clear;
  // Informa o pasta onde ser� salvo o arquivo TXT.
  ACBrSPEDPisCofins1.Path := 'c:\home\';
  ACBrSPEDPisCofins1.Arquivo := edtFile.Text;


  blocoO;
  bloco1;
  // blocoA; // DOCUMENTOS FISCAIS - SERVI�OS (N�O SUJEITOS AO ICMS)
  blocoC;
  //blocoD;  // DOCUMENTOS FISCAIS - SERVI�OS (ICMS)
  //blocoF;  // Demais Documentos e Opera��es

  // #### blocoM;  // APURA��O DA CONTRIBUI��O E CR�DITO DO PIS/PASEP E DA COFINS


  // M�todo que gera o arquivo TXT.
  ACBrSPEDPisCofins1.SaveFileTXT ;

  // Carrega o arquivo TXT no memo.
  LoadToMemo;

  // Habilita os bot�es
  cbConcomitante.Enabled := True ;

end;

procedure TfNfePisCofins.btnErrorClick(Sender: TObject);
begin
  with ACBrSPEDPisCofins1 do
  begin
    DT_INI := StrToDate('01/04/2011');
    DT_FIN := StrToDate('30/04/2011');
  end;

  // Limpa a lista de erros.
  memoError.Lines.Clear;

  // M�todo que gera o arquivo TXT.
  ACBrSPEDPisCofins1.SaveFileTXT ;
end;

procedure TfNfePisCofins.FormCreate(Sender: TObject);
begin
  tipo := 'tpEscrOriginal';
  util := Tutils.Create;
end;

procedure TfNfePisCofins.cbTipoChange(Sender: TObject);
begin
  if (cbTipo.ItemIndex = 0) then
    tipo := 'tpEscrOriginal';
  if (cbTipo.ItemIndex = 1) then
    tipo := 'tpEscrRetificadora';

end;

procedure TfNfePisCofins.abrirTabelas;
begin
  if (cdsMov.Active) then
    cdsMov.Close;
  cdsMov.CommandText := 'SELECT MIN(CODMOVIMENTO), MAX(CODMOVIMENTO) ' +
    ' FROM COMPRA ' +
    ' WHERE DATACOMPRA BETWEEN ' +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
    ' AND '  +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date));
  cdsMov.Open;
  codMovMin := cdsMov.Fields[0].asInteger;
  codMovMax := cdsMov.Fields[1].asInteger;

  cdsMov.Close;
  cdsMov.CommandText := 'SELECT MIN(CODMOVIMENTO), MAX(CODMOVIMENTO) ' +
    ' FROM VENDA ' +
    ' WHERE DATAVENDA BETWEEN ' +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
    ' AND '   +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date));
  cdsMov.Open;
  if (codMovMin < cdsMov.Fields[0].asInteger) then
    codMovMin := cdsMov.Fields[0].asInteger;
  if (codMovMax < cdsMov.Fields[1].asInteger) then
    codMovMax := cdsMov.Fields[1].asInteger;

  if (not cdsEmpresa.Active) then
    cdsEmpresa.Open;

  cdsMov.Close;
  cdsMov.CommandText := 'SELECT CODMOVIMENTO, CODNATUREZA ' +
    '  FROM MOVIMENTO ' +
    ' WHERE CODMOVIMENTO BETWEEN ' + IntToStr(codMovMin) +
    '   AND ' + IntToStr(codMovMax);
  cdsMov.Open;

  if (cdsItens.Active) then
    cdsItens.Close;
end;

procedure TfNfePisCofins.FormDestroy(Sender: TObject);
begin
  util.Free;
end;

function TfNfePisCofins.validaCodMunicipio(cod: String; quem: String):String;
begin
  cod := util.RemoveChar(cod);
  result := cod;
  if (cod = '') then
    MessageDlg('C�digo do IBGE n�o preenchido para ' + quem + '.', mtWarning, [mbOK], 0);
end;

function TfNfePisCofins.cstPis(cstP: String): TACBrSituacaoTribPIS;
begin
  case StrToInt(cstP) of
    1 : result := stpisValorAliquotaNormal;                         // '01' // Opera��o Tribut�vel com Al�quota B�sica   // valor da opera��o al�quota normal (cumulativo/n�o cumulativo)).
    2 : result := stpisValorAliquotaDiferenciada;                   // '02' // Opera��o Tribut�vel com Al�quota Diferenciada // valor da opera��o (al�quota diferenciada)).
    3 : result := stpisQtdeAliquotaUnidade;                            // '03' // Opera��o Tribut�vel com Al�quota por Unidade de Medida de Produto // quantidade vendida x al�quota por unidade de produto).
    4 : result := stpisMonofaticaAliquotaZero;                         // '04' // Opera��o Tribut�vel Monof�sica - Revenda a Al�quota Zero
    5 : result := stpisValorAliquotaPorST;                             // '05' // Opera��o Tribut�vel por Substitui��o Tribut�ria
    6 : result := stpisAliquotaZero;                                   // '06' // Opera��o Tribut�vel a Al�quota Zero
    7 : result := stpisIsentaContribuicao;                             // '07' // Opera��o Isenta da Contribui��o
    8 : result := stpisSemIncidenciaContribuicao;                      // '08' // Opera��o sem Incid�ncia da Contribui��o
    9 : result := stpisSuspensaoContribuicao;                          // '09' // Opera��o com Suspens�o da Contribui��o
   49 : result := stpisOutrasOperacoesSaida;                           // '49' // Outras Opera��es de Sa�da
   50 : result := stpisOperCredExcRecTribMercInt;                      // '50' // Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
   51 : result := stpisOperCredExcRecNaoTribMercInt;                   // '51' // Opera��o com Direito a Cr�dito � Vinculada Exclusivamente a Receita N�o Tributada no Mercado Interno
   52 : result := stpisOperCredExcRecExportacao;                      // '52' // Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita de Exporta��o
   53 : result := stpisOperCredRecTribNaoTribMercInt;                  // '53' // Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno
   54 : result := stpisOperCredRecTribMercIntEExportacao;              // '54' // Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas no Mercado Interno e de Exporta��o
   55 : result := stpisOperCredRecNaoTribMercIntEExportacao;           // '55' // Opera��o com Direito a Cr�dito - Vinculada a Receitas N�o-Tributadas no Mercado Interno e de Exporta��o
   56 : result := stpisOperCredRecTribENaoTribMercIntEExportacao;      // '56' // Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno, e de Exporta��o
   60 : result := stpisCredPresAquiExcRecTribMercInt;                  // '60' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita Tributada no Mercado Interno
   61 : result := stpisCredPresAquiExcRecNaoTribMercInt;               // '61' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita N�o-Tributada no Mercado Interno
   62 : result := stpisCredPresAquiExcExcRecExportacao;                // '62' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita de Exporta��o
   63 : result := stpisCredPresAquiRecTribNaoTribMercInt;              // '63' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno
   64 : result := stpisCredPresAquiRecTribMercIntEExportacao;          // '64' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas no Mercado Interno e de Exporta��o
   65 : result := stpisCredPresAquiRecNaoTribMercIntEExportacao;       // '65' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas N�o-Tributadas no Mercado Interno e de Exporta��o
   66 : result := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;  // '66' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno, e de Exporta��o
   67 : result := stpisOutrasOperacoes_CredPresumido;                  // '67' // Cr�dito Presumido - Outras Opera��es
   70 : result := stpisOperAquiSemDirCredito;                          // '70' // Opera��o de Aquisi��o sem Direito a Cr�dito
   71 : result := stpisOperAquiComIsensao;                             // '71' // Opera��o de Aquisi��o com Isen��o
   72 : result := stpisOperAquiComSuspensao;                           // '72' // Opera��o de Aquisi��o com Suspens�o
   73 : result := stpisOperAquiAliquotaZero;                           // '73' // Opera��o de Aquisi��o a Al�quota Zero
   74 : result := stpisOperAqui_SemIncidenciaContribuicao;             // '74' // Opera��o de Aquisi��o sem Incid�ncia da Contribui��o
   75 : result := stpisOperAquiPorST;                                  // '75' // Opera��o de Aquisi��o por Substitui��o Tribut�ria
   98 : result := stpisOutrasOperacoesEntrada;                         // '98' // Outras Opera��es de Entrada
   99 : result := stpisOutrasOperacoes;                                // '99' // Outras Opera��es
 end;
end;

function TfNfePisCofins.cstCofins(cstC: String): TACBrSituacaoTribCOFINS;
begin
  Case StrToInt(cstC) of
    1 : Result := stcofinsValorAliquotaNormal;                           // '01' // Opera��o Tribut�vel com Al�quota B�sica                           // valor da opera��o al�quota normal (cumulativo/n�o cumulativo)).
    2 : Result := stcofinsValorAliquotaDiferenciada;                     // '02' // Opera��o Tribut�vel com Al�quota Diferenciada                     // valor da opera��o (al�quota diferenciada)).
    3 : Result := stcofinsQtdeAliquotaUnidade;                           // '03' // Opera��o Tribut�vel com Al�quota por Unidade de Medida de Produto // quantidade vendida x al�quota por unidade de produto).
    4 : Result := stcofinsMonofaticaAliquotaZero;                        // '04' // Opera��o Tribut�vel Monof�sica - Revenda a Al�quota Zero
    5 : Result := stcofinsValorAliquotaPorST;                            // '05' // Opera��o Tribut�vel por Substitui��o Tribut�ria
    6 : Result := stcofinsAliquotaZero;                                  // '06' // Opera��o Tribut�vel a Al�quota Zero
    7 : Result := stcofinsIsentaContribuicao;                            // '07' // Opera��o Isenta da Contribui��o
    8 : Result := stcofinsSemIncidenciaContribuicao;                     // '08' // Opera��o sem Incid�ncia da Contribui��o
    9 : Result := stcofinsSuspensaoContribuicao;                         // '09' // Opera��o com Suspens�o da Contribui��o
    49 : Result := stcofinsOutrasOperacoesSaida;                          // '49' // Outras Opera��es de Sa�da
    50 : Result := stcofinsOperCredExcRecTribMercInt;                     // '50' // Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
    51 : Result := stcofinsOperCredExcRecNaoTribMercInt;                  // '51' // Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita N�o-Tributada no Mercado Interno
    52 : Result := stcofinsOperCredExcRecExportacao;                     // '52' // Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita de Exporta��o
    53 : Result := stcofinsOperCredRecTribNaoTribMercInt;                 // '53' // Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno
    54 : Result := stcofinsOperCredRecTribMercIntEExportacao;             // '54' // Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas no Mercado Interno e de Exporta��o
    55 : Result := stcofinsOperCredRecNaoTribMercIntEExportacao;          // '55' // Opera��o com Direito a Cr�dito - Vinculada a Receitas N�o Tributadas no Mercado Interno e de Exporta��o
    56 : Result := stcofinsOperCredRecTribENaoTribMercIntEExportacao;     // '56' // Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno e de Exporta��o
    60 : Result := stcofinsCredPresAquiExcRecTribMercInt;                 // '60' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita Tributada no Mercado Interno
    61 : Result := stcofinsCredPresAquiExcRecNaoTribMercInt;              // '61' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita N�o-Tributada no Mercado Interno
    62 : Result := stcofinsCredPresAquiExcExcRecExportacao;               // '62' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita de Exporta��o
    63 : Result := stcofinsCredPresAquiRecTribNaoTribMercInt;             // '63' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno
    64 : Result := stcofinsCredPresAquiRecTribMercIntEExportacao;         // '64' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas no Mercado Interno e de Exporta��o
    65 : Result := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;      // '65' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas N�o-Tributadas no Mercado Interno e de Exporta��o
    66 : Result := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao; // '66' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno e de Exporta��o
    67 : Result := stcofinsOutrasOperacoes_CredPresumido;                 // '67' // Cr�dito Presumido - Outras Opera��es
    70 : Result := stcofinsOperAquiSemDirCredito;                         // '70' // Opera��o de Aquisi��o sem Direito a Cr�dito
    71 : Result := stcofinsOperAquiComIsensao;                            // '71' // Opera��o de Aquisi��o com Isen��o
    72 : Result := stcofinsOperAquiComSuspensao;                          // '72' // Opera��o de Aquisi��o com Suspens�o
    73 : Result := stcofinsOperAquiAliquotaZero;                          // '73' // Opera��o de Aquisi��o a Al�quota Zero
    74 : Result := stcofinsOperAqui_SemIncidenciaContribuicao;            // '74' // Opera��o de Aquisi��o sem Incid�ncia da Contribui��o
    75 : Result := stcofinsOperAquiPorST;                                 // '75' // Opera��o de Aquisi��o por Substitui��o Tribut�ria
    98 : Result := stcofinsOutrasOperacoesEntrada;                        // '98' // Outras Opera��es de Entrada
    99 : Result := stcofinsOutrasOperacoes;                                // '99' // Outras Opera��es
  end;
end;

end.
