-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema fogcarport
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fogcarport
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fogcarport` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `fogcarport` ;

-- -----------------------------------------------------
-- Table `fogcarport`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fogcarport`.`Users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `adress` VARCHAR(45) NULL,
  `zipcode` INT NULL,
  `city` VARCHAR(45) NULL,
  `phone` INT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fogcarport`.`unit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fogcarport`.`unit` (
  `unit` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`unit`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fogcarport`.`material`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fogcarport`.`material` (
  `material_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `parts_pr_unit` INT NOT NULL,
  `unit` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`material_id`),
  INDEX `fk_material_unit1_idx` (`unit` ASC) VISIBLE,
  CONSTRAINT `fk_material_unit1`
    FOREIGN KEY (`unit`)
    REFERENCES `fogcarport`.`unit` (`unit`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fogcarport`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fogcarport`.`status` (
  `status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`status`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fogcarport`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fogcarport`.`order` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `lenght` INT NOT NULL,
  `width` INT NOT NULL,
  `user_id` INT NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_order_status_idx` (`status` ASC) VISIBLE,
  INDEX `fk_order_Users1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_order_status`
    FOREIGN KEY (`status`)
    REFERENCES `fogcarport`.`status` (`status`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_Users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `fogcarport`.`Users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fogcarport`.`item_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fogcarport`.`item_list` (
  `item_list_id` INT NOT NULL AUTO_INCREMENT,
  `material_id` INT NOT NULL,
  `lenght` INT NOT NULL,
  `quantity` INT NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `price` DOUBLE NOT NULL,
  `order_id` INT NOT NULL,
  PRIMARY KEY (`item_list_id`),
  INDEX `fk_item_list_material1_idx` (`material_id` ASC) VISIBLE,
  INDEX `fk_item_list_order1_idx` (`order_id` ASC) VISIBLE,
  CONSTRAINT `fk_item_list_material1`
    FOREIGN KEY (`material_id`)
    REFERENCES `fogcarport`.`material` (`material_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_list_order1`
    FOREIGN KEY (`order_id`)
    REFERENCES `fogcarport`.`order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
