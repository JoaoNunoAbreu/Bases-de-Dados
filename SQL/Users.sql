USE sportsmedicalcenter;

-- Criação do administrador-----------------------------------------------------------------------
DROP USER 'admin'@'localhost';
CREATE USER 'admin'@'localhost';
SET PASSWORD FOR 'admin'@'localhost' = 'root';

-- Permissão de acesso a todos os objetos de todas as bases de dados em 'localhost'.
GRANT ALL PRIVILEGES ON sportsmedicalcenter.* TO 'admin'@'localhost';

-- Criação do perfil de Funcionário ----------------------------------------------------------------

DROP USER 'func'@'localhost';
CREATE USER 'func'@'localhost';
SET PASSWORD FOR 'func'@'localhost' = 'root';

-- Definição de previlégios para o utilizador 'funcionario'. 
-- Permissão para a execução de instruções SELECT,INSERT e UPDATE sobre a base de dados 
-- em 'localhost'.
-- acessos a tabelas
GRANT SELECT,UPDATE,INSERT ON sportsmedicalcenter.Atleta TO 'func'@'localhost';
GRANT SELECT,UPDATE,INSERT ON sportsmedicalcenter.Boletim_Clinico TO 'func'@'localhost';
GRANT SELECT,UPDATE,INSERT ON sportsmedicalcenter.Codigo_Postal TO 'func'@'localhost';
GRANT SELECT,UPDATE,INSERT ON sportsmedicalcenter.Modalidade TO 'func'@'localhost';
GRANT SELECT ON sportsmedicalcenter.Profissional_de_saude TO 'func'@'localhost';
GRANT SELECT ON sportsmedicalcenter.Especialidade TO 'func'@'localhost';

-- Permissão para a  execução de procedimentos .
GRANT EXECUTE ON PROCEDURE sportsmedicalcenter.addAtleta TO 'func'@'localhost';
GRANT EXECUTE ON PROCEDURE sportsmedicalcenter.addBoletim TO 'func'@'localhost';
GRANT EXECUTE ON PROCEDURE sportsmedicalcenter.testereagendado TO 'func'@'localhost';
GRANT EXECUTE ON PROCEDURE sportsmedicalcenter.testeagendados TO 'func'@'localhost';
GRANT EXECUTE ON PROCEDURE sportsmedicalcenter.reagendarTeste TO 'func'@'localhost';
GRANT EXECUTE ON PROCEDURE sportsmedicalcenter.totalapagarClube TO 'func'@'localhost';
GRANT EXECUTE ON PROCEDURE sportsmedicalcenter.testemaisRealCidade TO 'func'@'localhost';
GRANT EXECUTE ON PROCEDURE sportsmedicalcenter.numerotestesAtleta TO 'func'@'localhost';
GRANT EXECUTE ON PROCEDURE sportsmedicalcenter.faturadoMes TO 'func'@'localhost';

GRANT EXECUTE ON FUNCTION sportsmedicalcenter.fatIntTempo TO 'func'@'localhost';

-- Criação do perfil de Profissional Saúde --------------------------------------------------------------------
DROP USER 'profsaude'@'localhost';
CREATE USER 'profsaude'@'localhost';
SET PASSWORD FOR 'profsaude'@'localhost' = 'root';


GRANT SELECT,UPDATE,INSERT ON sportsmedicalcenter.Equipa TO 'profsaude'@'localhost';
GRANT SELECT ON sportsmedicalcenter.Boletim_Clinico TO 'profsaude'@'localhost';
GRANT SELECT ON sportsmedicalcenter.Profissional_de_saude TO 'profsaude'@'localhost';
GRANT SELECT ON sportsmedicalcenter.Especialidade TO'profsaude'@'localhost';
GRANT SELECT ON sportsmedicalcenter.Teste_Clinico TO'profsaude'@'localhost';

GRANT EXECUTE ON PROCEDURE sportsmedicalcenter.addProfSaudeEquipaBoletim TO 'profsaude'@'localhost';
GRANT EXECUTE ON PROCEDURE sportsmedicalcenter.TestesProfDia TO 'profsaude'@'localhost';
GRANT EXECUTE ON FUNCTION sportsmedicalcenter.numHoras TO 'profsaude'@'localhost';

FLUSH PRIVILEGES;