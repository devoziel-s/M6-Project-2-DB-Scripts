USE events_manager;

-- ////////// INSERÇÂO DE DADOS //////////

-- Inserir dados na tabela events
INSERT INTO `events` (`public_id`, `eventName`, `eventDescription`, `eventDate`, `eventLocation`, `maxAttendees`)
VALUES (UUID(), 'NLW-Unite', 'Super evento da Rocketseat', '2024-07-01', 'Aparecida de Goiânia-GO', 100);

-- Inserir dados na tabela organizers
INSERT INTO `organizers` (`public_id`, `name`, `email`, `phone`)
VALUES (UUID(), 'Vanilda Soares', 'v.s@example.com', '12345678901');

-- Inserir dados na tabela attendees
INSERT INTO `attendees` (`public_id`, `name`, `email`, `phone`)
VALUES (UUID(), 'Jane Smith', 'jane.smith@example.com', '10987654321');

-- Inserir dados na tabela organizers_events (associação)
INSERT INTO `organizers_events` (`events_id`, `organizers_id`)
VALUES ((SELECT id FROM events WHERE eventName = 'NLW-Unite'), (SELECT id FROM organizers WHERE name = 'Vanilda Soares'));

-- Inserir dados na tabela attendees_events (associação)
INSERT INTO `attendees_events` (`events_id`, `attendees_id`)
VALUES ((SELECT id FROM events WHERE eventName = 'NLW-Unite'), (SELECT id FROM attendees WHERE name = 'Jane Smith'));