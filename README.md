# jspuserweb
user web site maden jsp

의존성
-MySQL

(1) 이하 DB
CREATE SCHEMA `project_db` ;

CREATE TABLE `project_db`.`user` (  
  `userID` VARCHAR(45) NOT NULL,
  `userPassword` VARCHAR(45) NULL,
  `userName` VARCHAR(45) NULL,
  `userGender` VARCHAR(45) NULL,
  `userEmail` VARCHAR(45) NULL,
  PRIMARY KEY (`idx`, `userID`));

CREATE TABLE `project_db`.`bbs` (
  `bbsID` INT NOT NULL,
  `bbsTitle` VARCHAR(45) NULL DEFAULT NULL,
  `userID` VARCHAR(45) NULL DEFAULT NULL,
  `bbsDate` DATETIME NULL DEFAULT NULL,
  `bbsContent` VARCHAR(45) NULL DEFAULT NULL,
  `bbsAvailable` INT NULL DEFAULT NULL,
  PRIMARY KEY (`bbsID`));

(2) mysql-connector-j-8.0.33 설치 필요
(기존 경로: C:\Program Files (x86)\MySQL\Connector J 8.0)

-tomcat 9.0 설치필요-

tomcat과 sql connector 모두 build path에서 설정해야함.
