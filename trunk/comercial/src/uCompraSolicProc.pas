unit uCompraSolicProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, FMTBcd, DBClient,
  Provider, SqlExpr;

type
  TfCompraSolicProc = class(TfPai_new)
    rgSit: TRadioGroup;
    JvDBGrid1: TJvDBGrid;
    btnAprovar: TBitBtn;
    sdsSol: TSQLDataSet;
    dspSol: TDataSetProvider;
    cdsSol: TClientDataSet;
    cdsSolSOLIC_CODIGO: TIntegerField;
    cdsSolSOLIC_DATA: TDateField;
    cdsSolSOLIC_QUANTIDADE: TFloatField;
    cdsSolSOLIC_SITUACAO: TStringField;
    cdsSolSOLIC_DATAAPROV: TDateField;
    cdsSolSOLIC_DESCRICAO: TStringField;
    cdsSolSOLIC_TIPO: TStringField;
    cdsSolSOLIC_PRODUTO: TStringField;
    cdsSolSOLIC_SOLICITANTE: TStringField;
    cdsSolSOLIC_APROVACAO: TStringField;
    cdsSolSOLIC_DTNECESSIT: TDateField;
    cdsSolSOLIC_OBSERVACAO: TStringField;
    procedure rgSitClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure listaSolicitacao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCompraSolicProc: TfCompraSolicProc;

implementation

uses UDm, uAtsAdmin;

{$R *.dfm}

procedure TfCompraSolicProc.listaSolicitacao;
var sit, str: string;
begin
  sit := '';
  case rgSit.ItemIndex of
    0 : sit := 'P';
    1 : sit := 'A';
  end;

  // Busca Solicitacao
  if (cdsSol.Active) then
    cdsSol.Close;
  str := 'SELECT * FROM COMPRA_SOLIC ';
  if (sit <> '') then
    str := str + ' WHERE SOLIC_SITUACAO = ' + QuotedStr(sit);
  cdsSol.CommandText := str;
  cdsSol.Open;
end;

procedure TfCompraSolicProc.rgSitClick(Sender: TObject);
begin
  case rgSit.ItemIndex of
    0 : btnAprovar.Enabled := True;
    1 : btnAprovar.Enabled := False;
    2 : btnAprovar.Enabled := False;
  end;
  listaSolicitacao;
end;

procedure TfCompraSolicProc.btnProcurarClick(Sender: TObject);
begin
  //inherited;
  listaSolicitacao;
end;

procedure TfCompraSolicProc.btnIncluirClick(Sender: TObject);
var situa: string;
begin
  // Ver se o usuario q esta aprovando e a pessoa responsavel
  if (fAtsAdmin.UserControlComercial.CurrentUser.UserLogin = cdsSolSOLIC_APROVACAO.AsString) then
  begin
    dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
      QuotedStr('A') + ', SOLIC_DATAAPROV = CURRENT_DATE'  +
        ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsSolSOLIC_CODIGO.AsInteger));
    if (cdsSol.Active) then
      cdsSol.Close;
    cdsSol.Open;
  end
  else begin
    MessageDlg('Respons�vel pela aprova��o diferente do usu�rio atual;', mtWarning, [mbOK], 0);
  end;
end;

procedure TfCompraSolicProc.FormCreate(Sender: TObject);
begin
  //inherited;

end;

end.
