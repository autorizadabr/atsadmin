unit uExpContMat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, JvExComCtrls, JvProgressBar, Mask, JvExMask,
  JvToolEdit, dxCore, dxButton, XPMenu, rpcompobase, rpvclreport,
  gbCobranca, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TfExpContMat = class(TForm)
    Button1: TButton;
    JvProgressBar1: TJvProgressBar;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    Label2: TLabel;
    Label1: TLabel;
    SaveDialog1: TSaveDialog;
    gbCobranca1: TgbCobranca;
    OpenDialog1: TOpenDialog;
    VCLReport1: TVCLReport;
    XPMenu1: TXPMenu;
    Edit1: TEdit;
    dxButton1: TdxButton;
    cdsItensNF: TClientDataSet;
    cdsItensNFCODPRODUTO: TIntegerField;
    cdsItensNFQUANTIDADE: TFloatField;
    cdsItensNFPRECO: TFloatField;
    cdsItensNFDESCPRODUTO: TStringField;
    cdsItensNFCODPRO: TStringField;
    cdsItensNFUNIDADEMEDIDA: TStringField;
    cdsItensNFCST: TStringField;
    cdsItensNFICMS: TFloatField;
    cdsItensNFVLR_BASE: TFloatField;
    dspItensNF: TDataSetProvider;
    sdsItensNF: TSQLDataSet;
    sdsItensNFCODPRODUTO: TIntegerField;
    sdsItensNFQUANTIDADE: TFloatField;
    sdsItensNFPRECO: TFloatField;
    sdsItensNFDESCPRODUTO: TStringField;
    sdsItensNFCODPRO: TStringField;
    sdsItensNFUNIDADEMEDIDA: TStringField;
    sdsItensNFCST: TStringField;
    sdsItensNFICMS: TFloatField;
    sdsItensNFVLR_BASE: TFloatField;
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
    sCFOP: TSQLDataSet;
    sCFOPCFCOD: TStringField;
    sCFOPCFNOME: TStringField;
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
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
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
    dsp_Movimento: TDataSetProvider;
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
    dsp_param: TDataSetProvider;
    d_2: TDataSetProvider;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    sdsNF: TSQLDataSet;
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
    sdsNFCFOP: TStringField;
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
    sdsNFDTAEMISSAO: TDateField;
    sdsNFDTASAIDA: TDateField;
    sdsNFCORPONF1: TStringField;
    sdsNFCORPONF2: TStringField;
    sdsNFHORASAIDA: TTimeField;
    sdsNFNOTASERIE: TStringField;
    dspNF: TDataSetProvider;
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
    sdsNFUF: TStringField;
    cdsNFUF: TStringField;
    sdsNFVALOR: TFloatField;
    sdsNFENTRADA: TFloatField;
    cdsNFVALOR: TFloatField;
    cdsNFENTRADA: TFloatField;
    sdsNFN_PARCELA: TSmallintField;
    cdsNFN_PARCELA: TSmallintField;
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
    procedure Button1Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExpContMat: TfExpContMat;

implementation

uses DateUtils, UDm, ufcr, UDMNF;
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

procedure TfExpContMat.Button1Click(Sender: TObject);

var  Registro, NomArquivo, datamaior, datamenor, prazo, avista, parcelas, dattoday: string;
     arquivo: TextFile;
     dathor: TDateTime;


