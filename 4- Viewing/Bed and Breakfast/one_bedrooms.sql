CREATE VIEW "one_bedrooms" AS
    SELECT * FROM "no_descriptions"
    WHERE "bedrooms" = 1;
