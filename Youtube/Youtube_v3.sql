-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Youtube
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Youtube
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Youtube` DEFAULT CHARACTER SET utf8 ;
USE `Youtube` ;

-- -----------------------------------------------------
-- Table `Youtube`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Youtube`.`Usuarios` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(150) NOT NULL,
  `usuario` VARCHAR(150) NOT NULL,
  `password` VARCHAR(150) NOT NULL,
  `fecha_nac` DATE NOT NULL,
  `sexo` VARCHAR(50) NOT NULL,
  `pais` VARCHAR(100) NOT NULL,
  `codigo_postal` INT(5) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Youtube`.`Videos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Youtube`.`Videos` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` INT(11) NOT NULL,
  `titulo` VARCHAR(150) NOT NULL,
  `descripcion` TEXT NOT NULL,
  `tamano` VARCHAR(20) NOT NULL,
  `nom_archivo` VARCHAR(100) NOT NULL,
  `duracion` VARCHAR(20) NOT NULL,
  `thumbnail` VARCHAR(250) NOT NULL,
  `num_reprodu` INT(20) NOT NULL,
  `num_likes` INT(4) NOT NULL,
  `num_dislikes` INT(4) NOT NULL,
  `fec_alta` DATETIME NOT NULL,
  `fec_mod` DATETIME NOT NULL,
  `estado` ENUM('publico', 'oculto', 'privado') NULL,
  PRIMARY KEY (`id`),
  INDEX `id_usuario` (`id_usuario` ASC),
  CONSTRAINT `videos_ibfk_1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `Youtube`.`Usuarios` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1001
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Youtube`.`Canales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Youtube`.`Canales` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_video` INT(11) NOT NULL,
  `id_usuario` INT(11) NOT NULL,
  `nombre` VARCHAR(150) NOT NULL,
  `descripcion` TEXT NOT NULL,
  `fec_alta` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `id_video` (`id_video` ASC),
  INDEX `id_usuario` (`id_usuario` ASC),
  CONSTRAINT `canales_ibfk_1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `Youtube`.`Usuarios` (`id`),
  CONSTRAINT `canales_ibfk_2`
    FOREIGN KEY (`id_video`)
    REFERENCES `Youtube`.`Videos` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Youtube`.`Comentarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Youtube`.`Comentarios` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` INT(11) NOT NULL,
  `id_video` INT(11) NOT NULL,
  `comentario` TEXT NOT NULL,
  `fec_alta` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `id_usuario` (`id_usuario` ASC),
  INDEX `id_video` (`id_video` ASC),
  CONSTRAINT `comentarios_ibfk_1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `Youtube`.`Usuarios` (`id`),
  CONSTRAINT `comentarios_ibfk_2`
    FOREIGN KEY (`id_video`)
    REFERENCES `Youtube`.`Videos` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 81
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Youtube`.`Comentarios_like`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Youtube`.`Comentarios_like` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_comentario` INT(11) NOT NULL,
  `id_usuario` INT(11) NOT NULL,
  `eslike` TINYINT(1) NOT NULL,
  `fec_alta` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fec_mod` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `id_comentario` (`id_comentario` ASC),
  INDEX `id_usuario` (`id_usuario` ASC),
  CONSTRAINT `comentarios_like_ibfk_1`
    FOREIGN KEY (`id_comentario`)
    REFERENCES `Youtube`.`Comentarios` (`id`),
  CONSTRAINT `comentarios_like_ibfk_2`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `Youtube`.`Usuarios` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 121
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Youtube`.`Etiquetas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Youtube`.`Etiquetas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_video` INT(11) NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nombre` (`nombre` ASC),
  INDEX `id_video` (`id_video` ASC),
  CONSTRAINT `etiquetas_ibfk_1`
    FOREIGN KEY (`id_video`)
    REFERENCES `Youtube`.`Videos` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 52
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Youtube`.`Likes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Youtube`.`Likes` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_video` INT(11) NOT NULL,
  `id_usuario` INT(11) NOT NULL,
  `eslike` TINYINT(1) NOT NULL,
  `fec_alta` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `fec_mod` TIMESTAMP(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  INDEX `id_video` (`id_video` ASC),
  INDEX `id_usuario` (`id_usuario` ASC),
  CONSTRAINT `likes_ibfk_1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `Youtube`.`Usuarios` (`id`),
  CONSTRAINT `likes_ibfk_2`
    FOREIGN KEY (`id_video`)
    REFERENCES `Youtube`.`Videos` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 81
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Youtube`.`Playlist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Youtube`.`Playlist` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` INT(11) NOT NULL,
  `id_video` INT(11) NOT NULL,
  `nombre` VARCHAR(250) NOT NULL,
  `fec_alta` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publico` TINYINT(1) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_usuario` (`id_usuario` ASC),
  INDEX `id_video` (`id_video` ASC),
  CONSTRAINT `playlist_ibfk_1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `Youtube`.`Usuarios` (`id`),
  CONSTRAINT `playlist_ibfk_2`
    FOREIGN KEY (`id_video`)
    REFERENCES `Youtube`.`Videos` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 81
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Youtube`.`Suscripciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Youtube`.`Suscripciones` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_canal` INT(11) NOT NULL,
  `id_usuario` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_canal` (`id_canal` ASC),
  INDEX `id_usuario` (`id_usuario` ASC),
  CONSTRAINT `suscripciones_ibfk_1`
    FOREIGN KEY (`id_canal`)
    REFERENCES `Youtube`.`Canales` (`id`),
  CONSTRAINT `suscripciones_ibfk_2`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `Youtube`.`Usuarios` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1001
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Youtube`.`Detalle_Playlist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Youtube`.`Detalle_Playlist` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_videos` INT NULL,
  `id_playlist` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_videos_UNIQUE` (`id_videos` ASC),
  UNIQUE INDEX `id_playlist_UNIQUE` (`id_playlist` ASC),
  CONSTRAINT `idVideos`
    FOREIGN KEY (`id_videos`)
    REFERENCES `Youtube`.`Videos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idPlaylist`
    FOREIGN KEY (`id_playlist`)
    REFERENCES `Youtube`.`Playlist` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Youtube`.`Detalle_Etiquetas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Youtube`.`Detalle_Etiquetas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_video` INT NULL,
  `id_etiqueta` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_video_UNIQUE` (`id_video` ASC) VISIBLE,
  UNIQUE INDEX `id_etiqueta_UNIQUE` (`id_etiqueta` ASC) VISIBLE,
  CONSTRAINT `idEtiqueta`
    FOREIGN KEY (`id_etiqueta`)
    REFERENCES `Youtube`.`Etiquetas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idVideo`
    FOREIGN KEY (`id_video`)
    REFERENCES `Youtube`.`Videos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
