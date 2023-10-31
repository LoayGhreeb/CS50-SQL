SELECT "first_name" , "last_name", "salary"
FROM "players"
JOIN "salaries" ON
    "players"."id" = "salaries"."player_id"
WHERE "year" = 2001
ORDER BY "salary", "first_name", "last_name", "players"."id"
LIMIT 50;