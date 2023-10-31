CREATE TABLE "Users" (
    "username" TEXT,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    PRIMARY KEY ("username")
);

CREATE TABLE "Schools" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "year" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "Companies" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "UserConnections" (
    "A" TEXT,
    "B" TEXT,
    FOREIGN KEY ("A") REFERENCES "Users"("username"),
    FOREIGN KEY ("B") REFERENCES "Users"("username")
);

CREATE TABLE "SchoolConnections" (
    "school_id" INTEGER,
    "username" TEXT,
    "start_date" TEXT NOT NULL,S
    "end_date" TEXT,
    "type" TEXT NOT NULL,
    FOREIGN KEY ("school_id") REFERENCES "Schools"("id"),
    FOREIGN KEY ("username") REFERENCES "Users"("username")
);

CREATE TABLE "CompanyConnections" (
    "company_id" INTEGER,
    "username" TEXT,
    "start_date" TEXT NOT NULL,
    "end_date" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    FOREIGN KEY ("company_id") REFERENCES "Companies"("id"),
    FOREIGN KEY ("username") REFERENCES "Users"("username")
);

