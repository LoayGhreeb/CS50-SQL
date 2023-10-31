SELECT "name"
FROM "districts"
JOIN "expenditures"
    ON "districts"."id" = "expenditures"."district_id"
WHERE "pupils" = (
    SELECT MIN("pupils")
    FROM "expenditures"
);