unit uReceberTeste;

interface
uses TestFramework, uReceberCls;

type
  TRecTeste = class(TTestCase)
  private
    FRec: TReceberCls;
  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestRecInclusao;
    procedure TestRecAlteracao;
    procedure TestRecExclusao;
end;

  {const
    CCodCli       = 950000;
    CCodEndereco  = 950000;}

implementation

uses SysUtils, UDm, DateUtils;


{ TClienteTeste }

procedure TRecTeste.SetUp;
begin
  inherited;
  FRec := TReceberCls.Create;
end;

procedure TRecTeste.TearDown;
begin
  FRec.Destroy;
  inherited;
end;

procedure TRecTeste.TestRecAlteracao;
begin
  {FVenda.verVenda(IntToStr(CCodCli),'CODVenda', 'INTEGER');
  FVenda.NomeVenda := 'TESTE Venda 1 PONTO 2';
  FVenda.Status      := 1;
  FVenda.TipoFirma   := 0;
  FVenda.Cnpj        := '115.555.999-02';
  FVenda.InscEstadual:= '54.987.987-EP';
  FVenda.alterarVenda(CCodCli);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT NOMEVenda, RAZAOSOCIAL, CNPJ, INSCESTADUAL,' +
        'LOGRADOURO, BAIRRO, CIDADE, CD_IBGE, CEP, E_MAIL ' +
        ' FROM VendaS C, ENDERECOVenda CE ' +
        'WHERE C.CODVenda = CE.CODVenda ' +
        '  AND C.CODVenda = ' + IntToStr(FVenda.CodCli));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('NOMEVenda').AsString = FVenda.NomeVenda , 'Nome Venda Errado.');
  check(dm.sqlBusca.FieldByName('CNPJ').AsString        = FVenda.Cnpj , 'CNPJ/CPF Errado.');
  check(dm.sqlBusca.FieldByName('INSCESTADUAL').AsString= FVenda.InscEstadual , 'Insc. Estadual Errado.');
   }
end;

procedure TRecTeste.TestRecExclusao;
begin
  // Testa exclus�o
  {FVenda.excluirVenda(CCodCli);
  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODVenda ' +
    ' FROM VendaS ' +
    'WHERE CODVenda  = ' + IntToStr(CCodCli));

  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
    check(1 = 1 , 'Venda Exclu�do.')
  else
    check(1 = 2 , 'Venda n�o Exclu�do.')
   }
end;

procedure TRecTeste.TestRecInclusao;
var codRec, codVenda: Integer;
begin
  //FRec.CodRec         := 0;
  CodVenda       := 2520;  // ESTE C�dito � necess�rio para Gerar um t�tulo para a Venda
  {FVenda.CodCliente   := 0;
  FVenda.CodUsuario   := 1;
  FVenda.CodVendedor  := 1;
  FVenda.DataVenda    := Today;
  FVenda.DataVcto     := Today;
  FVenda.CodCCusto    := 0;
  FVenda.NotaFiscal   := 99999992;
  FVenda.Serie        := 'I';
  FVenda.CodMov       := 476; }

  codRec := FRec.geraTitulo(0, codVenda);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODVenda' +
        '  FROM RECEBIMENTO R ' +
        ' WHERE R.CODRECEBIMENTO = ' + IntToStr(codRec));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('CodVenda').AsInteger = codVenda , 'T�tulo N�o Gravado.');
end;


initialization
  RegisterTest('Receber/Teste', TRecTeste.Suite);

end.
