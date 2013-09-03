unit uOf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, JvToolEdit, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, DBXpress,
  JvExMask, JvBaseEdits, FMTBcd, DBClient, Provider, SqlExpr, JvExControls,
  JvLabel;

type
  TfOf = class(TfPai_new)
    OfId: TEdit;
    OfProd: TEdit;
    OfDesc: TEdit;
    OfQtde: TJvCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    OfData: TJvDateEdit;
    Label3: TLabel;
    btnProdutoProcura: TBitBtn;
    sqlOf: TSQLDataSet;
    dspOf: TDataSetProvider;
    cdsOf: TClientDataSet;
    cdsOfOFID: TIntegerField;
    cdsOfOFDATA: TDateField;
    cdsOfOFSTATUS: TStringField;
    cdsOfOFQTDESOLIC: TFloatField;
    cdsOfOFQTDEPRODUZ: TFloatField;
    cdsOfOFQTDEPERDA: TFloatField;
    cdsOfOFMOTIVO: TStringField;
    cdsOfCODPRODUTO: TIntegerField;
    JvLabel1: TJvLabel;
    OFID_Ind: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    sqlOfOFID: TIntegerField;
    sqlOfOFDATA: TDateField;
    sqlOfOFSTATUS: TStringField;
    sqlOfOFQTDESOLIC: TFloatField;
    sqlOfOFQTDEPRODUZ: TFloatField;
    sqlOfOFQTDEPERDA: TFloatField;
    sqlOfOFMOTIVO: TStringField;
    sqlOfCODPRODUTO: TIntegerField;
    sqlOfOFID_IND: TSmallintField;
    cdsOfOFID_IND: TSmallintField;
    sqlInd: TSQLQuery;
    sqlId: TSQLQuery;
    sdsDetalhe: TSQLDataSet;
    dspDetalhe: TDataSetProvider;
    cdsDetalhe: TClientDataSet;
    cdsDetalheCODPRODMP: TIntegerField;
    cdsDetalheSUM: TFloatField;
    cdsDetalheUSAPRECO: TStringField;
    sds_s: TSQLDataSet;
    cds_movMat: TClientDataSet;
    cds_movMatCODMOVIMENTO: TIntegerField;
    cds_movMatDATAMOVIMENTO: TDateField;
    cds_movMatCODCLIENTE: TIntegerField;
    cds_movMatCODNATUREZA: TSmallintField;
    cds_movMatSTATUS: TSmallintField;
    cds_movMatCODUSUARIO: TSmallintField;
    cds_movMatNOMECLIENTE: TStringField;
    cds_movMatDESCNATUREZA: TStringField;
    cds_movMatALMOXARIFADO: TStringField;
    cds_movMatCODVENDEDOR: TSmallintField;
    cds_movMatCODALMOXARIFADO: TIntegerField;
    cds_movMatNOMEFORNECEDOR: TStringField;
    cds_movMatCODFORNECEDOR: TIntegerField;
    cds_movMatTIPOTITULO: TSmallintField;
    cds_movMatDATA_SISTEMA: TSQLTimeStampField;
    cds_movMatNOMEUSUARIO: TStringField;
    cds_movMatPLACA: TStringField;
    cds_movMatMARCA_MODELO: TStringField;
    cds_movMatCOD_VEICULO: TIntegerField;
    cds_movMatBAIXAMOVIMENTO: TSmallintField;
    cds_movMatCONTROLE: TStringField;
    cds_movMatCODCCUSTO: TSmallintField;
    cds_movMatNOTAFISCAL: TIntegerField;
    cds_movMatNOTAFISCAL_1: TIntegerField;
    cds_movMatSERIE: TStringField;
    cds_movMatOBS: TStringField;
    cds_movMatOBSERVACAO: TStringField;
    cds_movMatCODORIGEM: TIntegerField;
    dsp_movMat: TDataSetProvider;
    sds_movMat: TSQLDataSet;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    SmallintField4: TSmallintField;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    IntegerField4: TIntegerField;
    SmallintField5: TSmallintField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField5: TIntegerField;
    SmallintField6: TSmallintField;
    StringField8: TStringField;
    SmallintField7: TSmallintField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    sds_movMatCODORIGEM: TIntegerField;
    dsd_movDetMat: TSQLDataSet;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField4: TFloatField;
    StringField14: TStringField;
    SmallintField8: TSmallintField;
    IntegerField11: TIntegerField;
    StringField15: TStringField;
    FloatField5: TFloatField;
    IntegerField12: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    FloatField6: TFloatField;
    StringField18: TStringField;
    DateField2: TDateField;
    DateField3: TDateField;
    StringField19: TStringField;
    FloatField7: TFloatField;
    dsp_movDetMat: TDataSetProvider;
    cds_movDetMat: TClientDataSet;
    cds_movDetMatCODDETALHE: TIntegerField;
    cds_movDetMatCODMOVIMENTO: TIntegerField;
    cds_movDetMatCODPRODUTO: TIntegerField;
    cds_movDetMatICMS: TFloatField;
    cds_movDetMatPRECO: TFloatField;
    cds_movDetMatQUANTIDADE: TFloatField;
    cds_movDetMatPRODUTO: TStringField;
    cds_movDetMatUN: TStringField;
    cds_movDetMatQTDE_ALT: TFloatField;
    cds_movDetMatBAIXA: TStringField;
    cds_movDetMatCONTROLE: TSmallintField;
    cds_movDetMatCODALMOXARIFADO: TIntegerField;
    cds_movDetMatALMOXARIFADO: TStringField;
    cds_movDetMatVALORUNITARIOATUAL: TFloatField;
    cds_movDetMatCOD_COMISSAO: TIntegerField;
    cds_movDetMatCONTA_DESPESA: TStringField;
    cds_movDetMatCODPRO: TStringField;
    cds_movDetMatQTDE_PCT: TFloatField;
    cds_movDetMatLOTE: TStringField;
    cds_movDetMatDTAFAB: TDateField;
    cds_movDetMatDTAVCTO: TDateField;
    cds_movDetMatLOTES: TStringField;
    cds_movDetMatPRECOCUSTO: TFloatField;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODPRODUTO: TIntegerField;
    cdsCODPRO: TStringField;
    cdsPRODUTO: TStringField;
    cdsPRECO_CUSTO: TFloatField;
    cdsESTOQUE: TFloatField;
    cdsUNIDADEMEDIDA: TStringField;
    cdsLOTES2: TStringField;
    cdsPRECO_VENDA: TBCDField;
    cdsPRECO_COMPRA: TFloatField;
    sdslote: TSQLDataSet;
    sdsloteCODLOTE: TIntegerField;
    sdsloteLOTE: TStringField;
    sdsloteCODPRODUTO: TIntegerField;
    sdsloteDATAFABRICACAO: TDateField;
    sdsloteDATAVENCIMENTO: TDateField;
    sdsloteESTOQUE: TFloatField;
    sdslotePRODUTO: TStringField;
    sdsloteCODPRO: TStringField;
    sdslotePRECO: TFloatField;
    dsplotes: TDataSetProvider;
    cdslotes: TClientDataSet;
    cdslotesCODLOTE: TIntegerField;
    cdslotesLOTE: TStringField;
    cdslotesCODPRODUTO: TIntegerField;
    cdslotesDATAFABRICACAO: TDateField;
    cdslotesDATAVENCIMENTO: TDateField;
    cdslotesESTOQUE: TFloatField;
    cdslotesPRODUTO: TStringField;
    cdslotesCODPRO: TStringField;
    cdslotesPRECO: TFloatField;
    cdsDetalheQTDEUSADA: TFloatField;
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure OfProdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure cds_movMatNewRecord(DataSet: TDataSet);
    procedure cds_movDetMatNewRecord(DataSet: TDataSet);
    procedure OfIdExit(Sender: TObject);
  private
    procedure baixamatprimas(tipomat: string; codof: integer);
    procedure lancaapont(codof: integer);

  public
    codProd: Integer;
    OfTipo : String;
    cod_nat, cod_Ven : Integer;
    natureza, serie, cliente, vendedor : string;

  end;

