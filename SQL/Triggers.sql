USE sportsmedicalcenter;

DROP TRIGGER IF EXISTS atualizaPagamento;

DELIMITER //
CREATE TRIGGER atualizaPagamento AFTER UPDATE ON Boletim_Clinico
    FOR EACH ROW
    BEGIN
        IF(NEW.pago = 1) THEN
            UPDATE Atleta 
            SET acumulado = acumulado - (SELECT preco FROM Teste_Clinico WHERE id = new.testeclinico_id)
            WHERE nif = new.atleta_nif;
        END IF;
    END //
    
DELIMITER ;


DROP TRIGGER IF EXISTS atualizaDivida;

DELIMITER //
CREATE TRIGGER atualizaDivida AFTER INSERT ON Boletim_Clinico
    FOR EACH ROW
    BEGIN
        IF(new.pago = 0) THEN
            UPDATE Atleta 
            SET acumulado = acumulado + (SELECT preco FROM Teste_Clinico WHERE id=new.testeclinico_id)
            WHERE nif = new.atleta_nif;
        END IF;
    END //
    
DELIMITER ;