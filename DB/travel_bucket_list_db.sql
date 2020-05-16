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
INSERT INTO `travel` (`id`, `trip_name`, `best_time_to_visit`, `flight_price`, `visa_required`, `trip_length_days`, `local_food_to_try`, `most_popular_attraction`, `cheap_crash_pad`, `bang_for_your_buck_stay`, `luxury_stay`) VALUES (2, 'Iceland', 'February to March', 464, 0, 10, 'Skyr', 'The Northern Lights, Aurora Borealis', 'https://www.airbnb.com/rooms/42293159?check_in=2021-02-03&adults=1&check_out=2021-02-10&source_impression_id=p3_1589655224_qIYDhqVLaFfqHWv4&guests=1', 'https://www.airbnb.com/rooms/18339988?check_out=2021-02-10&check_in=2021-02-03&adults=1&source_impression_id=p3_1589655280_mywkgNv7S4BhjB8h&guests=1', 'https://www.airbnb.com/rooms/plus/11766626?check_in=2021-02-03&adults=1&check_out=2021-02-10&source_impression_id=p3_1589655332_nZiyjG8k44y%2BKFB4&guests=1');
INSERT INTO `travel` (`id`, `trip_name`, `best_time_to_visit`, `flight_price`, `visa_required`, `trip_length_days`, `local_food_to_try`, `most_popular_attraction`, `cheap_crash_pad`, `bang_for_your_buck_stay`, `luxury_stay`) VALUES (3, 'Dominica', 'February to April', 722, 0, 10, 'Manicou', 'Morne Trois Pitons National Park', 'https://www.airbnb.com/rooms/744853?check_in=2021-03-02&check_out=2021-03-10&adults=1&source_impression_id=p3_1589656170_n1e2%2F4GucbNW3X78&guests=1', 'https://www.airbnb.com/rooms/24152946?check_out=2021-03-10&check_in=2021-03-02&adults=1&source_impression_id=p3_1589656218_3VX6indDbxqwBXar&guests=1', 'https://www.airbnb.com/rooms/5897771?check_in=2021-03-02&adults=1&check_out=2021-03-10&source_impression_id=p3_1589656268_4vAX04NWo%2Fe7Fq4m&guests=1');
INSERT INTO `travel` (`id`, `trip_name`, `best_time_to_visit`, `flight_price`, `visa_required`, `trip_length_days`, `local_food_to_try`, `most_popular_attraction`, `cheap_crash_pad`, `bang_for_your_buck_stay`, `luxury_stay`) VALUES (4, 'Singapore', 'February to April', 961, 0, 14, 'Bak Kut Teh', 'Gardens by the Bay', 'https://www.airbnb.com/rooms/33604718?%3Finfants=0&adults=1&check_out=2021-02-10&check_in=2021-02-03&source_impression_id=p3_1589656865_nfGhuZLYjIJqf%2BiX&guests=1', 'https://www.airbnb.com/rooms/42755516?check_out=2021-02-10&check_in=2021-02-03&adults=1&source_impression_id=p3_1589656908_HuN3k1KXUBnlTHQi&guests=1', 'https://www.airbnb.com/rooms/37916346??check_in=2021-02-03&check_out=2021-02-10&adults=1&children=0&infants=0&source_impression_id=p3_1589656961_1pgdT7ueBKFxJQcU');
INSERT INTO `travel` (`id`, `trip_name`, `best_time_to_visit`, `flight_price`, `visa_required`, `trip_length_days`, `local_food_to_try`, `most_popular_attraction`, `cheap_crash_pad`, `bang_for_your_buck_stay`, `luxury_stay`) VALUES (5, 'Mongolia', 'June to August', 1353, 0, 21, 'Buuz', 'Altai Tavan Bogd National Park', 'https://www.airbnb.com/rooms/41413753?adults=1&check_in=2021-02-03&check_out=2021-02-10&source_impression_id=p3_1589657282_6%2FYgLpmbvWTtniF5&guests=1', 'https://www.airbnb.com/rooms/18303271?adults=1&check_in=2021-02-03&check_out=2021-02-10&source_impression_id=p3_1589657393_gQvSOjOphj59aTLl&guests=1', 'https://www.airbnb.com/rooms/42728893?check_in=2021-02-03&check_out=2021-02-10&adults=1&source_impression_id=p3_1589657438_Q6y6uwBK1wvFpRvl&guests=1');
INSERT INTO `travel` (`id`, `trip_name`, `best_time_to_visit`, `flight_price`, `visa_required`, `trip_length_days`, `local_food_to_try`, `most_popular_attraction`, `cheap_crash_pad`, `bang_for_your_buck_stay`, `luxury_stay`) VALUES (6, 'Mexico', 'December to April', 556, 0, 7, 'Chilaquiles', 'Baja California Peninsula', 'https://www.airbnb.com/rooms/12716292?adults=1&children=0&check_in=2021-02-03&infants=0&check_out=2021-02-10&source_impression_id=p3_1589657909_z24BTNfVLwByG9Sx', 'https://www.airbnb.com/rooms/34206698?check_out=2021-02-10&check_in=2021-02-03&adults=1&source_impression_id=p3_1589657940_LJ6DOY%2FgZBcXljJK&guests=1', 'https://www.airbnb.com/rooms/10526132?adults=1&check_in=2021-02-03&check_out=2021-02-10&source_impression_id=p3_1589657974_L%2Fu%2FaU67BQOs%2FCAX&guests=1');

COMMIT;

