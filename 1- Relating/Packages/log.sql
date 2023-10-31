-- *** The Lost Letter ***
SELECT * FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
);
SELECT * FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "package_id" = 384
    AND "action" = 'Drop'
);
-- *** The Devious Delivery ***
SELECT * FROM "packages" WHERE "from_address_id" IS NULL;
SELECT * FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "action" = 'Drop'
    AND "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
    )
);
-- *** The Forgotten Gift ***
SELECT "contents" FROM "packages" WHERE "to_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place'
    )
    AND "from_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street'
);

SELECT "name" FROM "drivers" WHERE "id" IN (
    SELECT "driver_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "to_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place'
        )
        AND "from_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street'
        )
    )
    AND "timestamp" = (
        SELECT MAX("timestamp") FROM "scans" WHERE "package_id" = 9523
    )
);
