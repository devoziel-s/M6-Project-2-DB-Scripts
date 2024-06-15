USE events_manager;

-- // Atualiza um evento //
UPDATE events SET eventName = 'Formatura PdA #T4',
    eventDescription = 'Formatura da TURMA 04',
    eventDate = '2024-06-10',
    eventLocation = 'Online pelo Zoom',
    maxAttendees = 150,
    updatedAt = CURRENT_TIMESTAMP
WHERE id = 1;
-- ////////////////////////

-- // Atualiza um Organizador //
UPDATE organizers
SET name = 'Cleber Guedes',
    email = 'cleberpda@exemplo.com',
    phone = '12345678901',
    updatedAt = CURRENT_TIMESTAMP
WHERE id = 2;
-- /////////////////////////////

-- // Atualiza um Participante //
UPDATE attendees
SET name = 'Oziel Sousa',
    email = 'oziel@exemplo.com',
    phone = '12345678901',
    updatedAt = CURRENT_TIMESTAMP
WHERE id = 1;
-- //////////////////////////