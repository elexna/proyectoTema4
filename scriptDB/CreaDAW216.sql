-- CREACION BASE DE DATOS
-- Creacion de la base de datos DAW217DBDepartamentos
CREATE DATABASE IF NOT EXISTS DAW217DBProyectoTema5;
USE DAW217DBProyectoTema5;
-- Creacion de tablas de la base de datos
CREATE TABLE IF NOT EXISTS T02_Departamento (
    T02_CodDepartamento VARCHAR(3) PRIMARY KEY,
    T02_DescDepartamento VARCHAR(255) NOT NULL,
    T02_FechaCreacionDepartamento INT NOT NULL,
    T02_VolumenNegocio FLOAT NOT NULL,
    T02_FechaBajaDepartamento INT DEFAULT NULL
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS T01_Usuario(
    T01_CodUsuario VARCHAR(10) PRIMARY KEY,
    T01_Password VARCHAR(64) NOT NULL,
    T01_DescUsuario VARCHAR(255) NOT NULL,
    T01_NumConexiones INT DEFAULT 0,
    T01_FechaHoraUltimaConexion INT,
    T01_Perfil enum('administrador', 'usuario') DEFAULT 'usuario', -- Valor por defecto usuario
    T01_ImagenUsuario MEDIUMBLOB
)ENGINE=INNODB;

-- CREACION USUARIO ADMINISTRADOR
-- Creacion de usuario administrador de la base de datos: usuarioDAW217DBDepartamentos / paso
CREATE USER 'usuarioDAW217DBProyectoTema5'@'%' IDENTIFIED BY 'P@ssw0rd';
-- Permisos para la base de datos
GRANT ALL PRIVILEGES ON DAW217DBProyectoTema5.* TO 'usuarioDAW217DBProyectoTema5'@'%';