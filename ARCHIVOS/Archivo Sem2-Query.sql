-- Creamos nuestra base de datos.

-- El rayito sirve para ejecutar, que se muestra abajo en consola.

CREATE DATABASE IF NOT EXISTS db_Usuario;

-- Usamos la base ya creada

USE db_Usuario;

-- Crear una tabla que nos permitirá registar usuarios.alter
-- Dentro de los parentesis, incluimos los campos que queremos poner en nuestra tabla. 

CREATE TABLE IF NOT EXISTS tb_Usuario(
	-- Nuestros identificadores siempre deben de ser enteros.
    
    -- (id usuario) Sirve para indicar el número de usuarios registrados, por eso se auto incrementa cada vez que se ejecuta el código.
	id_usuario int auto_increment primary key,
    -- varchar es usada pare textos, números y símbolos.
    
    -- Los parentesis del varchar definen cuantos caracteres aceptará.
    -- (NOT NULL) sirve para establecer que el valor no puede quedar vacío.
    nombre varchar(15) NOT NULL,
    dpi varchar(13) NOT NULL,
    dirección varchar(30) NOT NULL,
    teléfono varchar(8) NOT NULL,
    -- (UNIQUE) es para que no acepte correos repetidos en varios usuarios, o sea, que sea único.
    correo varchar(50) NOT NULL UNIQUE,
    usuario varchar(15) NOT NULL UNIQUE,
    pass varchar(20) NOT NULL,
    -- El tipo de dato se define con (timestamp) y se define la fecha actual con (default current_timestamp).
    fecha_registro timestamp default current_timestamp
-- Se usa coma dentro de la tabla, puesto que se definen continuamente parámetros.
-- Nótese como en "fecha_registro" no se puso coma, pues es el último parámetro.
);

-- Seleccionamos los datos de la tabla.

-- Con (*) definimos que seleccionamos TODOS los campos de la tabla.
Select * From tb_Usuario;

-- Registro de información.

-- Con (insert into), como su nombre lo sugiere, sirve para insertar datos, sirve como un INPUT.
insert into tb_Usuario(nombre, dpi, dirección, teléfono, correo, usuario, pass)
-- Nótese como en la línea anterior no se finalizó con (;), esto es debido a que se llenara con la función (value).
values("Erick", "0123456789", "Cobán", "00000000", "ericktut00@gmail.com", "ET", "Nenguele1245");

-- Nótese como se llenaron los datos, pero no se incluyó ni (id_Usuario) ni (fecha_registro), puesto que uno se autoincrementa (id_Usuario) y el otro se define automáticamente (fecha_registro).

Select * from tb_Usuario;

-- Ahora seleccionaremos solo los campos del id = 2, o sea, el usuario 2.

-- Se puede especificar un número de usuario con el número o con un parámetro que ese usuario definió.

-- Ejemplo: Select * from tb_Usuarios where nombe = "Mateo";

Select * from tb_Usuarios where id_Usuario = 2;

-- Seleccionamos solo un campo del id = 2, o del usuario 2.alter

Select usuario, pass from tb_Usuario where id_Usuario = 2;

-- Consulta para validar un usuario.alter

Select id_Usuario from tb_Usuario where usuario = "ET" AND pass = "Nenguele1245";