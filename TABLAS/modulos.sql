
CREATE TABLE modulos
(

     id                 INT NOT NULL AUTO_INCREMENT PRIMARY KEY
    ,nombre             VARCHAR(100) NOT NULL
    ,id_profesor        INT NOT NULL
    ,color              CHAR(6)
    ,siglas             CHAR(4)
    
    
    ,ip_alta            VARCHAR(15)
    ,fecha_alta         TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ,ip_ult_mod         VARCHAR(15)
    ,fecha_ult_mod      TIMESTAMP DEFAULT CURRENT_TIMESTAMP

    ,FOREIGN KEY (id_profesor) REFERENCES profesores(id) ON DELETE CASCADE ON UPDATE CASCADE

);


INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (3, 'FF6F6F', 'DJK', 'Digitalización aplicada a los sectores productivos');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (4, '62B1FF', 'IKL', 'Inglés profesional');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (5, 'FFB84C', 'ITK', 'Itinerario personal para la empleabilidad I');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (6, 'F48C62', 'ETS', 'Entornos de desarrollo');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (2, 'A2C9FF', 'LND', 'Lenguajes de marcas y sistemas de gestión de información');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (1, 'D1D743', 'SSF', 'Sistemas informáticos');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (3, 'C474D6', 'PRO', 'Programación');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (4, '62C9E2', 'BAE', 'Bases de datos');

INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (5, 'FF9D9D', 'EMR', 'Empresa e iniciativa emprendedora');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (6, 'D8FF3F', 'DPL', 'Despliegue de aplicaciones web');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (2, '81A1B7', 'DOR', 'Diseño de interfaces web');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (1, 'D8E24D', 'DSW', 'Desarrollo web en entorno servidor');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (3, 'F1C82A', 'DEW1', 'Desarrollo web en entorno cliente');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (4, '92D7E9', 'DEW', 'Desarrollo web en entorno cliente (Bilingüe)');

INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (5, 'F5C1B8', 'DJK', 'Digitalización aplicada a los sectores productivos');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (6, 'A7F33E', 'FUW', 'Fundamentos de hardware');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (2, 'A2C9FF', 'IKL', 'Inglés profesional');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (1, 'D9D15C', 'ITK', 'Itinerario personal para la empleabilidad');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (3, 'B9E4FF', 'LND', 'Lenguajes de marcas y sistemas de gestión de información');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (4, 'C0A8D1', 'IDP', 'Implantación de sistemas operativos');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (5, 'B9F7B3', 'PNI', 'Planificación y administración de redes');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (6, 'A6E7F5', 'GTB', 'Gestión de bases de datos');

INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (2, '6EC2E5', 'ADE', 'Administración de sistemas gestores de bases de datos');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (1, 'F0E64B', 'EMR', 'Empresa e iniciativa emprendedora');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (3, 'F4CF47', 'SRD', 'Servicios de red e internet');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (4, 'F3C14B', 'IMW', 'Implantación de aplicaciones web');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (5, 'D9C77A', 'SGY', 'Seguridad y alta disponibilidad');
INSERT INTO modulos (id_profesor, color, siglas, nombre) VALUES (6, 'A6E5F5', 'ADD', 'Administración de sistemas operativos');




