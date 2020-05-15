-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema travel_bucket_list_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `travel_bucket_list_db` ;

-- -----------------------------------------------------
-- Schema travel_bucket_list_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `travel_bucket_list_db` DEFAULT CHARACTER SET utf8 ;
USE `travel_bucket_list_db` ;

-- -----------------------------------------------------
-- Table `travel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `travel` ;

CREATE TABLE IF NOT EXISTS `travel` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `trip_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS traveleruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'traveleruser'@'localhost' IDENTIFIED BY 'traveleruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'traveleruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `travel`
-- -----------------------------------------------------
START TRANSACTION;
USE `travel_bucket_list_db`;
INSERT INTO `travel` (`id`, `trip_name`) VALUES (1, 'Colombia');

COMMIT;

