sqlite3 ejemplo.db
CREATE TABLE usuarios (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   nombre VARCHAR(64) NOT NULL,
   ...>   apellido  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   fecha_nacimiento DATETIME NOT NULL,
   ...>   genero VARCHAR(10) NOT NULL
   ...> );
INSERT INTO usuarios
   ...>  (nombre, apellido, email, fecha_nacimiento, genero)
   ...>  VALUES
   ...>  ('Carlos', 'Ribero', 'carlos@yahoo.com', '1970-11-03', 'masculino');
   SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero    
----------  ----------  ----------  ----------------  ----------------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino 
ALTER TABLE usuarios
   ...> ADD COLUMN apodo VARCHAR(64) NOT NULL
   ...> DEFAULT "HUGO"
   ...> ;
   UPDATE TABLE usuarios
   ...> SET apodo = "charly"
   ...> ;
