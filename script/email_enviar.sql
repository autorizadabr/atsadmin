CREATE TABLE EMAIL_ENVIAR
(
  CODEMAIL integer NOT NULL,
  EMAIL varchar(80) NOT NULL,
  ASSUNTO varchar(200),
  DATAENVIO date,
  GRUPO varchar(30),
  ENVIADO char(1),
  PRIMARY KEY (CODEMAIL)
);