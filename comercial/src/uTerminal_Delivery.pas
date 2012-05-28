unit uTerminal_Delivery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, SqlExpr, Provider, Grids, DBGrids, Mask, DBCtrls,
  StdCtrls, DBLocal, DBLocalS, DB, DBClient, Menus, XPMenu, Buttons,
  ExtCtrls, MMJPanel, RXCtrls, DBXpress, Printers, JvExStdCtrls, JvCheckBox,
  JvExDBGrids, JvDBGrid, RxGIF, JvExMask, JvToolEdit, JvBaseEdits,
  JvExControls, JvLabel;

type
  TfTerminal_Delivery = class(TfPai)
    dbeProduto: TEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    btnImprimir: TBitBtn;
    procFone: TSQLDataSet;
    procFoneTELEFONE: TStringField;
    procFoneNOMECLIENTE: TStringField;
    procFoneLOGRADOURO: TStringField;
    procFoneBAIRRO: TStringField;
    BitBtn3: TBitBtn;
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
    sds_MovimentoPLACA: TStringField;
    sds_MovimentoMARCA_MODELO: TStringField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    dsp_Movimento: TDataSetProvider;
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
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detValorTotal: TCurrencyField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCODALMOXARIFADO: TIntegerField;
    cds_Mov_detALMOXARIFADO: TStringField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detCOD_BARRA: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detESTOQUEATUAL: TFloatField;
    cds_Mov_detVALTOTAL: TFloatField;
    cds_Mov_detPRECOCUSTO: TFloatField;
    cds_Mov_detTotalPedido: TAggregateField;
    dsp_Mov_det: TDataSetProvider;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetALMOXARIFADO: TStringField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetCOD_BARRA: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetESTOQUEATUAL: TFloatField;
    sds_Mov_DetVALTOTAL: TFloatField;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    sds_venda: TSQLDataSet;
    sds_vendaCODMOVIMENTO: TIntegerField;
    sds_vendaCODCLIENTE: TIntegerField;
    sds_vendaDATAVENDA: TDateField;
    sds_vendaDATAVENCIMENTO: TDateField;
    sds_vendaNUMEROBORDERO: TIntegerField;
    sds_vendaBANCO: TSmallintField;
    sds_vendaCODVENDEDOR: TSmallintField;
    sds_vendaCODUSUARIO: TSmallintField;
    sds_vendaDATASISTEMA: TDateField;
    sds_vendaVALOR: TFloatField;
    sds_vendaNOTAFISCAL: TIntegerField;
    sds_vendaSERIE: TStringField;
    sds_vendaNOMECLIENTE: TStringField;
    sds_vendaNOMEUSUARIO: TStringField;
    sds_vendaBANCO_1: TStringField;
    sds_vendaCODVENDA: TIntegerField;
    sds_vendaDESCONTO: TFloatField;
    sds_vendaCODCCUSTO: TSmallintField;
    sds_vendaN_PARCELA: TSmallintField;
    sds_vendaN_DOCUMENTO: TStringField;
    sds_vendaCAIXA: TSmallintField;
    sds_vendaMULTA_JUROS: TFloatField;
    sds_vendaAPAGAR: TFloatField;
    sds_vendaVALOR_PAGAR: TFloatField;
    sds_vendaENTRADA: TFloatField;
    sds_vendaN_BOLETO: TStringField;
    sds_vendaFORMARECEBIMENTO: TStringField;
    sds_vendaOPERACAO: TStringField;
    sds_vendaSTATUS: TSmallintField;
    sds_vendaSTATUS1: TStringField;
    sds_vendaCONTROLE: TStringField;
    sds_vendaOBS: TStringField;
    sds_vendaVALOR_ICMS: TFloatField;
    sds_vendaVALOR_FRETE: TFloatField;
    sds_vendaVALOR_SEGURO: TFloatField;
    sds_vendaOUTRAS_DESP: TFloatField;
    sds_vendaVALOR_IPI: TFloatField;
    dsp_venda: TDataSetProvider;
    cds_venda: TClientDataSet;
    cds_vendaCODMOVIMENTO: TIntegerField;
    cds_vendaCODCLIENTE: TIntegerField;
    cds_vendaDATAVENDA: TDateField;
    cds_vendaDATAVENCIMENTO: TDateField;
    cds_vendaNUMEROBORDERO: TIntegerField;
    cds_vendaBANCO: TSmallintField;
    cds_vendaCODVENDEDOR: TSmallintField;
    cds_vendaCODUSUARIO: TSmallintField;
    cds_vendaDATASISTEMA: TDateField;
    cds_vendaVALOR: TFloatField;
    cds_vendaNOTAFISCAL: TIntegerField;
    cds_vendaSERIE: TStringField;
    cds_vendaNOMECLIENTE: TStringField;
    cds_vendaNOMEUSUARIO: TStringField;
    cds_vendaBANCO_1: TStringField;
    cds_vendaCODVENDA: TIntegerField;
    cds_vendaDESCONTO: TFloatField;
    cds_vendaCODCCUSTO: TSmallintField;
    cds_vendaN_PARCELA: TSmallintField;
    cds_vendaN_DOCUMENTO: TStringField;
    cds_vendaCAIXA: TSmallintField;
    cds_vendaMULTA_JUROS: TFloatField;
    cds_vendaAPAGAR: TFloatField;
    cds_vendaVALOR_PAGAR: TFloatField;
    cds_vendaENTRADA: TFloatField;
    cds_vendaN_BOLETO: TStringField;
    cds_vendaFORMARECEBIMENTO: TStringField;
    cds_vendaOPERACAO: TStringField;
    cds_vendaSTATUS: TSmallintField;
    cds_vendaSTATUS1: TStringField;
    cds_vendaCONTROLE: TStringField;
    cds_vendaOBS: TStringField;
    cds_vendadiferenca: TFloatField;
    cds_vendaVALOR_ICMS: TFloatField;
    cds_vendaVALOR_FRETE: TFloatField;
    cds_vendaVALOR_SEGURO: TFloatField;
    cds_vendaOUTRAS_DESP: TFloatField;
    cds_vendaVALOR_IPI: TFloatField;
    DtSrcVenda: TDataSource;
    DtSrc1: TDataSource;
    ds_serv: TDataSource;
    c_8_serv: TClientDataSet;
    c_8_servCODMOVIMENTO: TIntegerField;
    c_8_servCODSERVICO: TIntegerField;
    c_8_servDESCRICAO: TStringField;
    c_8_servQUANTIDADE: TFloatField;
    c_8_servPRECO: TFloatField;
    c_8_servCODDETALHE_SERV: TIntegerField;
    d_8: TDataSetProvider;
    s_8: TSQLDataSet;
    s_8CODMOVIMENTO: TIntegerField;
    s_8CODSERVICO: TIntegerField;
    s_8DESCRICAO: TStringField;
    s_8QUANTIDADE: TFloatField;
    s_8PRECO: TFloatField;
    s_8CODDETALHE_SERV: TIntegerField;
    scds_produto_proc: TClientDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procCOD_BARRA: TStringField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procUNIDADEMEDIDA: TStringField;
    scds_produto_procQTDE_PCT: TFloatField;
    scds_produto_procICMS: TFloatField;
    scds_produto_procCODALMOXARIFADO: TIntegerField;
    scds_produto_procCONTA_DESPESA: TStringField;
    scds_produto_procALMOXARIFADO: TStringField;
    scds_produto_procVALORUNITARIOATUAL: TFloatField;
    scds_produto_procVALOR_PRAZO: TFloatField;
    scds_produto_procCOD_COMISSAO: TIntegerField;
    scds_produto_procRATEIO: TStringField;
    scds_produto_procTIPO: TStringField;
    scds_produto_procLOCALIZACAO: TStringField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    RxLabel4: TRxLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    sDelivery: TSQLDataSet;
    pDelivery: TDataSetProvider;
    cDelivery: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    cdsMesa: TClientDataSet;
    dspMesa: TDataSetProvider;
    sdsMesa: TSQLDataSet;
    Label6: TLabel;
    cDeliveryCODMOVIMENTO: TIntegerField;
    cDeliveryDATAMOVIMENTO: TDateField;
    cDeliveryNOMECLIENTE: TStringField;
    cDeliveryLOGRADOURO: TStringField;
    cDeliveryBAIRRO: TStringField;
    sDeliveryCODMOVIMENTO: TIntegerField;
    sDeliveryDATAMOVIMENTO: TDateField;
    sDeliveryNOMECLIENTE: TStringField;
    sDeliveryLOGRADOURO: TStringField;
    sDeliveryBAIRRO: TStringField;
    sDeliveryTELEFONE: TStringField;
    cDeliveryTELEFONE: TStringField;
    procFoneCODCLIENTE: TIntegerField;
    sDeliveryDATA_SISTEMA: TSQLTimeStampField;
    cDeliveryDATA_SISTEMA: TSQLTimeStampField;
    Panel1: TPanel;
    DBEdit9: TDBEdit;
    sds_s: TSQLDataSet;
    BitBtn4: TBitBtn;
    sdsMesaNOMECLIENTE: TStringField;
    cdsMesaNOMECLIENTE: TStringField;
    BitBtn1: TBitBtn;
    sdsMesaCODMOVIMENTO: TIntegerField;
    cdsMesaCODMOVIMENTO: TIntegerField;
    sMesas: TSQLDataSet;
    sMesasCODCLIENTE: TIntegerField;
    sMesasNOMECLIENTE: TStringField;
    sdsMesaCODCLIENTE: TIntegerField;
    cdsMesaCODCLIENTE: TIntegerField;
    sDeliveryCODCLIENTE: TIntegerField;
    cDeliveryCODCLIENTE: TIntegerField;
    Alteraes1: TMenuItem;
    ExcluirItem1: TMenuItem;
    sds_Mov_DetDESCPRODUTO: TStringField;
    cds_Mov_detDESCPRODUTO: TStringField;
    DBEdit1: TDBEdit;
    JvDBGrid1: TJvDBGrid;
    RadioGroup1: TRadioGroup;
    cds_Mov_detField10: TAggregateField;
    DBEdit4: TDBEdit;
    cbporcento: TCheckBox;
    sds_MovimentoOBSERVA: TStringField;
    sds_MovimentoOBS: TStringField;
    cds_MovimentoOBSERVA: TStringField;
    cds_MovimentoOBS: TStringField;
    OpenDialog1: TOpenDialog;
    BitBtn5: TBitBtn;
    JvTroco: TJvCalcEdit;
    jvPago: TJvCalcEdit;
    sqsTitulo: TSQLDataSet;
    sqsTituloSTATUS: TStringField;
    Clientes1: TMenuItem;
    BitBtn8: TBitBtn;
    sMov: TSQLDataSet;
    pMov: TDataSetProvider;
    cMov: TClientDataSet;
    cMovCODMOVIMENTO: TIntegerField;
    cMovDATAMOVIMENTO: TDateField;
    cMovCODCLIENTE: TIntegerField;
    cMovCODNATUREZA: TSmallintField;
    cMovSTATUS: TSmallintField;
    cMovCODUSUARIO: TSmallintField;
    cMovCODVENDEDOR: TSmallintField;
    cMovCODALMOXARIFADO: TIntegerField;
    cMovCODFORNECEDOR: TIntegerField;
    cMovDATA_SISTEMA: TSQLTimeStampField;
    cMovCOD_VEICULO: TIntegerField;
    cMovCONTROLE: TStringField;
    cMovOBS: TStringField;
    sMovCODMOVIMENTO: TIntegerField;
    sMovDATAMOVIMENTO: TDateField;
    sMovCODCLIENTE: TIntegerField;
    sMovCODNATUREZA: TSmallintField;
    sMovSTATUS: TSmallintField;
    sMovCODUSUARIO: TSmallintField;
    sMovCODVENDEDOR: TSmallintField;
    sMovCODALMOXARIFADO: TIntegerField;
    sMovCODFORNECEDOR: TIntegerField;
    sMovDATA_SISTEMA: TSQLTimeStampField;
    sMovCOD_VEICULO: TIntegerField;
    sMovCONTROLE: TStringField;
    sMovOBS: TStringField;
    sExportaMov: TSQLDataSet;
    pExportaMov: TDataSetProvider;
    cExportaMov: TClientDataSet;
    cExportaMovCODMOVIMENTO: TIntegerField;
    cExportaMovDATAMOVIMENTO: TDateField;
    cExportaMovCODCLIENTE: TIntegerField;
    cExportaMovCODNATUREZA: TSmallintField;
    cExportaMovSTATUS: TSmallintField;
    cExportaMovCODUSUARIO: TSmallintField;
    cExportaMovCODVENDEDOR: TSmallintField;
    cExportaMovCODALMOXARIFADO: TIntegerField;
    cExportaMovCODFORNECEDOR: TIntegerField;
    cExportaMovDATA_SISTEMA: TSQLTimeStampField;
    cExportaMovCOD_VEICULO: TIntegerField;
    cExportaMovCONTROLE: TStringField;
    cExportaMovOBS: TStringField;
    sExportaMovCODMOVIMENTO: TIntegerField;
    sExportaMovDATAMOVIMENTO: TDateField;
    sExportaMovCODCLIENTE: TIntegerField;
    sExportaMovCODNATUREZA: TSmallintField;
    sExportaMovSTATUS: TSmallintField;
    sExportaMovCODUSUARIO: TSmallintField;
    sExportaMovCODVENDEDOR: TSmallintField;
    sExportaMovCODALMOXARIFADO: TIntegerField;
    sExportaMovCODFORNECEDOR: TIntegerField;
    sExportaMovDATA_SISTEMA: TSQLTimeStampField;
    sExportaMovCOD_VEICULO: TIntegerField;
    sExportaMovCONTROLE: TStringField;
    sExportaMovOBS: TStringField;
    sMovDet: TSQLDataSet;
    sExportaMovDet: TSQLDataSet;
    pExportaMovDet: TDataSetProvider;
    cExportaMovDet: TClientDataSet;
    cExportaVenda: TClientDataSet;
    pExportaVenda: TDataSetProvider;
    sExportaVenda: TSQLDataSet;
    sVenda: TSQLDataSet;
    cExportaVendaCODVENDA: TIntegerField;
    cExportaVendaCODMOVIMENTO: TIntegerField;
    cExportaVendaCODCLIENTE: TIntegerField;
    cExportaVendaDATAVENDA: TDateField;
    cExportaVendaDATAVENCIMENTO: TDateField;
    cExportaVendaNUMEROBORDERO: TIntegerField;
    cExportaVendaBANCO: TSmallintField;
    cExportaVendaCODVENDEDOR: TSmallintField;
    cExportaVendaSTATUS: TSmallintField;
    cExportaVendaCODUSUARIO: TSmallintField;
    cExportaVendaDATASISTEMA: TDateField;
    cExportaVendaVALOR: TFloatField;
    cExportaVendaNOTAFISCAL: TIntegerField;
    cExportaVendaSERIE: TStringField;
    cExportaVendaDESCONTO: TFloatField;
    cExportaVendaCODCCUSTO: TSmallintField;
    cExportaVendaN_PARCELA: TSmallintField;
    cExportaVendaOPERACAO: TStringField;
    cExportaVendaFORMARECEBIMENTO: TStringField;
    cExportaVendaN_DOCUMENTO: TStringField;
    cExportaVendaCAIXA: TSmallintField;
    cExportaVendaMULTA_JUROS: TFloatField;
    cExportaVendaAPAGAR: TFloatField;
    cExportaVendaVALOR_PAGAR: TFloatField;
    cExportaVendaENTRADA: TFloatField;
    cExportaVendaN_BOLETO: TStringField;
    cExportaVendaSTATUS1: TStringField;
    cExportaVendaCONTROLE: TStringField;
    cExportaVendaOBS: TStringField;
    cExportaVendaVALOR_ICMS: TFloatField;
    cExportaVendaVALOR_FRETE: TFloatField;
    cExportaVendaVALOR_SEGURO: TFloatField;
    cExportaVendaOUTRAS_DESP: TFloatField;
    cExportaVendaVALOR_IPI: TFloatField;
    cExportaVendaPRAZO: TStringField;
    sVendaCODVENDA: TIntegerField;
    sVendaCODMOVIMENTO: TIntegerField;
    sVendaCODCLIENTE: TIntegerField;
    sVendaDATAVENDA: TDateField;
    sVendaDATAVENCIMENTO: TDateField;
    sVendaNUMEROBORDERO: TIntegerField;
    sVendaBANCO: TSmallintField;
    sVendaCODVENDEDOR: TSmallintField;
    sVendaSTATUS: TSmallintField;
    sVendaCODUSUARIO: TSmallintField;
    sVendaDATASISTEMA: TDateField;
    sVendaVALOR: TFloatField;
    sVendaNOTAFISCAL: TIntegerField;
    sVendaSERIE: TStringField;
    sVendaDESCONTO: TFloatField;
    sVendaCODCCUSTO: TSmallintField;
    sVendaN_PARCELA: TSmallintField;
    sVendaOPERACAO: TStringField;
    sVendaFORMARECEBIMENTO: TStringField;
    sVendaN_DOCUMENTO: TStringField;
    sVendaCAIXA: TSmallintField;
    sVendaMULTA_JUROS: TFloatField;
    sVendaAPAGAR: TFloatField;
    sVendaVALOR_PAGAR: TFloatField;
    sVendaENTRADA: TFloatField;
    sVendaN_BOLETO: TStringField;
    sVendaSTATUS1: TStringField;
    sVendaCONTROLE: TStringField;
    sVendaOBS: TStringField;
    sVendaVALOR_ICMS: TFloatField;
    sVendaVALOR_FRETE: TFloatField;
    sVendaVALOR_SEGURO: TFloatField;
    sVendaOUTRAS_DESP: TFloatField;
    sVendaVALOR_IPI: TFloatField;
    sVendaPRAZO: TStringField;
    sExportaVendaCODVENDA: TIntegerField;
    sExportaVendaCODMOVIMENTO: TIntegerField;
    sExportaVendaCODCLIENTE: TIntegerField;
    sExportaVendaDATAVENDA: TDateField;
    sExportaVendaDATAVENCIMENTO: TDateField;
    sExportaVendaNUMEROBORDERO: TIntegerField;
    sExportaVendaBANCO: TSmallintField;
    sExportaVendaCODVENDEDOR: TSmallintField;
    sExportaVendaSTATUS: TSmallintField;
    sExportaVendaCODUSUARIO: TSmallintField;
    sExportaVendaDATASISTEMA: TDateField;
    sExportaVendaVALOR: TFloatField;
    sExportaVendaNOTAFISCAL: TIntegerField;
    sExportaVendaSERIE: TStringField;
    sExportaVendaDESCONTO: TFloatField;
    sExportaVendaCODCCUSTO: TSmallintField;
    sExportaVendaN_PARCELA: TSmallintField;
    sExportaVendaOPERACAO: TStringField;
    sExportaVendaFORMARECEBIMENTO: TStringField;
    sExportaVendaN_DOCUMENTO: TStringField;
    sExportaVendaCAIXA: TSmallintField;
    sExportaVendaMULTA_JUROS: TFloatField;
    sExportaVendaAPAGAR: TFloatField;
    sExportaVendaVALOR_PAGAR: TFloatField;
    sExportaVendaENTRADA: TFloatField;
    sExportaVendaN_BOLETO: TStringField;
    sExportaVendaSTATUS1: TStringField;
    sExportaVendaCONTROLE: TStringField;
    sExportaVendaOBS: TStringField;
    sExportaVendaVALOR_ICMS: TFloatField;
    sExportaVendaVALOR_FRETE: TFloatField;
    sExportaVendaVALOR_SEGURO: TFloatField;
    sExportaVendaOUTRAS_DESP: TFloatField;
    sExportaVendaVALOR_IPI: TFloatField;
    sExportaVendaPRAZO: TStringField;
    pMovDet: TDataSetProvider;
    cMovDet: TClientDataSet;
    pVenda: TDataSetProvider;
    cVenda: TClientDataSet;
    cVendaCODVENDA: TIntegerField;
    cVendaCODMOVIMENTO: TIntegerField;
    cVendaCODCLIENTE: TIntegerField;
    cVendaDATAVENDA: TDateField;
    cVendaDATAVENCIMENTO: TDateField;
    cVendaNUMEROBORDERO: TIntegerField;
    cVendaBANCO: TSmallintField;
    cVendaCODVENDEDOR: TSmallintField;
    cVendaSTATUS: TSmallintField;
    cVendaCODUSUARIO: TSmallintField;
    cVendaDATASISTEMA: TDateField;
    cVendaVALOR: TFloatField;
    cVendaNOTAFISCAL: TIntegerField;
    cVendaSERIE: TStringField;
    cVendaDESCONTO: TFloatField;
    cVendaCODCCUSTO: TSmallintField;
    cVendaN_PARCELA: TSmallintField;
    cVendaOPERACAO: TStringField;
    cVendaFORMARECEBIMENTO: TStringField;
    cVendaN_DOCUMENTO: TStringField;
    cVendaCAIXA: TSmallintField;
    cVendaMULTA_JUROS: TFloatField;
    cVendaAPAGAR: TFloatField;
    cVendaVALOR_PAGAR: TFloatField;
    cVendaENTRADA: TFloatField;
    cVendaN_BOLETO: TStringField;
    cVendaSTATUS1: TStringField;
    cVendaCONTROLE: TStringField;
    cVendaOBS: TStringField;
    cVendaVALOR_ICMS: TFloatField;
    cVendaVALOR_FRETE: TFloatField;
    cVendaVALOR_SEGURO: TFloatField;
    cVendaOUTRAS_DESP: TFloatField;
    cVendaVALOR_IPI: TFloatField;
    cVendaPRAZO: TStringField;
    sMovDetCODDETALHE: TIntegerField;
    sMovDetCODMOVIMENTO: TIntegerField;
    sMovDetCODALMOXARIFADO: TSmallintField;
    sMovDetCODPRODUTO: TIntegerField;
    sMovDetQUANTIDADE: TFloatField;
    sMovDetPRECO: TFloatField;
    sMovDetICMS: TFloatField;
    sMovDetUN: TStringField;
    sMovDetQTDE_ALT: TFloatField;
    sMovDetBAIXA: TStringField;
    sMovDetPRECOCUSTO: TFloatField;
    sMovDetVLRESTOQUE: TFloatField;
    sMovDetQTDEESTOQUE: TFloatField;
    sMovDetDESCPRODUTO: TStringField;
    sMovDetPRECOULTIMACOMPRA: TFloatField;
    sMovDetVLR_BASE: TFloatField;
    sExportaMovDetCODDETALHE: TIntegerField;
    sExportaMovDetCODMOVIMENTO: TIntegerField;
    sExportaMovDetCODALMOXARIFADO: TSmallintField;
    sExportaMovDetCODPRODUTO: TIntegerField;
    sExportaMovDetQUANTIDADE: TFloatField;
    sExportaMovDetPRECO: TFloatField;
    sExportaMovDetICMS: TFloatField;
    sExportaMovDetUN: TStringField;
    sExportaMovDetQTDE_ALT: TFloatField;
    sExportaMovDetBAIXA: TStringField;
    sExportaMovDetPRECOCUSTO: TFloatField;
    sExportaMovDetVLRESTOQUE: TFloatField;
    sExportaMovDetQTDEESTOQUE: TFloatField;
    sExportaMovDetDESCPRODUTO: TStringField;
    sExportaMovDetPRECOULTIMACOMPRA: TFloatField;
    sExportaMovDetVLR_BASE: TFloatField;
    sds_Mov_DetLOTE: TStringField;
    cds_Mov_detLOTE: TStringField;
    cExportaMovDetCODDETALHE: TIntegerField;
    cExportaMovDetCODMOVIMENTO: TIntegerField;
    cExportaMovDetCODALMOXARIFADO: TSmallintField;
    cExportaMovDetCODPRODUTO: TIntegerField;
    cExportaMovDetQUANTIDADE: TFloatField;
    cExportaMovDetPRECO: TFloatField;
    cExportaMovDetICMS: TFloatField;
    cExportaMovDetUN: TStringField;
    cExportaMovDetQTDE_ALT: TFloatField;
    cExportaMovDetBAIXA: TStringField;
    cExportaMovDetPRECOCUSTO: TFloatField;
    cExportaMovDetVLRESTOQUE: TFloatField;
    cExportaMovDetQTDEESTOQUE: TFloatField;
    cExportaMovDetDESCPRODUTO: TStringField;
    cExportaMovDetPRECOULTIMACOMPRA: TFloatField;
    cExportaMovDetVLR_BASE: TFloatField;
    cMovDetCODDETALHE: TIntegerField;
    cMovDetCODMOVIMENTO: TIntegerField;
    cMovDetCODALMOXARIFADO: TSmallintField;
    cMovDetCODPRODUTO: TIntegerField;
    cMovDetQUANTIDADE: TFloatField;
    cMovDetPRECO: TFloatField;
    cMovDetICMS: TFloatField;
    cMovDetUN: TStringField;
    cMovDetQTDE_ALT: TFloatField;
    cMovDetBAIXA: TStringField;
    cMovDetPRECOCUSTO: TFloatField;
    cMovDetVLRESTOQUE: TFloatField;
    cMovDetQTDEESTOQUE: TFloatField;
    cMovDetDESCPRODUTO: TStringField;
    cMovDetPRECOULTIMACOMPRA: TFloatField;
    cMovDetVLR_BASE: TFloatField;
    sCaixa: TSQLDataSet;
    sCaixaDATA: TDateField;
    sCaixaAberto: TSQLDataSet;
    sCaixaAbertoNOMECAIXA: TStringField;
    Panel6: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    Label11: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    BitBtn7: TBitBtn;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Panel2: TPanel;
    Label14: TLabel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Edit6: TEdit;
    cbMesas: TComboBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    Caixa1: TMenuItem;
    Recibo1: TMenuItem;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    DBGrid3: TDBGrid;
    Label7: TLabel;
    JvCalcEdit1: TJvCalcEdit;
    DBGrid4: TDBGrid;
    sParametro: TSQLDataSet;
    sParametroD1: TStringField;
    sParametroD2: TStringField;
    sParametroD3: TStringField;
    sParametroD4: TStringField;
    sParametroD5: TStringField;
    sParametroD6: TStringField;
    sParametroD7: TStringField;
    sParametroD8: TStringField;
    sParametroD9: TStringField;
    sParametroDADOS: TStringField;
    sParametroPARAMETRO: TStringField;
    AVista1: TMenuItem;
    APrazo1: TMenuItem;
    FormadeRecebimento1: TMenuItem;
    JvLabel4: TJvLabel;
    JvDesconto: TJvCalcEdit;
    sMovDetIMPRIMIR: TStringField;
    cMovDetIMPRIMIR: TStringField;
    sds_Mov_DetIMPRIMIR: TStringField;
    cds_Mov_detIMPRIMIR: TStringField;
    sImprime_1: TSQLDataSet;
    sImprimir_2: TSQLDataSet;
    sImprimir_3: TSQLDataSet;
    BitBtn6: TBitBtn;
    sImprime_1CODDETALHE: TIntegerField;
    sImprime_1CODMOVIMENTO: TIntegerField;
    sImprime_1CODALMOXARIFADO: TSmallintField;
    sImprime_1CONTROLE: TSmallintField;
    sImprime_1CODPRODUTO: TIntegerField;
    sImprime_1QUANTIDADE: TFloatField;
    sImprime_1PRECO: TFloatField;
    sImprime_1ICMS: TFloatField;
    sImprime_1UN: TStringField;
    sImprime_1QTDE_ALT: TFloatField;
    sImprime_1BAIXA: TStringField;
    sImprime_1VALTOTAL: TFloatField;
    sImprime_1COD_COMISSAO: TIntegerField;
    sImprime_1LOTE: TStringField;
    sImprime_1DTAFAB: TDateField;
    sImprime_1DTAVCTO: TDateField;
    sImprime_1PRECOCUSTO: TFloatField;
    sImprime_1VLRESTOQUE: TFloatField;
    sImprime_1QTDEESTOQUE: TFloatField;
    sImprime_1NOTAFISCAL: TStringField;
    sImprime_1DESCPRODUTO: TStringField;
    sImprime_1PRECOULTIMACOMPRA: TFloatField;
    sImprime_1CST: TStringField;
    sImprime_1VALOR_ICMS: TFloatField;
    sImprime_1VLR_BASE: TFloatField;
    sImprime_1PERIODOINI: TSQLTimeStampField;
    sImprime_1PERIODOFIM: TSQLTimeStampField;
    sImprime_1ICMS_SUBST: TFloatField;
    sImprime_1ICMS_SUBSTD: TFloatField;
    sImprime_1CODIGO: TIntegerField;
    sImprime_1CODIGO1: TIntegerField;
    sImprime_1CODAUTORIZACAO: TIntegerField;
    sImprime_1STATUS: TStringField;
    sImprime_1PAGOUCOMISSAO: TStringField;
    sImprime_1CODMOVRATEIO: TIntegerField;
    sImprime_1VALORRATEIO: TFloatField;
    sImprime_1PAGO: TStringField;
    sImprime_1RATEIO: TFloatField;
    sImprime_1PORCENTAGENDESC: TFloatField;
    sImprime_1VLR_BASEICMS: TFloatField;
    sImprime_1IMPRIMIR: TStringField;
    sImprime_1IMPRESSORA_1: TStringField;
    sImprime_1IMPRESSORA_2: TStringField;
    sImprime_1IMPRESSORA_3: TStringField;
    sImprimir_2CODDETALHE: TIntegerField;
    sImprimir_2CODMOVIMENTO: TIntegerField;
    sImprimir_2CODALMOXARIFADO: TSmallintField;
    sImprimir_2CONTROLE: TSmallintField;
    sImprimir_2CODPRODUTO: TIntegerField;
    sImprimir_2QUANTIDADE: TFloatField;
    sImprimir_2PRECO: TFloatField;
    sImprimir_2ICMS: TFloatField;
    sImprimir_2UN: TStringField;
    sImprimir_2QTDE_ALT: TFloatField;
    sImprimir_2BAIXA: TStringField;
    sImprimir_2VALTOTAL: TFloatField;
    sImprimir_2COD_COMISSAO: TIntegerField;
    sImprimir_2LOTE: TStringField;
    sImprimir_2DTAFAB: TDateField;
    sImprimir_2DTAVCTO: TDateField;
    sImprimir_2PRECOCUSTO: TFloatField;
    sImprimir_2VLRESTOQUE: TFloatField;
    sImprimir_2QTDEESTOQUE: TFloatField;
    sImprimir_2NOTAFISCAL: TStringField;
    sImprimir_2DESCPRODUTO: TStringField;
    sImprimir_2PRECOULTIMACOMPRA: TFloatField;
    sImprimir_2CST: TStringField;
    sImprimir_2VALOR_ICMS: TFloatField;
    sImprimir_2VLR_BASE: TFloatField;
    sImprimir_2PERIODOINI: TSQLTimeStampField;
    sImprimir_2PERIODOFIM: TSQLTimeStampField;
    sImprimir_2ICMS_SUBST: TFloatField;
    sImprimir_2ICMS_SUBSTD: TFloatField;
    sImprimir_2CODIGO: TIntegerField;
    sImprimir_2CODIGO1: TIntegerField;
    sImprimir_2CODAUTORIZACAO: TIntegerField;
    sImprimir_2STATUS: TStringField;
    sImprimir_2PAGOUCOMISSAO: TStringField;
    sImprimir_2CODMOVRATEIO: TIntegerField;
    sImprimir_2VALORRATEIO: TFloatField;
    sImprimir_2PAGO: TStringField;
    sImprimir_2RATEIO: TFloatField;
    sImprimir_2PORCENTAGENDESC: TFloatField;
    sImprimir_2VLR_BASEICMS: TFloatField;
    sImprimir_2IMPRIMIR: TStringField;
    sImprimir_2IMPRESSORA_1: TStringField;
    sImprimir_2IMPRESSORA_2: TStringField;
    sImprimir_2IMPRESSORA_3: TStringField;
    sImprimir_3CODDETALHE: TIntegerField;
    sImprimir_3CODMOVIMENTO: TIntegerField;
    sImprimir_3CODALMOXARIFADO: TSmallintField;
    sImprimir_3CONTROLE: TSmallintField;
    sImprimir_3CODPRODUTO: TIntegerField;
    sImprimir_3QUANTIDADE: TFloatField;
    sImprimir_3PRECO: TFloatField;
    sImprimir_3ICMS: TFloatField;
    sImprimir_3UN: TStringField;
    sImprimir_3QTDE_ALT: TFloatField;
    sImprimir_3BAIXA: TStringField;
    sImprimir_3VALTOTAL: TFloatField;
    sImprimir_3COD_COMISSAO: TIntegerField;
    sImprimir_3LOTE: TStringField;
    sImprimir_3DTAFAB: TDateField;
    sImprimir_3DTAVCTO: TDateField;
    sImprimir_3PRECOCUSTO: TFloatField;
    sImprimir_3VLRESTOQUE: TFloatField;
    sImprimir_3QTDEESTOQUE: TFloatField;
    sImprimir_3NOTAFISCAL: TStringField;
    sImprimir_3DESCPRODUTO: TStringField;
    sImprimir_3PRECOULTIMACOMPRA: TFloatField;
    sImprimir_3CST: TStringField;
    sImprimir_3VALOR_ICMS: TFloatField;
    sImprimir_3VLR_BASE: TFloatField;
    sImprimir_3PERIODOINI: TSQLTimeStampField;
    sImprimir_3PERIODOFIM: TSQLTimeStampField;
    sImprimir_3ICMS_SUBST: TFloatField;
    sImprimir_3ICMS_SUBSTD: TFloatField;
    sImprimir_3CODIGO: TIntegerField;
    sImprimir_3CODIGO1: TIntegerField;
    sImprimir_3CODAUTORIZACAO: TIntegerField;
    sImprimir_3STATUS: TStringField;
    sImprimir_3PAGOUCOMISSAO: TStringField;
    sImprimir_3CODMOVRATEIO: TIntegerField;
    sImprimir_3VALORRATEIO: TFloatField;
    sImprimir_3PAGO: TStringField;
    sImprimir_3RATEIO: TFloatField;
    sImprimir_3PORCENTAGENDESC: TFloatField;
    sImprimir_3VLR_BASEICMS: TFloatField;
    sImprimir_3IMPRIMIR: TStringField;
    sImprimir_3IMPRESSORA_1: TStringField;
    sImprimir_3IMPRESSORA_2: TStringField;
    sImprimir_3IMPRESSORA_3: TStringField;
    sImprime_1CODPRO: TStringField;
    sImprimir_3CODPRO: TStringField;
    Par_Impressao: TSQLDataSet;
    Par_ImpressaoPARAMETRO: TStringField;
    Par_ImpressaoDADOS: TStringField;
    Par_ImpressaoD1: TStringField;
    Par_ImpressaoD2: TStringField;
    Par_ImpressaoD3: TStringField;
    Par_ImpressaoD4: TStringField;
    Par_ImpressaoD5: TStringField;
    Par_ImpressaoD6: TStringField;
    Par_ImpressaoD7: TStringField;
    Par_ImpressaoD8: TStringField;
    Par_ImpressaoD9: TStringField;
    sImprimir_2CODPRO: TStringField;
    sds_Mov_DetICMS_SUBST: TFloatField;
    sds_Mov_DetVALOR_ICMS: TFloatField;
    cds_Mov_detICMS_SUBST: TFloatField;
    cds_Mov_detVALOR_ICMS: TFloatField;
    sCaixaAbertoIDCAIXACONTROLE: TIntegerField;
    sCaixaAbertoSITUACAO: TStringField;
    Timer1: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure cds_MovimentoBeforePost(DataSet: TDataSet);
    procedure cds_MovimentoNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_vendaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cbMesasKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure IncluirNovoItem1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExcluirItem1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DtSrc1StateChange(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure jvPagoChange(Sender: TObject);
    procedure cbporcentoClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure AVista1Click(Sender: TObject);
    procedure APrazo1Click(Sender: TObject);
    procedure FormadeRecebimento1Click(Sender: TObject);
    procedure JvDescontoChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
     codproduto : integer;
     cod_nat : integer;
     natureza : string;
     cod_vendedor_padrao : integer;
     nome_vendedor_padrao : string;
     codcliente : integer;
     precovenda : double;
     centro_receita : integer;
     codalmoxarif: integer;
     tiporel: string;
     servico : string;
     codserv : integer;
     cod_mov : integer;
     codrec  : integer;
     Cod_orig : Integer;
     tipo_origem : string;
     cod_cli_forn : Integer;
     c_f : string;
     vCFOP, vUF, vNUMERO_NF, vCODMOV, vSERIE : string;
     varICMS, varSUBTRIBUTARIA : double;
    { Private declarations }
  public
     prazoparapgto : Integer;
     estoque : double;
     vDesconto : double;
     function buscaProdLista(codBarra, ProdLista:String): Integer;
     procedure buscaProduto;
     procedure vendaavista;
     procedure vendaaprazo;
     procedure buscaserie;
     procedure buscatitulo;
     procedure novavenda;
     procedure updatevenda;
     procedure imprimecupom;
     procedure imprimerecibo;
     procedure buscacliente;
     procedure exportatabelas;
     procedure AbreFormCaixa;
     procedure Impressora_1;
     procedure Impressora_2;
     procedure Impressora_3;
    { Public declarations }
  end;

var
  fTerminal_Delivery: TfTerminal_Delivery;
  usadelivery, strSql, strTit, serie: String;
  numTitulo, caixa, COD_VENDA, varConta, prazoparapgto  : Integer;
  total : double;
  TD: TTransactionDesc;
  Rua, Bairro : string;
  iRetorno: Integer;         // Vari�vel com o retorno da fun��o
  varAliquota : string;
  bRetornoEstendido: boolean;
  sAliquota: String;
  sTipoQtde: String;
  iDecimal: Integer;
  sTipoDesconto, varFormAberto: String;

implementation

uses UDm, uListaClientes, ufprocura_prod, sCtrlResize, uCaixa,
  uVendaFinalizar, uUtils, uProdudoBusca, uMensagens, UDMNF, uProcurar_nf,
  uFiltroMovimento, uTerminalFinalizar, uMovCaixa, uTexto;


{$R *.dfm}

function IsFileInUse(FileName: TFileName): Boolean;
var
  HFileRes: HFILE;
begin
  Result := False;
  if not FileExists(FileName) then
  begin
    Exit;
  end;
  HFileRes := CreateFile(PChar(FileName),
              GENERIC_READ or GENERIC_WRITE,
              0,
              nil,
              OPEN_EXISTING,
              FILE_ATTRIBUTE_NORMAL,
              0);
  Result := (HFileRes = INVALID_HANDLE_VALUE);
  if not Result then
    CloseHandle(HFileRes);
end;

procedure TfTerminal_Delivery.BitBtn1Click(Sender: TObject);
begin
  fMovCaixa.ShowModal;
  if (sCaixaAberto.Active) then
    sCaixaAberto.Close;
  sCaixaAberto.Params[0].AsString := MICRO;
  sCaixaAberto.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixaAberto.Open;
  if (sCaixaAberto.IsEmpty) then
    DM.STATUSCAIXA := 'FECHADO'
  else
    DM.STATUSCAIXA := 'ABERTO';
  sCaixaAberto.Close;
end;

procedure TfTerminal_Delivery.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (DtSrc.DataSet.State in [dsInsert, dsEdit]) then
 begin
   if (key = #13) then
   begin
    if (Edit1.Text = '') then
    begin
       BitBtn2.Click;
    end
    else
    begin
      if (procFone.Active) then
         procFone.Close;
      procFone.Params[0].AsString := Edit1.Text;
      procFone.Open;
      if (procFone.IsEmpty) then
      begin
        if MessageDlg('Telefone n�o cadastrado deseja Cadastr�-lo.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            BitBtn2.Click
        else
            exit;
      end
      else
      begin
         Edit3.Text := '';
         Edit4.Text := '';
         Edit2.Text := procFoneNOMECLIENTE.AsString;
         Edit4.Text := IntToStr(procFoneCODCLIENTE.AsInteger);
         if (procFoneLOGRADOURO.AsString <> '') then
           Rua := procFoneLOGRADOURO.AsString;
         if (procFoneBAIRRO.AsString <> '') then
           bairro := procFoneBAIRRO.AsString;
         Edit3.Text := Rua + ' ' + bairro;
         dbeProduto.SetFocus;
      end;
    end;
   end;
 end;
end;

procedure TfTerminal_Delivery.dbeProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
     if (dbeProduto.text <> '') then
     begin
       codproduto := 0;
       buscaProduto;
       dbeProduto.Text := '';
       DBEdit2.SetFocus;
     end
     else
       BitBtn3.Click;
 end;
 jvPago.Text := DBEdit4.Text;
end;

procedure TfTerminal_Delivery.BitBtn3Click(Sender: TObject);
begin
  inherited;

  if (DM.STATUSCAIXA = 'FECHADO') then
  begin
    MessageDlg('O Caixa precisa ser Aberto', mtWarning, [mbOK], 0);
    exit;
  end;

   if DtSrc1.DataSet.State in [dsInactive] then
     exit;
  //fProcura_prod.btnIncluir.Visible := true;
  //PROC_PROD_RESUMIDO
    fProcura_prod.Panel2.Visible := True;
    fProcura_prod.Panel1.Visible := False;
   // if (not fProcura_prod.cds_proc.Active) then
   //   fProcura_prod.cds_proc.Open;
  //varonde := 'compra';
   var_F := 'terminalloja';
  //cds_Mov_detLOTE.AsString := '';
  //fProcura_prod.Edit4.ReadOnly := True;
  fProcura_prod.Edit2.ReadOnly := True;
  //fProcura_prod.Edit4.TabStop := False;
  fProcura_prod.Edit2.TabStop := False;
  fProcura_prod.BitBtn1.Click;
  fProcura_prod.ShowModal;
  jvPago.Text := DBEdit4.Text;
  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.btnIncluirClick(Sender: TObject);
var
   varSITUACAO : String;
begin
  if (sCaixaAberto.Active) then
    sCaixaAberto.Close;
  sCaixaAberto.Params[0].AsString := MICRO;
  sCaixaAberto.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixaAberto.Open;
  if (sCaixaAberto.IsEmpty) then
     varSITUACAO := 'F'
  else
     varSITUACAO := 'A';

  sCaixaAberto.Close;

  if (varSITUACAO = 'F') then
  begin
    MessageDlg('O Caixa precisa ser Aberto', mtWarning, [mbOK], 0);
    exit;
  end;

  BitBtn7.Enabled := True;
  ComboBox3.Enabled := True;
  ComboBox4.Enabled := True;

 { if (DM.STATUSCAIXA = 'FECHADO') then
  begin
    MessageDlg('O Caixa precisa ser Aberto', mtWarning, [mbOK], 0);
    exit;
  end;
  }
   if (Panel2.Visible = True) then
   begin
    Edit1.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
   end;
  //inherited;
  jvPago.Value := 0;
  JvTroco.Value := 0;
  JVDesconto.Value := 0;

  if cds_Movimento.Active then
    cds_Movimento.Close;

  if cds_Mov_det.Active then
    cds_Mov_det.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;


  if c_8_serv.Active then
    c_8_serv.Close;

  if not DtSrc.DataSet.Active then
     DtSrc.DataSet.open;
  DtSrc.DataSet.Append;

  if DtSrc.DataSet.State in [dsInsert] then
  begin
    cds_MovimentoCODNATUREZA.AsInteger := cod_nat;
    cds_MovimentoDESCNATUREZA.AsString := natureza;
    cds_MovimentoCODUSUARIO.AsInteger := cod_vendedor_padrao;
    cds_MovimentoNOMEUSUARIO.AsString := nome_vendedor_padrao;
    cds_MovimentoCODCLIENTE.AsInteger := 0;
    cds_MovimentoNOMECLIENTE.AsString := 'CONSUMIDOR';
    cds_MovimentoNewRecord(DtSrc.DataSet);
    cds_Movimento.Edit;
  end;

  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    if DtSrc1.DataSet.State in [dsInactive] then
    begin
      DtSrc1.DataSet.Open;
      DtSrc1.DataSet.Append;
    end;
    if DtSrc1.DataSet.State in [dsBrowse] then
      DtSrc1.DataSet.Append;
  end;

    if (RadioGroup1.ItemIndex = 1) then
    begin
      GroupBox1.Visible := True;
      GroupBox2.Visible := False;
      Edit1.SetFocus;
    end;
    if (RadioGroup1.ItemIndex = 0) then
    begin
      GroupBox1.Visible := False;
      GroupBox2.Visible := True;
      cbMesas.SetFocus;
    end;

    if (RadioGroup1.ItemIndex = 2) then
    begin
      Edit4.Text := '0'; // Codigo do Cliente Consumidor
      dbeProduto.SetFocus;
    end;
    if (ComboBox3.Text <> '� VISTA') then
      ComboBox3.Text := '� VISTA';
end;

procedure TfTerminal_Delivery.buscaProduto;
 var
 s:string;
begin
  if (dbeProduto.Text = '') then
    exit;
  if (cds_Movimento.State in [dsInactive]) then
  begin
     MessageDlg('Para adicionar uma nova venda antes voc� deve clicar no bot�o incluir.', mtWarning, [mbOK], 0);
     abort;
  end;

  if (cds_Movimento.State in [dsBrowse]) then
    cds_Movimento.Edit;

  cds_Mov_det.Append;

  s:='';

  if (buscaProdLista(dbeproduto.Text, 'Prod') = 1) then
  begin
    MessageDlg('Produto n�o encontrado', mtWarning, [mbOK], 0);
    BitBtn3.Click;
    {cds_mov_det.Cancel;
    dbeproduto.SetFocus;
    exit;}
  end
  else
  begin
      cds_Mov_detCODPRODUTO.AsInteger := scds_produto_procCODPRODUTO.AsInteger;
      //cds_Mov_detCODPRO.AsString:= dbeProduto.Text;
      cds_Mov_detCOD_BARRA.AsString := dbeProduto.Text;
      cds_Mov_detPRODUTO.Value:=scds_produto_procPRODUTO.Value;
      cds_Mov_detDESCPRODUTO.Value := scds_produto_procPRODUTO.Value;
      cds_Mov_detCOD_COMISSAO.AsInteger:=scds_produto_procCOD_COMISSAO.AsInteger;
      cds_Mov_detQTDE_PCT.AsFloat:=scds_produto_procQTDE_PCT.AsFloat;
      cds_Mov_detUN.AsString:=scds_produto_procUNIDADEMEDIDA.AsString;
      cds_Mov_detLOCALIZACAO.AsString:=scds_produto_procLOCALIZACAO.AsString;
      cds_Mov_detESTOQUEATUAL.AsFloat:=scds_produto_procESTOQUEATUAL.AsFloat;
      cds_Mov_detQUANTIDADE.AsFloat := 1;
      cds_Mov_detQTDE_ALT.AsFloat := 0;
      cds_Mov_detVALTOTAL.AsFloat := precovenda * cds_Mov_detQUANTIDADE.AsFloat;
      cds_Mov_detCODALMOXARIFADO.AsInteger:=scds_produto_procCODALMOXARIFADO.AsInteger;
      cds_Mov_detALMOXARIFADO.AsString := scds_produto_procALMOXARIFADO.AsString;
      cds_Mov_detICMS.AsFloat := scds_produto_procICMS.AsFloat;
      cds_Mov_detPRECO.AsFloat := precovenda;
      // � servi�o ???
     { if (scds_produto_procTIPO.AsString = 'SERV') then
      begin
        servico := 'SIM';
        GroupBox1.Visible := True;
        if (not ds_serv.DataSet.Active) then
        begin
          c_8_serv.params[0].asInteger := cds_Mov_detCODDETALHE.Asinteger;
          ds_serv.DataSet.Open;
        end;
          ds_serv.DataSet.Append;
          c_8_servCODMOVIMENTO.AsInteger := cds_Mov_detCODDETALHE.Asinteger;
          c_8_servDESCRICAO.AsString := scds_produto_procPRODUTO.AsString;
          DbEdit17.Enabled := True;
          DbEdit17.Text := scds_produto_procPRODUTO.AsString;
      end;}
      cds_Mov_det.Post;
      scds_produto_proc.Close;
      dbeProduto.Text := '';
     { if (servico = 'SIM') then
        DbEdit17.SetFocus
      else }
        dbeProduto.SetFocus;
      servico := '';
  end;

end;

procedure TfTerminal_Delivery.cds_MovimentoBeforePost(DataSet: TDataSet);
begin
 // inherited;
   if cds_Movimento.State in [dsInsert] then
   begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
   end;
end;

procedure TfTerminal_Delivery.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
  //inherited;
    cds_MovimentoCODMOVIMENTO.asInteger := 1999999;
    cds_MovimentoDATAMOVIMENTO.Value := Date;
    cds_MovimentoDATA_SISTEMA.AsDateTime := Now;
    cds_MovimentoSTATUS.Value := 0;
    cds_MovimentoCODUSUARIO.AsInteger := 1;
    cds_MovimentoCODVENDEDOR.Value:=1;
    cds_MovimentoCODCLIENTE.AsInteger := 1;
    cds_MovimentoNOMECLIENTE.AsString := 'CONSUMIDOR';
    cds_MovimentoCODALMOXARIFADO.AsInteger := 1;
end;

procedure TfTerminal_Delivery.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  valor := 0;
  if cds_Mov_detQTDE_ALT.Value > 0 then
  begin
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
    valor := cds_Mov_detValorTotal.Value * (cds_Mov_detQTDE_ALT.Value/100);
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value - valor;
  end
  else
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
end;

procedure TfTerminal_Delivery.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  //inherited;
   if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  cds_mov_detCODDETALHE.AsInteger := codmovdet;
  cds_Mov_detCODMOVIMENTO.AsInteger:=cds_MovimentoCODMOVIMENTO.AsInteger;
end;

procedure TfTerminal_Delivery.cds_Mov_detReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  //inherited;
  MessageDlg('N�o � poss�vel gravar o registro.' + #10#13 + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfTerminal_Delivery.cds_vendaBeforePost(DataSet: TDataSet);
begin
  //inherited;
    if cds_vendaSTATUS1.AsString = '0' then
      cds_vendaSTATUS.AsInteger := 0;
    if cds_vendaSTATUS1.AsString = '1' then
      cds_vendaSTATUS.AsInteger := 1;
    if cds_vendaSTATUS1.AsString = '2' then
      cds_vendaSTATUS.AsInteger := 2;
end;

function TfTerminal_Delivery.buscaProdLista(codBarra,
  ProdLista: String): Integer;
var varsql:string;
begin

  varsql := 'select  prod.CODPRODUTO ' +
         ', prod.COD_BARRA '+
         ', prod.PRODUTO    '+
         ', prod.UNIDADEMEDIDA ' +
         ', prod.QTDE_PCT ' +
         ', prod.ICMS ' +
         ', prod.CODALMOXARIFADO ' +
         ', prod.CONTA_DESPESA ' +
         ', ccus.ALMOXARIFADO ' +
         ', prod.VALORUNITARIOATUAL ' +
         ', prod.VALOR_PRAZO ' +
         ', prod.COD_COMISSAO ' +
         ', prod.RATEIO ' +
         ', prod.TIPO ' +
         ', prod.LOCALIZACAO ' +
         ', prod.ESTOQUEATUAL ' +
         ' from PRODUTOS prod ' +
         ' left outer join ALMOXARIFADO ccus ' +
         ' on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO ' +
         ' where ';

  if scds_produto_proc.IsEmpty then
    scds_produto_proc.Close;
  {if (RadioGroup1.ItemIndex = 1) then
    scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + dbeProduto.Text + ''''
  else }
   // scds_produto_proc.CommandText := varsql + ' CODPRO = ' + '''' + dbeProduto.Text + '''';
    scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + dbeProduto.Text + '''';
  scds_produto_proc.Open;

  if (not scds_produto_proc.IsEmpty) then
  begin
    codproduto := scds_produto_procCODPRODUTO.AsInteger;
    if scds_produto_procQTDE_PCT.AsFloat >= 1 then
      precovenda := scds_produto_procVALOR_PRAZO.AsFloat / scds_produto_procQTDE_PCT.AsFloat
    else
      precovenda := scds_produto_procVALOR_PRAZO.AsFloat;
  end;

  if (scds_produto_proc.IsEmpty) then
    result := 1
  else
    result := 0;
end;

procedure TfTerminal_Delivery.FormCreate(Sender: TObject);
var
  utilcrtitulo : Tutils;
  i, j : integer;
begin

  sCtrlResize.CtrlResize(TForm(fTerminal_Delivery));
  if (FileExists('logo1.jpg')) then
    Image1.Picture.LoadFromFile('logo1.jpg');
 // inherited;
  codmovdet := 1999999;
  codserv := 1999999;
  //codmd := 1999999;
  centro_receita := 0;
    {------Pesquisando na tab Parametro Centro de Receita Padr�o ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRO RECEITA PADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      centro_receita := strToint(dm.cds_parametroDADOS.AsString);
    end;
    {------Pesquisando na tab Parametro Vendedor Padr�o ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'VENDEDORPADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      cod_vendedor_padrao := strToint(dm.cds_parametroDADOS.AsString);
      nome_vendedor_padrao := dm.cds_parametroD1.AsString;
    end else
    begin
      cod_vendedor_padrao := 1;
      nome_vendedor_padrao := '..'
    end;
  {------Pesquisando na tab Parametro C�digo e Nome da Natureza da Venda---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PDV';
  dm.cds_parametro.Open;
  cod_nat := strToint(dm.cds_parametroD2.asString);
  natureza := 'Venda a Vista';
  codcliente := strToint(dm.cds_parametroDADOS.asString);
  codalmoxarif := strToint(dm.cds_parametroD1.asString);
  tiporel := dm.cds_parametroD3.asString;

  {------Pesquisando na tab Parametro qual form de Procura Produtos ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DELIVERY';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usadelivery := dm.cds_parametroCONFIGURADO.AsString
  else
    usadelivery := 'N';

  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    ComboBox2.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;

  {if (usadelivery = 'N') then
     RadioGroup1.Visible := False;}

end;

procedure TfTerminal_Delivery.btnGravarClick(Sender: TObject);
var codigodocliente : integer;
begin
  if (DM.STATUSCAIXA = 'FECHADO') then
  begin
    MessageDlg('O Caixa precisa ser Aberto', mtWarning, [mbOK], 0);
    exit;
  end;
    //inherited;
    // Salvo o Movimento
    if (RadioGroup1.ItemIndex = 0) then
    begin
      if (cbMesas.Text = '') then
      begin
        MessageDlg('Informe a mesa do Cliente', mtWarning, [mbOK], 0);
        exit;
      end
      else
      begin
        sMesas.Open;
        sMesas.Locate('NOMECLIENTE', cbMesas.Text, [loCaseInsensitive]);
        codigodocliente := sMesasCODCLIENTE.AsInteger;
      end;
      cds_MovimentoCODNATUREZA.AsInteger := 13; //Mesa
      cds_MovimentoCODCLIENTE.AsInteger := codigodocliente;
    end;

    if (RadioGroup1.ItemIndex = 1) then
    begin
      if (Edit4.Text = '') then
      begin
           ShowMessage('Informe o Cliente');
           exit;
      end;
      cds_MovimentoCODCLIENTE.AsInteger := StrToInt(Edit4.Text);
      cds_MovimentoCODNATUREZA.AsInteger := 14; //Delivery
    end;

    if (RadioGroup1.ItemIndex = 2) then
      cds_MovimentoCODNATUREZA.AsInteger := 3; //Venda
  // buscacliente;
  // Corrijo o codigo da movimento detalhe(tabela)
  if (cds_Mov_detCODMOVIMENTO.AsInteger = 1999999) then
  begin
    cds_Movimento.ApplyUpdates(0);
    cod_mov := cds_MovimentoCODMOVIMENTO.AsInteger;
    cds_Mov_det.First;
    While not cds_Mov_det.Eof do
    begin
      cds_Mov_det.Edit;
      cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
      IF (cds_Mov_detQTDE_ALT.IsNull) then
         cds_Mov_detQTDE_ALT.AsFloat := 0;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
      cds_Mov_det.Post;
      cds_Mov_det.Next;
    end;
  end
  else
  begin
      if (cds_Mov_det.State in [dsBrowse]) then
        cds_Mov_det.Edit;
      cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
      if (cds_Mov_detQTDE_ALT.IsNull) then
         cds_Mov_detQTDE_ALT.AsFloat := 0;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
      cds_Mov_det.Post;
  end;

  // Salvo a movimento detalhe
  cds_Mov_det.ApplyUpdates(0);

  if (cds_Movimento.State in [dsEdit]) then
      cds_Movimento.ApplyUpdates(0);

  if (RadioGroup1.ItemIndex = 0) then
  begin
    if (cdsMesa.Active) then
      cdsMesa.Close;
    cdsMesa.Open;
    cdsMesa.Last;
    cbMesas.Text := '';
  end;

  if (RadioGroup1.ItemIndex = 1) then
  begin
    Edit1.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
    if (cDelivery.Active) then
      cDelivery.Close;
    cDelivery.Open;
    cDelivery.Last;
  end;

  if (RadioGroup1.ItemIndex = 2) then
  begin
    BitBtn4.Click;
    if (cds_Movimento.Active) then
      cds_Movimento.Close;
    cds_Movimento.Params[0].AsInteger := cod_mov;
    cds_Movimento.Open;
    if (cds_Mov_det.Active) then
      cds_Mov_det.Close;
    cds_Mov_det.Params[0].Clear;
    cds_Mov_det.Params[1].AsInteger := cod_mov;
    cds_Mov_det.Open;
  end;
  BitBtn7.Enabled := False;
  ComboBox3.Enabled := False;
  ComboBox4.Enabled := False;
  
end;

procedure TfTerminal_Delivery.DBGrid2DblClick(Sender: TObject);
var
  Rua, Bairro : string;
begin
  inherited;
   Edit1.Text := '';
   Edit2.Text := '';
   Edit3.Text := '';
   Edit1.Text := cDeliveryTELEFONE.AsString;
   Edit2.Text := cDeliveryNOMECLIENTE.AsString;
   Edit4.Text := IntToStr(cDeliveryCODCLIENTE.AsInteger);
   Rua := cDeliveryLOGRADOURO.AsString;
   bairro := cDeliveryBAIRRO.AsString;
   Edit3.Text := Rua + ' ' + bairro;
   if (cds_Movimento.Active) then
       cds_Movimento.Close;
   if (cds_Mov_det.Active) then
       cds_Mov_det.Close;
   cds_Movimento.Params[0].AsInteger := cDeliveryCODMOVIMENTO.AsInteger;
   cds_Movimento.Open;
   cds_Mov_det.Params[0].Clear;
   cds_Mov_det.Params[1].AsInteger := cDeliveryCODMOVIMENTO.AsInteger;
   cds_Mov_det.Open;
   cds_Mov_det.Edit;   
   if (GroupBox1.Visible = False) then
       GroupBox1.Visible := True;
   if (GroupBox2.Visible = True) then
       GroupBox2.Visible := False;
      RadioGroup1.ItemIndex := 1;

   jvPago.Text := DBEdit4.Text;
   JvTroco.Value := 0;

  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.FormShow(Sender: TObject);
var str_sql : string;
    datacaixa, diadeHoje : Tdate;
begin
  inherited;
 { if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql := 'Select * from PLANO ';
  str_sql := str_sql + 'WHERE CODIGO = ';
  str_sql := str_sql + IntToStr(33);//'''' + 'CAIXA INTERNO' + '''';
  DM.c_1_planoc.CommandText := str_sql;
  DM.c_1_planoc.Open;
  if DM.c_1_planoc.IsEmpty then
  begin
    MessageDlg('Codigo n�o cadastrado.', mtWarning, [mbOK], 0);
    exit;
  end
  else
    varConta := DM.c_1_planocCODIGO.AsInteger;
  DM.c_1_planoc.Close;
  }
  BitBtn7.Enabled := False;
  ComboBox3.Enabled := False;
  ComboBox4.Enabled := False;
  if (sCaixaAberto.Active) then
    sCaixaAberto.Close;
  sCaixaAberto.Params[0].AsString := MICRO;
  sCaixaAberto.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixaAberto.Open;
  if (sCaixaAberto.IsEmpty) then
    DM.STATUSCAIXA := 'FECHADO'
  else
    DM.STATUSCAIXA := 'ABERTO';
  sCaixaAberto.Close;
  sMesas.Open;
  sMesas.First;
  while not sMesas.Eof do begin
      cbMesas.Items.Add(sMesasNOMECLIENTE.AsString);
      sMesas.Next;
  end;
  sMesas.Close;
  cDelivery.Close;
  cDelivery.Open;
  cdsMesa.Close;
  cdsMesa.Open;
  if (RadioGroup1.ItemIndex <> 2) then
  begin
    Panel2.Visible := True;
    Panel3.Visible := False;
  end
  else
  begin
    Panel2.Visible := False;
    Panel3.Visible := True;
  end;
end;

procedure TfTerminal_Delivery.vendaavista;
begin
   // aqui adiciono uma nova venda ou atualizo caso j� exista
   total := 0;
   numTitulo := 0;
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
  // Verifico se a venda j� foi SALVA
  if (cds_venda.Active) then
    cds_venda.Close;
  cds_venda.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cds_venda.Open;
  if (cds_venda.IsEmpty) then
     novavenda // Adiciono Nova venda
  else   // J� est� gravada a Venda , � s� atualizar
     updatevenda;
end;

procedure TfTerminal_Delivery.buscaserie;
begin
    if Dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'SERIETERMINAL';
    dm.cds_parametro.Open;
    if dm.cds_parametro.IsEmpty then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.asString := 'N�mero do T�tulo de Venda para o Terminal';
      dm.cds_parametroPARAMETRO.asString := 'SERIETERMINAL';
      dm.cds_parametroDADOS.asString := 'T'; // T -> Terminal VENDA(CAIXA)
      dm.cds_parametroCONFIGURADO.asString := 'S';
      dm.cds_parametro.ApplyUpdates(0);
    end;
    // Buscar o n�mero do t�tulo na tabela S�RIE
    if (sds_s.Active) then
      sds_s.Close;
    sds_s.CommandText := 'SELECT SERIE, ULTIMO_NUMERO FROM SERIES WHERE SERIE = ' + '''' + dm.cds_parametroDADOS.asString + '''';
    sds_s.open;
    if (sds_s.IsEmpty) then
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES(' + '''' + 'T' + ''',' + '1)');
      Try
         dm.sqlsisAdimin.Commit(TD);
         serie := 'T';
         numTitulo := 0;
      except
         dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
         MessageDlg('Erro no sistema, a venda n�o foi gravada.', mtError,
             [mbOk], 0);
      end;
    end
    else begin
      serie := sds_s.Fields[0].AsString;
      numTitulo := sds_s.Fields[1].AsInteger + 1;
      strSql := 'UPDATE SERIES SET ULTIMO_NUMERO = ';
      strSql := strSql + IntToStr(numTitulo + 1);
      strSql := strSql + ' where SERIE = ';
      strSql := strSql + '''' + serie + '''';
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      Try
         dm.sqlsisAdimin.Commit(TD);
      except
         dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
         MessageDlg('Erro no sistema, a venda n�o foi gravada.', mtError,
             [mbOk], 0);
      end;
    end;
end;

procedure TfTerminal_Delivery.buscatitulo;
begin
    strTit := IntToStr(numTitulo) + '-' + serie;
    strSql := 'SELECT TITULO FROM RECEBIMENTO where TITULO = ' ;
    strSql := strSql + '''' + strTit + '''';
    if sds_s.Active then
      sds_s.Close;
    sds_s.CommandText := strSql;
    sds_s.Open;
    if not sds_s.IsEmpty then
    begin
      strSql := 'SELECT TITULO FROM RECEBIMENTO where CODRECEBIMENTO = ' +
         ' (select MAX(CODRECEBIMENTO) from recebimento)';
         if sds_s.Active then
           sds_s.Close;
         sds_s.CommandText := strSql;
         sds_s.Open;
         MessageDlg('N�mero do T�tulo repetido, �ltimo n� : ''' + sds_s.Fields[0].AsSTring + '''',
         mtWarning, [mbOK], 0);
         Abort;
    end;
end;

procedure TfTerminal_Delivery.novavenda;
var  utilcrtitulo : Tutils;
     vApagar : double;
     varCaixa : integer;
begin

  if (sCaixaAberto.Active) then
    sCaixaAberto.Close;
  sCaixaAberto.Params[0].AsString := MICRO;
  sCaixaAberto.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixaAberto.Open;
  varCaixa := sCaixaAbertoIDCAIXACONTROLE.AsInteger;
  sCaixaAberto.Close;
    // Altero o Cliente Para Consumidor
   //if (usadelivery = 'S')then
    if ((RadioGroup1.ItemIndex = 0) or (RadioGroup1.ItemIndex = 2)) then
    begin
      if (cds_Movimento.State in [dsBrowse]) then
        cds_movimento.Edit;
      if(cds_MovimentoCODCLIENTE.IsNull) then
        cds_MovimentoCODCLIENTE.AsInteger := 0; //Consumidor
      cds_Movimento.ApplyUpdates(0);
    end;
    // fecho o cds_venda
    cds_venda.Close;
    serie := 'x';
    // Busca na tabe�a PARAMETRO a S�RIE para trabalhar no Terminal VENDA
    buscaserie;
    // Verificando se existe t�tulo com esse n�mero
    buscatitulo;
    {---*********************************************************************---}
    {---                Inserindo dados na tabela VENDA                      ---}
    {---*********************************************************************---}
    if (dm.c_6_genid.Active) then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    COD_VENDA := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    strSql := 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA';
    strSql := strSql + ',DATAVENCIMENTO ,BANCO ,CODVENDEDOR ,STATUS ,CODUSUARIO';
    strSql := strSql + ',VALOR ,NOTAFISCAL ,SERIE, DESCONTO, CODCCUSTO, N_PARCELA'; //
    strSql := strSql + ',FORMARECEBIMENTO, ENTRADA, CAIXA, MULTA_JUROS, APAGAR, CODORIGEM ';
    strSql := strSql + ') VALUES (';
    strSql := strSql + IntToStr(COD_VENDA);
    strSql := strSql + ',' + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
    strSql := strSql + ',' + IntToStr(cds_MovimentoCODCLIENTE.AsInteger);
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
    strSql := strSql + ',1'; //Banco
    strSql := strSql + ',1'; //CodVendedor
    strSql := strSql + ',0'; //status
    strSql := strSql + ',1'; //codusuario

    if (cbporcento.Checked = True) then
      if (DBEdit9.Text <> '') then
      try
        total := StrToFloat(DBEdit9.Text);
      except
        // Valor total inv�lido.
        MessageDlg('O valor total est� errado.', mtError, [mbOK], 0);
        exit;
      end;

    if (cbporcento.Checked = False) then
      if (DBEdit4.Text <> '') then
      try
        total := StrToFloat(DBEdit4.Text);
      except
        // Valor total inv�lido.
        MessageDlg('O valor total est� errado.', mtError, [mbOK], 0);
        exit;
      end;

    vApagar := StrToFloat(jvPago.Text);
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    strSql := strSql + ',' + FloatToStr(total); //valor
    strSql := strSql + ',' + IntToStr(numTitulo); //notafiscal
    strSql := strSql + ',''' + serie + ''''; //serie
    strSql := strSql + ',' + FloatToStr(Vdesconto); //DEsconto
   // strSql := strSql + ',0'; //desconto
    strSql := strSql + ',' + IntToStr(cds_MovimentoCODALMOXARIFADO.AsInteger);//CODCUSTO
    strSql := strSql + ',1,';
    utilcrtitulo := Tutils.Create;
    strSql := strSql + QuotedStr(utilcrtitulo.pegaForma(ComboBox2.Text));
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    strSql := strSql + ',' + FloatToStr(total);
    strSql := strSql + ',33'; //Caixa
    strSql := strSql + ',0'; //Multa_juros
    strSql := strSql + ',' + FloatToStr(vApagar);
    strSql := strSql + ',' + IntToStr(varCaixa);
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro no sistema, a venda n�o foi gravada.', mtError,
           [mbOk], 0);
    end;
    DecimalSeparator := ',';
    ThousandSeparator := '.';
end;

procedure TfTerminal_Delivery.updatevenda;
begin
    { -- Incluir aqui rotina de UPDATE na tabela venda --}
        strSql := 'UPDATE VENDA SET DATAVENDA = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', DATAVENCIMENTO = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', VALOR = ';
        if (cbporcento.Checked = True) then
          if (DBEdit9.Text <> '') then
          try
            total := StrToFloat(DBEdit9.Text);
          except
            // Valor total inv�lido.
            MessageDlg('O valor total est� errado.', mtError, [mbOK], 0);
            exit;
          end;

        if (cbporcento.Checked = False) then
          if (DBEdit4.Text <> '') then
          try
            total := StrToFloat(DBEdit4.Text);
          except
            // Valor total inv�lido.
            MessageDlg('O valor total est� errado.', mtError, [mbOK], 0);
            exit;
          end;
        DecimalSeparator := '.';
        ThousandSeparator := ',';
        strSql := strSql + FloatToStr(total);
        strSql := strSql + ', APAGAR = ';
        strSql := strSql + jvPago.Text;
        strSql := strSql + ', N_PARCELA = ';
        strSql := strSql + '1';
        strSql := strSql + ', ENTRADA = ';
        DecimalSeparator := '.';
        ThousandSeparator := ',';
        strSql := strSql + FloatToStr(total);
        strSql := strSql + ' where CODVENDA = ';
        strSql := strSql + IntToStr(COD_VENDA);
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
           MessageDlg('Erro no sistema, a venda n�o foi gravada.', mtError,
               [mbOk], 0);
           DecimalSeparator := ',';
           ThousandSeparator := '.';
        end;
        DecimalSeparator := ',';
        ThousandSeparator := '.';

        {---*********************************************************************---}
        {---              Atualiza campos na tabela RECEBIMENTO                  ---}
        {---*********************************************************************---}
        strSql := 'UPDATE RECEBIMENTO SET DATARECEBIMENTO = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', DATABAIXA = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', VALOR_RESTO = 0';
        strSql := strSql + ', VALORRECEBIDO = ';
        DecimalSeparator := '.';
        ThousandSeparator := ',';
        strSql := strSql + FloatToStr(total);
        DecimalSeparator := ',';
        ThousandSeparator := '.';
        strSql := strSql + ', STATUS = ';
        strSql := strSql + '''7-''';
        strSql := strSql + ' where CODVENDA = ';
        strSql := strSql + IntToStr(COD_VENDA);
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
           MessageDlg('Erro no sistema, a venda n�o foi gravada.', mtError,
               [mbOk], 0);
           DecimalSeparator := ',';
           ThousandSeparator := '.';
        end;

end;

procedure TfTerminal_Delivery.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if (DM.STATUSCAIXA = 'FECHADO') then
  begin
    MessageDlg('O Caixa precisa ser Aberto', mtWarning, [mbOK], 0);
    exit;
  end;

  if (sqsTitulo.Active) then
      sqsTitulo.Close;
  sqsTitulo.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  sqsTitulo.Open;

  if (sqsTituloSTATUS.AsString = '7-') then
  begin
    MessageDlg('Venda J� Finalizada.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (jvPago.Value = 0) then
  begin
    MessageDlg('Informe o valor Pago', mtWarning, [mbOK], 0);
    jvPago.SetFocus;
    exit;
  end;

  if (cds_MovimentoCODNATUREZA.AsInteger <> 3) then
  begin
    if (cds_Movimento.State in [dsBrowse]) then
      cds_movimento.Edit;
    cds_MovimentoCODNATUREZA.AsInteger := 3; //Venda
    cds_Movimento.ApplyUpdates(0);
  end;

  terminal := 'terminal';

  if (Panel2.Visible = True) then
    if (ComboBox1.Text = '� PRAZO') then
      vendaaprazo
    else
      vendaavista;

  if (Panel3.Visible = True) then
    if (ComboBox3.Text = '� PRAZO') then
      vendaaprazo
    else
      vendaavista;

 terminal := '';
  if (ComboBox3.Text = '� VISTA') then
    if (MessageDlg('Imprimir Recibo ', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      imprimecupom;
  if (ComboBox3.Text = '� PRAZO') then
    if (MessageDlg('Imprimir Recibo ', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      imprimerecibo;

 if (Panel2.Visible = True) then //Mesa - Delivery
 begin
   if (cDelivery.Active) then
     cDelivery.Close;
   cDelivery.Open;
   if (cdsMesa.Active) then
     cdsMesa.Close;
   cdsMesa.Open;
 end;
 //cds_Mov_det.Close;
 jvPago.Value := 0;
 JvTroco.Value := 0;
end;

procedure TfTerminal_Delivery.DtSrcStateChange(Sender: TObject);
begin
  BitBtn4.Enabled:=DtSrc.State in [dsBrowse];
  inherited;

end;

procedure TfTerminal_Delivery.BitBtn2Click(Sender: TObject);
begin
  inherited;
  fListaClientes:=TfListaClientes.Create(Application);
  try
    codcli := 0;
    nomecli := '';
    fListaClientes.ShowModal;
    if (cds_Movimento.State in [dsBrowse]) then
    begin
      cds_Movimento.edit;
      cds_MovimentoCODCLIENTE.AsInteger := codcli;
      cds_Movimento.ApplyUpdates(0);
    end
    else
      cds_MovimentoCODCLIENTE.AsInteger := codcli;
    Edit3.Text := '';
    Edit4.Text := IntToStr(codcli);
    Edit2.Text := nomecli;
    Edit1.Text := telefonecli;
    Edit3.Text := enderecocli;
    dbeProduto.SetFocus;
  finally
   fListaClientes.cds.Close;
   fListaClientes.Free;
  end;
  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   Edit1.Text := '';
   Edit2.Text := '';
   Edit3.Text := '';
   Edit2.Text := cdsMesaNOMECLIENTE.AsString;
   if (cds_Movimento.Active) then
       cds_Movimento.Close;
   if (cds_Mov_det.Active) then
       cds_Mov_det.Close;
   cds_Movimento.Params[0].AsInteger := cdsMesaCODMOVIMENTO.AsInteger;
   cds_Movimento.Open;
   cds_Mov_det.Params[0].Clear;
   cds_Mov_det.Params[1].AsInteger := cdsMesaCODMOVIMENTO.AsInteger;
   cds_Mov_det.Open;
   //cds_Mov_det.Edit;
   if (GroupBox2.Visible = False) then
       GroupBox2.Visible := True;
   if (GroupBox1.Visible = True) then
       GroupBox1.Visible := False;
   if (GroupBox2.Visible = True) then
   begin
      cbMesas.Text := cdsMesaNOMECLIENTE.AsString;
      Edit4.Text := IntToStr(cdsMesaCODCLIENTE.AsInteger);
   end;
   RadioGroup1.ItemIndex := 0;
   jvPago.Text := DBEdit4.Text;
   JvTroco.Value := 0;
   dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.imprimecupom;
const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formata��o da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;

var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6,texto7, logradouro,cep,fone : string;//Para recortar parte da descri��o do produto,nome
  total, porc, totgeral , desconto : double;
  porta : string;
  vNomeCliente, vEnderecoCliente, vFonecli : string;
begin
    {------Pesquisando na tab Parametro Centro de Receita Padr�o ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      porta := dm.cds_parametroDADOS.AsString;
    end
    else
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Porta usada para impressoras de CUPOM';
      dm.cds_parametroPARAMETRO.AsString := 'PORTA IMPRESSORA';
      dm.cds_parametroDADOS.AsString := 'LPT1:';
      dm.cds_parametro.ApplyUpdates(0);
      porta := 'LPT1:';
    end;
    {------Mensagem para impress�o ---------}
  {  if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'MENSAGEM';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      DM.Mensagem := dm.cds_parametroDADOS.AsString;
    end
    else
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Mensagem para impress�o';
      dm.cds_parametroPARAMETRO.AsString := 'MENSAGEM';
      dm.cds_parametroDADOS.AsString := '.......';
      dm.cds_parametro.ApplyUpdates(0);
    end;   }

  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endere�o-----}
  logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
  cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
  ' - ' + dm.cds_empresaCEP.Value;
  fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
  ' / ' + dm.cds_empresaFONE_2.Value;
  Texto  := '---------------------------------------------------' ;
  Texto1 := DateTimeToStr(Now) + '               Pedido N.:  ' +
  IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
  Texto2 := '---------------------------------------------------' ;
  Texto4 := 'Produto                   Qtde     V.Un.   V.Total' ;
  sParametro.Open;
  DM.Mensagem := sParametroD9.AsString;
  // Para gravar em arquivo
  if (sParametroD8.AsString = 'txt') then
  begin
    OpenDialog1.Execute;
    AssignFile(IMPRESSORA, OpenDialog1.FileName);
  end
  else
  begin
    AssignFile(IMPRESSORA,porta);
  end;
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
  Writeln(Impressora, c10cpi, logradouro);
  Writeln(Impressora, c17cpi, cep);
  Writeln(Impressora, c17cpi, fone);
  Writeln(Impressora, c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
  Writeln(Impressora, c17cpi, texto);
  Writeln(Impressora, c17cpi, texto1);
  Writeln(Impressora, c17cpi, texto2);
  Writeln(Impressora, c17cpi, texto6);
  if (RadioGroup1.ItemIndex = 0) then
  begin
     vNomeCliente := cdsMesaNOMECLIENTE.AsString;
     Writeln(Impressora, c10cpi, vNomeCliente);
  end
  else
  begin
     vNomeCliente := 'Cliente  : '+ Edit2.Text;
     vEnderecoCliente := 'Endere�o : '+ Edit3.Text;
     vFonecli := 'Telefone : (19)' + Edit1.Text;
     Writeln(Impressora, c10cpi, vNomeCliente);
     Writeln(Impressora, c10cpi, vEnderecoCliente);
     Writeln(Impressora, c10cpi, vFonecli);
  end;
     Writeln(Impressora, c17cpi, texto2);
     Writeln(Impressora, c17cpi, texto4);


  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
  try
    cds_Mov_det.First;
    while not cds_Mov_det.Eof do
    begin
      cds_Mov_det.RecordCount;
      texto6 := cds_Mov_detCODPRO.AsString + '-';
      texto6 := texto6 + Copy(cds_Mov_detDESCPRODUTO.Value, 0, 55);
      Writeln(Impressora, c17cpi, texto6);
      Write(Impressora, c17cpi, Format('%-13s  ',['']));
      Write(Impressora, c17cpi + Format('            %-6.2n',[cds_Mov_detQUANTIDADE.AsFloat]));
      Write(Impressora, c17cpi + Format(' %-6.2n',[cds_Mov_detPRECO.AsFloat]));
      Writeln(Impressora, c17cpi + Format('  %-6.2n',[cds_Mov_detValorTotal.value]));

      with Printer.Canvas do
      begin
        Font.Name := 'Courier New';
        Font.Size := 4;
      end;
      cds_Mov_det.next;
    end;
    desconto := JvDesconto.Value;
    Texto5 := '      Total.: R$   ';
    total := cds_Mov_detTotalPedido.Value;

    porc := total * 0.1;
    Writeln(Impressora, c17cpi, texto);

    Texto7 := '       Desconto .: R$   ';
    Write(Impressora, c10cpi, texto7);
    Writeln(Impressora, c10cpi + Format('         %-6.2n',[desconto]));

    Write(Impressora, c10cpi, texto5);
    Writeln(Impressora, c10cpi + Format('       %-6.2n',[total - desconto]));

    Writeln(Impressora, c10cpi, texto);

   { if (cbporcento.Checked = True) then
    begin
      Texto5 := '                          *10% R$ ';
      Write(Impressora, c10cpi, texto5);
      Writeln(Impressora, c10cpi + Format('     %-6.2n',[porc]));
      Texto5 := '                                               -----------';
      Writeln(Impressora, c17cpi, texto5);
      Texto5 := '                          Total Geral.: R$ ';
      Write(Impressora, c17cpi, texto5);
      totgeral := total + porc;
      Writeln(Impressora, c10cpi + Format('    %-6.2n',[totgeral]));
      Texto5 := '* Nao Obrigatorio           ';
      Write(Impressora, c10cpi, texto5);
      Writeln(IMPRESSORA);
    end;   }
    Writeln(IMPRESSORA);
    Write(Impressora, c10cpi, DM.Mensagem);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
  finally
    CloseFile(IMPRESSORA);
  end;
  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.cbMesasKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
    if (cbMesas.text = '') then
    begin
       MessageDlg('escolha uma mesa.', mtWarning, [mbOK], 0);
       cbMesas.SetFocus;
       exit;
    end;
    sMesas.Open;
    sMesas.Locate('NOMECLIENTE', cbMesas.Text, [loCaseInsensitive]);
    Edit4.Text := IntToStr(sMesasCODCLIENTE.AsInteger);
    Edit2.Text := sMesasNOMECLIENTE.AsString;
    dbeProduto.SetFocus;
 end;
end;

procedure TfTerminal_Delivery.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if (RadioGroup1.ItemIndex = 0) then
  begin
    if (Panel2.Visible = False) then
    begin
      Panel3.Visible := False;
      Panel4.Visible := False;
      Panel5.Visible := False;
      Panel2.Visible := True;
    end;
    GroupBox1.Visible := False;
    GroupBox2.Visible := True;
    if (cds_Mov_det.Active) then
      cds_Mov_det.Close;
    cbMesas.SetFocus;
  end;
  if (RadioGroup1.ItemIndex = 1) then
  begin
    if (Panel2.Visible = False) then
    begin
      Panel3.Visible := False;
      Panel4.Visible := False;
      Panel5.Visible := False;
      Panel2.Visible := True;
    end;
    GroupBox2.Visible := False;
    GroupBox1.Visible := True;
    if (cds_Mov_det.Active) then
      cds_Mov_det.Close;
    Edit1.SetFocus;
  end;
  if (RadioGroup1.ItemIndex = 2) then
  begin
    if (Panel2.Visible = True) then
    begin
      Panel3.Visible := True;
      Panel4.Visible := True;
      Panel5.Visible := True;
      Panel2.Visible := False;
    end;
    //dbEdit1.SetFocus;
  end;

end;

procedure TfTerminal_Delivery.ComboBox3Change(Sender: TObject);
begin
  inherited;
  ComboBox1.Text := ComboBox3.Text;
end;

procedure TfTerminal_Delivery.ComboBox4Change(Sender: TObject);
begin
  inherited;
  ComboBox1.Text := ComboBox3.Text;
end;

procedure TfTerminal_Delivery.DBGrid3DblClick(Sender: TObject);
begin
  inherited;
    if DtSrc.DataSet.State in [dsBrowse] then
      DtSrc.DataSet.Edit;

    if DtSrc1.DataSet.State in [dsBrowse] then
    begin
      DtSrc1.DataSet.Edit;
      DBEdit2.SetFocus;
   end;

end;

procedure TfTerminal_Delivery.IncluirNovoItem1Click(Sender: TObject);
begin
  inherited;
    if DtSrc1.DataSet.State in [dsBrowse] then
    begin
      DtSrc1.DataSet.Append;
      dbeProduto.SetFocus;
    end;
end;

procedure TfTerminal_Delivery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (cds_Movimento.Active) then
      cds_Movimento.Close;
  if (cds_Mov_det.Active) then
      cds_Mov_det.Close;
  jvPago.Value := 0;
  JvTroco.Value := 0;
  inherited;

end;

procedure TfTerminal_Delivery.ExcluirItem1Click(Sender: TObject);
begin
  inherited;
 if  DtSrc1.DataSet.State in [dsBrowse] then
 begin
   if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.edit;

   if  MessageDlg('Confirma a exclus�o do item ''' + cds_Mov_detPRODUTO.AsString + '''?', mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
      DtSrc1.DataSet.Delete;
 end;
end;

procedure TfTerminal_Delivery.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if (ComboBox3.Text = '� VISTA') then
    if (MessageDlg('Imprimir Recibo ', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      imprimecupom;
  if (ComboBox3.Text = '� PRAZO') then
    if (MessageDlg('Imprimir Recibo ', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      imprimerecibo;
end;

procedure TfTerminal_Delivery.btnCancelarClick(Sender: TObject);
begin
  if (DM.STATUSCAIXA = 'FECHADO') then
  begin
    MessageDlg('O Caixa precisa ser Aberto', mtWarning, [mbOK], 0);
    exit;
  end;

  if cds_venda.Active then
  begin
     cds_venda.Cancel;
     cds_venda.Close;
  end;
  cds_Mov_det.cancel;
  cds_Mov_det.Close;
  inherited;
  cds_Movimento.Close;
  jvPago.Value := 0;
  JvTroco.Value := 0;
  BitBtn7.Enabled := False;
  ComboBox3.Enabled := False;
  ComboBox4.Enabled := False;
end;

procedure TfTerminal_Delivery.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if (DM.STATUSCAIXA = 'FECHADO') then
  begin
    MessageDlg('O Caixa precisa ser Aberto', mtWarning, [mbOK], 0);
    exit;
  end;

  if (cds_Mov_det.Active) then
     cds_Mov_det.Close;
  if (cdsMesa.Active) then
     cdsMesa.Close;
  cdsMesa.Open;
  if (cDelivery.Active) then
     cDelivery.Close;
  cDelivery.Open;

  jvPago.Value := 0;
  JvTroco.Value := 0;

end;

procedure TfTerminal_Delivery.DtSrc1StateChange(Sender: TObject);
begin
  inherited;
  if (DtSrc1.DataSet.State in [dsEdit]) then
  begin
    if (DtSrc.DataSet.State in [dsBrowse]) then
        DtSrc.DataSet.edit;
  end;
end;

procedure TfTerminal_Delivery.BitBtn5Click(Sender: TObject);
begin
  inherited;

  if (DM.STATUSCAIXA = 'FECHADO') then
  begin
    MessageDlg('O Caixa precisa ser Aberto', mtWarning, [mbOK], 0);
    exit;
  end;

   if (cds_Mov_det.State in [dsBrowse]) then
      cds_Mov_det.Append;

   if (cds_Mov_det.State in [dsInsert, dsEdit]) then
     fProdudoBusca.ShowModal;
end;

procedure TfTerminal_Delivery.BitBtn6Click(Sender: TObject);
begin
  inherited;
  //fMensagens.ShowModal;
  // Imprime setor 1
  if (sImprime_1.Active) then
     sImprime_1.Close;
  sImprime_1.Params[0].AsInteger := cdsMesaCODMOVIMENTO.AsInteger;
  sImprime_1.Open;
  if (not sImprime_1.IsEmpty) then
  begin
     Impressora_1;
     ShowMessage('Destaque o papel e precione ok');
  end;
  // Imprime setor 2
  if (sImprimir_2.Active) then
     sImprimir_2.Close;
  sImprimir_2.Params[0].AsInteger := cdsMesaCODMOVIMENTO.AsInteger;
  sImprimir_2.Open;
  if (not sImprimir_2.IsEmpty) then
  begin
     Impressora_2;
     ShowMessage('Destaque o papel e precione ok');
  end;
  // Imprime setor 3
  if (sImprimir_3.Active) then
     sImprimir_3.Close;
  sImprimir_3.Params[0].AsInteger := cdsMesaCODMOVIMENTO.AsInteger;
  sImprimir_3.Open;
  if (not sImprimir_3.IsEmpty) then
  begin
     Impressora_3;
     ShowMessage('Destaque o papel e precione ok');
  end;
//  if (cds_mov_det.State in [dsEdit]) then
//     cds_mov_det.Cancel;
end;

procedure TfTerminal_Delivery.buscacliente;
begin
    fProcurar_nf:= TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
    fProcurar_nf.BtnProcurar.Click;
    fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
    fProcurar_nf.btnIncluir.Visible := True;
    try
      if (fProcurar_nf.ShowModal = mrOK) then
      begin
        if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
        begin
          MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc ter� que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
          exit;
          //dbeCliente.SetFocus;
        end;
        if dtSrc.State=dsBrowse then
          cds_Movimento.Edit;
        cds_MovimentoCODCLIENTE.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
        cds_MovimentoNOMECLIENTE.AsString := dmnf.scds_cli_procNOMECLIENTE.AsString;
        prazoparapgto := dmnf.scds_cli_procPRAZORECEBIMENTO.AsInteger;
        dbeProduto.SetFocus;
      end;
    finally
     dmnf.scds_cli_proc.Close;
     fProcurar_nf.Free;
    end;
end;

procedure TfTerminal_Delivery.btnProcurarClick(Sender: TObject);
begin
   // AbreFormCaixa;
    if (not dmnf.cds_ccusto.Active) then
        dmnf.cds_ccusto.Open;
    dmnf.cds_ccusto.First;
    while not dmnf.cds_ccusto.Eof do
    begin
      fFiltroMovimento.ComboBox1.Items.Add(dmnf.cds_ccustoNOME.AsString);
      dmnf.cds_ccusto.Next;
    end;
    {------Pesquisando na tab Parametro o valor padr�o para a Natureza Opera��o ---------}
    if dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'NATUREZAVENDA';
    dm.cds_parametro.Open;
    fFiltroMovimento.Edit3.Text := dm.cds_parametroDADOS.AsString;
    fFiltroMovimento.Edit4.Text := dm.cds_parametroD1.AsString;
    dm.cds_parametro.Close;
    fFiltroMovimento.BitBtn8.Enabled := False;
    fFiltroMovimento.Edit3.Text := '';
    fFiltroMovimento.ShowModal;

    cds_Movimento.Close;
    cds_Movimento.Params[0].AsInteger := fFiltroMovimento.cod_mov;
    cds_Movimento.Open;

    cds_Mov_det.Close;
    cds_Mov_det.Params[0].Clear;
    cds_Mov_det.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cds_Mov_det.Open;
    if (dm.totalpago > 0) then
      jvPago.Value := dm.totalpago;

end;

procedure TfTerminal_Delivery.vendaaprazo;
begin
   // aqui adiciono uma nova venda ou atualizo caso j� exista
 {  total := 0;
   numTitulo := 0;
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
  // Verifico se a venda j� foi SALVA
  if (cds_venda.Active) then
    cds_venda.Close;
  cds_venda.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cds_venda.Open;
  if (cds_venda.IsEmpty) then
     novavenda // Adiciono Nova venda
  else   // J� est� gravada a Venda , � s� atualizar
     updatevenda;
  }
  //Venda � prazo
  fTerminalFinalizar := TfTerminalFinalizar.Create(Application);
  try
    fTerminalFinalizar.ShowModal;
  finally
    fTerminalFinalizar.Free;
  end;
end;

procedure TfTerminal_Delivery.jvPagoChange(Sender: TObject);
var
  vTroco, vPago, vTotal : double;
begin
  if (cds_Movimento.State in [dsInsert, dsEdit] ) then
  begin
    vTotal := cds_Mov_detTotalPedido.value;
    vPago := jvPago.Value;
    if (vTotal > 0) then
      vTroco := vPago - (vTotal-JvDesconto.Value);
    JvTroco.Value := vTroco;
  end;
end;

procedure TfTerminal_Delivery.cbporcentoClick(Sender: TObject);
begin
  inherited;
  if (cbporcento.Checked = True) then
  begin
     DBEdit9.Enabled := True;
     DBEdit9.Color := clWindow;
  end
  else
  begin
     DBEdit9.Enabled := False;
     DBEdit9.Color := clBtnFace;
  end;
end;

procedure TfTerminal_Delivery.BitBtn7Click(Sender: TObject);
begin
  inherited;
  varform := 'TERMINALDEVENDAS';
  buscacliente;
  ComboBox3.SetFocus;
end;

procedure TfTerminal_Delivery.DBEdit2Exit(Sender: TObject);
begin
  inherited;
 if (cds_Mov_det.State in [dsEdit]) then
 begin
   cds_Mov_det.Post;
   dbeProduto.Text := '';
   servico := '';
   jvPago.Text := DBEdit4.Text;
 end;
end;

procedure TfTerminal_Delivery.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
   if (cds_Mov_det.State in [dsInsert, dsEdit]) then
   begin
      cds_Mov_det.Post;
      dbeProduto.Text := '';
   end;
   jvPago.Text := DBEdit4.Text;
   //   dbeProduto.SetFocus;
   DBEdit1.SetFocus;
 end;
end;

procedure TfTerminal_Delivery.DBEdit3Exit(Sender: TObject);
begin
  inherited;
   if (cds_Mov_det.State in [dsInsert, dsEdit]) then
   begin
      cds_Mov_det.Post;
      dbeProduto.Text := '';
      jvPago.Text := DBEdit4.Text;
      dbeProduto.SetFocus;
   end;
end;

procedure TfTerminal_Delivery.exportatabelas;
var
  vari: integer;
begin
  //Try
    // Copio dados tabMovimento
    cMov.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cMov.Open;
    cExportaMov.Open;
    cExportaMov.append;

    for vari := 0 to cMov.fieldcount -1 do
    begin
       if (cMov.fields[vari].fieldkind = fkdata) then
          cExportaMov.fields[vari].value := cMov.fieldbyname(cMov.fields[vari].fieldname).value;
    end;
    cExportaMov.ApplyUpdates(0);
    // Copio dados tabMovimento Detalhe
    cMovDet.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cMovDet.Open;
    cExportaMovDet.Open;
    cMovDet.First;
    while not cMovDet.Eof do
    begin
      cExportaMovDet.append;
      for vari := 0 to cMovDet.fieldcount -1 do
      begin
         if (cMovDet.fields[vari].fieldkind = fkdata) then
            cExportaMovDet.fields[vari].value := cMovDet.fieldbyname(cMovDet.fields[vari].fieldname).value;
      end;  
      cExportaMovDet.ApplyUpdates(0);
      cMovDet.Next;
    end;
    // Copio dados tab. Venda
    cVenda.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cVenda.Open;
    cExportaVenda.Open;
    cVenda.First;
    while not cVenda.Eof do
    begin
      cExportaVenda.append;
      for vari := 0 to cVenda.fieldcount -1 do
      begin
         if (cVenda.fields[vari].fieldkind = fkdata) then
            cExportaVenda.fields[vari].value := cVenda.fieldbyname(cVenda.fields[vari].fieldname).value;
      end;
      cExportaVenda.ApplyUpdates(0);
      cVenda.Next;
    end;
    MessageDlg('Arquivos exportados com suscesso', mtWarning, [mbOK], 0);
 // Except
   // MessageDlg('Erro ao exportar arquivos', mtWarning, [mbOK], 0);
 // end;
end;

procedure TfTerminal_Delivery.BitBtn8Click(Sender: TObject);
var
   varSITUACAO : String;
   i: Integer;
begin
  if (sCaixaAberto.Active) then
    sCaixaAberto.Close;
  sCaixaAberto.Params[0].AsString := MICRO;
  sCaixaAberto.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixaAberto.Open;
  if (sCaixaAberto.IsEmpty) then
     varSITUACAO := 'F'
  else
     varSITUACAO := 'A';

  sCaixaAberto.Close;

  if (varSITUACAO = 'F') then
  begin
    MessageDlg('O Caixa precisa ser Aberto', mtWarning, [mbOK], 0);
    exit;
  end;
  // if (cds_Movimento.State in [dsBrowse]) then
  //   exportatabelas;
  for i := 1 to ParamCount do
  begin
     if LowerCase(ParamStr(i)) = 'beep' then
       Beep
     else if LowerCase(ParamStr(i)) = 'exit' then
       Application.Terminate;
  end;
  WinExec('CupomFiscal', SW_SHOWNORMAL);
  varFormAberto := 'N�O';
  Timer1.Enabled := True;
end;

procedure TfTerminal_Delivery.AbreFormCaixa;
begin
  if (dm.varStatusCaixa = 2) Then
  begin
    if (MessageDlg('Para usar o Terminal o Caixa Precisa Ser  Aberto . Abrir o Caixa Agora ?', mtWarning, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
    begin
      dm.varDataCaixa := Now;
      BitBtn1.Click;
      Abort;
    end
    else
      fTerminal_Delivery.Close;
  end;
  if (dm.varStatusCaixa = 0) Then
  begin
    if (MessageDlg('O Caixa Precisa Ser  Fechado . Fechar o Caixa Agora ?', mtWarning, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
    begin
      BitBtn1.Click;
      Abort;
    end
    else
      fTerminal_Delivery.Close;
  end;
end;

procedure TfTerminal_Delivery.imprimerecibo;
const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formata��o da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;

var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5,logradouro,cep,fone : string;//Para recortar parte da descri��o do produto,nome
  modelo, placa, cliente :string;
  total : double;
begin
  inherited;
     cds_venda.Close;
     cds_venda.Params[0].Clear;
     cds_venda.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
     cds_venda.Open;
     if (not dm.cds_empresa.Active) then
        dm.cds_empresa.Open;
     {----- aqui monto o endere�o-----}
     logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
     cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
     ' - ' + dm.cds_empresaCEP.Value;
     fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
     ' / ' + dm.cds_empresaFONE_2.Value;
     Texto  := '------------------------------------------------------' ;
     Texto1 := DateTimeToStr(Now) + '            Cod.:  ' +
      IntToStr(cds_vendaNOTAFISCAL.AsInteger) + ' - ' + cds_vendaSERIE.AsString;
     Texto2 := '------------------------------------------------------' ;
     Texto3 := 'Produto xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' ;
     Texto4 := 'Cod.Barra          UN      Qtde     V.Un.     V.Total ' ;
     Texto5 := DateTimeToStr(Now) + '            Total.: R$   ';
     cliente := 'Cliente : ' + cds_MovimentoNOMECLIENTE.Value;
     sParametro.Open;
     DM.Mensagem := sParametroD9.AsString;
     // Para gravar em arquivo
     if (sParametroD8.AsString = 'txt') then
     begin
       OpenDialog1.Execute;
       AssignFile(IMPRESSORA, OpenDialog1.FileName);
     end
     else
     begin
       AssignFile(IMPRESSORA,'LPT1:');
     end;
     Rewrite(IMPRESSORA);
     Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
     Writeln(Impressora, c17cpi, logradouro);
     Writeln(Impressora, cep);
     Writeln(Impressora, fone);
     Writeln(Impressora, c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
     Writeln(Impressora, cliente);
     Writeln(Impressora, c17cpi, placa);
     Writeln(Impressora, c17cpi, texto);
     Writeln(Impressora, c17cpi, texto1);
     Writeln(Impressora, c17cpi, texto2);
     Writeln(Impressora, c17cpi, texto3);
     Writeln(Impressora, c17cpi, texto4);
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
   try
     cds_Mov_det.First;
     while not cds_Mov_det.Eof do
     begin
       cds_Mov_det.RecordCount;
      // imprime
      Writeln(Impressora, c17cpi + Format('%-40s',[cds_Mov_detPRODUTO.Value]));
      Write(Impressora, c17cpi, Format('%-13s  ',[cds_Mov_detCOD_BARRA.Value]));
      Write(Impressora, c17cpi + Format('   %-2s  ',[cds_Mov_detUN.Value]));
      Write(Impressora, c17cpi + Format('   %-6.2n',[cds_Mov_detQUANTIDADE.AsFloat]));
      Write(Impressora, c17cpi + Format('   %-6.2n',[cds_Mov_detPRECO.AsFloat]));
      Writeln(Impressora, c17cpi + Format('   %-6.2n',[cds_Mov_detValorTotal.value]));

      with Printer.Canvas do
      begin
       Font.Name := 'Courier New';
       Font.Size := 4;
      end;
      cds_Mov_det.next;
     end;
     total := cds_Mov_detTotalPedido.Value;
     Writeln(Impressora, c17cpi, texto);
     Write(Impressora, c17cpi, texto5);
     Writeln(Impressora, c17cpi + Format('   %-6.2n',[total]));


   {  Texto5 := '                Descondo : R$   ';
     total := cds_vendaDESCONTO.Value;
     if (total > 0) then
     begin
       Write(Impressora, c17cpi, texto5);
       Writeln(Impressora, c17cpi + Format('   %-6.2n',[total]));
     end;
     Texto5 := '             Total Pagar : R$   ';
     total := cds_vendaVALOR_PAGAR.Value;
     if (total > 0) then
     begin
       Write(Impressora, c17cpi, texto5);
       Writeln(Impressora, c17cpi + Format('   %-6.2n',[total]));
     end;
     Texto5 := '              Total Pago : R$   ';
     total := cds_vendaENTRADA.Value;
     if (total > 0) then
     begin
       Write(Impressora, c17cpi, texto5);
       Writeln(Impressora, c17cpi + Format('   %-6.2n',[total]));
     end;   }
     Texto5 := 'Vencimento :   ';
     Write(Impressora, c17cpi, texto5);
     Texto5 := DateTimeToStr(cds_vendaDATAVENCIMENTO.AsDateTime);
     Writeln(Impressora, c17cpi, texto5);
     Writeln(IMPRESSORA);
     Write(Impressora, c10cpi, DM.Mensagem);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
  finally
    CloseFile(IMPRESSORA);
  end;
  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.AVista1Click(Sender: TObject);
begin
  inherited;
   ComboBox3.Text := '� VISTA';
end;

procedure TfTerminal_Delivery.APrazo1Click(Sender: TObject);
begin
  inherited;
   ComboBox3.Text := '� PRAZO';
end;

procedure TfTerminal_Delivery.FormadeRecebimento1Click(Sender: TObject);
begin
  inherited;
  ComboBox4.SetFocus;
end;

procedure TfTerminal_Delivery.JvDescontoChange(Sender: TObject);
begin

  jvPago.Text := DBEdit4.Text;
  Vdesconto := JvDesconto.Value ;
  jvPago.Value := (jvPago.Value - Vdesconto );

end;

procedure TfTerminal_Delivery.Impressora_1;
 const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formata��o da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;
var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6,texto7, logradouro,cep,fone : string;//Para recortar parte da descri��o do produto,nome
  total, porc, totgeral , desconto : double;
  porta, SETOR : string;
  vNomeCliente, vEnderecoCliente, vFonecli : string;
begin
 // Imprime Itens Setor 1
    {------Pesquisando na tab Parametro Centro de Receita Padr�o ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      porta := dm.cds_parametroDADOS.AsString;
      SETOR := dm.cds_parametroD3.AsString;
    end
    else
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Porta usada para impressoras de CUPOM';
      dm.cds_parametroPARAMETRO.AsString := 'PORTA IMPRESSORA';
      dm.cds_parametroDADOS.AsString := 'LPT1:';
      dm.cds_parametro.ApplyUpdates(0);
      porta := 'LPT1:';
    end;
  porta := 'LPT1:';
  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endere�o-----}
  logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
  cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
  ' - ' + dm.cds_empresaCEP.Value;
  fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
  ' / ' + dm.cds_empresaFONE_2.Value;
  Texto  := '---------------------------------------------------' ;
  Texto1 := DateTimeToStr(Now) + '               Pedido N.:  ' +
  IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
  Texto2 := '---------------------------------------------------' ;
  Texto4 := 'Produto                                   Qtde     ' ;
  sParametro.Open;
  // Para gravar em arquivo
  if (sParametroD8.AsString = 'txt') then
  begin
    OpenDialog1.Execute;
    AssignFile(IMPRESSORA, OpenDialog1.FileName);
  end
  else
  begin
    AssignFile(IMPRESSORA,porta);
  end;
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi + Format('%-40s',[SETOR]));
  //Writeln(Impressora, c17cpi, texto2);
  Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
  //Writeln(Impressora, c10cpi, logradouro);
  //Writeln(Impressora, c17cpi, cep);
  //Writeln(Impressora, c17cpi, fone);
  //Writeln(Impressora, c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
  Writeln(Impressora, c17cpi, texto);
  Writeln(Impressora, c17cpi, texto1);
  Writeln(Impressora, c17cpi, texto2);
  //Writeln(Impressora, c17cpi, texto6);
  if (RadioGroup1.ItemIndex = 0) then
  begin
     vNomeCliente := cdsMesaNOMECLIENTE.AsString;
     Writeln(Impressora, c10cpi, vNomeCliente);
  end
  else
  begin
     vNomeCliente := 'Cliente  : '+ Edit2.Text;
     vEnderecoCliente := 'Endere�o : '+ Edit3.Text;
     vFonecli := 'Telefone : (19)' + Edit1.Text;
     Writeln(Impressora, c10cpi, vNomeCliente);
     Writeln(Impressora, c10cpi, vEnderecoCliente);
     Writeln(Impressora, c10cpi, vFonecli);
  end;
  Writeln(Impressora, c17cpi, texto2);
  Writeln(Impressora, c17cpi, texto4);
  {-------------------Imprimi itens do boleto-----------------}
  try
    sImprime_1.First;
    while not sImprime_1.Eof do
    begin
      texto6 := sImprime_1CODPRO.AsString + '-';
      texto6 := texto6 + Copy(sImprime_1DESCPRODUTO.Value, 0, 55);
      texto6 := texto6 + '         ' ;
      texto6 := texto6 + Format('%-6.2n',[sImprime_1QUANTIDADE.AsFloat]);
      Writeln(Impressora, c17cpi, texto6);
      with Printer.Canvas do
      begin
        Font.Name := 'Courier New';
        Font.Size := 4;
      end;
      //Aqui Marco o Produto como Impresso
      cds_Mov_det.Locate('CODDETALHE', sImprime_1CODDETALHE.AsInteger,[loCaseInsensitive]);
      cds_Mov_det.Edit;
      cds_Mov_detIMPRIMIR.AsString := 'S';
      cds_Mov_det.ApplyUpdates(0);
      sImprime_1.next;
    end;
    //desconto := JvDesconto.Value;
    //Texto5 := DateTimeToStr(Now) + '      Total.: R$   ';
    //total := cds_Mov_detTotalPedido.Value;
    //porc := total * 0.1;
    Writeln(Impressora, c17cpi, texto);
    //Texto7 := '                    Desconto .: R$   ';
    Write(Impressora, c10cpi, texto7);
    //Writeln(Impressora, c10cpi + Format('         %-6.2n',[desconto]));
    Write(Impressora, c10cpi, texto5);
    //Writeln(Impressora, c10cpi + Format('       %-6.2n',[total - desconto]));
    Writeln(Impressora, c10cpi, texto);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
  finally
    CloseFile(IMPRESSORA);
  end;
  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.Impressora_2;
 const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formata��o da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;
var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6,texto7, logradouro,cep,fone : string;//Para recortar parte da descri��o do produto,nome
  total, porc, totgeral , desconto : double;
  porta, SETOR : string;
  vNomeCliente, vEnderecoCliente, vFonecli : string;
begin
 // Imprime Itens Setor 2
    {------Pesquisando na tab Parametro Centro de Receita Padr�o ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      porta := dm.cds_parametroD1.AsString;
      SETOR := dm.cds_parametroD4.AsString;
    end
    else
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Porta usada para impressoras de CUPOM';
      dm.cds_parametroPARAMETRO.AsString := 'PORTA IMPRESSORA';
      dm.cds_parametroD1.AsString := 'LPT2:';
      dm.cds_parametro.ApplyUpdates(0);
      porta := 'LPT2:';
    end;
  porta := 'LPT1:';
  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endere�o-----}
  logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
  cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
  ' - ' + dm.cds_empresaCEP.Value;
  fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
  ' / ' + dm.cds_empresaFONE_2.Value;
  Texto  := '---------------------------------------------------' ;
  Texto1 := DateTimeToStr(Now) + '               Pedido N.:  ' +
  IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
  Texto2 := '---------------------------------------------------' ;
  Texto4 := 'Produto                                   Qtde     ' ;
  sParametro.Open;
  DM.Mensagem := sParametroD9.AsString;
  // Para gravar em arquivo
  if (sParametroD8.AsString = 'txt') then
  begin
    OpenDialog1.Execute;
    AssignFile(IMPRESSORA, OpenDialog1.FileName);
  end
  else
  begin
    AssignFile(IMPRESSORA,porta);
  end;
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi + Format('%-40s',[SETOR]));
  //Writeln(Impressora, c17cpi, texto2);
  Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
  //Writeln(Impressora, c10cpi, logradouro);
  //Writeln(Impressora, c17cpi, cep);
  //Writeln(Impressora, c17cpi, fone);
  //Writeln(Impressora, c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
  Writeln(Impressora, c17cpi, texto);
  Writeln(Impressora, c17cpi, texto1);
  Writeln(Impressora, c17cpi, texto2);
  //Writeln(Impressora, c17cpi, texto6);
  if (RadioGroup1.ItemIndex = 0) then
  begin
     vNomeCliente := cdsMesaNOMECLIENTE.AsString;
     Writeln(Impressora, c10cpi, vNomeCliente);
  end
  else
  begin
     vNomeCliente := 'Cliente  : '+ Edit2.Text;
     vEnderecoCliente := 'Endere�o : '+ Edit3.Text;
     vFonecli := 'Telefone : (19)' + Edit1.Text;
     Writeln(Impressora, c10cpi, vNomeCliente);
     Writeln(Impressora, c10cpi, vEnderecoCliente);
     Writeln(Impressora, c10cpi, vFonecli);
  end;
  Writeln(Impressora, c17cpi, texto2);
  Writeln(Impressora, c17cpi, texto4);
  {-------------------Imprimi itens do boleto-----------------}
  try
    sImprimir_2.First;
    while not sImprimir_2.Eof do
    begin
      //sImprimir_2.RecordCount;
      texto6 := sImprimir_2CODPRO.AsString + '-';
      texto6 := texto6 + Copy(sImprimir_2DESCPRODUTO.Value, 0, 55);
      texto6 := texto6 + '         ' ;
      texto6 := texto6 + Format('%-6.2n',[sImprimir_2QUANTIDADE.AsFloat]);
      Writeln(Impressora, c17cpi, texto6);
      with Printer.Canvas do
      begin
        Font.Name := 'Courier New';
        Font.Size := 4;
      end;
      //Aqui Marco o Produto como Impresso
      cds_Mov_det.Locate('CODDETALHE', sImprimir_2CODDETALHE.AsInteger,[loCaseInsensitive]);
      cds_Mov_det.Edit;
      cds_Mov_detIMPRIMIR.AsString := 'S';
      cds_Mov_det.ApplyUpdates(0);
      sImprimir_2.next;
    end;
    //desconto := JvDesconto.Value;
    //Texto5 := DateTimeToStr(Now) + '      Total.: R$   ';
    //total := cds_Mov_detTotalPedido.Value;
    //porc := total * 0.1;
    Writeln(Impressora, c17cpi, texto);
    //Texto7 := '                    Desconto .: R$   ';
    Write(Impressora, c10cpi, texto7);
    //Writeln(Impressora, c10cpi + Format('         %-6.2n',[desconto]));
    Write(Impressora, c10cpi, texto5);
    //Writeln(Impressora, c10cpi + Format('       %-6.2n',[total - desconto]));
    Writeln(Impressora, c10cpi, texto);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
  finally
    CloseFile(IMPRESSORA);
  end;
  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.Impressora_3;
 const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formata��o da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;
var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6,texto7, logradouro,cep,fone : string;//Para recortar parte da descri��o do produto,nome
  total, porc, totgeral , desconto : double;
  porta, SETOR : string;
  vNomeCliente, vEnderecoCliente, vFonecli : string;
begin
 // Imprime Itens Setor 3
    {------Pesquisando na tab Parametro Centro de Receita Padr�o ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      porta := dm.cds_parametroDADOS.AsString;
      SETOR := dm.cds_parametroD5.AsString;
    end
    else
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Porta usada para impressoras de CUPOM';
      dm.cds_parametroPARAMETRO.AsString := 'PORTA IMPRESSORA';
      dm.cds_parametroDADOS.AsString := 'LPT1:';
      dm.cds_parametro.ApplyUpdates(0);
      porta := 'LPT1:';
    end;
  porta := 'LPT1:';
  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endere�o-----}
  logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
  cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
  ' - ' + dm.cds_empresaCEP.Value;
  fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
  ' / ' + dm.cds_empresaFONE_2.Value;
  Texto  := '---------------------------------------------------' ;
  Texto1 := DateTimeToStr(Now) + '               Pedido N.:  ' +
  IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
  Texto2 := '---------------------------------------------------' ;
  Texto4 := 'Produto                                      Qtde  ' ;
  sParametro.Open;
  // Para gravar em arquivo
  if (sParametroD8.AsString = 'txt') then
  begin
    OpenDialog1.Execute;
    AssignFile(IMPRESSORA, OpenDialog1.FileName);
  end
  else
  begin
    AssignFile(IMPRESSORA,porta);
  end;
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi + Format('%-40s',[SETOR]));
  //Writeln(Impressora, c17cpi, texto2);
  Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
  //Writeln(Impressora, c10cpi, logradouro);
  //Writeln(Impressora, c17cpi, cep);
  //Writeln(Impressora, c17cpi, fone);
  //Writeln(Impressora, c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
  Writeln(Impressora, c17cpi, texto);
  Writeln(Impressora, c17cpi, texto1);
  Writeln(Impressora, c17cpi, texto2);
  //Writeln(Impressora, c17cpi, texto6);
  if (RadioGroup1.ItemIndex = 0) then
  begin
     vNomeCliente := cdsMesaNOMECLIENTE.AsString;
     Writeln(Impressora, c10cpi, vNomeCliente);
  end
  else
  begin
     vNomeCliente := 'Cliente  : '+ Edit2.Text;
     vEnderecoCliente := 'Endere�o : '+ Edit3.Text;
     vFonecli := 'Telefone : (19)' + Edit1.Text;
     Writeln(Impressora, c10cpi, vNomeCliente);
     Writeln(Impressora, c10cpi, vEnderecoCliente);
     Writeln(Impressora, c10cpi, vFonecli);
  end;
  Writeln(Impressora, c17cpi, texto2);
  Writeln(Impressora, c17cpi, texto4);
  {-------------------Imprimi itens do boleto-----------------}
  try
    sImprimir_3.First;
    while not sImprimir_3.Eof do
    begin
      //sImprimir_3.RecordCount;
      texto6 := sImprimir_3CODPRO.AsString + '-';
      texto6 := texto6 + Copy(sImprimir_3DESCPRODUTO.Value, 0, 55);
      texto6 := texto6 + '         ' ;
      texto6 := texto6 + Format('%-6.2n',[sImprimir_3QUANTIDADE.AsFloat]);
      Writeln(Impressora, c17cpi, texto6);
      with Printer.Canvas do
      begin
        Font.Name := 'Courier New';
        Font.Size := 4;
      end;
      //Aqui Marco o Produto como Impresso
      cds_Mov_det.Locate('CODDETALHE', sImprimir_3CODDETALHE.AsInteger,[loCaseInsensitive]);
      cds_Mov_det.Edit;
      cds_Mov_detIMPRIMIR.AsString := 'S';
      cds_Mov_det.ApplyUpdates(0);
      sImprimir_3.next;
    end;

    //desconto := JvDesconto.Value;
    //Texto5 := DateTimeToStr(Now) + '      Total.: R$   ';
    //total := cds_Mov_detTotalPedido.Value;
    //porc := total * 0.1;
    Writeln(Impressora, c17cpi, texto);
    //Texto7 := '                    Desconto .: R$   ';
    Write(Impressora, c10cpi, texto7);
    //Writeln(Impressora, c10cpi + Format('         %-6.2n',[desconto]));
    Write(Impressora, c10cpi, texto5);
    //Writeln(Impressora, c10cpi + Format('       %-6.2n',[total - desconto]));
    //Writeln(Impressora, c10cpi, texto);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
  finally
    CloseFile(IMPRESSORA);
  end;
  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.btnSairClick(Sender: TObject);
begin
  //inherited;
 if (cdsMesa.Active) then
    cdsMesa.Close;
 cdsMesa.Open;
 if (cds_Mov_det.Active) then
    cds_Mov_det.Close;
 cbMesas.Text := '';
end;


procedure TfTerminal_Delivery.Timer1Timer(Sender: TObject);
begin
  inherited;
  if IsFileInUse('C:\home\ats-admin\CupomFiscal.exe') then
  begin
    if (varFormAberto = 'N�O') then
    begin
      varFormAberto := 'SIM';
      Form1.ShowModal;
    end;
  end
  else
  begin
    Form1.Close;
    Timer1.Enabled := False;
    varFormAberto := 'N�O';
    btnSair.Click; //ShowMessage('Sistema n�o est� em uso.');
  end;
end;

procedure TfTerminal_Delivery.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  dbeProduto.SetFocus;
end;

end.