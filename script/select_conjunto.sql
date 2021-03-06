SELECT DISTINCT CP1, CPRO, NCM_PRO, 
      PRODUT, UNIMED, TIPO  FROM 
      
   ( SELECT DISTINCT DET.CODPRODUTO x.CP1, PRO.CODPRO CPRO, PRO.NCM NCM_PRO, 
      PRO.PRODUTO PRODUT, DET.UN UNIMED, 'C' TIPO  
    FROM COMPRA C, MOVIMENTO MOV, MOVIMENTODETALHE DET, PRODUTOS PRO 
           WHERE C.CODMOVIMENTO = MOV.CODMOVIMENTO
      AND MOV.CODMOVIMENTO = DET.CODMOVIMENTO
             AND PRO.CODPRODUTO   = DET.CODPRODUTO
             AND MOV.CODNATUREZA  = 4
            AND C.DATACOMPRA BETWEEN '12/01/12' and '12/31/12') x,
    (        
    SELECT DISTINCT DT.CODPRODUTO x.CP1, PR.CODPRO, PR.NCM, 
      PR.PRODUTO, DT.UN  , 'V' T
    FROM NOTAFISCAL NF, VENDA V , MOVIMENTO MV, MOVIMENTODETALHE DT, PRODUTOS PR 
      WHERE NF.CODVENDA = V.CODVENDA 
     AND V.CODMOVIMENTO = MV.CODMOVIMENTO
           AND MV.CODMOVIMENTO = DT.CODMOVIMENTO
             AND PR.CODPRODUTO   = DT.CODPRODUTO
   AND NF.DTAEMISSAO BETWEEN  '12/01/12' and '12/31/12'
         AND MV.CODNATUREZA  IN (12,15,16,20,21)) y
   