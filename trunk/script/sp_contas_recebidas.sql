CREATE OR ALTER PROCEDURE SP_CONTAS_RECEBIDAS (
    DTAINI DATE,
    DTAFIM DATE)
RETURNS (
    DTAEMISSAO DATE,
    DTAVCTO DATE,
    CODCLI INTEGER,
    CLIENTE VARCHAR(60),
    DESCRICAO VARCHAR(150),
    VALORTIT DOUBLE PRECISION,
    VALORPAGO DOUBLE PRECISION,
    CONTACONTABIL VARCHAR(100),
    CAIXA VARCHAR(60),
    CODCONTA VARCHAR(15))
AS
DECLARE VARIABLE CCAIXA INTEGER;
DECLARE VARIABLE CCONTABIL INTEGER;
DECLARE VARIABLE N_TITULO VARCHAR(15);
BEGIN
  /* Lista os pendente a receber */
  FOR SELECT rec.EMISSAO, rec.DATARECEBIMENTO, rec.CODCLIENTE, CAST(rec.CODCLIENTE AS VARCHAR(5)) || '-' ||  cli.NOMECLIENTE,
    rec.HISTORICO, rec.VALOR_RESTO, rec.VALORRECEBIDO, rec.CONTACREDITO,rec.CAIXA, rec.TITULO
    FROM RECEBIMENTO rec, CLIENTES  cli where cli.CODCLIENTE = rec.CODCLIENTE
    and rec.DATARECEBIMENTO BETWEEN :DTAINI AND :DTAFIM  order by rec.DATARECEBIMENTO
  INTO :DTAEMISSAO, :DTAVCTO, :CODCLI, :CLIENTE, :DESCRICAO, :VALORTIT, :VALORPAGO, :CCONTABIL, :CCAIXA, :N_TITULO
  DO BEGIN
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;
    SELECT NOME FROM PLANO WHERE CODIGO = :CCAIXA
    INTO :CAIXA;
    SUSPEND;
    contacontabil = null;
  END
END