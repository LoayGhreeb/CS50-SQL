SELECT "name", ROUND(AVG("salary"), 2) AS "average salary"
FROM "teams"
JOIN "salaries" ON
    "teams"."id" = "salaries"."team_id"
WHERE "salaries"."year" = 2001
GROUP BY "teams"."id"
ORDER BY "average salary"
LIMIT 5;