DROP DATABASE IF EXISTS horario;
CREATE DATABASE horario;
USE horario;

-- Tabla personas
CREATE TABLE personas (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido_1 VARCHAR(255),
    apellido_2 VARCHAR(255),
    nif VARCHAR(9) UNIQUE,
    email VARCHAR(255),
    ip_alta VARCHAR(15),
    fecha_alta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_ult_mod VARCHAR(15),
    fecha_ult_mod TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Tabla alumnos
CREATE TABLE alumnos (
    id INT NOT NULL PRIMARY KEY,
    id_persona INT NOT NULL,
    ip_alta VARCHAR(15),
    fecha_alta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_ult_mod VARCHAR(15),
    fecha_ult_mod TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_alumnos_personas FOREIGN KEY (id_persona) REFERENCES personas(id) ON DELETE CASCADE
);

-- Tabla profesores
CREATE TABLE profesores (
    id INT NOT NULL PRIMARY KEY,
    id_persona INT NOT NULL,
    id_modulo_tutoria INT DEFAULT NULL,
    ip_alta VARCHAR(15),
    fecha_alta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_ult_mod VARCHAR(15),
    fecha_ult_mod TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_profesores_personas FOREIGN KEY (id_persona) REFERENCES personas(id) ON DELETE CASCADE
);

-- Tabla modulos
CREATE TABLE modulos (
    id INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    id_profesor INT NOT NULL,
    ip_alta VARCHAR(15),
    fecha_alta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_ult_mod VARCHAR(15),
    fecha_ult_mod TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_modulos_profesores FOREIGN KEY (id_profesor) REFERENCES profesores(id) ON DELETE CASCADE
);

-- Tabla horario
CREATE TABLE horario (
    id INT NOT NULL PRIMARY KEY,
    id_modulo_tutoria INT NOT NULL,
    dia DATE,
    hora_desde TIME,
    hora_hasta TIME,
    ip_alta VARCHAR(15),
    fecha_alta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_ult_mod VARCHAR(15),
    fecha_ult_mod TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_horario_modulos FOREIGN KEY (id_modulo_tutoria) REFERENCES modulos(id) ON DELETE CASCADE
);

-- Tabla modulos_alumnos
CREATE TABLE modulos_alumnos (
    id INT NOT NULL PRIMARY KEY,
    id_modulo INT NOT NULL,
    id_alumno INT NOT NULL,
    ip_alta VARCHAR(15),
    fecha_alta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_ult_mod VARCHAR(15),
    fecha_ult_mod TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_modulos_alumnos_modulos FOREIGN KEY (id_modulo) REFERENCES modulos(id) ON DELETE CASCADE,
    CONSTRAINT fk_modulos_alumnos_alumnos FOREIGN KEY (id_alumno) REFERENCES alumnos(id) ON DELETE CASCADE
);



INSERT INTO personas (nombre, apellido_1, apellido_2, nif, email, ip_alta, ip_ult_mod) VALUES
('Juan', 'Pérez', 'Gómez', '12345678A', 'juan.perez@example.com', '127.0.0.1', '127.0.0.1'),
('Ana', 'López', NULL, '23456789B', 'ana.lopez@example.com', '127.0.0.1', '127.0.0.1'),
('Luis', 'Martínez', 'Hernández', '34567890C', 'luis.martinez@example.com', '127.0.0.1', '127.0.0.1');

INSERT INTO alumnos (id, id_persona, ip_alta, ip_ult_mod) VALUES
(1, 1, '127.0.0.1', '127.0.0.1'),
(2, 2, '127.0.0.1', '127.0.0.1');

INSERT INTO profesores (id, id_persona, id_modulo_tutoria, ip_alta, ip_ult_mod) VALUES
(1, 3, NULL, '127.0.0.1', '127.0.0.1');

INSERT INTO modulos (id, nombre, id_profesor, ip_alta, ip_ult_mod) VALUES
(1, 'Matemáticas', 1, '127.0.0.1', '127.0.0.1'),
(2, 'Física', 1, '127.0.0.1', '127.0.0.1');

INSERT INTO horario (id, id_modulo_tutoria, dia, hora_desde, hora_hasta, ip_alta, ip_ult_mod) VALUES
(1, 1, '2024-11-20', '08:00:00', '10:00:00', '127.0.0.1', '127.0.0.1'),
(2, 2, '2024-11-21', '10:00:00', '12:00:00', '127.0.0.1', '127.0.0.1');

INSERT INTO modulos_alumnos (id, id_modulo, id_alumno, ip_alta, ip_ult_mod) VALUES
(1, 1, 1, '127.0.0.1', '127.0.0.1'),
(2, 2, 2, '127.0.0.1', '127.0.0.1');