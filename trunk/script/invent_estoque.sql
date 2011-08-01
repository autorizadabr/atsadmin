CREATE OR ALTER TRIGGER INVENT_ESTOQUE FOR INVENTARIO
ACTIVE BEFORE INSERT POSITION 0
AS 
declare variable qtde double precision;
BEGIN 
  if (inserting) then 
  begin 
	-- Preenche o campo ESTOQUE_ATUAL
    -- Ve o estoque atual
    select SALDOFIM from SPESTOQUE (NEW.DATAIVENTARIO, NEW.DATAIVENTARIO, NEW.CODPRODUTO, NEW.CODPRODUTO,
       'TODOS OS GRUPOS CADASTRADOS NO SISTEMA', 
       'TODOS OS SUBGRUPOS CADASTRADOS NO SISTEMA')
    into :qtde;   
    NEW.ESTOQUE_ATUAL = :qtde;    
  end 
END 
