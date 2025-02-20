SELECT person.id AS person_id, person.name AS person_name, age, gender, address, pizzeria.id AS pizzeria_id, pizzeria.name AS pizzeria_name, pizzeria.rating
FROM pizzeria
CROSS JOIN person
ORDER BY person.id