USE sportsmedicalcenter;

-- 1. Adicionar Atleta,se não exister modalidade adiciona na base de dados a modalidade

DROP procedure IF EXISTS addAtleta;
DELIMITER $$
CREATE PROCEDURE addAtleta(IN nif INT,IN nome VARCHAR(55), IN morada VARCHAR(200),IN data_de_nascimento DATE, IN contacto int(9), 
														IN sexo ENUM('M','F'),
														IN nacionalidade VARCHAR(45),IN cod_postal VARCHAR(45),
                                                        IN modalidade VARCHAR(45),IN categoria VARCHAR(45),IN idClube int)
BEGIN
	   DECLARE v_error BOOL default 0;
       DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET v_error = 1;
    
	
		SET AUTOCOMMIT = OFF;
	    START TRANSACTION;
        -- criar atleta
        BEGIN
            DECLARE x INT;
			INSERT INTO Atleta (nif,nome,morada,data_de_nascimento,contacto,sexo,nacionalidade,codigo_postal,acumulado,idClube)
			VALUES (nif,nome,morada,data_de_nascimento,contacto,sexo,nacionalidade,cod_postal,0,idClube);
            -- se não existir modalidade cria registo
			IF NOT EXISTS(SELECT * from Modalidade WHERE designacao=modalidade AND categoria=categoria) THEN 
				INSERT INTO Modalidade(id,designacao,categoria)
				VALUES (null,modalidade,categoria);
                SET x= (SELECT (LAST_INSERT_ID()));
			 ELSE SET x=(SELECT m.id FROM Modalidade m
                       WHERE m.designacao=designacao AND m.categoria=categoria);
           END IF;
           -- adiciona à relação do atleta com a modalidade
            INSERT INTO Atleta_has_Modalidade(atleta_nif,modalidade_id)
			VALUES (nif,x);
        END;
        
        IF(v_error) THEN
          ROLLBACK;
        END IF;
        
		COMMIT;
    
END $$
DELIMITER ;

CALL addAtleta(123831292,"Joao","Rua de Silvares","1999-11-14",919917168,'F',"Portuguesa","4000-113","Natacao","100m",null);

-- 2 Adiciona um boletim

DROP procedure IF EXISTS addBoletim;
DELIMITER $$
CREATE PROCEDURE addBoletim(IN id Int,IN data_marcacao Datetime,IN atleta_nif int, IN testeclinico_id int, IN profsaude_id int,IN pago TINYINT)
BEGIN
    DECLARE v_error BOOL default 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET v_error = 1;
  
    SET AUTOCOMMIT = OFF;
    
    START TRANSACTION;
        BEGIN
           DECLARE x INT;
        -- Vê se o médico está disponível
            IF EXISTS(Select * FROM Boletim_Clinico
                WHERE Boletim_Clinico.profsaude_id= profsaude_id AND Boletim_Clinico.data_marcacao= data_marcacao) THEN
            SET v_error = 1;
           END IF;
        
        -- Vê se o profissional de sáude tem especialidade para o teste
          IF NOT EXISTS( 
                SELECT * FROM Profissional_de_Saude ps
                WHERE ps.id = profsaude_id
                AND ps.especialidade_id IN(
                    SELECT Especialidade_id FROM Teste_Clinico_has_Especialidade t
                    WHERE t.teste_Clinico_id = testeclinico_id
                )
             )
		  THEN SET v_error = 1;
		  END IF; 
		
        -- Clinica nao esta aberta ao Domingo
	      IF ((SELECT WEEKDAY(data_marcacao))=6)
            THEN SET v_error=1;
		  END IF;
		
        -- Clinica esta fechada entre a 00:00 e as 08:00
		  IF (SELECT HOUR(data_marcacao) BETWEEN 0 AND 7)
			THEN SET v_error=1;
		  END IF;
        
        -- Prof.Saude nao faz mais de 8 horas num dia
		  IF (SELECT numHoras(profsaude_id,DATE(data_marcacao))>=480)
			THEN SET v_error=1;
          END IF;
         
		 INSERT INTO Boletim_Clinico(id,data_marcacao,atleta_nif,testeclinico_id,profsaude_id,reagendado,pago)
		 VALUES (id,data_marcacao,atleta_nif,testeclinico_id,profsaude_id,0,pago);
	
       -- Inserir Prof.Saude na equipa
       
       SET x= (SELECT (LAST_INSERT_ID()));
       CALL addProfSaudeEquipaBoletim(profsaude_id,x);    

		END;
        
    IF(v_error) THEN
        ROLLBACK;
    END IF;
        
    COMMIT;
    
