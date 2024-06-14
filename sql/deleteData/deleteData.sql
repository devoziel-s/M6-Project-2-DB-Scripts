use events_manager;
DELETE FROM attendees where id = 1;
DELETE FROM attendees_events where events_id = 1;
DELETE FROM attendees_events where attendees_id = 1;

DELETE FROM events where id = 1;

DELETE FROM organizers WHERE id = 2;
DELETE FROM organizers_events WHERE events_id = 1;
DELETE FROM organizers_events where organizers_id = 1;

-- se ao deletar os dados der erro de foreign key, use esse comando
SET FOREIGN_KEY_CHECKS = 0;
-- tente deletar e depois volte para o padrão 1
SET FOREIGN_KEY_CHECKS = 1;

-- caso queira deletar os dados de todas as tabelas de uma vez, crie essa procedure e, execute-a com o comando na linha 31
DELIMITER //
CREATE PROCEDURE deleteData()
BEGIN
    SET FOREIGN_KEY_CHECKS = 0;
    TRUNCATE TABLE attendees;
    TRUNCATE TABLE attendees_events;
    TRUNCATE TABLE organizers;
    TRUNCATE TABLE organizers_events;
    TRUNCATE TABLE events;
    SET FOREIGN_KEY_CHECKS = 1;
END //
DELIMITER ;

CALL deleteData();