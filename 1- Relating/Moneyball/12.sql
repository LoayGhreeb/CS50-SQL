SELECT * FROM (
    SELECT "first_name", "last_name"
    FROM "salaries"
    JOIN "players" ON
        "players"."id" = "salaries"."player_id"
    JOIN "performances" ON
        "salaries"."player_id" = "performances"."player_id" AND "salaries"."year" = "performances"."year"
    WHERE "H" > 0 AND "salaries"."year" = 2001
    ORDER BY ("salary" / "H"), "first_name", "last_name"
    LIMIT 10
)

INTERSECT

SELECT * FROM (
    SELECT "first_name", "last_name"
    FROM "salaries"
    JOIN "players" ON
        "players"."id" = "salaries"."player_id"
    JOIN "performances" ON
        "salaries"."player_id" = "performances"."player_id" AND "salaries"."year" = "performances"."year"
    WHERE "RBI" > 0 AND "salaries"."year" = 2001
    ORDER BY ("salary" / "RBI"), "first_name", "last_name"
    LIMIT 10
)
ORDER BY "last_name";