CREATE TABLE "Ingredients" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "price" NUMERIC NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "Donuts" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "gluten-free" INTEGER NOT NULL,
    "price" NUMERIC NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "DonutIngredients" (
    "donut_id" INTEGER,
    "ingredient_id" INTEGER,
    FOREIGN KEY ("donut_id") REFERENCES "Donuts"("id"),
    FOREIGN KEY ("ingredient_id") REFERENCES "Ingredients"("id")
);

CREATE TABLE "Customers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "Orders" (
    "id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("customer_id") REFERENCES "Customers"("id")
);

CREATE TABLE "OrderDetails" (
    "order_id" INTEGER,
    "donut_id" INTEGER,
    FOREIGN KEY ("order_id") REFERENCES "Oreder"("id"),
    FOREIGN KEY ("donut_id") REFERENCES "Donuts"("id")
);