/*
  Warnings:

  - You are about to alter the column `counter_value` on the `mytable` table. The data in that column will be cast from `BigInt` to `Int`. This cast may fail. Please make sure the data in the column can be cast.
  - You are about to alter the column `date` on the `mytable` table. The data in that column will be cast from `DateTime` to `DateTime`. This cast may fail. Please make sure the data in the column can be cast.
  - You are about to alter the column `increment` on the `mytable` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.
  - You are about to alter the column `time` on the `mytable` table. The data in that column will be cast from `String` to `String`. This cast may fail. Please make sure the data in the column can be cast.
  - You are about to alter the column `time_stamp` on the `mytable` table. The data in that column will be cast from `String` to `String`. This cast may fail. Please make sure the data in the column can be cast.

*/
-- RedefineTables
CREATE TABLE "_prisma_new_mytable" (
    "time_stamp" STRING NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "time" STRING NOT NULL,
    "counter_value" INT4 NOT NULL,
    "increment" INT4 NOT NULL,

    CONSTRAINT "mytable_pkey" PRIMARY KEY ("counter_value")
);
INSERT INTO "_prisma_new_mytable" ("counter_value","date","increment","time","time_stamp") SELECT "counter_value","date","increment","time","time_stamp" FROM "mytable";
DROP TABLE "mytable" CASCADE;
ALTER TABLE "_prisma_new_mytable" RENAME TO "mytable";
