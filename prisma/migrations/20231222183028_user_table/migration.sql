/*
  Warnings:

  - You are about to alter the column `first_name` on the `users` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(70)`.
  - You are about to alter the column `last_name` on the `users` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(70)`.
  - You are about to alter the column `courses` on the `users` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(100)`.

*/
-- AlterTable
ALTER TABLE `users` ADD COLUMN `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    MODIFY `first_name` VARCHAR(70) NOT NULL,
    MODIFY `last_name` VARCHAR(70) NOT NULL,
    MODIFY `courses` VARCHAR(100) NOT NULL;
