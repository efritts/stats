

CREATE TABLE `CBSA` (
  `CBSA_CODE` int NOT NULL,
  `CBSA_TITLE` varchar(100) DEFAULT NULL,
  `AREA_TYPE` varchar(10) DEFAULT NULL,
  `CSA_TITLE` varchar(100) DEFAULT NULL,
  `COUNTY` varchar(50) NOT NULL,
  `STATE_NAME` varchar(50) DEFAULT NULL,
  `IS_CENTRAL` boolean DEFAULT NULL,
  PRIMARY KEY (`CBSA_CODE`,`COUNTY`)
);

CREATE TABLE `CITIES` (
  `CITY` varchar(40) NOT NULL,
  `STATE_ID` varchar(2) NOT NULL,
  `STATE_NAME` varchar(40) DEFAULT NULL,
  `COUNTY` varchar(50) DEFAULT NULL,
  `POPULATION` int DEFAULT NULL,
  `DENSITY` int DEFAULT NULL,
  PRIMARY KEY (`CITY`,`STATE_ID`)
);

CREATE TABLE `STATES` (
  `HOSP_NAME` varchar(100) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `BEDS` int DEFAULT NULL,
  `DISCHARGES` int DEFAULT NULL,
  `PATIENT_DAYS` int DEFAULT NULL,
  `STATE_ID` varchar(2) NOT NULL,
  PRIMARY KEY (`HOSP_NAME`,`CITY`)
) ;

CREATE  VIEW `big_list` AS 
select `a`.`CBSA_CODE` AS `cbsa_code`,
	`a`.`AREA_TYPE` AS `area_type`,
    `a`.`IS_CENTRAL` AS `is_central`,
    `b`.`CITY` AS `city`,
    `b`.`STATE_ID` AS `state_id`,
    `b`.`COUNTY` AS `county`,
    `c`.`HOSP_NAME` AS `hosp_name`,
    `c`.`BEDS` AS `beds`,
    `c`.`DISCHARGES` AS `discharges`,
    `c`.`PATIENT_DAYS` AS `patient_days` 
from ((`cbsa` `a` join `cities` `b`) 
	join `states` `c`) 
where ((trim(trailing ' ' from `a`.`COUNTY`) = `b`.`COUNTY`) 
	and (`b`.`STATE_NAME` = `a`.`STATE_NAME`) 
    and (`c`.`CITY` = `b`.`CITY`) 
    and (`c`.`STATE_ID` = `b`.`STATE_ID`)) 
order by `a`.`CBSA_CODE`;