begin
   JvProgressBar1.Position := 0;
   JvProgressBar1.Max := 1000;
   JvProgressBar1.Position := 10;

   // Abrir cdsNF com parametro data1 e data 2
    if (cdsNF.Active) then
     cdsNF.Close;
   cdsNF.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   cdsNF.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   cdsNF.Open;
   sMenorData.Open;
   sMaiorData.Open;
   JvProgressBar1.Position := 10;
   //Seleciona Empresa de acordo com o CCusto selecionado
   if (sEmpresa.Active) then
     sEmpresa.Close;

   sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
   sEmpresa.Open;

   datamenor := FormatDateTime('ddmm', StrToDate(JvDateEdit1.Text));
   datamaior := FormatDateTime('ddmm', StrToDate(JvDateEdit2.Text));
   dattoday := FormatDateTime('mm', Today);

   NomArquivo := (Edit1.Text + '001.N' + dattoday);
   AssignFile(Arquivo, NomArquivo);
   Rewrite(Arquivo);

   while not cdsNF.Eof do
   begin
   JvProgressBar1.Position := JvProgressBar1.Position + 10;

   if (sCliente.Active) then
          sCliente.Close;
        sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
        sCliente.Open;

   if (cdsNFDTASAIDA.IsNull) then
          dathor := cdsNFDTAEMISSAO.AsDateTime
        else
          dathor := cdsNFDTASAIDA.AsDateTime;

   if(cdsNFENTRADA.AsFloat = cdsNFVALOR.AsFloat) then
   begin
   prazo := '';
   avista := FloatToStr(cdsNFVALOR.AsFloat);
   parcelas := '';
   end
   else
   begin
   prazo := FloatToStr(cdsNFVALOR.asFloat);
   avista := '';
   parcelas := IntToStr(cdsNFN_PARCELA.AsInteger);
   end;

   Registro := ('R1' + '|' +                                                 //	Tipo de Registro. Constante R1
                'S' +  '|' +                                                 // Indicador do tipo de Opera��o: E - Entrada; S - Sa�da
                FormatDateTime('ddmm',cdsNFDTAEMISSAO.asDateTime) +  '|' +   // Informe a data de emiss�o no formato DDMM
                FormatDateTime('ddmm',dathor) +  '|' +     //Informe a data de entrada/sa�da no formato DDMM
                '|' +                                                        // Informe a ESP�CIE da nota fiscal, de acordo com o item
                IntToStr(cdsNFNOTASERIE.AsInteger) +  '|' +                  // Informe a S�rie e Sub-s�rie da Nota Fiscal
                IntToStr(cdsNFNUMNF.asInteger) +  '|' +                      //Informe o n�mero da Nota Fiscal (se for lan�amento em lote, informe o primeiro n�mero)
                '|' +                                                        // Informe o n�mero final do lote de Notas Fiscais
                cdsNFUF.AsString + '|' +                                     // Informe a unidade da federa��o do Emitente/Destinat�rio
                Formatar(cdsNFCFOP.AsString,4,False,'0') +  '|' +                       // Informe o C�digo Fiscal de Opera��o da Nota Fiscal. Pode ser informado com ou sem ponto. Ex.: 5102 ou 5.102
                '|' +                                                        // Informe o C�digo Cont�bil utilizado para integra��o cont�bil
                '|' +                                                        // Nas Sa�das, digite "1" para notas fora do estado e n�o contribuinte. Nas Entradas, digite 2 para Petr�leo/Energia
                '|' +                                                        // Informe o c�digo do Munic�pio paulista, conforme publicado pelo Estado de S�o Paulo
                Formatar(cdsNFCORPONF1.AsString,14,False,'0') + '|' +                                                        // Opcional, uma frase para sair na observa��o do livro
                Removechar(FormatFloat('0.00' , cdsNFVALOR_TOTAL_NOTA.AsFloat)) + '|' +            // Informe o valor total da Nota Fiscal
                Removechar(FormatFloat('0.00' , cdsNFBASE_ICMS.AsFloat)) + '|' +     // 16 - Informe o valor referente � base de c�lculo do ICMS
                Removechar(FormatFloat('0.00' , cdsNFVALOR_ICMS.AsFloat)) + '|' +    // Informe a al�quota do ICMS
                Removechar(FormatFloat('0.00' , cdsNFVALOR_ICMS.AsFloat)) + '|' +    // Informe o valor do imposto de ICMS
                sClienteBAIRRO.AsString + '|' +                              // Informe o valor das mercadorias isentas de ICMS
                sClienteCIDADE.AsString + '|' +                              // Informe o valor de outras de ICMS (ex.: suspens�o)
                sClienteUF.AsString + '|' +                                  // Informe o tipo da Nota Fiscal. Pergunte ao operador da Contmatic
                '|' +                                                        // 22 - Informe o valor referente � base de c�lculo do ICMS
                '|' +                                                        // Informe a al�quota do ICMS
                '|' +                                                        // Informe o valor do imposto de ICMS
                '|' +                                                        // Informe o valor das mercadorias isentas de ICMS
                '|' +                                                        // Informe o valor de outras de ICMS (ex.: suspens�o)
                '|' +                                                        // Informe o tipo da Nota Fiscal. Pergunte ao operador da Contmatic
                '|' +                                                        // 28 - Informe o valor referente � base de c�lculo do ICMS
                '|' +                                                        // nforme a al�quota do ICMS
                '|' +                                                        // Informe o valor do imposto de ICMS
                '|' +                                                        // Informe o valor das mercadorias isentas de ICMS
                '|' +                                                        // Informe o valor de outras de ICMS (ex.: suspens�o)
                '|' +                                                        // Informe o tipo da Nota Fiscal. Pergunte ao operador da Contmatic
                '|' +                                                        // 34 - Informe o valor referente � base de c�lculo do ICMS
                '|' +                                                        // Informe a al�quota do ICMS
                '|' +                                                        // Informe o valor do imposto de ICMS
                '|' +                                                        // Informe o valor das mercadorias isentas de ICMS
                '|' +                                                        // Informe o valor de outras de ICMS (ex.: suspens�o)
                '|' +                                                        // Informe o tipo da Nota Fiscal. Pergunte ao operador da Contmatic
                '|' +                                                        // 40 - Informe o valor referente � base de c�lculo do ICMS
                '|' +                                                        // Informe a al�quota do ICMS
                '|' +                                                        // Informe o valor do imposto de ICMS
                '|' +                                                        // Informe o valor das mercadorias isentas de ICMS
                '|' +                                                        // Informe o valor de outras de ICMS (ex.: suspens�o)
                '|' +                                                        // 45 - Informe o tipo da Nota Fiscal. Pergunte ao operador da Contmatic
                '|' +                                                        // Informe o valor referente � base de c�lculo do IPI
                Removechar(FormatFloat('0.00' , cdsNFVALOR_IPI.AsFloat)) +  '|' +                  // Informe o valor do imposto de IPI
                '|' +                                                        // Informe o valor das mercadorias isentas de IPI
                '|' +                                                        // Informe o valor de outras de IPI (ex.: suspens�o)
                '|' +                                                        // Informe o valor do IPI n�o aproveitado (somente para ind�strias)
                Removechar(FormatFloat('0.00' , cdsNFBASE_ICMS.AsFloat)) +  '|' +                  // Informe o valor da Base de C�lculo do ICMS ST 51
                '|' +                                                        // Informe o valor do ICMS retido na fonte
                '|' +                                                        // 53 - Informe o valor do PVV (se houver)
                '|' +                                                        // Informe o valor do desconto
                '|' +                                                        // Informe o valor do abatimento sobre a nota fiscal
                Removechar(avista) + '|' +                                               // Opcional (para integra��o cont�bil - n�o deve ser utilizado em conjunto com o campo vencimento) - Informe o valor a vista da compra ou venda
                Removechar(prazo) + '|' +                                                // Opcional (para integra��o cont�bil - n�o deve ser utilizado em conjunto com o campo vencimento) - Informe o valor a prazo da compra ou venda
                Removechar(parcelas) + '|' +                                             // Opcional (para integra��o cont�bil - n�o deve ser utilizado em conjunto com os campos a vista e a prazo) - Preencha da seguinte forma: Em branco - tudo � vista; 1 - tudo a prazo;2 - metade � vista, metade a prazo;3 - 1 parte � vista, duas partes a prazo;4 - 1 parte � vista, tr�s partes a prazo;5 - 1 parte � vista, quatro partes a prazo;e assim sucessivamente.
                '|' +                                                        // Nas Compras/Vendas/Devolu��es, informe o valor isento de Pis/Cofins
                Formatar(RemoveChar(sClienteCNPJ.AsString),14,False,'0') + '|' + // Informe o CNPJ/CPF do participante - antigos fornecedores/clientes (quando for CPF, informar sem zeros � esquerda) 60
                Removechar(sClienteINSCESTADUAL.AsString) + '|' +  // Informe a Inscri��o Estadual do participante
                '|' +                                                        // Informe a Inscri��o Municipal do participante
                sClienteRAZAOSOCIAL.AsString + '|' +                         // Informe a Raz�o Social do participante
                sClienteLOGRADOURO.AsString + '|' +                          // Informe o endere�o do participante (somente logradouro)
                '|' +                                                        // Informe o n�mero do endere�o do participante
                sClienteCOMPLEMENTO.AsString + '|' +                         // Informe o complemento do endere�o do participante
                sClienteBAIRRO.AsString + '|' +                              // Informe o Bairro do endere�o do participante
                Removechar(sClienteCEP.AsString) + '|' +                                 // Informe o CEP do endere�o do participante
                '|' +                                                        // Informe o c�digo do Munic�pio do participante conforme tabela disponibilizada na DIPJ
                sClienteCIDADE.AsString + '|' +                              // Informe o nome do Munic�pio do participante   70
                sClienteUF.AsString + '|' +                                  // Informe a UF do participante
                '|' +                                                        // Informe o c�digo do pa�s do participante conforme tabela disponibilizada pelo Banco Central
                '|' +                                                        // Informe a Inscri��o Suframa, se o participante estiver inscrito na Zona Franca de Manaus
                '|');                                                        // Conta cont�bil do participante, se for realizar integra��o cont�bil no m�todo anal�tico
      writeln(Arquivo, Registro);

      if(cdsItensNF.Active) then
        cdsItensNF.Close;
      cdsItensNF.Params[0].AsInteger := cdsNFCODVENDA.AsInteger;
      cdsItensNF.Open;
      while not cdsItensNF.Eof do // Escrevo os itens
      begin
        JvProgressBar1.Position := JvProgressBar1.Position + 1;
        Registro := ('R2' + '|' +                                             // Tipo de Registro. Constante R2
        cdsItensNFCODPRO.AsString + '|' +                                     // Informe o c�digo de mercadoria, interno da empresa (Opcional)
        '|' +                                                                 // Informe o c�digo da mercadoria conforme tabela da NCM
        cdsItensNFDESCPRODUTO.AsString + '|' +                                // Informe a descri��o da mercadoria
        '|' +                                                                 // Informe a Base de C�lculo do IPI da mercadoria
        '|' +                                                                 // Informe o valor do IPI da mercadoria
        '|' +                                                                 // Informe o valor Isento de IPI da mercadoria
        Removechar(FormatFloat('0.000' , cdsItensNFQUANTIDADE.AsFloat)) + '|' + // 8 - Informe a quantidade da mercadoria
        Removechar(FormatFloat('0.00' , cdsItensNFPRECO.AsFloat)) + '|' +      // Informe o valor unit�rio da mercadoria
        '|' +                                                                 // Informe o c�digo utilizado para identificar a Natureza da Opera��o (ex.: CFOP) "Somente para quem utiliza a DNF"
        '|' +                                                                 // Informe a capacidade volum�trica em "mililitros" do recipiente, somente dos produtos que necessitam dessa informa��o (Verificar os Anexos I e II da DNF). "Somente para quem utiliza a DNF"
        '|' +                                                                 // Informe a al�quota de IPI com 3 casas decimais. "Somente para quem utiliza a DNF"
        '|' +                                                                 // Informe o c�digo do produto de acordo com os anexos I e II da DNF (Deve estar de acordo com a NCM). "Somente para quem utiliza a DNF"
        '|' +                                                                 // Informe a unidade de medida como constou na nota fiscal emitida. "Somente para quem utiliza a DNF"
        '|');                                                                 // Informe o fator de convers�o da unidade de medida utilizada na nota para a unidade padr�o constante nos anexos I e II da DNF.  "Somente para quem utiliza a DNF"   Exemplo: Unidade de Medida na NF: Tonelada Quantidade: 5,687 Unidade Estat�stica (Padr�o): kg Dados a serem usados para convers�o: 1 tonelada = 1.000 kg C�lculo da Convers�o (regra de tr�s simples): 1/1.000 = 5,687/x Quantidade na Unidade estat�stica: 5.687,000 // Voc� deve informar nesse campo o fator de convers�o que � o valor pelo qual deve ser multiplicada a quantidade para chegar � unidade estat�stica. No exemplo acima � 1000, mas se no exemplo acima mud�ssemos somente a unidade da NF para gramas, o fator seria 0,001.
      writeln(Arquivo, Registro);
      cdsItensNF.Next;
      end;

   cdsNF.Next;
end;
   CloseFile(arquivo);
   JvProgressBar1.Position := JvProgressBar1.Position + (1000-JvProgressBar1.Position);

   MessageDlg('Arquivo gerado com sucesso.', mtInformation, [mbOK], 0)
end;


procedure TfExpContMat.dxButton1Click(Sender: TObject);
begin
    SaveDialog1.Execute;
    Edit1.Text := SaveDialog1.FileName;
end;

end.
