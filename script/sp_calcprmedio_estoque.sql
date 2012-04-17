CREATE OR ALTER PROCEDURE SP_CALCPRMEDIO_ESTOQUE (PRODUTO INTEGER)
RETURNS(
  PROD INTEGER,
  PRC DOUBLE PRECISION,
  QT DOUBLE PRECISION,
  ESTOQUE DOUBLE PRECISION,
  PRECOMEDIO DOUBLE PRECISION,
  TP SMALLINT 
)
AS
  DECLARE VARIABLE QTDE DOUBLE PRECISION = 0; 
  DECLARE VARIABLE VLR DOUBLE PRECISION = 0; 
  DECLARE VARIABLE QTDETOTAL DOUBLE PRECISION = 0; 
  DECLARE VARIABLE VLRTOTAL DOUBLE PRECISION = 0; 
  DECLARE VARIABLE ESTOQUETOTAL DOUBLE PRECISION = 0; 
  DECLARE VARIABLE PRMEDIO DOUBLE PRECISION = 0; 
  DECLARE VARIABLE TIPO SMALLINT; 
  DECLARE VARIABLE ID INTEGER; 
BEGIN
  FOR SELECT movd.codmovimento, MOVD.BAIXA, SUM(MOVD.QUANTIDADE), SUM(MOVD.PRECO) FROM MOVIMENTO mov, MOVIMENTODETALHE movd
  WHERE mov.CODMOVIMENTO = movd.CODMOVIMENTO AND MOVD.CODPRODUTO = :PRODUTO GROUP BY movd.codmovimento, MOV.DATAMOVIMENTO, MOVD.BAIXA
  INTO :ID, :TIPO, :QTDE, :VLR
  DO BEGIN
    PROD = ID;
    PRC = VLR;
    QT = QTDE;
    TP = TIPO;
    IF (TIPO = 0) THEN --ENTRADA
    BEGIN
      QTDETOTAL = QTDETOTAL + QTDE;
      VLRTOTAL = VLRTOTAL + VLR; 
      IF (QTDETOTAL > 0) then
        PRMEDIO = VLRTOTAL / QTDETOTAL;
      ESTOQUE = QTDETOTAL;
      IF (ESTOQUETOTAL > 0) THEN 
        PRECOMEDIO = PRMEDIO;
      SUSPEND;
      IF (QTDETOTAL = 0) THEN 
        VLRTOTAL = 0;
    END
    IF (TIPO = 1) THEN --SAIDA
    BEGIN
      QTDETOTAL = QTDETOTAL - QTDE;
      /*IF (QTDETOTAL > 0) then    
        PRMEDIO = VLRTOTAL / QTDETOTAL;*/
      ESTOQUE = QTDETOTAL;
      
      SUSPEND;  
    end 
    ESTOQUETOTAL = ESTOQUE * PRMEDIO;
  END
END