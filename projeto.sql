CREATE DATABASE PROJETO;

USE PROJETO;

CREATE TABLE CURSOS(
	ID_CURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	HORAS INT(3) NOT NULL,
	VALOR FLOAT(10,2) NOT NULL 
);

INSERT INTO CURSOS VALUES(NULL, "JAVA",30,500.00),
(NULL,"FUNDAMENTOS DE BANCO DE DADOS",40,700.00);

DELIMITER #

STATUS /*MOSTRA O STATUS DO BANCO.*/

CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30),
						   P_HORAS INT(3),
						   P_VALOR FLOAT(10,2))
BEGIN
	INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_VALOR);
END
#

DELIMITER ;

CALL CAD_CURSO('BI SQL SERVER',35,3000.00);
CALL CAD_CURSO('POWER BI',20,1000.00);
CALL CAD_CURSO('TABLEAU',30,1200.00);
CALL CAD_CURSO('DESENVOLVIMENTO DE SISTEMAS',50,1900.32);
CALL CAD_CURSO('FRONT-END',90,1800.00);
CALL CAD_CURSO('BACK-END',80,1935.00);
CALL CAD_CURSO('FULL-STACK',95,1853.00);
CALL CAD_CURSO('ADMINISTRAÇÃO',98,6500.89);
CALL CAD_CURSO('DIREITO',99,7850.00);
CALL CAD_CURSO('ENGENHARIA CIVIL',85,7850.00);
CALL CAD_CURSO('ENFERMAGEM',78,5942.00);
CALL CAD_CURSO('PSICOLOGIA',59,3500.00);
CALL CAD_CURSO('PEDAGOGIA',74,6988.00);
CALL CAD_CURSO('FARMACIA',97,1250.00);
CALL CAD_CURSO('NUTRIÇÃO',93,1588.00);
CALL CAD_CURSO('MATEMATICA',40,398.00);
CALL CAD_CURSO('EXCEL',60,1000.00);
CALL CAD_CURSO('EXCEL PLENO',50,1500.00);
CALL CAD_CURSO('MECANICO',70,1950.00);
CALL CAD_CURSO('FISIOTERAPIA',78,3520.00);
CALL CAD_CURSO('CONTABILIDADE',98,7598.00);

/*CRIAR UMA PROCEDURE PARA CONSULTAR CURSOS*/

DELIMITER #

CREATE PROCEDURE MOS_CURSO()
BEGIN
	SELECT * FROM CURSOS;
END
#

DELIMITER ;

CALL MOS_CURSO();