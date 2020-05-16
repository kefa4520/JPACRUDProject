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
  `trip_name` VARCHAR(50) NOT NULL DEFAULT 'Trip',
  `best_time_to_visit` VARCHAR(100) NULL,
  `flight_price` INT NULL,
  `visa_required` TINYINT NULL,
  `trip_length_days` INT NULL,
  `local_food_to_try` VARCHAR(50) NULL,
  `most_popular_attraction` VARCHAR(100) NULL,
  `cheap_crash_pad` VARCHAR(1000) NULL,
  `bang_for_your_buck_stay` VARCHAR(1000) NULL,
  `luxury_stay` VARCHAR(1000) NULL,
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
INSERT INTO `travel` (`id`, `trip_name`, `best_time_to_visit`, `flight_price`, `visa_required`, `trip_length_days`, `local_food_to_try`, `most_popular_attraction`, `cheap_crash_pad`, `bang_for_your_buck_stay`, `luxury_stay`) VALUES (1, 'New Zealand', 'December to February', 1529, 0, 10, 'Māori hāngī', 'Milford Sound, South Island', 'https://www.airbnb.com/rooms/19611678?adults=1&check_in=2021-01-02&check_out=2021-01-11&source_impression_id=p3_1589650022_256Sna580xs7xx7S&guests=1', 'https://www.airbnb.com/rooms/33070748?check_in=2021-01-02&check_out=2021-01-11&adults=1&source_impression_id=p3_1589649935_85gWKYdmoCJq47bj&guests=1', 'https://www.airbnb.com/rooms/29142902?adults=1&children=0&infants=0&check_out=2021-01-11&check_in=2021-01-02&source_impression_id=p3_1589650145_L4qPzCfPAoLT1ASq');
INSERT INTO `travel` (`id`, `trip_name`, `best_time_to_visit`, `flight_price`, `visa_required`, `trip_length_days`, `local_food_to_try`, `most_popular_attraction`, `cheap_crash_pad`, `bang_for_your_buck_stay`, `luxury_stay`) VALUES (2, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;

