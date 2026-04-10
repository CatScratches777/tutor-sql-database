SELECT t.name, SUM(h.hours) AS total_hour
FROM tutors t
JOIN fields fi ON t.tutor_id =fi.field_id
JOIN hours h ON fi.field_id = h.field_id
GROUP BY t.name;
