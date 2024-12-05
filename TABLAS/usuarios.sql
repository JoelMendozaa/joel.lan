CREATE TABLE usuarios(
    id INT (11) AUTO_INCREMENT PRIMARY KEY
    ,nombre VARCHAR(50) NOT NULL
    ,email VARCHAR(100) NOT NULL UNIQUE
    ,edad INT(3)

    ,ip_alta            VARCHAR(15)
    ,fecha_alta         TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ,ip_ult_mod         VARCHAR(15)
    ,fecha_ult_mod      TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);



INSERT INTO usuarios(nombre, email, edad) VALUES('Juan', 'juanse@gmail.com', 23);
INSERT INTO usuarios(nombre, email, edad) VALUES('Maria', 'manuga@hotmail.com', 42);
INSERT INTO usuarios(nombre, email, edad) VALUES('Luis', 'luishehe@outlook.es', 29);
INSERT INTO usuarios(nombre, email, edad) VALUES('Jaime', 'jaimito23@gmail.com', 19);
INSERT INTO usuarios(nombre, email, edad) VALUES('Samuel', 'villegasamu@gmail.com', 18);
INSERT INTO usuarios(nombre, email, edad) VALUES('Maria Antonia', 'maritoni@hotmail.es', 35);