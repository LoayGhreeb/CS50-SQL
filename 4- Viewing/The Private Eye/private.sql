CREATE TABLE "temp" (
    "sentence_id" INTEGER,
    "character_number" INTEGER,
    "length" INTEGER
);

INSERT INTO "temp" ("sentence_id", "character_number", "length")
VALUES
    (14, 98, 4),
    (114, 3, 5),
    (618, 72, 9),
    (630, 7, 3),
    (932, 12, 5),
    (2230, 0, 7),
    (2346, 4, 10),
    (3041, 4, 5);

CREATE VIEW "message" AS
    SELECT SUBSTR("sentence", "character_number", "length") AS "phrase"
    FROM "sentences"
    JOIN "temp" ON
        "sentences"."id" = "temp"."sentence_id";

SELECT "phrase" FROM "message";