var
  fOf: TfOf;

implementation

uses ufprocura_prod, UDm, UDMNF, uMovimento, uVendaCls, uCompraCls;

{$R *.dfm}

procedure TfOf.btnProdutoProcuraClick(Sender: TObject);
begin
  inherited;
  fProcura_prod.cbTipo.ItemIndex := 4;
  fProcura_prod.btnIncluir.Visible := true;
  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prod.Panel1.Visible := false;
    fProcura_prod.Panel2.Visible := true;
    //fProcura_prod.CheckBox1.Checked := True;
    fProcura_prod.BitBtn1.Click;
  end
  else begin
    fProcura_prod.Panel2.Visible := false;
    fProcura_prod.Panel1.Visible := true;
    //fProcura_prod.CheckBox1.Checked := False;
    if (fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Close;
  end;
  varonde := 'EntraSai';
  var_F := 'formof';
  fProcura_prod.BitBtn5.Visible := False;
  fProcura_prod.ShowModal;
  if (dm.scds_produto_proc.Active ) then
  begin
    OfDesc.Text := dm.scds_produto_procPRODUTO.AsString;
    codProd := dm.scds_produto_procCODPRODUTO.asInteger;
  end;
end;

procedure TfOf.btnGravarClick(Sender: TObject);
begin
  if (codProd = 0) then
  begin
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := OfProd.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then begin
      MessageDlg('C�digo do produto inv�lido.', mtWarning,
        [mbOk], 0);
      exit;
    end;
  end;
  cdsOfOFID.AsInteger       := StrToInt(OfId.Text);
  cdsOfOFDATA.AsDateTime    := OfData.Date;
  if (OFTipo = 'OP') then
  begin
    cdsOfOFID_IND.AsInteger   := 0;
    cdsOfOFQTDESOLIC.AsFloat  := OfQtde.Value;
    cdsOfOFQTDEPRODUZ.AsFloat := 0;
    cdsOfOFQTDEPERDA.AsFloat  := 0;
    cdsOfCODPRODUTO.AsInteger := codProd;
    cdsOfOFSTATUS.AsString    := 'A'; // OF Aberta
    inherited;
    baixamatprimas('BAIXAENTESTOQUE', cdsOfOFID.AsInteger);
  end;
  if (OFTipo = 'APONTAMENTO') then
  begin
    //cdsOfOFID_IND.AsInteger   := StrToInt(OFID_Ind.Text);
    //cdsOfOFQTDESOLIC.AsFloat  := 0;
    cdsOfOFQTDEPRODUZ.AsFloat := OfQtde.Value;
    cdsOfOFQTDEPERDA.AsFloat  := 0;
    //cdsOfCODPRODUTO.AsInteger := codProd;
    cdsOfOFSTATUS.AsString    := 'F'; // OF Finalizada
    inherited;
    if (cdsOfOFQTDEPRODUZ.AsFloat <> cdsOfOFQTDESOLIC.AsFloat) then
      baixamatprimas('BAIXAENTESTOQUE', cdsOfOFID.AsInteger);
    lancaapont(cdsOfOFID.AsInteger);
  end;
  if (OFTipo = 'PERDA') then
  begin
    cdsOfOFQTDESOLIC.AsFloat  := 0;
    cdsOfOFQTDEPRODUZ.AsFloat := 0;
    cdsOfOFQTDEPERDA.AsFloat  := OfQtde.Value;
    cdsOfCODPRODUTO.AsInteger := codProd;
    inherited;    
  end;
end;

procedure TfOf.OfProdExit(Sender: TObject);
begin
  //inherited;
  if dm.scds_produto_proc.Active then
    dm.scds_produto_proc.Close;
  dm.scds_produto_proc.Params[0].AsInteger := 0;
  dm.scds_produto_proc.Params[1].AsString := OfProd.Text;
  dm.scds_produto_proc.Open;
  if dm.scds_produto_proc.IsEmpty then begin
    MessageDlg('C�digo n�o cadastrado, deseja cadastra-l� ?', mtWarning,
      [mbOk], 0);
    btnProdutoProcura.Click;
    exit;
  end;
  OfDesc.Text := dm.scds_produto_procPRODUTO.AsString;
  codProd := dm.scds_produto_procCODPRODUTO.asInteger;
end;

procedure TfOf.FormShow(Sender: TObject);
begin
//  inherited;
  codProd := 0;
  if (OFTipo = 'APONTAMENTO') then
  begin
    OfData.Enabled := False;
    OFID_Ind.Enabled := False;
    OfProd.Enabled := False;
    OfDesc.Enabled := False;
    btnProdutoProcura.Enabled := False;
//    OfId.ReadOnly := False;
  end;
end;

procedure TfOf.btnIncluirClick(Sender: TObject);
begin
  OfQtde.Value := 0;
  if (OFTipo = 'OP') then
  begin
    OfData.Date := Now;
    OfProd.Text := '';
    OFDesc.Text := '';
    inherited;
    if (sqlId.Active) then
      sqlId.Close;
    sqlId.Open;
    OFID.Text := IntToStr(sqlId.Fields[0].AsInteger + 1);
    sqlInd.Close;
    OFID_Ind.Text := '0';
    cdsOfOFID_IND.AsInteger := 0; // Toda OF (OP) ter�o IND = 0
    OfId.ReadOnly := True;
  end;
  if (OFTipo = 'APONTAMENTO') then
  begin
    OfId.ReadOnly := False;
    OfId.SetFocus;
    if (not cdsOf.Active) then
      cdsOf.Open;
    cdsOf.Append;
  end;
end;

procedure TfOf.JvDBGrid1CellClick(Column: TColumn);
begin
  inherited;
  OFData.Date  := cdsOfOFDATA.AsDateTime;
  if (OFTipo = 'OP') then
    OFQtde.Value := cdsOfOFQTDESOLIC.Value;
  if (OFTipo = 'APONTAMENTO') then
    OFQtde.Value := cdsOfOFQTDEPRODUZ.Value;
  if (OFTipo = 'PERDA') then
    OFQtde.Value := cdsOfOFQTDEPERDA.Value;
end;

procedure TfOf.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfOf.baixamatprimas(tipomat: string; codof: integer);
  var codMovSaida : integer;
    TD: TTransactionDesc;
    sql_sp, tipo : string;
    TDA: TTransactionDesc;
    FMov: TMovimento;
    FVen: TVendaCls;
    Save_Cursor:TCursor;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (cdsDetalhe.Active) then
    cdsDetalhe.Close;
  cdsDetalhe.Params[0].AsInteger := codof;
  cdsDetalhe.Params[1].AsString := tipomat;
  cdsDetalhe.Open;
  {** se n�o estiver vazio procuro pela mat�ria prima}
  if (not cdsDetalhe.IsEmpty) then
  begin
    cdsDetalhe.First;

    if (sds_s.Active) then
      sds_s.Close;
    sds_s.CommandText := 'SELECT SERIE FROM SERIES WHERE SERIE = ' + '''' + 'O' + '''';
    sds_s.open;
    if (sds_s.IsEmpty) then
    begin
      if (sds_s.Active) then
        sds_s.Close;
      sds_s.CommandText := 'INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES(' + '''' + 'O' + ''',' + '0)';
      sds_s.ExecSQL();
    end;

    if ( (cdsOfOFQTDEPRODUZ.AsFloat < cdsOfOFQTDESOLIC.AsFloat) and (cdsOfOFSTATUS.AsString = 'F') )then
    begin
      //********VERIFICA SE JA FOI DADO BAIXA PARA EXCLUIR MOVIMENTO ANTIGO********
      if dm.cdsBusca.Active then
        dm.cdsBusca.Close;
      dm.cdsBusca.CommandText := 'SELECT * FROM MOVIMENTO WHERE CONTROLE = '
      + QuotedStr('OP' + IntToStr(codof));
      dm.cdsBusca.Open;

      if not dm.cdsBusca.IsEmpty then
      begin
        if  (dm.cdsBusca.FieldByName('CODNATUREZA').AsInteger = 2) then
          tipo := 'SAIDA';

        dm.sqlsisAdimin.ExecuteDirect('DELETE FROM VENDA WHERE CODMOVIMENTO = '
        + IntToStr(dm.cdsBusca.FieldByName('CODMOVIMENTO').AsInteger));

        dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTO WHERE CODMOVIMENTO = '
        + IntToStr(dm.cdsBusca.FieldByName('CODMOVIMENTO').AsInteger));
      end;
      //***************************************************************************
    end;

    TDA.TransactionID  := 1;
    TDA.IsolationLevel := xilREADCOMMITTED;

    Save_Cursor   := Screen.Cursor;
    Screen.Cursor := crHourGlass;    { Show hourglass cursor }

    Try
      FMov := TMovimento.Create;
      FVen := TVendaCls.Create;

      Try
        dm.sqlsisAdimin.StartTransaction(TDA);

        cdsDetalhe.DisableControls;
        cdsDetalhe.First;

        if (dm.cds_parametro.Active) then
          dm.cds_parametro.Close;
        dm.cds_parametro.Params[0].asString := 'CENTROCUSTO';   // Centro de Custo Padrao
        dm.cds_parametro.Open;

        // Cria o Movimento de SAIDA uma vez
        FMov.CodMov      := 0;
        FMov.CodCCusto   := StrToInt(dm.cds_parametroD1.AsString);
        FMov.CodCliente  := 0;
        FMov.CodNatureza := 2;
        FMov.Status      := 0;
        FMov.CodUsuario  := 1;
        FMov.CodVendedor := 1;
        FMov.DataMov     := Now;
        FMov.Controle    := 'OP' + IntToStr(codof);
        codMovSaida := FMov.inserirMovimento(0);

        While not cdsDetalhe.Eof do
        begin
          if (cds.Active) then
            cds.Close;
          cds.Params[0].AsInteger := cdsDetalheCODPRODMP.AsInteger;
          cds.Open;
          While not cds.Eof do
          begin
            FMov.MovDetalhe.CodMov        := codMovSaida;
            FMov.MovDetalhe.CodProduto    := cdsCODPRODUTO.AsInteger;
            FMov.MovDetalhe.Un            := cdsUNIDADEMEDIDA.AsString;
            FMov.MovDetalhe.Descricao     := cdsPRODUTO.AsString;
            if ( (cdsOfOFQTDESOLIC.AsFloat < cdsOfOFQTDEPRODUZ.AsFloat ) and (cdsOfOFSTATUS.AsString = 'F'))then
            begin
              FMov.MovDetalhe.Qtde          := (cdsDetalheQTDEUSADA.AsFloat * (cdsOfOFQTDEPRODUZ.AsFloat - cdsOfOFQTDESOLIC.AsFloat) );
            end
            else if ( (cdsOfOFQTDEPRODUZ.AsFloat < cdsOfOFQTDESOLIC.AsFloat) and (cdsOfOFSTATUS.AsString = 'F')) then
            begin
              FMov.MovDetalhe.Qtde          := (cdsDetalheQTDEUSADA.AsFloat * cdsOfOFQTDEPRODUZ.AsFloat);
            end
            else
              FMov.MovDetalhe.Qtde          := cdsDetalheSUM.AsFloat;
            FMov.MovDetalhe.Lote          := '';
            FMov.MovDetalhe.DtaVcto       := Now;
            FMov.MovDetalhe.DtaFab        := Now;
            FMov.MovDetalhe.Baixa         := '1';
            FMov.MovDetalhe.inserirMovDet;
            cds.Next;
          end;
          cdsDetalhe.Next;
        end; // Fim While

        fven.CodMov               := codMovSaida;
        fven.DataVenda            := Now;
        fven.DataVcto             := Now;
        fven.Serie                := 'O';
        fven.NotaFiscal           := codMovSaida;
        fven.CodCliente           := 0;
        fven.CodVendedor          := 1;
        fven.CodUsuario           := 1;
        fven.CodCCusto            := FMov.CodCCusto;
        fven.ValorPagar           := 0;
        fven.NParcela             := 1;
        fven.inserirVenda(0);

        dm.sqlsisAdimin.Commit(TDA);
        if (codMovSaida > 0) then
          dm.EstoqueAtualiza(codMovSaida);
        MessageDlg('Materias primas baixadas com sucesso.', mtInformation,
             [mbOk], 0);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
        end;
      end;
    Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
      FMov.Free;
      FVen.Free;
    end;
  end;
