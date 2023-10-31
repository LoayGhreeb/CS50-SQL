CREATE VIEW "june_vacancies" AS
    SELECT "listings"."id", "property_type", "host_name", COUNT(*) AS "days_vacant"
    FROM "listings"
    JOIN "availabilities" ON
        "listings"."id" = "availabilities"."listing_id"
    WHERE "available" = 'TRUE'
    AND "date" LIKE '2023-06%'
    GROUP BY "listings"."id";

