-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Pizzeria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Pizzeria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Pizzeria` DEFAULT CHARACTER SET utf8 ;
USE `Pizzeria` ;

-- -----------------------------------------------------
-- Table `Pizzeria`.`Categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`Categorias` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` CHAR(150) NULL DEFAULT 'NOT NULL',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Pizzeria`.`Provincias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`Provincias` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` CHAR(150) NULL DEFAULT 'NOT NULL',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 53
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Pizzeria`.`Localidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`Localidad` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` CHAR(150) NULL DEFAULT 'NOT NULL',
  `id_provincia` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_provincia` (`id_provincia` ASC),
  CONSTRAINT `provincia_ibfk_1`
    FOREIGN KEY (`id_provincia`)
    REFERENCES `Pizzeria`.`Provincias` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Pizzeria`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`Clientes` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` CHAR(150) NULL DEFAULT 'NOT NULL',
  `apellidos` CHAR(250) NULL DEFAULT 'NOT NULL',
  `direccion` CHAR(250) NULL DEFAULT 'NOT NULL',
  `codigo_postal` INT(10) NULL DEFAULT NULL,
  `id_localidad` INT(11) NOT NULL,
  `telefono` CHAR(100) NULL DEFAULT NULL,
  `fecha_alta` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_localidad` (`id_localidad` ASC),
  CONSTRAINT `clientes_ibfk_1`
    FOREIGN KEY (`id_localidad`)
    REFERENCES `Pizzeria`.`Localidad` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 157
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Pizzeria`.`Pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`Pedidos` (
  `id` INT(11) NOT NULL,
  `id_cliente` INT(11) NOT NULL,
  `id_empleado` INT(11) NOT NULL,
  `id_localidad` INT(11) NOT NULL,
  `referencia` VARCHAR(10) NOT NULL,
  `tipo` ENUM('A domicilio', 'Recoger en tienda') NULL DEFAULT NULL,
  `coste_total` FLOAT NOT NULL,
  `estado` VARCHAR(50) NOT NULL,
  `fec_alta` DATETIME NOT NULL,
  `fec_reparto` DATETIME NULL DEFAULT NULL,
  `direccion` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_cliente` (`id_cliente` ASC),
  INDEX `id_empleado` (`id_empleado` ASC),
  INDEX `id_localidad` (`id_localidad` ASC),
  CONSTRAINT `pedidos_ibfk_1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `Pizzeria`.`Clientes` (`id`),
  CONSTRAINT `pedidos_ibfk_2`
    FOREIGN KEY (`id_empleado`)
    REFERENCES `Pizzeria`.`Empleados` (`id`),
  CONSTRAINT `pedidos_ibfk_3`
    FOREIGN KEY (`id_localidad`)
    REFERENCES `Pizzeria`.`Localidad` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Pizzeria`.`Tiendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`Tiendas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` CHAR(150) NULL DEFAULT 'NOT NULL',
  `direccion` CHAR(250) NULL DEFAULT 'NOT NULL',
  `codigo_postal` INT(10) NULL DEFAULT NULL,
  `id_localidad` INT(11) NOT NULL,
  `id_pedidos` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_localidad` (`id_localidad` ASC),
  INDEX `idPedido_idx` (`id_pedidos` ASC),
  CONSTRAINT `tiendas_ibfk_1`
    FOREIGN KEY (`id_localidad`)
    REFERENCES `Pizzeria`.`Localidad` (`id`),
  CONSTRAINT `idPedido`
    FOREIGN KEY (`id_pedidos`)
    REFERENCES `Pizzeria`.`Pedidos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Pizzeria`.`Empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`Empleados` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` CHAR(150) NULL DEFAULT 'NOT NULL',
  `apellidos` CHAR(250) NULL DEFAULT 'NOT NULL',
  `nif` CHAR(250) NULL DEFAULT 'NOT NULL',
  `telefono` CHAR(100) NULL DEFAULT 'NOT NULL',
  `tipo` ENUM('Cocinero', 'Repartidor') NULL DEFAULT NULL,
  `idTienda` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idTienda_idx` (`idTienda` ASC),
  CONSTRAINT `idTienda`
    FOREIGN KEY (`idTienda`)
    REFERENCES `Pizzeria`.`Tiendas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Pizzeria`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`Productos` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` INT(11) NOT NULL,
  `nombre` CHAR(250) NULL DEFAULT NULL,
  `descripcion` TEXT NULL DEFAULT NULL,
  `imagen` CHAR(250) NULL DEFAULT NULL,
  `precio` INT(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_categoria` (`id_categoria` ASC),
  CONSTRAINT `productos_ibfk_1`
    FOREIGN KEY (`id_categoria`)
    REFERENCES `Pizzeria`.`Categorias` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 81
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Pizzeria`.`Ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`Ventas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` INT(11) NOT NULL,
  `id_producto` INT(11) NOT NULL,
  `cantidad` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_pedido` (`id_pedido` ASC),
  INDEX `id_producto` (`id_producto` ASC),
  CONSTRAINT `ventas_ibfk_1`
    FOREIGN KEY (`id_pedido`)
    REFERENCES `Pizzeria`.`Pedidos` (`id`),
  CONSTRAINT `ventas_ibfk_2`
    FOREIGN KEY (`id_producto`)
    REFERENCES `Pizzeria`.`Productos` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