END $$
DELIMITER ;

CALL addBoletim(null,"2020-01-09 20:00:00",200461184,2,2,1);

-- 3 Adiciona código postal
DROP procedure IF EXISTS addCodPostal;
DELIMITER $$
CREATE PROCEDURE addCodPostal(IN cod_postal VARCHAR(45),IN localidade VARCHAR(45))

BEGIN
  DECLARE v_error BOOL default 0;
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET v_error = 1;
  
  SET AUTOCOMMIT = OFF;
    
  START TRANSACTION;
        -- criar profissional de saude
        BEGIN
          INSERT INTO Codigo_Postal (cod_postal,localidade)
          VALUES (cod_postal,localidade);
        END;
        
  IF(v_error) THEN
    ROLLBACK;
  END IF;
        
  COMMIT;
    
END $$
DELIMITER ;

CALL addCodPostal("4600-632","Amarante");

-- 4 Adiciona Especialidade

DROP PROCEDURE IF EXISTS addEsp;
DELIMITER $$
CREATE PROCEDURE addEsp(IN designacao VARCHAR(45))

BEGIN
  DECLARE v_error BOOL default 0;
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET v_error = 1;
  
  SET AUTOCOMMIT = OFF;
  
  START TRANSACTION;
        -- criar Especialidade
        BEGIN
          INSERT INTO Especialidade(id,designacao)
          VALUES (NULL,designacao);
        END;
        
 IF(v_error) THEN
    ROLLBACK;
  END IF;
        
  COMMIT;
    
END $$
DELIMITER ;

CALL addEsp("Novo");

-- 5 Adiciona na relação especialidade teste clinico para saber que especialidade estão aptas a realizar um teste clinico
DROP procedure IF EXISTS addEspecialidadeTesteClinico;
DELIMITER $$
CREATE PROCEDURE addEspecialidadeTesteClinico(IN especialidade_id int,IN teste_clinico_id int)
BEGIN
  DECLARE v_error BOOL default 0;
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET v_error = 1;
  
  SET AUTOCOMMIT = OFF;
    
  START TRANSACTION;
        BEGIN
         INSERT INTO Teste_Clinico_has_Especialidade (especialidade_id,teste_clinico_id)
          VALUES (especialidade_id,teste_clinico_id);
        END;
        
  IF(v_error) THEN
    ROLLBACK;
  END IF;
        
  COMMIT;
    
END $$
DELIMITER ;

CALL addEspecialidadeTesteClinico(1,4);

-- 6 Adiciona profissional de saúde
DROP procedure IF EXISTS addProf;
DELIMITER $$
CREATE PROCEDURE addProf(IN id INT,IN morada VARCHAR(200), IN contacto INT,IN data_de_nascimento DATE,IN nome VARCHAR(45),IN codigo_postal VARCHAR(45),IN especialidade_id INT)

BEGIN
  DECLARE v_error BOOL default 0;
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET v_error = 1;
  
  SET AUTOCOMMIT = OFF;
    
  START TRANSACTION;
        -- criar profissional de saude
        BEGIN
          INSERT INTO Profissional_de_Saude (id,morada,contacto,data_de_nascimento,nome,codigo_postal,especialidade_id)
          VALUES (id,morada,data_de_nascimento,nome,contacto,codigo_postal,especialidade_id);
        END;
        
  IF(v_error) THEN
    ROLLBACK;
  END IF;
        
  COMMIT;
    
END $$
DELIMITER ;

CALL addProf(1,"Rua de Silvares",919917168,"1999-11-14","jojo","4000-113",1);

-- 7 Adiciona um médico a uma equipa responsável por um boletim,adiciona na relação equipa

