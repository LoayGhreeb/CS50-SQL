.import --csv meteorites.csv "temp"

UPDATE "temp" SET
    "mass" = COALESCE(NULLIF("mass", ''), NULL),
    "year" = COALESCE(NULLIF("year", ''), NULL),
    "lat"  = COALESCE(NULLIF("lat", ''), NULL),
    "long" = COALESCE(NULLIF("long", ''), NULL);


UPDATE "temp" SET
    "mass" = ROUND("mass", 2),
    "lat"  = ROUND("lat", 2),
    "long" = ROUND("long", 2);

DELETE FROM "temp" WHERE "nametype" = 'Relict';


CREATE TABLE "meteorites" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "class" TEXT NOT NULL,
    "mass" NUMERIC,
    "discovery" TEXT NOT NULL,
    "year" INTEGER,
    "lat" NUMERIC,
    "long" NUMERIC,
    PRIMARY KEY ("id")
);

INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "temp" ORDER BY "year" , "name";

DROP TABLE "temp";