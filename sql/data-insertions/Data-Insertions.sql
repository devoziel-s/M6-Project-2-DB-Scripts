use events_manager;

-- ////////// INSERÇÂO DE DADOS //////////

-- Inserir dados na tabela events
INSERT INTO `events` (`public_id`, `eventName`, `eventDescription`, `eventDate`, `eventLocation`, `maxParticipants`)
VALUES (UUID(), 'NLW-Unite', 'Super evento da Rocketseat', '2024-07-01', 'Aparecida de Goiânia-GO', 100);

-- Inserir dados na tabela organizers
INSERT INTO `organizers` (`public_id`, `name`, `email`, `phone`)
VALUES (UUID(), 'Vanilda Soares', 'v.s@example.com', '12345678901');

-- Inserir dados na tabela participants
INSERT INTO `participants` (`public_id`, `name`, `email`, `phone`)
VALUES (UUID(), 'Jane Smith', 'jane.smith@example.com', '10987654321');

-- Inserir dados na tabela organizers_events (associação)
INSERT INTO `organizers_events` (`events_id`, `organizers_id`)
VALUES ((SELECT id FROM events WHERE eventName = 'NLW-Unite'), (SELECT id FROM organizers WHERE name = 'João Targino'));

-- Inserir dados na tabela participants_events (associação)
INSERT INTO `participants_events` (`events_id`, `participants_id`)
VALUES ((SELECT id FROM events WHERE eventName = 'Tech Conference'), (SELECT id FROM participants WHERE name = 'Oziel Sousa'));