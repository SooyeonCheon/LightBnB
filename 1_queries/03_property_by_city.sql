SELECT properties.id, properties.title, properties.cost_per_night, avg(rating) as average_rating
FROM properties
LEFT JOIN property_reviews ON property_id = properties.id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(rating) >= 4
ORDER BY cost_per_night
LIMIT 10;
