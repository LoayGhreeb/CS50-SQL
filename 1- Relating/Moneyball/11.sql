SELECT "first_name", "last_name", ("salary" / "H") AS "dollars per hit"
FROM "salaries"
JOIN "players" ON
    "players"."id" = "salaries"."player_id"
JOIN "performances" ON
    "salaries"."player_id" = "performances"."player_id" AND "salaries"."year" = "performances"."year"
WHERE "H" > 0 AND "salaries"."year" = 2001
ORDER BY "dollars per hit", "first_name", "last_name"
LIMIT 10;

