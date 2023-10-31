CREATE TABLE "Airlines"(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL CHECK ("concourse" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T')),
    PRIMARY KEY("id")
);


CREATE TABLE "Flights" (
    "id" INTEGER,
    "airline_id" INTEGER,
    "from" TEXT NOT NULL,
    "to" TEXT NOT NULL,
    "departure" TEXT NOT NULL,
    "arrival" TEXT NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY ("airline_id") REFERENCES "Airlines"("id")
);

CREATE TABLE "Passengers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL CHECK ("age" > 0),
    PRIMARY KEY("id")
);

CREATE TABLE "CheckIns" (
    "id" INTEGER,
    "datetime" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "passenger_id" INTEGER,
    "flight_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("passenger_id") REFERENCES "Passengers"("id"),
    FOREIGN KEY("flight_id") REFERENCES "Flights"("id")
);
