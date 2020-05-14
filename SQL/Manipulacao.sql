USE sportsmedicalcenter;

-- Saber o número de testes que um dado Atleta realizou

DROP PROCEDURE IF EXISTS numerotestesAtleta;
DELIMITER $$
CREATE PROCEDURE numerotestesAtleta (IN nif int)
BEGIN

	SELECT count(*) FROM Boletim_Clinico bc
	WHERE bc.atleta_nif = nif;

END$$
DELIMITER ;

CALL numerotestesAtleta(200461184);

-- Profissionais de saude com numero de testes pelos quais foram responsaveis

DROP VIEW IF EXISTS numTestesResp;
CREATE VIEW numTestesResp AS
SELECT ps.nome AS `Nome Médico`,count(ps.id) AS `Testes Realizados` FROM Boletim_Clinico bc,Profissional_de_Saude ps
WHERE bc.profsaude_id=ps.id
GROUP BY ps.nome
ORDER BY `Testes Realizados` DESC;

SELECT * FROM numTestesResp;

-- Profissionais saude com numero de testes em que participaram    

DROP VIEW IF EXISTS numTestesPart;
CREATE VIEW numTestesPart AS
SELECT ps.nome AS `Nome Médico`,count(ps.id) AS `Testes Realizados` FROM EQUIPA e,Profissional_de_Saude ps
WHERE e.profsaude_id = ps.id
GROUP BY ps.nome
ORDER BY `Testes Realizados` DESC;

SELECT * FROM numTestesPart;

-- Teste mais realizado numa cidade

DROP PROCEDURE IF EXISTS testemaisRealCidade;
DELIMITER $$
CREATE PROCEDURE testemaisRealCidade (IN cidade VARCHAR(45))

BEGIN

    SELECT t.nome AS `Nome`,count(t.id) AS `Maximo` FROM Codigo_Postal cp
    INNER JOIN Atleta a ON cp.localidade=cidade AND a.codigo_postal=cp.cod_postal
    INNER JOIN Boletim_Clinico bc ON bc.atleta_nif=a.nif
    INNER JOIN Teste_clinico t ON t.id=bc.testeclinico_id
    GROUP BY t.id
    ORDER BY `Maximo` DESC
    LIMIT 1;

END$$
DELIMITER ;

CALL testemaisRealCidade("Faro");

-- Total faturado pela clinica
DROP VIEW IF EXISTS totFaturado;
CREATE VIEW totFaturado AS
	SELECT sum(t.preco) AS `Total Faturado` FROM Boletim_Clinico bc,Teste_Clinico t
    WHERE t.id=bc.testeclinico_id AND bc.pago=1;
    
SELECT * FROM totFaturado;

-- Saber quantos teste já foram realizados na clinica
DROP VIEW IF EXISTS totalTesteRealizados;
CREATE VIEW totalTesteRealizados AS
	SELECT count(bc.id) FROM Boletim_Clinico bc
    WHERE bc.data_marcacao<=NOW();
    
SELECT * FROM totalTesteRealizados;

-- Saber quanto faturou num determinado mes a clinica

DROP PROCEDURE IF EXISTS faturadoMes;
DELIMITER $$
CREATE PROCEDURE faturadoMes (IN mes int,IN ano int)
BEGIN
	SELECT sum(t.preco) FROM Boletim_Clinico bc
    INNER JOIN Teste_Clinico T ON MONTH(bc.data_marcacao)=mes AND YEAR(bc.data_marcacao)=ano AND bc.pago=1 AND t.id=bc.testeclinico_id;
END$$
DELIMITER ;

CALL faturadoMes(12,2020);

-- Ver clubes que têm protocolo com a clinica

DROP VIEW IF EXISTS clubes;
CREATE VIEW clubes AS
SELECT c.id,c.designacao FROM Clube c;

SELECT * FROM clubes;

-- Numero de atletas registados por clube

DROP VIEW IF EXISTS clubeNmrAtletas;
CREATE VIEW clubeNmrAtletas AS
SELECT c.designacao AS `Nome Clube`,count(a.nif) AS `Numero de atletas` FROM Clube c
INNER JOIN Atleta a ON a.idClube=c.id 
GROUP BY c.designacao
ORDER BY `Numero de atletas` DESC;

SELECT * FROM clubeNmrAtletas;

-- 5 testes mais realizados na clinica

DROP VIEW IF EXISTS top5testes;
CREATE VIEW top5testes AS
SELECT t.nome,count(bc.testeclinico_id) AS `Num testes realizados` FROM Boletim_Clinico bc
INNER JOIN Teste_Clinico t ON t.id=bc.testeclinico_id
GROUP BY t.nome
ORDER BY `Num testes realizados` DESC
LIMIT 5;

SELECT  * FROM top5testes;

-- Ver testes clinicos quem um dado profissional de saúde tem num  dado dia

DROP PROCEDURE IF EXISTS TestesProfDia;
DELIMITER $$
CREATE PROCEDURE TestesProfDia (IN id int,IN data DATE)
BEGIN

SELECT bc.id,t.nome,bc.data_marcacao FROM Boletim_Clinico bc
INNER JOIN Equipa e ON DATE(bc.data_marcacao)=data AND e.bolclinico_id=bc.id AND e.profsaude_id=id
INNER JOIN Teste_Clinico t ON t.id=bc.testeclinico_id;


END$$
DELIMITER ;

CALL TestesProfDia(2,"2020-01-09");

-- Quanto deve pagar o clube

DROP PROCEDURE IF EXISTS totalapagarClube;
DELIMITER $$
CREATE PROCEDURE totalapagarClube (IN nome VARCHAR(45))
BEGIN
SELECT sum(t.preco) FROM Clube c
INNER JOIN Atleta a ON a.idClube=c.id
INNER JOIN Boletim_Clinico b ON b.atleta_nif=a.nif
INNER JOIN Teste_Clinico t ON t.id=b.testeclinico_id
WHERE c.designacao=nome AND data_marcacao <=NOW();
END$$
DELIMITER ;

CALL totalapagarClube ("Clube de Atletismo de Amarante");


-- Testes agendados de um dado atleta

DROP PROCEDURE IF EXISTS testeagendados;
DELIMITER $$
CREATE PROCEDURE testeagendados (IN id INT)
BEGIN

SELECT a.nome,bc.id,bc.data_marcacao,bc.pago,bc.profsaude_id FROM Atleta a,Boletim_Clinico bc
WHERE bc.atleta_nif=id AND a.nif=id;

END$$
DELIMITER ;
CALL testeagendados(200461184);

-- saber se teste foi reagendado

DROP PROCEDURE IF EXISTS testereagendado;
DELIMITER $$
CREATE PROCEDURE testereagendado (IN id INT)
BEGIN

SELECT bc.reagendado FROM Boletim_Clinico bc
WHERE bc.id=id;

END$$
DELIMITER ;
CALL testereagendado(1);

-- especialidade mais responsável por testes

SELECT e.designacao,count(e.id) FROM Especialidade e,Boletim_Clinico bc,Profissional_de_Saude ps
WHERE ps.id=bc.profsaude_id AND e.id=ps.especialidade_id
GROUP BY e.designacao
ORDER BY count(e.id) DESC;
