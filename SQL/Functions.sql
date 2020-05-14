-- Facturação num intervalo de tempo
 Delimiter $$
CREATE FUNCTION fatIntTempo (inicio DATE, fim DATE) RETURNS DECIMAL (6,2) DETERMINISTIC
BEGIN
 DECLARE valor DECIMAL (6,2);
 SELECT sum(t.preco) INTO valor FROM Boletim_Clinico bc,Teste_Clinico t
     WHERE
       CAST(bc.data_marcacao AS DATE) BETWEEN inicio AND fim AND pago=1 AND t.id=bc.testeclinico_id;
       RETURN valor;
END $$
DELIMITER ;

-- Numero de horas que profsaude tem de testes clinicos num dia
DROP FUNCTION IF EXISTS numHoras;
DELIMITER $$
CREATE FUNCTION numHoras (id INT,data DATE) RETURNS INT DETERMINISTIC
BEGIN

DECLARE horas INT;
SELECT sum(t.duracao) INTO horas 
 FROM Boletim_Clinico b
INNER JOIN 	Equipa e ON DATE(b.data_marcacao)=data AND e.bolclinico_id=b.id AND e.profsaude_id=2
INNER JOIN Teste_Clinico t ON t.id=b.testeclinico_id ;
RETURN horas;

END$$
DELIMITER ;

SELECT numHoras(2,"2020-01-08");
   