end;

procedure TfOf.cds_movMatNewRecord(DataSet: TDataSet);
begin
  cds_movMatCODMOVIMENTO.asInteger := 1999999;
  cds_movMatDATAMOVIMENTO.AsDateTime := Now;
  cds_movMatDATA_SISTEMA.AsDateTime := Now;
  cds_movMatSTATUS.Value := 0;
  cds_movMatCODUSUARIO.AsInteger := 1;//usuario_logado;
  cds_movMatCODVENDEDOR.Value := 1;//usuario_logado;
  cds_movMatCODFORNECEDOR.AsInteger := 0;
  cds_movMatCODCLIENTE.AsInteger := 0;
end;

procedure TfOf.cds_movDetMatNewRecord(DataSet: TDataSet);
begin
  if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  if (cds_MovdetMatCODMOVIMENTO.AsInteger <> 1999999) then
  begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      codmovdet := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
  end;
  cds_movdetMatCODDETALHE.AsInteger := codmovdet;
  cds_MovdetMatCODMOVIMENTO.AsInteger := cds_MovMatCODMOVIMENTO.AsInteger;
end;

procedure TfOf.OfIdExit(Sender: TObject);
begin
  if (OfId.Text <> '') then
  begin
    inherited;
    if (cdsOf.Active) then
      cdsOf.Close;
    cdsOf.Params[0].AsInteger := StrToInt(OfId.Text);
    cdsOf.Open;
    if (cdsOfOFSTATUS.AsString <> 'F') then
    begin
      OFID_Ind.Text := IntToStr(cdsOfOFID_IND.AsInteger);
      if dm.scds_produto_proc.Active then
        dm.scds_produto_proc.Close;
      dm.scds_produto_proc.Params[0].AsInteger := cdsOfCODPRODUTO.AsInteger;
      dm.scds_produto_proc.Params[1].AsString := 'TODOSPRODUTOS';
      dm.scds_produto_proc.Open;
      OfData.Date := cdsOfOFDATA.AsDateTime;
      OfProd.Text := DM.scds_produto_procCODPRO.AsString;
      OfDesc.Text := DM.scds_produto_procPRODUTO.AsString;
      OfQtde.Text := FloatToStr(cdsOfOFQTDESOLIC.AsFloat);
      cdsOf.edit;
      DM.scds_Prod.Close;
    end
    else
    begin
      cdsOf.Params[0].Clear;
      cdsOf.Close;
      MessageDlg('Apontamento j� Efetuado.', mtInformation, [mbOK], 0);
      OfId.Text := '';
      btnIncluir.SetFocus;      
    end;
  end;
