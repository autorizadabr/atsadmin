unit U_TerminalFinaliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvGroupHeader, StdCtrls, Buttons, JvExStdCtrls, JvCombobox,
  Mask, DBCtrls, JvExControls, JvSpeedButton, ExtCtrls, MMJPanel, U_Terminal,
  FMTBcd, DB, SqlExpr, uUtils, DBxPress, Provider, DBClient, DBLocal,
  DBLocalS, JvExButtons, JvBitBtn, JvEdit, JvValidateEdit, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Menus, Printers, rpcompobase, rpvclreport,
  ExtDlgs, ComCtrls, ImgList, uEstoque, uMovimento, JvLabel, JvExMask,
  JvToolEdit, JvBaseEdits;


type
   TF_TerminalFinaliza = class(TForm)
    MMJPanel1: TMMJPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    btnUsuarioProcura: TJvSpeedButton;
    Label3: TLabel;
    DBEdit14: TDBEdit;
    Label4: TLabel;
    JvSpeedButton3: TJvSpeedButton;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    cbPrazo: TJvComboBox;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    btnSerie: TBitBtn;
    dbeSerie: TDBEdit;
    Label7: TLabel;
    Label13: TLabel;
    cbConta: TComboBox;
    ComboBox1: TComboBox;
    Label24: TLabel;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    Label20: TLabel;
    JvGroupHeader2: TJvGroupHeader;
    dbeUsuario: TDBEdit;
    JvGroupHeader1: TJvGroupHeader;
    JvGroupHeader3: TJvGroupHeader;
    Label2: TLabel;
    JvGroupHeader4: TJvGroupHeader;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    sqs_tit: TSQLDataSet;
    ds_Cr: TDataSource;
    scdsCr_proc: TClientDataSet;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procCAIXA: TSmallintField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procVIA: TStringField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procNOMECLIENTE: TStringField;
    scdsCr_procVALORREC: TFloatField;
    scdsCr_procCODRECEBIMENTO: TIntegerField;
    scdsCr_procDP: TIntegerField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procCODCLIENTE: TIntegerField;
    scdsCr_procTIT: TStringField;
    scdsCr_procSITUACAO: TStringField;
    scdsCr_procFORMARECEBIMENTO: TStringField;
    scdsCr_procDATARECEBIMENTO: TDateField;
    scdsCr_procTRecebido: TAggregateField;
    scdsCr_procTotal_resto: TAggregateField;
    scdsCr_procTotalTitulo: TAggregateField;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1TITULO: TStringField;
    SQLDataSet1DATAVENCIMENTO: TDateField;
    SQLDataSet1CAIXA: TSmallintField;
    SQLDataSet1STATUS: TStringField;
    SQLDataSet1VIA: TStringField;
    SQLDataSet1N_DOCUMENTO: TStringField;
    SQLDataSet1VALORRECEBIDO: TFloatField;
    SQLDataSet1VALOR_RESTO: TFloatField;
    SQLDataSet1VALORTITULO: TFloatField;
    SQLDataSet1VALORREC: TFloatField;
    SQLDataSet1CODRECEBIMENTO: TIntegerField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1DP: TIntegerField;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1VALOR_PRIM_VIA: TFloatField;
    SQLDataSet1CODCLIENTE: TIntegerField;
    SQLDataSet1TIT: TStringField;
    SQLDataSet1SITUACAO: TStringField;
    SQLDataSet1FORMARECEBIMENTO: TStringField;
    SQLDataSet1DATARECEBIMENTO: TDateField;
    MMJPanel2: TMMJPanel;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    btnIncluir: TJvBitBtn;
    JvGravar: TJvBitBtn;
    JvExcluir: TJvBitBtn;
    btnNotaFiscal: TJvBitBtn;
    JvBoleto: TJvBitBtn;
    JvSair: TJvBitBtn;
    sqsTitulo: TSQLDataSet;
    sqsTituloSTATUS: TStringField;
    jvDesconto: TJvValidateEdit;
    jvAcrescimo: TJvValidateEdit;
    jvApagar: TJvValidateEdit;
    jvPago: TJvValidateEdit;
    jvTroco: TJvValidateEdit;
    JvDBGrid1: TJvDBGrid;
    JvGroupHeader5: TJvGroupHeader;
    PopupMenu1: TPopupMenu;
    AlterarItendoPedido1: TMenuItem;
    F7ExcluirPedido1: TMenuItem;
    F9Sair1: TMenuItem;
    sql_rec: TSQLDataSet;
    btnAlteraRec: TBitBtn;
    btnCancelaBaixa: TBitBtn;
    sds_cr: TSQLDataSet;
    sds_crCODRECEBIMENTO: TIntegerField;
    sds_crTITULO: TStringField;
    sds_crEMISSAO: TDateField;
    sds_crCODCLIENTE: TIntegerField;
    sds_crDATAVENCIMENTO: TDateField;
    sds_crVALORRECEBIDO: TFloatField;
    sds_crDATARECEBIMENTO: TDateField;
    sds_crCAIXA: TSmallintField;
    sds_crCONTADEBITO: TIntegerField;
    sds_crCONTACREDITO: TIntegerField;
    sds_crSTATUS: TStringField;
    sds_crVIA: TStringField;
    sds_crFORMARECEBIMENTO: TStringField;
    sds_crDATABAIXA: TDateField;
    sds_crHISTORICO: TStringField;
    sds_crCODVENDA: TIntegerField;
    sds_crCODVENDEDOR: TSmallintField;
    sds_crCODUSUARIO: TSmallintField;
    sds_crDATASISTEMA: TSQLTimeStampField;
    sds_crN_DOCUMENTO: TStringField;
    sds_crALMOXARIFADO: TStringField;
    sds_crNOMEUSUARIO: TStringField;
    sds_crVENDEDOR: TStringField;
    sds_crNOMECLIENTE: TStringField;
    sds_crJUROS: TFloatField;
    sds_crDESCONTO: TFloatField;
    sds_crPERDA: TFloatField;
    sds_crTROCA: TFloatField;
    sds_crFUNRURAL: TFloatField;
    sds_crVALOR_PRIM_VIA: TFloatField;
    sds_crVALOR_RESTO: TFloatField;
    sds_crVALORTITULO: TFloatField;
    sds_crCODALMOXARIFADO: TIntegerField;
    sds_crOUTRO_CREDITO: TFloatField;
    sds_crOUTRO_DEBITO: TFloatField;
    sds_crPARCELAS: TSmallintField;
    sds_crDUP_REC_NF: TStringField;
    sds_crNF: TIntegerField;
    sds_crDP: TIntegerField;
    sds_crBL: TIntegerField;
    dsp_cr: TDataSetProvider;
    cds_cr: TClientDataSet;
    cds_crCODRECEBIMENTO: TIntegerField;
    cds_crTITULO: TStringField;
    cds_crEMISSAO: TDateField;
    cds_crCODCLIENTE: TIntegerField;
    cds_crDATAVENCIMENTO: TDateField;
    cds_crSTATUS: TStringField;
    cds_crVIA: TStringField;
    cds_crCODVENDA: TIntegerField;
    cds_crCODALMOXARIFADO: TIntegerField;
    cds_crCODVENDEDOR: TSmallintField;
    cds_crFORMARECEBIMENTO: TStringField;
    cds_crVALOR_PRIM_VIA: TFloatField;
    cds_crVALOR_RESTO: TFloatField;
    cds_crVALORTITULO: TFloatField;
    cds_crCONTACREDITO: TIntegerField;
    cds_crVALORRECEBIDO: TFloatField;
    cds_crDATARECEBIMENTO: TDateField;
    cds_crCONTADEBITO: TIntegerField;
    cds_crCAIXA: TSmallintField;
    cds_crDATABAIXA: TDateField;
    cds_crHISTORICO: TStringField;
    cds_crCODUSUARIO: TSmallintField;
    cds_crN_DOCUMENTO: TStringField;
    cds_crDATASISTEMA: TSQLTimeStampField;
    cds_crALMOXARIFADO: TStringField;
    cds_crNOMECLIENTE: TStringField;
    cds_crNOMEUSUARIO: TStringField;
    cds_crVENDEDOR: TStringField;
    cds_crJUROS: TFloatField;
    cds_crDESCONTO: TFloatField;
    cds_crPERDA: TFloatField;
    cds_crTROCA: TFloatField;
    cds_crFUNRURAL: TFloatField;
    cds_crOUTRO_CREDITO: TFloatField;
    cds_crOUTRO_DEBITO: TFloatField;
    cds_crPARCELAS: TSmallintField;
    cds_crDUP_REC_NF: TStringField;
    cds_crNF: TIntegerField;
    cds_crDP: TIntegerField;
    cds_crBL: TIntegerField;
    sqlBuscaNota: TSQLQuery;
    JvBitBtn1: TJvBitBtn;
    SaveDialog1: TSaveDialog;
    s_parametro: TSQLDataSet;
    s_parametroDESCRICAO: TStringField;
    s_parametroPARAMETRO: TStringField;
    s_parametroCONFIGURADO: TStringField;
    s_parametroDADOS: TStringField;
    s_parametroD1: TStringField;
    s_parametroD2: TStringField;
    s_parametroD3: TStringField;
    s_parametroD4: TStringField;
    s_parametroD5: TStringField;
    s_parametroD6: TStringField;
    s_parametroD7: TStringField;
    s_parametroD8: TStringField;
    s_parametroD9: TStringField;
    s_parametroINSTRUCOES: TStringField;
    s_parametroVALOR: TFloatField;
    VCLReport2: TVCLReport;
    BitBtn1: TBitBtn;
    jvTotal: TJvValidateEdit;
    JvLabel3: TJvLabel;
    JvBitBtn2: TJvBitBtn;
    SQLDataSet1CODVENDA: TIntegerField;
    scdsCr_procCODVENDA: TIntegerField;
    procedure btnUsuarioProcuraClick(Sender: TObject);
    procedure JvSpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure dbeUsuarioExit(Sender: TObject);
    procedure dbeSerieExit(Sender: TObject);
    procedure cbPrazoChange(Sender: TObject);
    procedure JvGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvSairClick(Sender: TObject);
    procedure btnCancelaBaixaClick(Sender: TObject);
    procedure btnAlteraRecClick(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure NotaFiscal;
    procedure excluinf;
    procedure JvExcluirClick(Sender: TObject);
    procedure JvBoletoClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure jvPagoExit(Sender: TObject);
    procedure jvAcrescimoExit(Sender: TObject);
    procedure jvDescontoExit(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
  private
    TD: TTransactionDesc;
    usaMateriaPrima, tipo_origem, c_f, RESULTADO : String;
    prazo, codrec : Double;
    vrr, nparc : double;
    Cod_orig, cod_cli_forn, codigo_cliente, COD_VENDA : Integer;
    excluiuNF : Boolean;
    IMPRESSORA : TextFile;
    Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6,texto7, logradouro,cep,fone : string;//Para recortar parte da descri��o do produto,nome
    tipoImpressao, usaDll : string;
    total, porc, totgeral , desconto : double;

    codRecCR, caixaCR : Integer;
    formaRec : string;
    baixou : Integer;
    Data_Baixa : TDateTime;
    Data_Receb : TDateTime;
    Data_Conso : TDateTime;
    N_documento : string;
    CodigoCliCR : Integer;

    porta : string;
    cliente : string;
    strSql, strTit, tipoMov: String;
    diferenca, Valor_CR : double;
    strSqlMov, usuario_venda: string;
    Caixa, ModeloImpressora : integer;
    vApagar, Valor : Double;
    str :string;
    fatura_NF :string;
    codClienteNF: integer;
    dataVenda: TDateTime;
    str_sql : string;

    procedure baixaestoque(Tipo: string);
    procedure INSEREVEDA;
    procedure ALTERAVENDA;
    procedure imprimeCupom;
    procedure imprimeRecibo;
    procedure imprimeDLLBema;
    procedure baixa_titulos;
    { Private declarations }
  public
    { Public declarations }
  end;

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
  F_TerminalFinaliza: TF_TerminalFinaliza;
  utilcrtitulo : Tutils;
  iRetorno, comando : integer;
  buffer, scomando : String;
  Save_Cursor:TCursor;
  FEstoque: TEstoque;
  FMov : TMovimento;

  function ConfiguraModeloImpressora(ModeloImpressora:integer):integer; stdcall; far; external 'Mp2032.dll';
  function IniciaPorta(Porta:string):integer; stdcall; far; external 'Mp2032.dll';
  function FechaPorta: integer	;  stdcall; far; external 'Mp2032.dll';
  function BematechTX(BufTrans:string):integer; stdcall; far; external 'Mp2032.dll';
  function FormataTX(BufTras:string; TpoLtra:integer; Italic:integer; Sublin:integer; expand:integer; enfat:integer):integer; stdcall; far; external 'Mp2032.dll';
  function ComandoTX (BufTrans:string;TamBufTrans:integer):integer; stdcall; far; external 'Mp2032.dll';
  function Status_Porta:integer; stdcall; far; external 'Mp2032.dll';
  function AutenticaDoc(BufTras:string;Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
  function Le_Status:integer; stdcall; far; external 'Mp2032.dll';
  function Le_Status_Gaveta:integer; stdcall; far; external 'Mp2032.dll';
  function DocumentInserted:integer; stdcall; far; external 'Mp2032.dll';
  function ConfiguraTamanhoExtrato(NumeroLinhas:Integer):integer; stdcall; far; external 'Mp2032.dll';
  function HabilitaExtratoLongo(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
  function HabilitaEsperaImpressao(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
  function EsperaImpressao:integer; stdcall; far; external 'Mp2032.dll';
  function AcionaGuilhotina(Modo:integer):integer; stdcall; far; external 'Mp2032.dll';
  function HabilitaPresenterRetratil(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
  function ProgramaPresenterRetratil(Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
  function CaracterGrafico(Buffer: string; TamBuffer: integer):integer; stdcall; far; external 'Mp2032.dll';
  function VerificaPapelPresenter():integer; stdcall; far; external 'Mp2032.dll';
  function AjustaLarguraPapel(PaperWidth :  integer) : Integer; stdcall; far; external 'Mp2032.dll';

implementation

uses UDM_MOV, uProcurar, uProcurar_nf, UDMNF, UDm, ufprocura_prod,
  ufCrAltera, uNotaf, U_Boletos, U_Entrada, uCarne, uReceberCls;

{$R *.dfm}

procedure TF_TerminalFinaliza.btnUsuarioProcuraClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
  try
    if fProcurar.ShowModal=mrOk then
    begin
      if (DM_MOV.c_venda.State = dsBrowse) then
        DM_MOV.c_venda.Edit;
      DM_MOV.c_vendaCODVENDEDOR.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
      DM_MOV.c_vendaNOMEUSUARIO.AsString :=  dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
  finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TF_TerminalFinaliza.JvSpeedButton3Click(Sender: TObject);
begin
  DM.varNomeCliente := '';
  dm.codcli := 0;
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    if (fProcurar_nf.ShowModal = mrOK) then
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc ter?ue mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
      end;
      if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
      begin
        MessageDlg('Cliente com cadastro "BLOQUEADO",  venda n?permitida.', mtError, [mbOK], 0);
        exit;
      end;
    prazo := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
    desconto := DMNF.scds_cli_procDESCONTO.AsFloat;
  finally
    DM_MOV.c_vendaCODCLIENTE.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    DM_MOV.c_vendaNOMECLIENTE.AsString := dmnf.scds_cli_procNOMECLIENTE.AsString;
    dmnf.scds_cli_proc.Close;
    fProcurar_nf.Free;
  end;
{
  if (DM_MOV.c_movimento.State = dsBrowse) then
    DM_MOV.c_movimento.Edit;
  DM_MOV.c_movimentoCODCLIENTE.AsInteger := dm.codcli;//fListaClientes.cdsCODCLIENTE.AsInteger;
  DM_MOV.c_movimento.ApplyUpdates(0);
 }
//  DM_MOV.c_vendaCODCLIENTE.AsInteger := dm.codcli;//fListaClientes.cdsCODCLIENTE.AsInteger;
//  DM_MOV.c_vendaNOMECLIENTE.AsString := dm.varNomeCliente;//fListaClientes.cdsNOMECLIENTE.AsString;

end;

procedure TF_TerminalFinaliza.FormCreate(Sender: TObject);
var i,j : Integer;
begin
  usaDll := 'FALSE';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DLLBEMATECH';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usaDll := 'TRUE';

  dm.cds_parametro.Close;

  nparc := 1;

  
  {------Pesquisando na tab Parametro se usa consumo Materia Prima na Venda ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'BAIXAAUTOMATICA';
  dm.cds_parametro.Open;
  usaMateriaPrima := dm.cds_parametroCONFIGURADO.AsString;

  if (not dm.parametro.Active) then
    dm.parametro.Open;

  if (dm.parametro.locate('PARAMETRO', 'NOTAFISCALDESATIVADO', [loCaseInsensitive])) then
    if (dm.parametroCONFIGURADO.AsString = 'S') then
    begin
      DbEdit2.ReadOnly := True;
    end;

  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;

  while not dm.cds_7_contas.Eof do
  begin
    cbConta.Items.Add(dm.cds_7_contas.Fields[2].asString);
    dm.cds_7_contas.Next;
  end;

    utilcrtitulo := Tutils.Create;
    // Popula Status
    j := utilcrtitulo.Forma.Count;
    for i := 0 to j - 1 do
    begin
      combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
    end;
    utilcrtitulo.Free;


end;

procedure TF_TerminalFinaliza.FormShow(Sender: TObject);
begin
  DecimalSeparator := ',';
  codrec := 0;
  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.locate('DADOS', 'PRAZO', [loCaseInsensitive])) then
  begin
      if (not dm.cdsPrazo.Active) then
        dm.cdsPrazo.open;
      if (not dm.cdsPrazo.IsEmpty) then
      begin
        dm.CdsPrazo.first;
        nparc := dm.CdsPrazoVALOR.asFloat;
        cbPrazo.Items.clear;
        while not dm.CdsPrazo.eof do
        begin
          cbPrazo.Items.Add(dm.cdsPrazoPARAMETRO.asString);
          dm.cdsPrazo.next;
        end;
      end;
  end;

  if (DM_MOV.c_venda.Active) then
    DM_MOV.c_venda.Close;

  if (DM_MOV.PAGECONTROL = 'PDV') then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;

  if (DM_MOV.PAGECONTROL = 'COMANDA') then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_comandaCODMOVIMENTO.AsInteger;

  if (DM_MOV.PAGECONTROL = 'DELIVERY') then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.ID_DO_MOVIMENTO;

  DM_MOV.c_venda.Open;
  if (DM_MOV.c_venda.IsEmpty) then
  begin
    btnIncluir.Click;
    //dbeSerie.SetFocus;
    scdsCr_proc.Close;
     // Verifico se teve entrada
     if (DM_MOV.c_forma.Active) then
        DM_MOV.c_forma.close;
     DM_MOV.c_forma.Params[0].Clear;
     DM_MOV.c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
     DM_MOV.c_forma.Open;
     if (not DM_MOV.c_forma.IsEmpty) then
        F_TerminalFinaliza.jvPago.Value := DM_MOV.c_formatotal.Value;
     DM_MOV.c_forma.Close;
     DM_MOV.c_forma.Params[0].Clear;
     //-------------------------
  end
  else
  begin
    jvApagar.Value :=  DM_MOV.c_vendaVALOR.Value;
    jvTotal.Value := DM_MOV.c_vendaVALOR.Value;
    jvDesconto.Value := DM_MOV.c_vendaDESCONTO.Value;
    jvAcrescimo.Value := DM_MOV.c_vendaMULTA_JUROS.Value;
    jvPago.Value := DM_MOV.c_vendaVALOR_PAGAR.Value;
    jvTroco.Value := DM_MOV.c_vendaTROCO.Value;
    if (DM_MOV.c_vendaFORMARECEBIMENTO.asString <> '') then
    begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(DM_MOV.c_vendaFORMARECEBIMENTO.asString);
        utilcrtitulo.Free;
    end;
    if (dm.cds_7_contas.Locate('CODIGO', DM_MOV.c_vendaCAIXA.AsInteger, [loCaseInsensitive])) then
      cbConta.Text := dm.cds_7_contas.Fields[2].asString;

    cbPrazo.Text := DM_MOV.c_vendaPRAZO.AsString;
    if (scdsCr_proc.Active) then
        scdsCr_proc.Close;
    scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
    scdsCr_proc.Open;

  end;

    if (DM_MOV.c_vendaFORMARECEBIMENTO.asString <> '') then
    begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(DM_MOV.c_vendaFORMARECEBIMENTO.asString);
        utilcrtitulo.Free;
    end;
    if (dm.cds_7_contas.Locate('CODIGO', DM_MOV.c_vendaCAIXA.AsInteger, [loCaseInsensitive])) then
      cbConta.Text := dm.cds_7_contas.Fields[2].asString;
  cbPrazo.ItemIndex := 0; //= '1-DINHEIRO'

end;

procedure TF_TerminalFinaliza.btnIncluirClick(Sender: TObject);
var desconto : Double;
begin
  DM_MOV.c_venda.Append;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  COD_VENDA := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;
  DM_MOV.c_vendaCODVENDA.AsInteger := COD_VENDA;
  {------Pesquisando na tab Parametro o valor padr?para a Natureza Opera? ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SERIETERMINAL';
  dm.cds_parametro.Open;
  dbeSerie.Text := dm.cds_parametroDADOS.AsString;
  DM_MOV.c_vendaSERIE.AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  { 006 ------Pesquisando na tab Parametro o Vendedor padr?---- 09-05-2005 -----}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'VENDEDORPADRAO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    dbeUsuario.Text := dm.cds_parametroDADOS.AsString;
  try
    DM_MOV.c_vendaCODVENDEDOR.AsInteger := StrToInt(dm.cds_parametroDADOS.AsString);
  except
    DM_MOV.c_vendaCODVENDEDOR.AsInteger := 1;
  end;
  dm.cds_parametro.Close;
  { ---- 06 ----}
  dbeUsuario.SetFocus;
  if (DM_MOV.PAGECONTROL = 'PDV') then
  begin
    DM_MOV.c_vendaCODMOVIMENTO.AsInteger := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
    DM_MOV.c_vendaCODCLIENTE.AsInteger := DM_MOV.c_movimentoCODCLIENTE.AsInteger;
    DM_MOV.c_vendaNOMECLIENTE.AsString := DM_MOV.c_movimentoNOMECLIENTE.AsString;
  end;

  if (DM_MOV.PAGECONTROL = 'COMANDA') then
  begin
    DM_MOV.c_vendaCODMOVIMENTO.AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_vendaCODCLIENTE.AsInteger := DM_MOV.c_comandaCODCLIENTE.AsInteger;
    DM_MOV.c_vendaNOMECLIENTE.AsString := DM_MOV.c_comandaNOMECLIENTE.AsString;
  end;


  if (DM_MOV.PAGECONTROL = 'DELIVERY') then
  begin
    DM_MOV.c_vendaCODMOVIMENTO.AsInteger := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;
    DM_MOV.c_vendaCODCLIENTE.AsInteger := DM_MOV.c_DeliveryCODCLIENTE.AsInteger;
    DM_MOV.c_vendaNOMECLIENTE.AsString := DM_MOV.c_DeliveryNOMECLIENTE.AsString;
  end;

  //DM_MOV.c_vendaNOMECLIENTE.AsInteger := DM_MOV.c_movimentonCODCLIENTE.AsInteger;
  desconto := 0;
  DM_MOV.c_movdet.First;
  while ( not DM_MOV.c_movdet.Eof) do
  begin
    desconto := desconto + dm_mov.c_movdetQTDE_ALT.AsFloat;
    DM_MOV.c_movdet.Next;
  end;

  if (not DM_MOV.c_movdet.IsEmpty) then
  begin
    jvApagar.Value :=  DM_MOV.c_movdettotalpedido.Value - desconto;
    jvTotal.Value := DM_MOV.c_movdettotalpedido.Value - desconto;
  end;
  jvDesconto.Value := 0;
  jvAcrescimo.Value := 0;
  jvPago.Value := 0;
  jvTroco.Value := 0;
  DM_MOV.c_vendaDATAVENDA.AsDateTime := Now;
  DM_MOV.c_vendaDATASISTEMA.AsDateTime := Now;
  cbConta.ItemIndex := 1;
  ComboBox1.ItemIndex := 0;
  cbPrazo.ItemIndex := 0;
  DBEdit5.Text := '1';
  JvGravar.SetFocus;

  //dbeSerie.OnExit;
  if DM_MOV.d_venda.State in [dsInsert,dsEdit] then
  begin
    if dbeSerie.Text = '' then
      exit;
    if scds_serie_proc.Active then
      scds_serie_proc.Close;
    scds_serie_proc.Params[0].AsString := dbeSerie.Text;
    scds_serie_proc.Open;
    if scds_serie_proc.IsEmpty then
    begin
      MessageDlg('C�digo n�o cadastrado, deseja cadastra-lo?', mtWarning,
      [mbOk], 0);
      btnSerie.Click;
      exit;
    end;
    DM_MOV.c_vendaSERIE.AsString := scds_serie_procSERIE.AsString;
    //?nota fiscal ?
    if scds_serie_procNOTAFISCAL.AsInteger=0 then
    begin
      //    btnImprimir.Enabled:=False;
      btnNotaFiscal.Enabled:=True;
    end
    else
    begin
      //    btnImprimir.Enabled:=True;
      btnNotaFiscal.Enabled:=False;
    end;
    DM_MOV.c_vendaNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger + 1;
  end;
  //==========================================================================
end;

procedure TF_TerminalFinaliza.dbeUsuarioExit(Sender: TObject);
begin
  if dbeUsuario.Text = '' then
    exit;
  if DM_MOV.d_venda.State = dsInsert then
  begin
    if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
    dm.scds_usuario_proc.Params[0].Clear;
    dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(dbeUsuario.Text);
    dm.scds_usuario_proc.Params.ParamByName('pPerfil').AsString := 'VENDEDOR';
    dm.scds_usuario_proc.Params.ParamByName('pPerfil1').AsString := 'AMBOS';
    dm.scds_usuario_proc.Open;
    if dm.scds_usuario_proc.IsEmpty then begin
      MessageDlg('C�digo n�o cadastrado, deseja cadastra-lo?', mtWarning,
      [mbOk], 0);
      btnUsuarioProcura.Click;
      exit;
    end;
    DM_MOV.c_vendaCODVENDEDOR.AsInteger := dm.scds_usuario_procCODUSUARIO.AsInteger;
    DM_MOV.c_vendaNOMEUSUARIO.AsString := dm.scds_usuario_procNOMEUSUARIO.AsString;
    dm.scds_usuario_proc.Close;
  end
  else
  if dbeUsuario.Field.OldValue<>dbeUsuario.Field.NewValue then
  begin
    if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
    dm.scds_usuario_proc.Params[0].Clear;
    dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(dbeUsuario.Text);
    dm.scds_usuario_proc.Open;
    if dm.scds_usuario_proc.IsEmpty then begin
      MessageDlg('C�digo n�o cadastrado, deseja cadastra-lo?', mtWarning,
      [mbOk], 0);
      btnUsuarioProcura.Click;
      exit;
    end;
    DM_MOV.c_vendaCODVENDEDOR.AsInteger := dm.scds_usuario_procCODUSUARIO.AsInteger;
    DM_MOV.c_vendaNOMEUSUARIO.AsString := dm.scds_usuario_procNOMEUSUARIO.AsString;
    dm.scds_usuario_proc.Close;
  end;
end;

procedure TF_TerminalFinaliza.dbeSerieExit(Sender: TObject);
begin
  if DM_MOV.d_venda.State in [dsInsert,dsEdit] then
  begin
    if dbeSerie.Text='' then exit;
    if dbeSerie.Field.OldValue<>dbeSerie.Field.NewValue then  begin
      if scds_serie_proc.Active then
        scds_serie_proc.Close;
      scds_serie_proc.Params[0].AsString := dbeSerie.Text;
      scds_serie_proc.Open;
      if scds_serie_proc.IsEmpty then begin
        MessageDlg('C�digo n�o cadastrado, deseja cadastra-lo?', mtWarning,
        [mbOk], 0);
        btnSerie.Click;
        exit;
      end;
      DM_MOV.c_vendaSERIE.AsString := scds_serie_procSERIE.AsString;
      //?nota fiscal ?
      if scds_serie_procNOTAFISCAL.AsInteger=0 then
      begin
        //    btnImprimir.Enabled:=False;
        btnNotaFiscal.Enabled:=True;
        end
        else
        begin
        //    btnImprimir.Enabled:=True;
        btnNotaFiscal.Enabled:=False;
      end;
      DM_MOV.c_vendaNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger + 1;
    end;
  end;


end;

procedure TF_TerminalFinaliza.cbPrazoChange(Sender: TObject);
begin
  if (not dm.cdsPrazo.Active) then
    dm.cdsPrazo.Open;
  if (dm.cdsPrazo.Locate('PARAMETRO', cbPrazo.Text, [loCaseinsensitive])) then
    DM_MOV.c_vendaN_PARCELA.asInteger := StrToInt(FloatToStr(dm.cdsPrazoValor.asFloat));
end;

procedure TF_TerminalFinaliza.JvGravarClick(Sender: TObject);
var
    FRec : TReceberCls;
begin
    if (DBEdit5.Text = '1') then
     if (cbPrazo.Text = '01-A Vista') then
      if (jvPago.Value < jvApagar.Value) then
      begin
         MessageDlg('Valor pago menor que total a pagar, '+#13+#10+'  parcela tem que ser maior que "1"', mtWarning, [mbOK], 0);
         cbPrazo.SetFocus;
         exit;
      end;

  if (DM_MOV.c_forma.Active) then
      DM_MOV.c_forma.close;
  DM_MOV.c_forma.Params[0].Clear;
  DM_MOV.c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  DM_MOV.c_forma.Open;
  if (DM_MOV.c_forma.IsEmpty) then
  begin
    if (cbPrazo.Text = '01-A Vista') then
      if (jvPago.Text = '0,00') then
      begin
         ShowMessage('Valor Pago tem que ter um Valor');
         jvPago.SetFocus;
         exit;
      end;
  end;
  if (cbPrazo.Visible = True) then
  begin
    if (not dm.cdsPrazo.Locate('PARAMETRO', cbPrazo.Text, [loCaseinsensitive])) then
    begin
      MessageDlg('Escolha o prazo de pagamento.', mtError, [mbOK], 0);
      cbPrazo.SetFocus;
      exit;
    end;
  end;

  if DM_MOV.d_venda.State in [dsInsert] then
  begin
    if (dbeSerie.Text = '') then
    begin
      MessageDlg('Informe uma S�rie.', mtError, [mbOK], 0);
      dbeSerie.SetFocus;
      exit;
    end;

    if (scdsCr_proc.Active) then
        scdsCr_proc.Close;
    scdsCr_proc.Params[0].Clear;

    INSEREVEDA;

    // Executo Classe Insere Recebimento ---------------------------------------
    try
       FRec := TReceberCls.Create;
       codRecCR := FRec.geraTitulo(0, COD_VENDA);
    finally
       Frec.Free;
    end;
    //--------------------------------------------------------------------------

    if (DM_MOV.c_venda.Active) then
        DM_MOV.c_venda.Close;
    DM_MOV.c_venda.Params[0].AsInteger := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
    DM_MOV.c_venda.Open;

    cbPrazo.Text := DM_MOV.c_vendaPRAZO.AsString;
    if (scdsCr_proc.Active) then
        scdsCr_proc.Close;
    scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
    scdsCr_proc.Open;

   //  se tiver pagamento parcial ----------------------------------------------
    if (not DM_MOV.c_forma.IsEmpty) then
    begin
       baixou := 0;
       scdsCr_proc.First;
       codRecCR := scdsCr_procCODRECEBIMENTO.AsInteger;
       while not DM_MOV.c_forma.Eof do
       begin
           if (baixou > 0) then
               codRecCR := baixou;
           // Marco o T�tulo
           Texto := 'UPDATE RECEBIMENTO SET DP = 0, USERID = ' + IntToStr(usulog) + ' WHERE CODRECEBIMENTO = ' +
                    IntToStr(codRecCR);
           dm.sqlsisAdimin.StartTransaction(TD);
           dm.sqlsisAdimin.ExecuteDirect(Texto);
           Try
            dm.sqlsisAdimin.Commit(TD);
           except
            dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
            MessageDlg('Erro no sistema, Marcar Titulo Falhou.', mtError,
               [mbOk], 0);
           end;
           try
             FRec := TReceberCls.Create;
             baixou := FRec.baixaTitulo(DM_MOV.c_formaVALOR_PAGO.Value, //Valor
                                        0, //Funrural
                                        0, // Juros
                                        0, // Desconto
                                        0, // Perda
                                        Now, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Baixa
                                        Now, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Recebimento
                                        Now, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Consolida
                                        DM_MOV.c_formaFORMA_PGTO.AsString,  // FormaRecebimento
                                        DM_MOV.c_formaN_DOC.AsString, //DM_MOV.c_vendaN_DOCUMENTO.AsString, // N� Documento
                                        DM_MOV.c_formaCAIXA.AsInteger, // Caixa
                                        DM_MOV.c_vendaCODCLIENTE.AsInteger, // Codigo do Cliente
                                        '7-',
                                        usulog); // Usuario Logado
            Texto := 'UPDATE RECEBIMENTO SET DP = ' + 'null' + ', USERID = ' + 'null' + ' WHERE CODRECEBIMENTO = ' +
                      IntToStr(codRecCR);;
            dm.sqlsisAdimin.StartTransaction(TD);
            dm.sqlsisAdimin.ExecuteDirect(Texto);
            Try
              dm.sqlsisAdimin.Commit(TD);
            except
              dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
              MessageDlg('Erro no sistema, Desmarcar Titulo Falhou.', mtError,
                 [mbOk], 0);
            end;
          codRecCR := 0;
          finally
           Frec.Free;
          end;
          DM_MOV.c_forma.Next;
       end;
    end
    else
    begin
      // Executo Classe Baixa Titulos --------------------------------------------
      scdsCr_proc.First;
      utilcrtitulo := Tutils.Create;
      formaRec := utilcrtitulo.pegaForma(ComboBox1.Text);
      utilcrtitulo.Free;

      if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
       caixaCR := dm.cds_7_contas.Fields[0].asInteger;

      Valor_CR := jvPago.Value;

      Data_Baixa := DM_MOV.c_vendaDATAVENDA.AsDateTime;
      Data_Receb := DM_MOV.c_vendaDATAVENDA.AsDateTime;
      Data_Conso := DM_MOV.c_vendaDATAVENDA.AsDateTime;
      N_documento := DM_MOV.c_vendaN_DOCUMENTO.AsString;
      CodigoCliCR := DM_MOV.c_vendaCODCLIENTE.AsInteger;
      if (DM_MOV.c_vendaENTRADA.Value > 0) then
        baixa_titulos;
    end;
    DM_MOV.c_forma.Close;
    //-------------------------------------------------------------------------
    strTit := IntToStr(DM_MOV.c_vendaNOTAFISCAL.AsInteger) + '-' + DM_MOV.c_vendaSERIE.AsString;
  end
  else
  begin
     if DM_MOV.d_venda.State in [dsEdit] then
     begin
       ALTERAVENDA;
     end;
  end;



  btnIncluir.Visible:=False;
  //  btnImprimir.SetFocus;
  //Gravando o numero sequencial
  if not scds_serie_proc.Active then
  begin
     scds_serie_proc.Params[0].AsString := dbeSerie.Text;
     scds_serie_proc.Open;
  end;
  if (DM_MOV.c_vendaNOTAFISCAL.AsInteger > scds_serie_procULTIMO_NUMERO.AsInteger) then
  begin
    scds_serie_proc.Edit;
    scds_serie_procULTIMO_NUMERO.AsInteger := DM_MOV.c_vendaNOTAFISCAL.AsInteger;
    scds_serie_proc.ApplyUpdates(0);
  end;
  scds_serie_proc.Close;

  scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
  scdsCr_proc.Open;

  codrec := scdsCr_procCODRECEBIMENTO.AsInteger;
  Cod_orig := DM_MOV.c_vendaCODVENDA.AsInteger;
  tipo_origem := 'VENDA';
  cod_cli_forn := DM_MOV.c_vendaCODCLIENTE.AsInteger;
  c_f := 'C'; // C=Cliente

  if DM_MOV.d_venda.State in [dsInsert, dsEdit] then
     DM_MOV.c_venda.ApplyUpdates(0); // btnGravar.Click;

  if (usaMateriaPrima = 'S') then
  begin
    //BitBtn1.Click;
     baixaestoque('BAIXAAUTOMATICA');
  end;

   strSql := 'UPDATE RECEBIMENTO SET DP = 1 where CODVENDA = ' + IntToStr(DM_MOV.c_vendaCODVENDA.AsInteger);
    Try
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro ao grava campo DP para imprimir boleto .', mtError,
           [mbOk], 0);
    end;

   if (dmnf.baixouEstoque(DM_MOV.c_vendaCODMOVIMENTO.AsInteger) = False) then
   begin
     Try
       dmnf.baixaEstoque(DM_MOV.c_vendaCODMOVIMENTO.AsInteger, DM_MOV.c_vendaDATAVENDA.AsDateTime, 'VENDA');
     Except
       MessageDlg('Processo de Baixa no Estoque n?realizado CORRETAMENTE.', mtWarning, [mbOK], 0);
     end;
   end;

{  tipoImpressao := '';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CUPOMPDV';
  dm.cds_parametro.Open;

  if (not dm.cds_parametro.Eof) then
     tipoImpressao := 'CUPOM';
  dm.cds_parametro.Close;
  if (tipoImpressao = 'CUPOM') then
     if (usaDll = 'TRUE') then
     begin
        if (s_parametro.Active) then
          s_parametro.Close;
        s_parametro.Params[0].AsString := 'MODELOIMPRESSORA';
        s_parametro.Open;
        ModeloImpressora := StrToInt(s_parametroDADOS.AsString);
        s_parametro.Close;
        if (ModeloImpressora is null) then
          ModeloImpressora := 0;
        //Configura o Modelo da Impressora
        iRetorno := ConfiguraModeloImpressora( ModeloImpressora );
        if (iRetorno = -2) then
          ShowMessage('Erro Configurando Impressora');
        iRetorno := IniciaPorta( pchar( 'USB' ) );
        if (iRetorno <= 0) then
          ShowMessage('Erro Abrindo Porta');

         // Comando para Acionar a Gaveta de Dinheiro
         scomando := #27 + #118 + #140;
         iRetorno := ComandoTX( scomando, Length( scomando ));

        iRetorno := 0;
        iRetorno := FechaPorta();
     end;   }
end;

procedure TF_TerminalFinaliza.baixaestoque(Tipo: string);
begin
{  codigo_cliente :=  DM_MOV.c_movimentoCODCLIENTE.AsInteger;
  data_movimento :=  DateToStr(fVendas.cds_MovimentoDATAMOVIMENTO.AsDateTime);
  codigo_moviemento := fVendas.cds_MovimentoCODMOVIMENTO.AsInteger;

  //** adiciono um novo movimento
  fVendas.btnIncluir.Click;
  fVendas.cds_MovimentoCODCLIENTE.AsInteger := DM_MOV.c_movimentoCODCLIENTE.AsInteger;;
  fVendas.cds_MovimentoCODPEDIDO.AsInteger  := codigo_moviemento;

  fVendas.cds_MovimentoDATAMOVIMENTO.AsDateTime := StrToDate(data_movimento);
  // Natureza = 'Sa?'
  fVendas.cds_MovimentoCODNATUREZA.AsInteger := 2;
  //fVendas.cds_MovimentoCONTROLE.AsString := IntToStr(codigo_moviemento);
  fVendas.btnGravar.Click;

  //Executa rotina para inserir materias primas
  fVendas.baixamatprimas(Tipo, codigo_moviemento);

  //close;

  if (fVendas.cds_Movimento.Active) then
    fVendas.cds_Movimento.Close;
  fVendas.cds_Mov_det.Params[0].Clear;
  fVendas.cds_Movimento.Params[0].AsInteger := codigo_moviemento;
  fVendas.cds_Movimento.Open;

  if (fVendas.cds_Mov_det.Active) then
    fVendas.cds_Mov_det.Close;
  fVendas.cds_Mov_det.Params[0].Clear;
  fVendas.cds_Mov_det.Params[1].AsInteger := codigo_moviemento;
  fVendas.cds_Mov_det.Open;
    }
end;

procedure TF_TerminalFinaliza.INSEREVEDA;
Var vJvValor,  vJvValor1, vJvValor2: Double;
begin
    caixa := 0;
    strSql := 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA';
    strSql := strSql + ',DATAVENCIMENTO ,BANCO ,CODVENDEDOR ,STATUS ,CODUSUARIO';
    strSql := strSql + ',VALOR ,NOTAFISCAL ,SERIE, DESCONTO, CODCCUSTO, N_PARCELA'; //
    strSql := strSql + ',FORMARECEBIMENTO, ENTRADA, CAIXA, MULTA_JUROS, APAGAR, VALOR_PAGAR, TROCO, PRAZO ';
    strSql := strSql + ') VALUES (';
    strSql := strSql + IntToStr(COD_VENDA);
    strSql := strSql + ',' + IntToStr(DM_MOV.c_movimentoCODMOVIMENTO.AsInteger);
    strSql := strSql + ',' + IntToStr(DM_MOV.c_vendaCODCLIENTE.AsInteger);
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy', DM_MOV.c_movimentoDATAMOVIMENTO.AsDateTime) + '''';
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy', DM_MOV.c_movimentoDATAMOVIMENTO.AsDateTime) + '''';
    strSql := strSql + ',1'; //Banco
    strSql := strSql + ', ' + dbeUsuario.Text; //CodVendedor
    strSql := strSql + ',0'; //status
    strSql := strSql + ', ' + dbeUsuario.Text; //codusuario

    //total := StrToFloat(DBEdit6.Text);
    //vApagar := StrToFloat(DBEdit11.Text);
    DecimalSeparator := ',';
    vJvValor := jvTotal.AsFloat; //StrToFloat(jvTotal.Text);
    if (jvDesconto.Value > 0) then
    begin
      vJvValor := jvTotal.AsFloat - jvDesconto.Value;
    end;
    DecimalSeparator := '.';
    strSql := strSql + ',' + FloatToStr(vJvValor); //valor

    strSql := strSql + ',' + DBEdit2.Text; //notafiscal
    strSql := strSql + ',''' + dbeSerie.Text + ''''; //serie


    DecimalSeparator := ',';

    vJvValor := jvDesconto.AsFloat;
    DecimalSeparator := '.';
    strSql := strSql + ',' + FloatToStr(vJvValor); //DEsconto

   // strSql := strSql + ',0'; //desconto
    strSql := strSql + ',' + IntToStr(DM_MOV.c_movimentoCODALMOXARIFADO.AsInteger);//CODCUSTO
    strSql := strSql + ', ' + DBEdit5.Text + ',';
    utilcrtitulo := Tutils.Create;
    strSql := strSql + QuotedStr(utilcrtitulo.pegaForma(ComboBox1.Text));
    utilcrtitulo.Free;
    DecimalSeparator := ',';
    vJvValor1 := jvPago.AsFloat;
    vJvValor2 := jvTroco.AsFloat; //StrToFloat(jvTroco.Text);
    if (vJvValor2 > 0) then
      vJvValor := vJvValor1 - vJvValor2
    else
      vJvValor := vJvValor1;

    DecimalSeparator := '.';

    strSql := strSql + ',' + FloatToStr(vJvValor); //ENTRADA

    if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
      caixa := dm.cds_7_contas.Fields[0].asInteger;
    strSql := strSql + ', ' + IntToStr(Caixa); //Caixa

    DecimalSeparator := ',';
    vJvValor := jvAcrescimo.AsFloat; //StrToFloat(jvAcrescimo.Text);
    DecimalSeparator := '.';
    strSql := strSql + ',' + FloatToStr(vJvValor); //Multa_juros

    DecimalSeparator := ',';
    vJvValor := jvApagar.AsFloat; //StrToFloat(jvApagar.Text);
    DecimalSeparator := '.';
    strSql := strSql + ',' + FloatToStr(vJvValor); //VALOR A PaGAR

    DecimalSeparator := ',';
    vJvValor := jvPago.AsFloat; //StrToFloat(jvPago.Text);
    DecimalSeparator := '.';
    strSql := strSql + ',' + FloatToStr(vJvValor); //VALORPAGO

    DecimalSeparator := ',';
    vJvValor := jvTroco.AsFloat; //StrToFloat(jvTroco.Text);
    DecimalSeparator := '.';
    if (DM_MOV.c_forma.IsEmpty) then
      strSql := strSql + ',' + FloatToStr(vJvValor) //TROCO
    else
      strSql := strSql + ',' + '0'; //ENTRADA

    strSql := strSql + ',' + QuotedStr(cbPrazo.Text);
    strSql := strSql + ')';

    strSqlMov := 'UPDATE MOVIMENTO SET CODCLIENTE = ' + IntToStr(DM_MOV.c_vendaCODCLIENTE.AsInteger) +
    ', STATUS = ' + '0 ' +
    ' where CODMOVIMENTO = ' + IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger);

    DM_MOV.c_venda.Cancel;
    DM_MOV.c_venda.Close;
    DM_MOV.c_venda.Params[0].Clear;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSqlMov);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dmnf.baixaEstoque(DM_MOV.c_movimentoCODMOVIMENTO.AsInteger, DM_MOV.c_movimentoDATAMOVIMENTO.AsDateTime, 'VENDA');
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro no sistema, a venda n�o foi gravada.', mtError,
           [mbOk], 0);
    end;
    DecimalSeparator := ',';
    ThousandSeparator := '.';

end;

procedure TF_TerminalFinaliza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  iRetorno := 0;
  iRetorno := FechaPorta();

  if (scdsCr_proc.Active) then
      scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
  scdsCr_proc.Open;
 if (not scdsCr_proc.Eof) then
 begin
   if (DM_MOV.c_movimento.Active) then
      DM_MOV.c_movimento.Close;
   if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
   if (DM_MOV.c_movdet.Active) then
      DM_MOV.c_movdet.Close;
   if (DM_MOV.c_venda.Active) then
      DM_MOV.c_venda.Close;
 end;
 scdsCr_proc.Close;
 close;
end;

procedure TF_TerminalFinaliza.JvSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_TerminalFinaliza.ALTERAVENDA;
begin
   texto := 'select r.STATUS from RECEBIMENTO r ' +
            'where r.CODVENDA = ' +  IntToStr(DM_MOV.c_vendaCODVENDA.AsInteger);
   texto := texto + ' and r.STATUS = ' + QuotedStr('7-');

   if (sql_rec.Active) then
     sql_rec.close;
   sql_rec.CommandText := texto;
   sql_rec.Open;
   if (not sql_rec.IsEmpty) then
   begin
      RESULTADO := 'TRUE';
      ShowMessage('N�o Permitido Alterar Venda com Titulos STATUS = RECEBIDO !');
      sql_rec.Close;
      exit;
   end;
   sql_rec.Close;

   texto := 'UPDATE VENDA set ';

   dm.sqlsisAdimin.StartTransaction(TD);
   dm.sqlsisAdimin.ExecuteDirect(texto);
   Try
      dm.sqlsisAdimin.Commit(TD);
   except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro no sistema, a venda n?foi gravada.', mtError,
           [mbOk], 0);
   end;

end;

procedure TF_TerminalFinaliza.btnCancelaBaixaClick(Sender: TObject);
begin

  if (DM_MOV.c_movimentoCODNATUREZA.AsInteger = 14) then //Cancelado
  begin
    if  MessageDlg('NF CANCELADA, confirma mudan�a do Status : ''' + scdscr_procTITULO.AsSTring + '''',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    Try
      if (scdsCr_proc.State in [dsBrowse, dsInactive]) then
        scdsCr_proc.Edit;
      scdsCr_procSTATUS.AsString := '5-';
      scdsCr_proc.ApplyUpdates(0);
      // NF ou Venda Cancelada
      if (DM_MOV.c_venda.State in [dsBrowse]) then
         DM_MOV.c_venda.Edit;
      DM_MOV.c_vendaSTATUS.AsInteger := 0;
      DM_MOV.c_venda.ApplyUpdates(0);
      if (DM_MOV.c_movimento.State in [dsBrowse]) then
         DM_MOV.c_movimento.edit;
      DM_MOV.c_movimentoCODNATUREZA.AsInteger := 3; //Venda
      DM_MOV.c_movimento.ApplyUpdates(0);

      MessageDlg('Status alterado com sucesso.', mtInformation, [mbOK], 0);
      scdsCr_proc.Refresh;
    Except
      MessageDlg('N?foi poss?l alterar STATUS.', mtError, [mbOK], 0);
    end;
  end
  else
  begin
    if  MessageDlg('Confirma o cancelamento da baixa do T?lo : ''' + scdscr_procTITULO.AsSTring + '''',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    Try
      if (scdsCr_proc.State in [dsBrowse, dsInactive]) then
        scdsCr_proc.Edit;
      scdsCr_procSTATUS.AsString := '5-';
      if( scdsCr_procSTATUS.AsString = '7-') then
        scdsCr_procVALOR_RESTO.AsFloat := scdsCr_procVALORRECEBIDO.asFloat;
      scdsCr_procVALORRECEBIDO.AsFloat := 0;
      scdsCr_procCAIXA.Clear;
      scdsCr_proc.ApplyUpdates(0);
      MessageDlg('Baixa cancelada com sucesso.', mtInformation, [mbOK], 0);

      DecimalSeparator := '.';
      str := 'Update RECEBIMENTO set DATARECEBIMENTO = null, DATACONSOLIDA = null';
      str := str + ' WHERE CODRECEBIMENTO = ' + IntToStr(scdsCr_procCODRECEBIMENTO.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str);
      DecimalSeparator := ',';
      scdsCr_proc.Refresh;
    Except
      MessageDlg('N�o foi poss�vel cancelar a baixa.', mtError, [mbOK], 0);
    end;
  end;
end;

procedure TF_TerminalFinaliza.btnAlteraRecClick(Sender: TObject);
begin
  fCrAltera := TfCrAltera.Create(Application);
  try
    fCrAltera.ntitulo := scdsCr_procTITULO.AsString;
    fCrAltera.codcliente := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.demissao := scdsCr_procEMISSAO.AsDateTime;


    if (fCrAltera.cds.Active) then
      fCrAltera.cds.Close;
    fCrAltera.cds.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCrAltera.cds.Params[1].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.cds.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCrAltera.cds.Open;

    if (fCrAltera.cds1.Active) then
      fCrAltera.cds1.Close;
    fCrAltera.cds1.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCrAltera.cds1.Params[1].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.cds1.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCrAltera.cds1.Open;

    fCrAltera.Label1.Caption := scdsCr_procTITULO.AsString;
    fCrAltera.Label2.Caption := scdsCr_procTITULO.AsString;
    fCrAltera.ShowModal;
    scdsCr_proc.Close;
    scdsCr_proc.Open;
  finally
    fCrAltera.Free;
  end;
end;

procedure TF_TerminalFinaliza.btnNotaFiscalClick(Sender: TObject);
begin
  if DM_MOV.d_venda.State in [dsInsert] then
    JvGravar.Click;

  if (scdsCr_proc.RecordCount = 0) then
  begin
    MessageDlg('T?lo do Financeiro n?foi gerado.'+#13+#10+'Clique no bot?gravar, para gera-lo.', mtWarning, [mbOK], 0);
    exit;
  end;

  NotaFiscal;
end;

procedure TF_TerminalFinaliza.NotaFiscal;
begin
  if (sqlBuscaNota.Active) then
	sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select codMovimento, codCliente  from MOVIMENTO where ( (CODNATUREZA = 15) or (CODNATUREZA = 16) ) AND CONTROLE = ' +
    QuotedStr(IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger)));
  sqlBuscaNota.Open;
  if (sqlBuscaNota.IsEmpty) then
  begin
    try
    codClienteNF := 0;
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    // Nota Fiscal
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
	  try
	  str_sql := 'EXECUTE PROCEDURE GERA_NF_VENDA(';
   	str_sql := str_sql + IntToStr(DM_MOV.c_vendaCODCLIENTE.AsInteger);
        str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', DM_MOV.c_vendaDATAVENDA.AsDateTime));
        str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', DM_MOV.c_vendaDATAVENCIMENTO.AsDateTime));
        str_sql := str_sql + ', ' + QuotedStr(DM_MOV.c_vendaSERIE.AsString);
        str_sql := str_sql + ', ' + QuotedStr(inttostr(DM_MOV.c_vendaNOTAFISCAL.AsInteger));
        str_sql := str_sql + ', ' + IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger) + ')';
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
		except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para Gerar a nota.', mtError, [mbOK], 0);
        exit;
	end;
    if (sqlBuscaNota.Active) then
      sqlBuscaNota.Close;
    sqlBuscaNota.SQL.Clear;
    sqlBuscaNota.SQL.Add('select codMovimento, codCliente from MOVIMENTO where ( (CODNATUREZA = 15) or (CODNATUREZA = 16) ) AND CONTROLE = ' +
      QuotedStr(IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger)));
    sqlBuscaNota.Open;
    finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
    end;
  end;

  fNotaf := TfNotaf.Create(Application);
  try
    fNotaF.codMovFin := sqlBuscaNota.Fields[0].AsInteger;
    fNotaF.codCliFin := sqlBuscaNota.Fields[1].AsInteger;

    if (not  dm.cds_empresa.Active) then
    dm.cds_empresa.open;
      fNotaf.cbFinanceiro.Checked := False;
      fNotaf.cbEstoque.Checked := False;
      fNotaf.ShowModal;
      if (dmnf.cds_nfSTATUS.AsString = 'S') then
    fNotaf.RadioGroup1.ItemIndex := 0
      else
        fNotaf.RadioGroup1.ItemIndex := 1;
  finally
  	fNotaf.Free;
  end;
end;

procedure TF_TerminalFinaliza.JvExcluirClick(Sender: TObject);
var alterastat :string;
begin
  dataVenda := DM_MOV.c_vendaDATAVENDA.AsDateTime;
  if scdscr_proc.Active then
       scdscr_proc.Close;
    scdscr_proc.Params[0].Clear;
    scdscr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
    scdscr_proc.Open;
    if cds_cr.Active then
      cds_cr.Close;
    cds_cr.Params[0].AsInteger := scdscr_procCODRECEBIMENTO.AsInteger;
    cds_cr.Open;
    if (cds_crSTATUS.AsString = '5-') then
    begin
      if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                    [mbYes,mbNo],0) = mrYes then
      begin
        dmnf.cancelaEstoque(DM_MOV.c_vendaCODMOVIMENTO.AsInteger, DM_MOV.c_vendaDATAVENDA.AsDateTime, 'VENDA');
        excluinf;
         if excluiuNF then
         begin
           try
             dm.sqlsisAdimin.StartTransaction(TD);
             dm.sqlsisAdimin.ExecuteDirect('DELETE FROM VENDA WHERE CODVENDA = ' + IntToStr(DM_MOV.c_vendaCODVENDA.AsInteger));
             dmnf.cancelaEstoque(DM_MOV.c_vendaCODMOVIMENTO.AsInteger, DM_MOV.c_vendaDATAVENDA.AsDateTime, 'VENDA');
             DM_MOV.c_venda.Delete;             
             dm.sqlsisAdimin.Commit(TD);
             ShowMessage('Venda Excluida com Sucesso');
           except
             on E : Exception do
             begin
               ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
               dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             end;
           end;
         end;
      end
      else if (cds_cr.IsEmpty) then
      begin
        if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                      [mbYes,mbNo],0) = mrYes then
        begin
           excluinf;
            Try
              dm.sqlsisAdimin.StartTransaction(TD);
              DM_MOV.d_venda.DataSet.Delete;
              (DM_MOV.d_venda.DataSet as TClientDataSet).ApplyUpdates(0);
              dmnf.cancelaEstoque(DM_MOV.c_vendaCODMOVIMENTO.AsInteger, DM_MOV.c_vendaDATAVENDA.AsDateTime, 'VENDA');
             if (usaMateriaPrima = 'S') then   // Usa Materia Prima ent?tem que excluir tbem;
             begin
               if (dm.sqlBusca.Active) then
                 dm.sqlBusca.Close;
               dm.sqlBusca.SQL.Clear;
               dm.sqlBusca.SQL.Add('SELECT CODMOVIMENTO, DATAMOVIMENTO FROM MOVIMENTO ' +
                 ' WHERE CODPEDIDO   = ' + IntToStr(codigo_moviemento) +
                 '   AND CODNATUREZA = 2'+
                 '   AND CODCLIENTE  = ' + IntToStr(codigo_cliente));
               dm.sqlBusca.Open;
               if (not dm.sqlBusca.IsEmpty) then
               begin
                 dmnf.cancelaEstoque(dm.sqlBusca.fieldByName('CODMOVIMENTO').AsInteger,  +
                   dm.sqlBusca.fieldByName('DATAMOVIMENTO').AsDateTime, 'VENDA');
               end;
             end;

              dm.sqlsisAdimin.Commit(TD);
            except
              on E : Exception do
              begin
                ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
                dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
			end;
		  end;
        end;
      end;

      {------Pesquisando na tab Parametro se usa consumo Materia Prima na Venda ---}
      if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'BAIXAAUTOMATICA';
      dm.cds_parametro.Open;
      if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
      begin
        // Excluindo a baixa da materia Prima
        codigo_cliente :=  DM_MOV.c_movimentoCODCLIENTE.AsInteger;
        data_movimento :=  DateToStr(DM_MOV.c_movimentoDATAMOVIMENTO.AsDateTime);

        Try
          FEstoque := TEstoque.Create;
          // Gravando o Estoque
          with DM_MOV do begin
          c_movdet.First;
          While not c_movdet.Eof do
          begin
            if (c_movdetSTATUS.AsString = '9') then
            begin
              FEstoque.QtdeVenda   := (-1) * c_movdetQUANTIDADE.AsFloat;
              FEstoque.CodProduto  := c_movdetCODPRODUTO.AsInteger;
              FEstoque.Lote        := c_movdetLOTE.AsString;
              FEstoque.CentroCusto := c_movdetCODALMOXARIFADO.AsInteger;
              FEstoque.MesAno      := dataVenda;
              FEstoque.PrecoVenda  := c_movdetPRECO.AsFloat;
              FEstoque.CodDetalhe  := c_movdetCODDETALHE.AsInteger;
              FEstoque.Status      := '0';
              FEstoque.inserirMes;
            end;
            c_movdet.Next;
          end;
          end;
        Finally
          FEstoque.Free;
        end;

      end;

    end
    else
    begin
      ShowMessage('O titulo j� foi recebido, antes de excluir a venda cancele o recebimento');
    end;
    if ((DM_MOV.c_movimentoCONTROLE.AsString = 'OS') and (not DM_MOV.c_movimentoCODORIGEM.IsNull)) then
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      alterastat := 'update OS set status = ' + QuotedStr('A') + ' where CODOS = ' + IntToStr(DM_MOV.c_movimentoCODORIGEM.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTO WHERE CODORIGEM = ' + IntToStr(DM_MOV.c_movimentoCODORIGEM.AsInteger));
      dm.sqlsisAdimin.ExecuteDirect(alterastat);
      dm.sqlsisAdimin.Commit(TD);
    end;
end;

procedure TF_TerminalFinaliza.excluinf;
begin
  excluiuNF := True;
  if (sqlBuscaNota.Active) then
  sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select m.codMovimento, m.codCliente, v.CODVENDA  from MOVIMENTO m ' +
    ' inner join venda v on v.CODMOVIMENTO = m.CODMOVIMENTO where ' +
    ' m.CODNATUREZA = 15 and m.CONTROLE = ' +
  QuotedStr(IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger)));
  sqlBuscaNota.Open;
  if (not sqlBuscaNota.IsEmpty) then
  begin
    // Nota Fiscal
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    try
	str_sql := 'DELETE FROM NOTAFISCAL ';
	  str_sql := str_sql + ' where CODVENDA = ' + inttostr(sqlBuscaNota.Fields[2].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      str_sql := 'DELETE FROM VENDA ';
	  str_sql := str_sql + ' where CODMOVIMENTO = ' + inttostr(sqlBuscaNota.Fields[0].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
	  str_sql := 'DELETE FROM MOVIMENTO ';
	  str_sql := str_sql + ' where CODMOVIMENTO = ' + inttostr(sqlBuscaNota.Fields[0].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
      ShowMessage('Nota Fiscal Exclu�da com suscesso');
      excluiuNF := True;
	  except
      dm.sqlsisAdimin.Rollback(TD);
	  MessageDlg('Erro para Excluir a Nota Fiscal.', mtError, [mbOK], 0);
      excluiuNF := False;
	  end;
  end;
end;
procedure TF_TerminalFinaliza.JvBoletoClick(Sender: TObject);
begin
    F_Boletos := TF_Boletos.Create(Application);
    try
      F_Boletos.varLocal := 'Terminal';
      F_Boletos.ID_VENDA := DM_MOV.c_vendaCODVENDA.AsInteger;
      if (F_Boletos.ds_cr.Active) then
         F_Boletos.ds_cr.Close;
      F_Boletos.ds_cr.Params[1].Clear;
      F_Boletos.ds_cr.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
      F_Boletos.ds_cr.Open;
      F_Boletos.ShowModal;
    finally
      F_Boletos.Free;
    end;
end;

procedure TF_TerminalFinaliza.imprimeCupom;
begin
 {  DM_MOV.c_venda.Close;
   DM_MOV.c_venda.Params[0].Clear;
   DM_MOV.c_venda.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
   DM_MOV.c_venda.Open;
   }
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
      IntToStr(DM_MOV.c_vendaNOTAFISCAL.AsInteger) + ' - ' + DM_MOV.c_vendaSERIE.AsString;
     Texto2 := '------------------------------------------------------' ;
     Texto3 := 'Produto                                               ' ;
     Texto4 := 'Cod.Barra          UN      Qtde     V.Un.     V.Total ' ;
     Texto5 := DateTimeToStr(Now) + '            Total.: R$   ';
     cliente := 'Cliente : ' + DM_MOV.c_vendaNOMECLIENTE.Value;
     if (s_parametro.Active) then
         s_parametro.close;
     s_parametro.Params[0].AsString := 'MENSAGEM';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       DM.Mensagem := s_parametroDADOS.AsString
     else
       DM.Mensagem := '';

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMPARQUIVO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       SaveDialog1.Execute;
       AssignFile(IMPRESSORA, SaveDialog1.FileName);
       s_parametro.Close;
     end
     else
     begin
       if (s_parametro.Active) then
         s_parametro.Close;
       s_parametro.Params[0].Clear;
       s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
       s_parametro.Open;
       porta := s_parametroDADOS.AsString;
       s_parametro.Close;
       AssignFile(IMPRESSORA,porta);
     end;
     Rewrite(IMPRESSORA);
     Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
     Writeln(Impressora, c17cpi, logradouro);
     Writeln(Impressora, cep);
     Writeln(Impressora, fone);
     Writeln(Impressora, c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
     Writeln(Impressora, cliente);
     Writeln(Impressora, c17cpi, texto);
     Writeln(Impressora, c17cpi, texto1);
     Writeln(Impressora, c17cpi, texto2);
     Writeln(Impressora, c17cpi, texto3);
     Writeln(Impressora, c17cpi, texto4);
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
   try
     DM_MOV.c_movdet.First;
     while not DM_MOV.c_movdet.Eof do
     begin
       DM_MOV.c_movdet.RecordCount;
      // imprime
      Writeln(Impressora, c17cpi + Format('%-40s',[DM_MOV.c_movdetDESCPRODUTO.Value]));
      Write(Impressora, c17cpi, Format('%-13s  ',[DM_MOV.c_movdetCOD_BARRA.Value]));
      Write(Impressora, c17cpi + Format('   %-2s  ',[DM_MOV.c_movdetUN.Value]));
      Write(Impressora, c17cpi + Format('   %-6.2n',[DM_MOV.c_movdetQUANTIDADE.AsFloat]));
      Write(Impressora, c17cpi + Format('   %-6.2n',[DM_MOV.c_movdetPRECO.AsFloat]));
      Writeln(Impressora, c17cpi + Format('   %-6.2n',[DM_MOV.c_movdetValorTotal.value]));

      with Printer.Canvas do
      begin
       Font.Name := 'Courier New';
       Font.Size := 4;
      end;
      DM_MOV.c_movdet.next;
     end;
     total := DM_MOV.c_movdettotalpedido.Value;
     Writeln(Impressora, c17cpi, texto);
     Write(Impressora, c17cpi, texto5);
     Writeln(Impressora, c17cpi + Format('   %-6.2n',[total]));

     // imprimir vencimentos
     while not scdsCr_proc.Eof do
     begin
       Texto5 := 'Vencimento :   ';
       Write(Impressora, c17cpi, texto5);
       Texto5 := DateTimeToStr(scdsCr_procDATAVENCIMENTO.AsDateTime);
       Texto5 := Texto5 + ' - Valor R$' + FloatToStr(scdsCr_procVALOR_RESTO.AsFloat);
       Writeln(Impressora, c17cpi, texto5);
       scdsCr_proc.Next;
     end;
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

end;

procedure TF_TerminalFinaliza.imprimeRecibo;
begin
  VCLReport2.FileName := str_relatorio + 'impr_texto.rep';
  VCLReport2.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport2.Report.Params.ParamByName('PVENDA').Value := DM_MOV.c_vendaCODVENDA.AsInteger;
  VCLReport2.Execute;
end;

procedure TF_TerminalFinaliza.JvBitBtn1Click(Sender: TObject);
begin
  tipoImpressao := '';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CUPOMPDV';
  dm.cds_parametro.Open;

  if (not dm.cds_parametro.Eof) then
     tipoImpressao := 'CUPOM';

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'RECIBOPDV';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.Eof) then
     tipoImpressao := 'RECIBO';

  if (tipoImpressao = '') then
  begin
    ShowMessage('Parametro Tipo Impress�o n�o configurado');
    exit;
  end;

  if (tipoImpressao = 'CUPOM') then
  begin
     if (usaDll = 'TRUE') then
       imprimeDLLBema
     else
       imprimeCupom;
  end;
  if (tipoImpressao = 'RECIBO') then
    imprimeRecibo;

end;

procedure TF_TerminalFinaliza.imprimeDLLBema;
begin
     if (not dm.cds_empresa.Active) then
      dm.cds_empresa.Open;
     {----- aqui monto o endere�o-----}
     logradouro := dm.cds_empresaENDERECO.Value + ' ' + dm.cds_empresaNUMERO.Value  + ', ' + dm.cds_empresaBAIRRO.Value;
     cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
     ' - ' + dm.cds_empresaCEP.Value;
     fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
     ' / ' + dm.cds_empresaFONE_2.Value;
     Texto  := '-----------------------------------------------------' ;
     Texto1 := DateTimeToStr(Now) + '            Cod.:  ' +
      IntToStr(DM_MOV.c_vendaNOTAFISCAL.AsInteger) + ' - ' + DM_MOV.c_vendaSERIE.AsString;
     Texto2 := '-----------------------------------------------------' ;
     Texto3 := 'Produto ' ;
     Texto4 := 'Cod.Barra        UN      Qtde     V.Un.     V.Total ' ;
     Texto5 := DateTimeToStr(Now) + '           Total.: R$ ';
     cliente := 'Cliente : ' + DM_MOV.c_vendaNOMECLIENTE.Value;
     if (s_parametro.Active) then
         s_parametro.close;
     s_parametro.Params[0].AsString := 'MENSAGEM';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       DM.Mensagem := s_parametroDADOS.AsString
     else
       DM.Mensagem := '';

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMPARQUIVO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       SaveDialog1.Execute;
       AssignFile(IMPRESSORA, SaveDialog1.FileName);
       s_parametro.Close;
     end
     else
     begin
        if (s_parametro.Active) then
          s_parametro.Close;
        s_parametro.Params[0].Clear;
        s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
        s_parametro.Open;
        porta := s_parametroDADOS.AsString;
        s_parametro.Close;

        if (s_parametro.Active) then
          s_parametro.Close;
        s_parametro.Params[0].AsString := 'MODELOIMPRESSORA';
        s_parametro.Open;
        if (s_parametroDADOS.IsNull) then
          ModeloImpressora := 0
        else
          ModeloImpressora := StrToInt(s_parametroDADOS.AsString);
        s_parametro.Close;
        //Configura o Modelo da Impressora
        iRetorno := ConfiguraModeloImpressora( ModeloImpressora );

        if (iRetorno = -2) then
          ShowMessage('Erro Configurando Impressora');
        iRetorno := IniciaPorta( pchar( porta ) );
        if (iRetorno <= 0) then
          ShowMessage('Erro Abrindo Porta');
     end;

      buffer  := dm.cds_empresaRAZAO.AsString + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := logradouro + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := cep + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := fone + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := 'CNPJ :' + dm.cds_empresaCNPJ_CPF.AsString + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := cliente + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto1 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto2 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto3 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto4 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

     DM_MOV.c_movdet.First;
     while not DM_MOV.c_movdet.Eof do
     begin
         // imprime
        buffer  := DM_MOV.c_movdetDESCPRODUTO.Value + Chr(13) + Chr(10);
        comando := FormataTX(buffer, 3, 0, 0, 0, 0);
        if comando = 0 then
        begin
          MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;
        buffer  := Format('%-13s  ',[DM_MOV.c_movdetCODPRO.Value]);
        buffer  := buffer + Format('   %2s  ',[DM_MOV.c_movdetUN.Value]);
        buffer  := buffer + Format('   %6.2n',[DM_MOV.c_movdetQUANTIDADE.AsFloat]);
        buffer  := buffer + Format('   %6.2n',[DM_MOV.c_movdetPRECO.AsFloat]);
        buffer  := buffer + Format('   %8.2n',[DM_MOV.c_movdetValorTotal.value]);
        buffer  := buffer + Chr(13) + Chr(10);
        comando := FormataTX(buffer, 3, 0, 0, 0, 0);
        if comando = 0 then
        begin
          MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;
        DM_MOV.c_movdet.next;
     end;

     buffer  := texto + Chr(13) + Chr(10);
     comando := FormataTX(buffer, 3, 0, 0, 0, 0);
     if comando = 0 then
     begin
       MessageDlg('Problemas na impress�o do texto.' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
       exit;
     end;

     buffer  := texto5;
     total   := DM_MOV.c_movdettotalpedido.Value;
     buffer  := buffer + Format('%10.2n',[total]);
     buffer  := buffer + Chr(13) + Chr(10);
     comando := FormataTX(buffer, 3, 0, 0, 0, 0);

     buffer  := 'Assnatura:________________________________________';
     buffer  := buffer + Chr(13) + Chr(10);
     comando := FormataTX(buffer, 3, 0, 0, 0, 0);


  {   // imprimir vencimentos
     while not scdsCr_proc.Eof do
     begin
       Texto5 := 'Vencimento :   ';
       Write(Impressora, c17cpi, texto5);
       Texto5 := DateTimeToStr(scdsCr_procDATAVENCIMENTO.AsDateTime);
       Texto5 := Texto5 + ' - Valor R$' + FloatToStr(scdsCr_procVALOR_RESTO.AsFloat);
       Writeln(Impressora, c17cpi, texto5);
       scdsCr_proc.Next;
     end;
     Writeln(IMPRESSORA);
     Write(Impressora, c10cpi, DM.Mensagem);

     }

     // Verifico se tem % Gar�om
     s_parametro.Close;
     if (s_parametro.Active) then
     s_parametro.Close;
     s_parametro.Params[0].AsString := 'PAGA_COMISSAO';
     s_parametro.Open;
     if (not s_parametro.IsEmpty) then
     begin
       if (F_Terminal.JvComissao.Value > 0) then
       begin
         Texto5 := DateTimeToStr(Now) + '               % : R$ ';
         buffer  := texto5;
         porc    := (F_Terminal.JvComissao.Value / 100) * total;
         buffer  := buffer + Format('%10.2n',[porc]);
         buffer  := buffer + Chr(13) + Chr(10);
         comando := FormataTX(buffer, 3, 0, 0, 0, 0);

         buffer  := texto5;
         total   := total + porc;
         buffer  := buffer + Format('%10.2n',[total]);
         buffer  := buffer + Chr(13) + Chr(10);
         comando := FormataTX(buffer, 3, 0, 0, 0, 0);

       end;
     end;
     s_parametro.Close;


      buffer  := '' + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      buffer  := '' + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      buffer  := '' + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      buffer  := '' + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);

     // Corto o Papel
     comando := AcionaGuilhotina(1);  // modo total (full cut)
     if comando <> 1 then
       MessageDlg('Problemas no corte do papel..' + #10 + 'Poss�veis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );

     // Comando para Acionar a Gaveta de Dinheiro
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'ABRIR_GAVETA';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
       scomando := #27 + #118 + #140;
       iRetorno := ComandoTX( scomando, Length( scomando ));
     end;
     s_parametro.Close;
end;

procedure TF_TerminalFinaliza.BitBtn1Click(Sender: TObject);
begin
  F_Entrada := TF_Entrada.Create(Application);
  try
    if (F_Entrada.c_forma.Active) then
      F_Entrada.c_forma.Close;
    F_Entrada.c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    F_Entrada.c_forma.Open;

    if (F_Entrada.c_forma.IsEmpty) then
      F_Entrada.c_forma.Append
    else
      F_Entrada.c_forma.Edit;
    F_Entrada.JvPedido.Value := jvTotal.Value;
    F_Entrada.ShowModal;
  finally
    F_Entrada.Free;
  end;
  if (DM_MOV.c_forma.Active) then
      DM_MOV.c_forma.close;
  DM_MOV.c_forma.Params[0].Clear;
  DM_MOV.c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  DM_MOV.c_forma.Open;
  if (DM_MOV.c_formatotal.IsNull) then
    jvPago.Value := jvPago.Value
  else
    jvPago.Value := DM_MOV.c_formatotal.Value;
  DM_MOV.c_forma.Close;  


end;

procedure TF_TerminalFinaliza.jvPagoExit(Sender: TObject);
begin
    jvTroco.AsFloat := jvPago.AsFloat - jvApagar.AsFloat;
end;

procedure TF_TerminalFinaliza.jvAcrescimoExit(Sender: TObject);
begin
    jvApagar.AsFloat := (jvTotal.AsFloat + jvAcrescimo.AsFloat) - jvDesconto.AsFloat;
end;

procedure TF_TerminalFinaliza.jvDescontoExit(Sender: TObject);
begin
  if (jvAcrescimo.AsFloat > 0) then
    jvApagar.AsFloat := (jvTotal.AsFloat + jvAcrescimo.AsFloat) - jvDesconto.AsFloat
  else
    jvApagar.AsFloat := jvTotal.AsFloat - jvDesconto.AsFloat;
end;

procedure TF_TerminalFinaliza.JvBitBtn2Click(Sender: TObject);
begin
  fCarne := TfCarne.Create(Application);
  try
    if (fCarne.scdsCr_proc.Active) then
        fCarne.scdsCr_proc.Close;
    fCarne.scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
    fCarne.scdsCr_proc.Open;

    if (fCarne.buscaCli.Active) then
        fCarne.buscaCli.Close;
    fCarne.buscaCli.Params[0].AsInteger := DM_MOV.c_vendaCODCLIENTE.AsInteger;
    fCarne.buscaCli.Open;
    fCarne.BoletoCarne.Preview();
  finally
    fCarne.Free;
  end;
end;

procedure TF_TerminalFinaliza.baixa_titulos;
var
    FRec : TReceberCls;
begin
  try
     // Marco o T�tulo
     Texto := 'UPDATE RECEBIMENTO SET DP = 0, USERID = ' + IntToStr(usulog) + ' WHERE CODRECEBIMENTO = ' +
              IntToStr(scdsCr_procCODRECEBIMENTO.AsInteger);
     dm.sqlsisAdimin.StartTransaction(TD);
     dm.sqlsisAdimin.ExecuteDirect(Texto);
     Try
      dm.sqlsisAdimin.Commit(TD);
     except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro no sistema, Marcar Titulo Falhou.', mtError,
         [mbOk], 0);
     end;

     FRec := TReceberCls.Create;
     baixou := FRec.baixaTitulo(Valor_CR, //Valor
                                0, //Funrural
                                0, // Juros
                                0, // Desconto
                                0, // Perda
                                Data_Baixa, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Baixa
                                Data_Receb, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Recebimento
                                Data_Conso, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Consolida
                                formaRec,  // FormaRecebimento
                                N_documento, //DM_MOV.c_vendaN_DOCUMENTO.AsString, // N� Documento
                                caixaCR, // Caixa
                                CodigoCliCR, //DM_MOV.c_vendaCODCLIENTE.AsInteger, // Codigo do Cliente
                                '7-',
                                usulog); // Usuario Logado
    Texto := 'UPDATE RECEBIMENTO SET DP = ' + 'null' + ', USERID = ' + 'null' + ' WHERE CODRECEBIMENTO = ' +
              IntToStr(scdsCr_procCODRECEBIMENTO.AsInteger);;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(Texto);
    Try
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro no sistema, Desmarcar Titulo Falhou.', mtError,
         [mbOk], 0);
    end;
  finally
     Frec.Free;
  end;

end;

end.
