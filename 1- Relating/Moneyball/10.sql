SELECT "first_name", "last_name", "salary", "HR", "salaries"."year"
FROM "players"
JOIN "salaries" ON
    "players"."id" = "salaries"."player_id"
JOIN "performances" ON
    "players"."id" = "performances"."player_id"
    AND "performances"."year" = "salaries"."year"
ORDER BY
    "players"."id",
    "salaries"."year" DESC,
    "HR" DESC, "salary" DESC;