DROP procedure IF EXISTS addProfSaudeEquipaBoletim;
DELIMITER $$
CREATE PROCEDURE addProfSaudeEquipaBoletim(IN idprofsaude Int,IN idbolclinico int)
BEGIN
  DECLARE v_error BOOL default 0;
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET v_error = 1;
  
  SET AUTOCOMMIT = OFF;
    
  START TRANSACTION;
        BEGIN
           INSERT INTO Equipa (profsaude_id,bolclinico_id)
           VALUES (idprofsaude,idbolclinico);
        END;
        
  IF(v_error) THEN
    ROLLBACK;
  END IF;
        
  COMMIT;
    
END $$
DELIMITER ;

CALL addProfSaudeEquipaBoletim(4,1);

-- 8 Adiciona um teste clinico

DROP PROCEDURE IF EXISTS addTest;
DELIMITER $$
CREATE PROCEDURE addTest(IN nome VARCHAR(45),IN preco INT,IN duracao INT)

BEGIN
  DECLARE v_error BOOL default 0;
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET v_error = 1;
  
  SET AUTOCOMMIT = OFF;
  
  START TRANSACTION;
        -- criar Teste Clínico
        BEGIN
          INSERT INTO Teste_clinico(id,nome,preco,duracao,preco)
          VALUES (NULL,nome,preco,duracao,preco);
        END;
        
 IF(v_error) THEN
    ROLLBACK;
  END IF;
        
  COMMIT;
    
END $$
DELIMITER ;



-- 9 Reagenda um teste

DROP procedure IF EXISTS reagendarTeste;
DELIMITER $$
CREATE PROCEDURE reagendarTeste(IN id Int,IN data_marcacao Datetime,IN profsaude_Id int)
BEGIN
  DECLARE v_error BOOL default 0;
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET v_error = 1;
  
  SET AUTOCOMMIT = OFF;
    
  START TRANSACTION;
        BEGIN
            IF EXISTS(Select * FROM Boletim_Clinico
                      WHERE Boletim_Clinico.profsaude_id=profsaude_id AND Boletim_Clinico.data_marcacao=data_marcacao) THEN
             SET v_error=1;
            END IF;
             -- Vê se o profissional de sáude tem especialidade para o teste
            IF NOT EXISTS( 
                SELECT id FROM Profissional_de_Saude ps
                WHERE ps.id = profsaude_id
                AND profsaude_id IN(
                    SELECT Especialidade_id FROM Teste_Clinico_has_Especialidade t 
                    WHERE t.teste_Clinico_id = (SELECT testeclinico_id FROM Boletim_Clinico bc WHERE  bc.id=id)
                )
             )
             
			THEN SET v_error = 1;
            END IF;
             -- Clinica nao esta aberta ao Domingo
	      IF ((SELECT WEEKDAY(data_marcacao))=6)
            THEN SET v_error=1;
		  END IF;
		
        -- Clinica esta fechada entre a 00:00 e as 08:00
		  IF (SELECT HOUR(data_marcacao) BETWEEN 0 AND 7)
			THEN SET v_error=1;
		  END IF;
        
        -- Prof.Saude nao faz mais de 8 horas num dia
		  IF (SELECT numHoras(profsaude_id,data_marcacao)>=480)
			THEN SET v_error=1;
          END IF;
          
          UPDATE Boletim_Clinico 
          SET Boletim_Clinico.profsaude_id=profsaude_id,Boletim_Clinico.data_marcacao=data_marcacao,reagendado=1
          WHERE Boletim_Clinico.id=id;
        END;
        
  IF(v_error) THEN
    ROLLBACK;
  END IF;
        
  COMMIT;
    
END $$
DELIMITER ;

CALL reagendarTeste(1,"2020-12-12 22:00:00",9);

DROP PROCEDURE IF EXISTS addClube;
DELIMITER $$
CREATE PROCEDURE addClube(IN designacao VARCHAR(45))

BEGIN
  DECLARE v_error BOOL default 0;
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET v_error = 1;
  
  SET AUTOCOMMIT = OFF;
    
  START TRANSACTION;
        BEGIN
          INSERT INTO Clube (id,designacao)
          VALUES (null,designacao);
        END;
        
  IF(v_error) THEN
    ROLLBACK;
  END IF;
        
  COMMIT;
    
END $$
DELIMITER ;

