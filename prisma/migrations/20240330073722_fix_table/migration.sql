/*
  Warnings:

  - You are about to drop the column `source_amount_id` on the `transaction` table. All the data in the column will be lost.
  - Added the required column `destination_account_id` to the `transaction` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "transaction" DROP COLUMN "source_amount_id",
ADD COLUMN     "destination_account_id" INTEGER NOT NULL;
