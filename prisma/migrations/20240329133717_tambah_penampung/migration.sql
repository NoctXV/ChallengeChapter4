-- CreateTable
CREATE TABLE "transaction" (
    "id" SERIAL NOT NULL,
    "amount" INTEGER NOT NULL,
    "source_account_id" INTEGER NOT NULL,
    "source_amount_id" INTEGER NOT NULL,
    "users_id" INTEGER,
    "bankaccount_id" INTEGER,

    CONSTRAINT "transaction_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "transaction" ADD CONSTRAINT "transaction_users_id_fkey" FOREIGN KEY ("users_id") REFERENCES "users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "transaction" ADD CONSTRAINT "transaction_bankaccount_id_fkey" FOREIGN KEY ("bankaccount_id") REFERENCES "bankaccount"("id") ON DELETE SET NULL ON UPDATE CASCADE;
