USE events_manager;

-- ////////// INSERÇÂO DE DADOS //////////

-- Inserir dados na tabela events
INSERT INTO `events` (`public_id`, `eventName`, `eventDescription`, `eventDate`, `eventLocation`, `maxAttendees`)
VALUES (UUID(), 'Formatura PdA T4', 'Formatura da TURMA 04', '2024-06-10', 'Online via Zoom', 150);

-- Inserir dados na tabela organizers
INSERT INTO `organizers` (`public_id`, `name`, `email`, `phone`)
VALUES (UUID(), 'Rafa Cerqueira', 'rafapda@example.com', '12345678901');

-- Inserir dados na tabela attendees
INSERT INTO `attendees` (`public_id`, `name`, `email`, `phone`)
VALUES (UUID(), 'Oziel Sousa', 'oziel@example.com', '10987654321');

-- Inserir dados na tabela organizers_events (associação)
INSERT INTO `organizers_events` (`events_id`, `organizers_id`)
VALUES ((SELECT id FROM events WHERE eventName = 'Formatura PdA T4'), (SELECT id FROM organizers WHERE name = 'Rafa Cerqueira'));

-- Inserir dados na tabela attendees_events (associação)
INSERT INTO `attendees_events` (`events_id`, `attendees_id`)
VALUES ((SELECT id FROM events WHERE eventName = 'Formatura PdA T4'), (SELECT id FROM attendees WHERE name = 'Oziel Sousa'));