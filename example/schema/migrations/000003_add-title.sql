-- +migrate Up
SET FOREIGN_KEY_CHECKS = 0;
ALTER TABLE `article` ADD COLUMN `title` VARCHAR (255) NOT NULL AFTER `content`;
SET FOREIGN_KEY_CHECKS = 1;


-- +migrate Down
SET FOREIGN_KEY_CHECKS = 0;
ALTER TABLE `article` DROP COLUMN `title`;
SET FOREIGN_KEY_CHECKS = 1;