end;




procedure TfOf.lancaapont(codof: integer);
var
  sql_sp, movSaida, movEntrada: string;
  TDA: TTransactionDesc;
  FMov: TMovimento;
  FCom: TCompraCls;
  codMovEntrada: Integer;
  Save_Cursor:TCursor;
begin
  codMovEntrada := 0;

  TDA.TransactionID  := 1;
  TDA.IsolationLevel := xilREADCOMMITTED;

  Save_Cursor   := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  //codof := cdsOfOFID.AsInteger;
  Try
    FMov := TMovimento.Create;
    FCom := TCompraCls.Create;
    Try
      dm.sqlsisAdimin.StartTransaction(TDA);
      if (dm.cds_parametro.Active) then
          dm.cds_parametro.Close;
        dm.cds_parametro.Params[0].asString := 'CENTROCUSTO';   // Centro de Custo Padrao
        dm.cds_parametro.Open;

      // ########### ENTRADA    ######################
      FMov.CodMov      := 0;
      FMov.CodCCusto   := StrToInt(dm.cds_parametroD1.AsString);
      FMov.CodCliente  := 0;
      FMov.CodFornec   := 0;
      FMov.CodNatureza := 1;
      FMov.Status      := 0;
      FMov.CodUsuario  := 1;
      FMov.CodVendedor := 1;
      FMov.DataMov     := Now;
      FMov.Obs         := '';
      FMov.Controle    := 'AP' + IntToStr(codof);;
      codMovEntrada := FMov.inserirMovimento(0);

      FMov.MovDetalhe.CodMov        := codMovEntrada;
      FMov.MovDetalhe.CodProduto    := cdsOfCODPRODUTO.AsInteger;
      //FMov.MovDetalhe.Un            := cdsUNIDADEMEDIDA.AsString;
      FMov.MovDetalhe.Descricao     := OfDesc.Text;
      FMov.MovDetalhe.Qtde          := cdsOFOFQTDEPRODUZ.AsFloat;
      FMov.MovDetalhe.Lote          := '';
      FMov.MovDetalhe.DtaVcto       := Now;
      FMov.MovDetalhe.DtaFab        := Now;
      FMov.MovDetalhe.Baixa         := '0';
      FMov.MovDetalhe.inserirMovDet;

      fCom.CodMov               := codMovEntrada;
      fCom.DataCompra           := Now;
      fCom.DataVcto             := Now;
      fCom.Serie                := 'I';
      fCom.NotaFiscal           := codMovEntrada;
      fCom.CodFornecedor        := 0;
      fCom.CodComprador         := 1;
      fCom.CodUsuario           := 1;
      fCom.CodCCusto            := FMov.CodCCusto;
      fCom.ValorPagar           := 0;
      fCom.NParcela             := 1;
      fCom.inserirCompra(0);

      dm.EstoqueAtualiza(codMovEntrada);
      dm.sqlsisAdimin.Commit(TDA);

      MessageDlg('Estoque inserido com sucesso.', mtInformation,
           [mbOk], 0);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
      end;
    end;
  Finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    FCom.Free;
    FMov.Free;
  end;

end;

end.
