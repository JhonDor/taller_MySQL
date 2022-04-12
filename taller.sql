CREATE DATABASE db;
USE db;

CREATE TABLE `db`.`usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `email` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `db`.`categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `nombre_categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
CREATE TABLE `db`.`nota` (
  `id_nota` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `fecha_creacion` DATE NOT NULL,
  `ultima_fecha_edicion` DATE NULL,
  `descripcion` VARCHAR(100) NULL,
  `puede_ser_eliminada` TINYTEXT NULL,
  `id_usuario` INT NULL,
  `id_categoria` INT NULL,
  PRIMARY KEY (`id_nota`),
  INDEX `id_usuario_idx` (`id_usuario` ASC) VISIBLE,
  INDEX `id_categoria_idx` (`id_categoria` ASC) VISIBLE,
  CONSTRAINT `id_usuario`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `db`.`usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
  
CREATE TABLE `db`.`categoria_notas` (
  `idcategoria_notas` INT NOT NULL AUTO_INCREMENT,
  `id_nota` INT NOT NULL,
  `id_categoria` INT NOT NULL,
  PRIMARY KEY (`idcategoria_notas`),
  INDEX `id_notas_idx` (`id_nota` ASC) VISIBLE,
  INDEX `id_categoria_idx` (`id_categoria` ASC) VISIBLE,
  CONSTRAINT `id_notas`
    FOREIGN KEY (`id_nota`)
    REFERENCES `db`.`nota` (`id_nota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_categoria`
    FOREIGN KEY (`id_categoria`)
    REFERENCES `db`.`categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `db`.`categoria_notas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_nota` INT NOT NULL,
  `id_categoria` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_categoria_idx` (`id_categoria` ASC) VISIBLE,
  INDEX `id_nota_idx` (`id_nota` ASC) VISIBLE,
  CONSTRAINT `id_categoria`
    FOREIGN KEY (`id_categoria`)
    REFERENCES `db`.`categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_nota`
    FOREIGN KEY (`id_nota`)
    REFERENCES `db`.`nota` (`id_nota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



INSERT INTO `db`.`usuario` (`nombre`, `email`) VALUES ('usuario1', 'usuario1@gmail.com');
INSERT INTO `db`.`usuario` (`nombre`, `email`) VALUES ('usuario2', 'usuario2@gmail.com');
INSERT INTO `db`.`usuario` (`nombre`, `email`) VALUES ('usuario3', 'usuario3@gmail.com');
INSERT INTO `db`.`usuario` (`nombre`, `email`) VALUES ('usuario4', 'usuario4@gmail.com');
INSERT INTO `db`.`usuario` (`nombre`, `email`) VALUES ('usuario5', 'usuario5@gmail.com');
INSERT INTO `db`.`usuario` (`nombre`, `email`) VALUES ('usuario6', 'usuario6@gmail.com');
INSERT INTO `db`.`usuario` (`nombre`, `email`) VALUES ('usuario7', 'usuario7@gmail.com');
INSERT INTO `db`.`usuario` (`nombre`, `email`) VALUES ('usuario8', 'usuario8@gmail.com');
INSERT INTO `db`.`usuario` (`nombre`, `email`) VALUES ('usuario9', 'usuario9@gmail.com');
INSERT INTO `db`.`usuario` (`nombre`, `email`) VALUES ('usuario10', 'usuario10@gmail.com');

INSERT INTO `db`.`categoria` (`nombre_categoria`) VALUES ('Categoria 1');
INSERT INTO `db`.`categoria` (`nombre_categoria`) VALUES ('Categoria 2');
INSERT INTO `db`.`categoria` (`nombre_categoria`) VALUES ('Categoria 3');
INSERT INTO `db`.`categoria` (`nombre_categoria`) VALUES ('Categoria 4');
INSERT INTO `db`.`categoria` (`nombre_categoria`) VALUES ('Categoria 5');
INSERT INTO `db`.`categoria` (`nombre_categoria`) VALUES ('Categoria 6');
INSERT INTO `db`.`categoria` (`nombre_categoria`) VALUES ('Categoria 7');
INSERT INTO `db`.`categoria` (`nombre_categoria`) VALUES ('Categoria 8');
INSERT INTO `db`.`categoria` (`nombre_categoria`) VALUES ('Categoria 9');
INSERT INTO `db`.`categoria` (`nombre_categoria`) VALUES ('Categoria 10');


INSERT INTO `db`.`nota` (`titulo`, `fecha_creacion`, `ultima_fecha_edicion`, `descripcion`, `puede_ser_eliminada`, `id_usuario`, `id_categoria`) VALUES ('Título 1', '2022-12-04', '2022-12-04', 'Descripción 1', 'Si', '5', '4');
INSERT INTO `db`.`nota` (`titulo`, `fecha_creacion`, `ultima_fecha_edicion`, `descripcion`, `puede_ser_eliminada`, `id_usuario`, `id_categoria`) VALUES ('Título 2', '2022-12-04', '2022-12-04', 'Descripción 2', 'Si', '8', '5');
INSERT INTO `db`.`nota` (`titulo`, `fecha_creacion`, `ultima_fecha_edicion`, `descripcion`, `puede_ser_eliminada`, `id_usuario`, `id_categoria`) VALUES ('Título 3', '2022-12-04', '2022-12-04', 'Descripción 3', 'Si', '7', '6');
INSERT INTO `db`.`nota` (`titulo`, `fecha_creacion`, `ultima_fecha_edicion`, `descripcion`, `puede_ser_eliminada`, `id_usuario`, `id_categoria`) VALUES ('Título 4', '2022-12-04', '2022-12-04', 'Descripción 4', 'Si', '4', '9');
INSERT INTO `db`.`nota` (`titulo`, `fecha_creacion`, `ultima_fecha_edicion`, `descripcion`, `puede_ser_eliminada`, `id_usuario`, `id_categoria`) VALUES ('Título 5', '2022-12-04', '2022-12-04', 'Descripción 5', 'Si', '2', '8');
INSERT INTO `db`.`nota` (`titulo`, `fecha_creacion`, `ultima_fecha_edicion`, `descripcion`, `puede_ser_eliminada`, `id_usuario`, `id_categoria`) VALUES ('Título 6', '2022-12-04', '2022-12-04', 'Descripción 6', 'Si', '9', '6');
INSERT INTO `db`.`nota` (`titulo`, `fecha_creacion`, `ultima_fecha_edicion`, `descripcion`, `puede_ser_eliminada`, `id_usuario`, `id_categoria`) VALUES ('Título 7', '2022-12-04', '2022-12-04', 'Descripción 7', 'Si', '6', '2');
INSERT INTO `db`.`nota` (`titulo`, `fecha_creacion`, `ultima_fecha_edicion`, `descripcion`, `puede_ser_eliminada`, `id_usuario`, `id_categoria`) VALUES ('Título 8', '2022-12-04', '2022-12-04', 'Descripción 8', 'Si', '2', '3');
INSERT INTO `db`.`nota` (`titulo`, `fecha_creacion`, `ultima_fecha_edicion`, `descripcion`, `puede_ser_eliminada`, `id_usuario`, `id_categoria`) VALUES ('Título 9', '2022-12-04', '2022-12-04', 'Descripción 9', 'Si', '4', '9');
INSERT INTO `db`.`nota` (`titulo`, `fecha_creacion`, `ultima_fecha_edicion`, `descripcion`, `puede_ser_eliminada`, `id_usuario`, `id_categoria`) VALUES ('Título10', '2022-12-04', '2022-12-04', 'Descripción 10', 'Si', '8', '4');
