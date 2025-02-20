SELECT action_date, 
(SELECT name FROM person WHERE id = person_id )AS person_name 
FROM (SELECT order_date AS action_date, person_id FROM person_order
intersect
SELECT visit_date AS action_date, person_id FROM person_visits)
ORDER BY action_date, person_name DESC