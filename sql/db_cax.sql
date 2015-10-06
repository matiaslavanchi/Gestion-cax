-- MySQL Script generated by MySQL Workbench
-- mar 29 sep 2015 21:11:08 CLT
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema CAX
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema CAX
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CAX` DEFAULT CHARACTER SET latin1 ;
USE `CAX` ;

-- -----------------------------------------------------
-- Table `CAX`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CAX`.`categoria` (
  `idcategoria` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcategoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `CAX`.`disponibilidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CAX`.`disponibilidad` (
  `iddisponibilidad` INT(11) NOT NULL AUTO_INCREMENT,
  `idmiembro` VARCHAR(45) NULL DEFAULT NULL,
  `fechaInicio` DATE NULL DEFAULT NULL,
  `fechaFin` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`iddisponibilidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `CAX`.`miembro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CAX`.`miembro` (
  `idmiembro` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `domicilio` VARCHAR(45) NULL DEFAULT NULL,
  `dni` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `celular` VARCHAR(45) NULL DEFAULT NULL,
  `fijoDia` VARCHAR(45) NULL DEFAULT NULL,
  `fijoNoche` VARCHAR(45) NULL DEFAULT NULL,
  `idcategoria` INT(11) NULL DEFAULT NULL,
  `idskill` INT(11) NULL DEFAULT NULL,
  `password` VARCHAR(45) NOT NULL,
  `fechaNacimiento` DATE NOT NULL,
  PRIMARY KEY (`idmiembro`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `CAX`.`miembro_skill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CAX`.`miembro_skill` (
  `idmiembro_skill` INT(11) NOT NULL AUTO_INCREMENT,
  `idmiembro` INT(11) NULL DEFAULT NULL,
  `idskill` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idmiembro_skill`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `CAX`.`skill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CAX`.`skill` (
  `idskil` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idskil`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;