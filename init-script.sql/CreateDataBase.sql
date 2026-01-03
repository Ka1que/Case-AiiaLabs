
CREATE DATABASE IF NOT EXISTS BaseItau
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

GRANT ALL PRIVILEGES ON BaseItau.* TO 'adm'@'%';
FLUSH PRIVILEGES;

USE BaseItau;

CREATE TABLE IF NOT EXISTS colaborador(
    idColaborador integer NOT NULL,
    dataInicio DATE,
    dataFim DATE,
    transactionNbr INT,
    tipoLicenca varchar(8),
    tipoBeneficio SMALLINT,
    dataPericia DATE,
    dataRetorno DATE,
    horarioPericia TIME,
    localPericia VARCHAR(100),
    numeroBeneficio INT,
    numeroRequerimento INT,
    dataProtocoloRequerimento DATE,
    tipoEspecie SMALLINT,
    decisaoPericialINSS VARCHAR(1),
    dataBeneficioConcedidoAte DATE,
    dataInicioPagamento DATE,
    valorRendaMensalINSS int,
    indicativoAposentadoria VARCHAR(1),
    PRIMARY KEY (idColaborador)
);

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;

INSERT INTO colaborador (idColaborador,dataInicio,dataFim ,transactionNbr,tipoLicenca,tipoBeneficio,dataPericia,dataRetorno,horarioPericia,localPericia,numeroBeneficio,numeroRequerimento,dataProtocoloRequerimento,tipoEspecie,decisaoPericialINSS,dataBeneficioConcedidoAte,dataInicioPagamento,valorRendaMensalINSS, indicativoAposentadoria)
VALUES ('006352298','2025-01-14','2025-01-14',null,'',null,'2025-09-22','2025-09-22','12:00','INSS',null,null,null,null,'',null,null,null,'');