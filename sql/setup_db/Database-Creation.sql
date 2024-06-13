-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema todo_list
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema events_manager
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema events_manager
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `events_manager` DEFAULT CHARACTER SET utf8mb3 ;
USE `events_manager` ;

-- -----------------------------------------------------
-- Table `events_manager`.`events`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `events_manager`.`events` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `public_id` CHAR(36) NOT NULL,
  `eventName` VARCHAR(255) NOT NULL,
  `eventDescription` VARCHAR(255) NOT NULL,
  `eventDate` DATE NOT NULL,
  `eventLocation` VARCHAR(255) NOT NULL,
  `maxParticipants` INT NOT NULL,
  `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `public_id_UNIQUE` (`public_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `events_manager`.`organizers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `events_manager`.`organizers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `public_id` CHAR(36) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `phone` CHAR(11) NOT NULL,
 `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `public_id_UNIQUE` (`public_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `events_manager`.`organizers_events`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `events_manager`.`organizers_events` (
  `events_id` INT NOT NULL,
  `organizers_id` INT NOT NULL,
  PRIMARY KEY (`events_id`, `organizers_id`),
  INDEX `fk_events_has_organizers_organizers1_idx` (`organizers_id` ASC) VISIBLE,
  INDEX `fk_events_has_organizers_events_idx` (`events_id` ASC) VISIBLE,
  CONSTRAINT `fk_events_has_organizers_events`
    FOREIGN KEY (`events_id`)
    REFERENCES `events_manager`.`events` (`id`),
  CONSTRAINT `fk_events_has_organizers_organizers1`
    FOREIGN KEY (`organizers_id`)
    REFERENCES `events_manager`.`organizers` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `events_manager`.`participants`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `events_manager`.`participants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `public_id` CHAR(36) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `phone` CHAR(11) NOT NULL,
 `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `events_manager`.`participants_events`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `events_manager`.`participants_events` (
  `events_id` INT NOT NULL,
  `participants_id` INT NOT NULL,
  PRIMARY KEY (`events_id`, `participants_id`),
  INDEX `fk_events_has_participants_participants1_idx` (`participants_id` ASC) VISIBLE,
  INDEX `fk_events_has_participants_events1_idx` (`events_id` ASC) VISIBLE,
  CONSTRAINT `fk_events_has_participants_events1`
    FOREIGN KEY (`events_id`)
    REFERENCES `events_manager`.`events` (`id`),
  CONSTRAINT `fk_events_has_participants_participants1`
    FOREIGN KEY (`participants_id`)
    REFERENCES `events_manager`.`participants` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
