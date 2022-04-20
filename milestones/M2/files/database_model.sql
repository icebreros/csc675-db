-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- -----------------------------------------------------
-- Schema ZooManagementDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ZooManagementDB` ;
USE `ZooManagementDB` ;

-- -----------------------------------------------------
-- Table `ZooManagementDB`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`user` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `dob` DATETIME NOT NULL,
  PRIMARY KEY (`user_id`, `dob`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`account`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`account` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`account` (
  `account_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NULL,
  PRIMARY KEY (`account_id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `user_id_acc_FK`
    FOREIGN KEY (`user_id`)
    REFERENCES `ZooManagementDB`.`user` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`role` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`role` (
  `role_id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`role_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`zoostop`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`zoostop` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`zoostop` (
  `zoostop_id` INT NOT NULL AUTO_INCREMENT,
  `reward_amount` INT NULL,
  PRIMARY KEY (`zoostop_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`staff`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`staff` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`staff` (
  `staff_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NULL,
  PRIMARY KEY (`staff_id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `user_id_staff_FK`
    FOREIGN KEY (`user_id`)
    REFERENCES `ZooManagementDB`.`user` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`admin`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`admin` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`admin` (
  `admin_id` INT NOT NULL AUTO_INCREMENT,
  `staff_id` INT NULL,
  PRIMARY KEY (`admin_id`),
  INDEX `staff_id_idx` (`staff_id` ASC) VISIBLE,
  CONSTRAINT `staff_id_admin_FK`
    FOREIGN KEY (`staff_id`)
    REFERENCES `ZooManagementDB`.`staff` (`staff_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`IT_Specialist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`IT_Specialist` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`IT_Specialist` (
  `it_specialist_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`it_specialist_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`zoocard`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`zoocard` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`zoocard` (
  `zoocard_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NULL,
  `balance` INT NULL,
  PRIMARY KEY (`zoocard_id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `user_id_zoocard_FK`
    FOREIGN KEY (`user_id`)
    REFERENCES `ZooManagementDB`.`user` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`card_supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`card_supplier` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`card_supplier` (
  `card_supplier_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`card_supplier_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`zooticket`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`zooticket` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`zooticket` (
  `zooticket_id` INT NOT NULL AUTO_INCREMENT,
  `display_price` INT NULL,
  PRIMARY KEY (`zooticket_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`ticket`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`ticket` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`ticket` (
  `ticket_id` INT NOT NULL AUTO_INCREMENT,
  `price` INT NULL,
  PRIMARY KEY (`ticket_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`medicine_supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`medicine_supplier` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`medicine_supplier` (
  `medicine_supplier_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`medicine_supplier_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`veteranarian`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`veteranarian` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`veteranarian` (
  `vet_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`vet_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`food_supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`food_supplier` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`food_supplier` (
  `food_supplier_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`food_supplier_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`animal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`animal` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`animal` (
  `animal_id` INT NOT NULL AUTO_INCREMENT,
  `pen_id` INT NULL,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`animal_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`pen`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`pen` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`pen` (
  `pen_id` INT NOT NULL AUTO_INCREMENT,
  `num_of_inhabitants` INT NULL,
  PRIMARY KEY (`pen_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`location`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`location` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`location` (
  `location_id` INT NOT NULL AUTO_INCREMENT,
  `pen_id` INT NULL,
  `map_location` VARCHAR(45) NULL,
  PRIMARY KEY (`location_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`cleaners`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`cleaners` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`cleaners` (
  `cleaner_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`cleaner_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`maintenance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`maintenance` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`maintenance` (
  `maintenance_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`maintenance_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`item_supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`item_supplier` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`item_supplier` (
  `item_supplier_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`item_supplier_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`item` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`item` (
  `item_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `price` INT NULL,
  `quantity` INT NULL,
  `backroom_location` VARCHAR(45) NULL,
  PRIMARY KEY (`item_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`zooticket_IT`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`zooticket_IT` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`zooticket_IT` (
  `zooticket_id` INT NULL,
  `it_specialist_id` INT NULL,
  INDEX `zooticket_id_idx` (`zooticket_id` ASC) VISIBLE,
  INDEX `it_specialist_id_idx` (`it_specialist_id` ASC) VISIBLE,
  CONSTRAINT `zooticket_id_zoocticketIT_FK`
    FOREIGN KEY (`zooticket_id`)
    REFERENCES `ZooManagementDB`.`zooticket` (`zooticket_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `it_specialist_id_zooticketIT_FK`
    FOREIGN KEY (`it_specialist_id`)
    REFERENCES `ZooManagementDB`.`IT_Specialist` (`it_specialist_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`account_roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`account_roles` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`account_roles` (
  `account_id` INT NULL,
  `role_id` INT NULL,
  INDEX `account_id_idx` (`account_id` ASC) VISIBLE,
  INDEX `role_id_idx` (`role_id` ASC) VISIBLE,
  CONSTRAINT `account_id_accR_FK`
    FOREIGN KEY (`account_id`)
    REFERENCES `ZooManagementDB`.`account` (`account_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `role_id_accR_FK`
    FOREIGN KEY (`role_id`)
    REFERENCES `ZooManagementDB`.`role` (`role_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`animal_food_supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`animal_food_supplier` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`animal_food_supplier` (
  `animal_id` INT NULL,
  `food_supplier_id` INT NULL,
  INDEX `food_supplier_id_idx` (`food_supplier_id` ASC) VISIBLE,
  INDEX `animal_id_idx` (`animal_id` ASC) VISIBLE,
  CONSTRAINT `animal_id_animalFS_FK`
    FOREIGN KEY (`animal_id`)
    REFERENCES `ZooManagementDB`.`animal` (`animal_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `food_supplier_id_animalFS_FK`
    FOREIGN KEY (`food_supplier_id`)
    REFERENCES `ZooManagementDB`.`food_supplier` (`food_supplier_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`pen_cleaners`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`pen_cleaners` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`pen_cleaners` (
  `pen_id` INT NULL,
  `cleaner_id` INT NULL,
  INDEX `pen_id_idx` (`pen_id` ASC) VISIBLE,
  INDEX `cleaner_id_idx` (`cleaner_id` ASC) VISIBLE,
  CONSTRAINT `pen_id_penC_FK`
    FOREIGN KEY (`pen_id`)
    REFERENCES `ZooManagementDB`.`pen` (`pen_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `cleaner_id_penC_FK`
    FOREIGN KEY (`cleaner_id`)
    REFERENCES `ZooManagementDB`.`cleaners` (`cleaner_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`location_maintenance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`location_maintenance` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`location_maintenance` (
  `location_id` INT NULL,
  `maintenance_id` INT NULL,
  INDEX `maintenance_id_idx` (`maintenance_id` ASC) VISIBLE,
  INDEX `location_id_idx` (`location_id` ASC) VISIBLE,
  CONSTRAINT `location_id_locM_FK`
    FOREIGN KEY (`location_id`)
    REFERENCES `ZooManagementDB`.`location` (`location_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `maintenance_id_locM_FK`
    FOREIGN KEY (`maintenance_id`)
    REFERENCES `ZooManagementDB`.`maintenance` (`maintenance_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`items_supplied`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`items_supplied` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`items_supplied` (
  `item_id` INT NULL,
  `item_supplier_id` INT NULL,
  INDEX `item_supplier_id_idx` (`item_supplier_id` ASC) VISIBLE,
  INDEX `item_id_idx` (`item_id` ASC) VISIBLE,
  CONSTRAINT `item_id_itemS_FK`
    FOREIGN KEY (`item_id`)
    REFERENCES `ZooManagementDB`.`item` (`item_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `item_supplier_id_itemS_FK`
    FOREIGN KEY (`item_supplier_id`)
    REFERENCES `ZooManagementDB`.`item_supplier` (`item_supplier_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`animal_vet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`animal_vet` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`animal_vet` (
  `animal_id` INT NULL,
  `vet_id` INT NULL,
  INDEX `animal_id_idx` (`animal_id` ASC) VISIBLE,
  INDEX `vet_id_idx` (`vet_id` ASC) VISIBLE,
  CONSTRAINT `animal_id_animalVet_FK`
    FOREIGN KEY (`animal_id`)
    REFERENCES `ZooManagementDB`.`animal` (`animal_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `vet_id_animalVet_FK`
    FOREIGN KEY (`vet_id`)
    REFERENCES `ZooManagementDB`.`veteranarian` (`vet_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`vet_medicine_supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`vet_medicine_supplier` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`vet_medicine_supplier` (
  `medicine_supplier_id` INT NULL,
  `vet_id` INT NULL,
  INDEX `medicine_supplier_id_idx` (`medicine_supplier_id` ASC) VISIBLE,
  INDEX `vet_id_idx` (`vet_id` ASC) VISIBLE,
  CONSTRAINT `medicine_supplier_id_vetMS_FK`
    FOREIGN KEY (`medicine_supplier_id`)
    REFERENCES `ZooManagementDB`.`medicine_supplier` (`medicine_supplier_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `vet_id_vetMS_FK`
    FOREIGN KEY (`vet_id`)
    REFERENCES `ZooManagementDB`.`veteranarian` (`vet_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`zooticket_ticket`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`zooticket_ticket` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`zooticket_ticket` (
  `zooticket_id` INT NULL,
  `ticket_id` INT NULL,
  INDEX `zooticket_id_idx` (`zooticket_id` ASC) VISIBLE,
  INDEX `ticket_id_idx` (`ticket_id` ASC) VISIBLE,
  CONSTRAINT `zooticket_id_zooticketTIcket_FK`
    FOREIGN KEY (`zooticket_id`)
    REFERENCES `ZooManagementDB`.`zooticket` (`zooticket_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `ticket_id_zooticketTicket_FK`
    FOREIGN KEY (`ticket_id`)
    REFERENCES `ZooManagementDB`.`ticket` (`ticket_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooManagementDB`.`zoocard_supplied`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooManagementDB`.`zoocard_supplied` ;

CREATE TABLE IF NOT EXISTS `ZooManagementDB`.`zoocard_supplied` (
  `zoocard_id` INT NULL,
  `card_supplier_id` INT NULL,
  `cards_supplied` INT NULL,
  INDEX `zoocard_id_idx` (`zoocard_id` ASC) VISIBLE,
  INDEX `card_supplier_id_idx` (`card_supplier_id` ASC) VISIBLE,
  CONSTRAINT `zoocard_id_zoocardS_FK`
    FOREIGN KEY (`zoocard_id`)
    REFERENCES `ZooManagementDB`.`zoocard` (`zoocard_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `card_supplier_id_zoocardS_FK`
    FOREIGN KEY (`card_supplier_id`)
    REFERENCES `ZooManagementDB`.`card_supplier` (`card_supplier_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
