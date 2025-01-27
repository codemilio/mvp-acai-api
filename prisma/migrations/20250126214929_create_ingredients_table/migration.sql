-- CreateEnum
CREATE TYPE "Measure" AS ENUM ('KG', 'G', 'L', 'UN');

-- CreateEnum
CREATE TYPE "IngredientType" AS ENUM ('CREAM', 'PACKAGING', 'ADDITIONAL');

-- CreateTable
CREATE TABLE "tb_users" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "tb_users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tb_ingredients" (
    "id" TEXT NOT NULL,
    "nm_ingredient" VARCHAR(255) NOT NULL,
    "nm_mark" VARCHAR(255) NOT NULL,
    "nr_amount" DOUBLE PRECISION NOT NULL,
    "nm_measure" "Measure" NOT NULL DEFAULT 'G',
    "nr_price" DOUBLE PRECISION NOT NULL,
    "nr_stock_amount" INTEGER NOT NULL DEFAULT 0,
    "nr_type" "IngredientType" NOT NULL DEFAULT 'ADDITIONAL',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "tb_ingredients_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "tb_users_email_key" ON "tb_users"("email");
