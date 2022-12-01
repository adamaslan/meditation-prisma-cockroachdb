-- CreateTable
CREATE TABLE "mytable" (
    "time_stamp" VARCHAR(24) NOT NULL,
    "date" DATE NOT NULL,
    "time" VARCHAR(8) NOT NULL,
    "counter_value" BIGINT NOT NULL,
    "increment" BIGINT NOT NULL,

    CONSTRAINT "mytable_pkey" PRIMARY KEY ("counter_value")
);

