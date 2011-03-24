unit uProdutoProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, StdCtrls, Menus, XPMenu, DB, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid;

type
  TfProdutoProc = class(TfPai_new)
    edCod: TEdit;
    edProd: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    JvDBGrid1: TJvDBGrid;
    cdsCODIGO: TStringField;
    cdsITEM: TStringField;
    cdsTIPO: TStringField;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProdutoProc: TfProdutoProc;

implementation

uses UDm;

{$R *.dfm}

procedure TfProdutoProc.btnProcurarClick(Sender: TObject);
var str, str1: String ;
begin
  //inherited;
{  str := ' select CODIGO, ITEM, TIPO from ' +
    '( select p.CODPRO codigo, p.PRODUTO item, ' + QuotedStr('C') + ' TIPO  from PRODUTOS p ' +
    '   where p.TIPO <> ' + QuotedStr('VENDA') +
    ' UNION all ' +
    ' select pl.CODREDUZIDO codigo , pl.NOME item, ' + QuotedStr('D') + ' TIPO from PLANO pl ' +
    '  where plnctaroot(pl.conta) = 4 ' +
    '    and pl.CONSOLIDA = ' + QuotedStr('S') + ') ';}

  str := 'select p.CODPRO codigo, p.PRODUTO item, ' + QuotedStr('C') + ' TIPO  from PRODUTOS p ' +
    '   where p.TIPO <> ' + QuotedStr('VENDA') ;


  if (edCod.Text <> '') then
  begin
    str := str + ' WHERE CODIGO LIKE  ' +  QuotedStr(edCod.Text);
  end;
  if (edProd.Text <> '') then
  begin
    str1 := ' WHERE ITEM LIKE  ' +  QuotedStr(edProd.Text);
  end;
  if (cds.Active) then
    cds.Close;

  cds.CommandText := str + str1;
  cds.Open;
end;

procedure TfProdutoProc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;

end;

end.
