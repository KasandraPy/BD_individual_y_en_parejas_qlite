CREATE TABLE libros (
id integer PRIMARY KEY AUTOINCREMENT,
titulo_libro varchar(50),
editorial varchar(50),
autor varchar(50),
descripcion varchar(100)
);

CREATE TABLE prestamos (
id integer primary key AUTOINCREMENT,
id_libro varchar(50) REFERENCES libros(id),
id_usuario varchar(50) REFERENCES usuarios(id)
);

CREATE TABLE sqlite_sequence(name,seq);

CREATE TABLE usuarios (
id integer primary key AUTOINCREMENT,
nombre_usuario varchar(50),
correo varchar(225) UNIQUE,
contraseña varchar(50)
);
