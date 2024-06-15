SELECT * FROM attendees;
SELECT * FROM attendees_events;
SELECT * FROM events;
SELECT * FROM organizers;
SELECT * FROM organizers_events;

-- Buscar organizadores baseado nos eventos criados por eles
SELECT organizers.name, organizers.email, events.eventName AS hasCreated, eventDate, eventLocation
FROM events
JOIN organizers_events ON events.id = organizers_events.events_id
JOIN organizers ON organizers.id = organizers_events.organizers_id;

-- Buscar eventos baseados nos organizadores que o criaram
SELECT events.eventName AS Event, organizers.name AS createdBy, organizers.email AS organizers_email
FROM organizers
JOIN organizers_events ON organizers.id = organizers_events.organizers_id
JOIN events ON organizers_events.events_id = events.id;

-- Buscar attendees baseados nos eventos em que participam
SELECT attendees.name, attendees.email,
events.eventName AS hasParticipated
FROM events
JOIN attendees_events ON events.id = attendees_events.events_id
JOIN attendees ON attendees.id = attendees_events.attendees_id;

-- Buscar eventos baseados nos attendees que estão neles
SELECT events.eventName AS Event, attendees.name AS attendeeName, attendees.email AS attendee_email
FROM attendees
JOIN attendees_events ON attendees.id = attendees_events.attendees_id
JOIN events ON events.id = attendees_events.events_id;

-- Contar o número de eventos específicos
SELECT COUNT(*) FROM events;