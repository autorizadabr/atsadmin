CREATE OR ALTER trigger atualiza_chg for prod_chg
active after insert position 0
AS 
DECLARE VARIABLE CODP VARCHAR(30);
DECLARE VARIABLE CODFAM INTEGER;
DECLARE VARIABLE MARGEM DOUBLE PRECISION;
DECLARE VARIABLE PPAGO DOUBLE PRECISION;
DECLARE VARIABLE PRECOVENDA DOUBLE PRECISION;
DECLARE VARIABLE ARREDONDAV DOUBLE PRECISION;
DECLARE VARIABLE MARCA VARCHAR(30);
DECLARE VARIABLE FAM VARCHAR(90);
DECLARE VARIABLE CAT VARCHAR(90);
DECLARE VARIABLE PRO VARCHAR(60);
DECLARE VARIABLE CODBAR VARCHAR(60);
BEGIN 
 IF (NEW.FABRIC = 'CHG') THEN
 begin
    PRO = NEW.CODIGO;
    PPAGO = NEW.PRNORM;

    IF (NEW.COD_BARRA IS NOT NULL) THEN
        CODBAR = NEW.COD_BARRA;
    ELSE
        CODBAR = :PRO || '00001';

    /* Procuro pelo PRODUTO na TABELA  */
    SELECT CODIGO, PRECOVENDA, MARGEM FROM LISTAPRECO WHERE CODIGO = :PRO and FORNECEDOR = 'CHG'
    INTO :CODP, PRECOVENDA, :MARGEM;
    if (margem is null) then
       margem = 50;
    IF (CODP IS NULL) THEN 
    BEGIN
       -- PRODUTO NOVO --------------------------------------------------------------------------------------------
        ARREDONDAV =  ((PPAGO * 1.5) - UDF_INT(PPAGO * 1.5));
        IF (ARREDONDAV > 0.5) THEN
           ARREDONDAV =  UDF_INT(PPAGO * 1.5) + 1;
        IF (ARREDONDAV = 0) THEN
           ARREDONDAV =  UDF_INT(PPAGO * 1.5);
        ELSE IF (ARREDONDAV <= 0.5) THEN
           ARREDONDAV =  UDF_INT(PPAGO * 1.5) + 0.5;  

        INSERT INTO LISTAPRECO ( DESCR, CODIGO, APLIC, FORNECEDOR, GRUPO, SUBGRUPO, UNIDADE,
          PRECOLISTA, PRECOVENDA, DATAATUALIZA, CODBARRA, USAPRODUTO, MARGEM) VALUES (
          NEW.DESCR, :PRO, NEW.APLIC, NEW.FABRIC, NEW.LINH1, NEW.LINH2, NEW.UNIDADE, 
          :PPAGO,  :ARREDONDAV, CURRENT_TIMESTAMP, :CODBAR, 'N�O', 50);
          
    END  
    -- FIM - PRODUTO NOVO ------------------------------------------------------------------------------------- 
    -- ATUALIZACAO DE PRODUTOS Q JA EXISTAM
    ELSE
    BEGIN
          ARREDONDAV =  ((PPAGO * ((:MARGEM/100)+1)) - UDF_INT(PPAGO * ((:MARGEM/100)+1)));
          IF (ARREDONDAV > 0.5) THEN
             ARREDONDAV =  UDF_INT(PPAGO * ((:MARGEM/100)+1)) + 1;
          IF (ARREDONDAV = 0) THEN
             ARREDONDAV =  UDF_INT(PPAGO * ((:MARGEM/100)+1));
          ELSE IF (ARREDONDAV <= 0.5) THEN
             ARREDONDAV =  UDF_INT(PPAGO * ((:MARGEM/100)+1)) + 0.5;

          --exception altera_venda_n_permitido;
           --IF (PRECOVENDA <> PPAGO) THEN
            UPDATE LISTAPRECO
            SET 
                 PRECOVENDA = :ARREDONDAV, PRECOLISTA = :PPAGO, DESCR = NEW.DESCR
            WHERE CODIGO = :CODP 
                 and FORNECEDOR = 'CHG';
    END

 end
END