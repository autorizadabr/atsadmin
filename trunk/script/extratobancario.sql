SET TERM ^ ;

CREATE PROCEDURE EXTRATOBANCARIO
 ( CAIXAMOV INTEGER, DTAINI DATE, DTAFIM DATE) 
RETURNS 
 (EXTRATOCOD  VARCHAR(20), 
  EXTRATODATA DATE, 
  CAIXA       INTEGER, 
  EXTRATODOC  VARCHAR(100), 
  EXTRATOTIPO VARCHAR(20), 
  EXTRATOVALOR DOUBLE PRECISION, 
  SEL          CHAR(1), 
  CONCILIADO   CHAR(1),
  CONTA        INTEGER,
  NOME        VARCHAR(200))
AS  
BEGIN
  FOR SELECT r.EXTRATOCOD, r.EXTRATODATA, r.CAIXA, r.EXTRATODOC, r.EXTRATOTIPO, r.EXTRATOVALOR, r.SEL, r.CONCILIADO 
        FROM BANCOEXTRATO r
       WHERE r.CAIXA = :CAIXAMOV
         AND R.EXTRATODATA BETWEEN :DTAINI AND :DTAFIM
  INTO :EXTRATOCOD, :EXTRATODATA, :CAIXA, :EXTRATODOC, :EXTRATOTIPO, :EXTRATOVALOR, :SEL, :CONCILIADO   
  DO BEGIN
    SELECT FIRST 1 BD.CONTA 
      FROM BANCODEPARA BD 
     WHERE BD.CAIXA       = :CAIXA
       AND BD.EXTRATODOC  = :EXTRATODOC
       AND BD.EXTRATOTIPO = :EXTRATOTIPO
      INTO :CONTA;   
   
    SELECT PL.NOME FROM PLANO PL
     WHERE PL.CODIGO = :CONTA
      INTO :NOME;
    
    SUSPEND;
  END     
  
END^

SET TERM ; ^