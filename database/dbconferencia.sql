CREATE DATABASE db_conf;
USE db_conf;

-- Tabla Conferencia
CREATE TABLE conferencia(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(30) NOT NULL,
    abr VARCHAR(15) NOT NULL,
    descp VARCHAR(20) NOT NULL,
    obj VARCHAR(15) NOT NULL,
    fechai date NULL,
    fechaf date NULL,
    fechap date NULL,
    fechae date NULL,
    fechar date NULL,
    valori Double  NULL
);

CREATE TABLE asistente(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipodoc VARCHAR(30) NOT NULL,
    numdoc INT(15) NOT NULL,
    nombre VARCHAR(15) NOT NULL,
    apellido VARCHAR(15) NOT NULL,
    email VARCHAR(15) NOT NULL,
    inst VARCHAR(15) NOT NULL,
    pais VARCHAR(15) NOT NULL,
    clave VARCHAR(15) NOT NULL,
    conf_id INT(11) NOT NULL,
    created_at timestamp  NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_conf FOREIGN KEY (conf_id) REFERENCES conferencia(id)
);