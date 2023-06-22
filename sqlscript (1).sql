REM   Script: Consultas varias
REM   Ejercicios de consultas y triggers y procedimientos

CREATE TABLE Usuarios( 
    id_usuario NUMBER(6), 
    nombre VARCHAR2(25), 
    correo VARCHAR2(50), 
    juego_favorito VARCHAR2(25), 
    num_publicaciones NUMBER(3), 
    contrasenia VARCHAR2(25), 
    fecha_de_creacion DATE, 
    informacion_adicional VARCHAR2(150), 
    CONSTRAINT pk_id_usuario PRIMARY KEY(id_usuario) 
);

CREATE TABLE Administradores( 
    id_administrador NUMBER(6), 
    nombre VARCHAR2(25), 
    contrasenia VARCHAR2(25), 
    correo VARCHAR2(50), 
    fecha_de_creacion DATE, 
    CONSTRAINT pk_id_administrador PRIMARY KEY(id_administrador) 
);

CREATE TABLE Invitados( 
    id_invitado NUMBER(6), 
    nombre VARCHAR2(25), 
    fecha_de_caducidad DATE, 
    CONSTRAINT pk_id_invitado PRIMARY KEY(id_invitado) 
);

CREATE TABLE Distribuidora( 
    nombre VARCHAR2(25), 
    cotizacion NUMBER(12), 
    oficinas VARCHAR(25), 
    filiales VARCHAR(25), 
    fundador VARCHAR(25), 
    fecha_fundacion DATE, 
    director VARCHAR(25), 
    CONSTRAINT pk_nombre_distribuidora PRIMARY KEY(nombre) 
);

CREATE TABLE Desarrolladora( 
    nombre VARCHAR2(30), 
    personas_clave VARCHAR2(25), 
    oficinas VARCHAR2(25), 
    fundador VARCHAR2(25), 
    fecha_fundacion DATE, 
    CONSTRAINT pk_nombre_desarrolladora PRIMARY KEY(nombre) 
);

CREATE TABLE Serie( 
    nombre_serie VARCHAR2(30), 
    CONSTRAINT pk_nombre_serie PRIMARY KEY(nombre_serie) 
);

CREATE TABLE Genero( 
    nombre_genero VARCHAR2(30), 
    CONSTRAINT pk_nombre_genero PRIMARY KEY(nombre_genero) 
);

CREATE TABLE Plataforma( 
    nombre_plataforma VARCHAR2(30), 
    CONSTRAINT pk_nombre_plataforma PRIMARY KEY(nombre_plataforma) 
);

CREATE TABLE Se_suscriben( 
    suscriptor NUMBER(6), 
    creador NUMBER(6), 
    CONSTRAINT pk_se_suscriben PRIMARY KEY(suscriptor, creador), 
    CONSTRAINT fk_se_suscriben_suscriptor FOREIGN KEY(suscriptor) REFERENCES Usuarios, 
    CONSTRAINT fk_se_suscriben_creador FOREIGN KEY(creador) REFERENCES Usuarios 
);

CREATE TABLE Comentarios( 
    id NUMBER(6), 
    contenido VARCHAR2(250), 
    fecha_publicacion DATE, 
    id_usuario NUMER(6), 
    CONSTRAINT pk_comentarios PRIMARY KEY(id), 
    CONSTRAINT fk_comentarios_id_usuario FOREIGN KEY(id_usuario) REFERENCES Usuarios 
);

CREATE TABLE Comentarios( 
    id_comentarios NUMBER(6), 
    contenido VARCHAR2(250), 
    fecha_publicacion DATE, 
    id_usuario NUMER(6), 
    CONSTRAINT pk_comentarios PRIMARY KEY(id_comentarios), 
    CONSTRAINT fk_comentarios_id_usuario FOREIGN KEY(id_usuario) REFERENCES Usuarios 
);

CREATE TABLE Comentarios( 
    id NUMBER(6), 
    contenido VARCHAR2(250), 
    fecha_publicacion DATE, 
    id_usuario NUMER(6), 
    CONSTRAINT pk_comentarios PRIMARY KEY(id), 
    CONSTRAINT fk_comentarios_id_usuario FOREIGN KEY(id_usuario) REFERENCES  
    Usuarios 
);

CREATE TABLE Comentarios( 
    id NUMBER(6), 
    contenido VARCHAR2(250), 
    fecha_publicacion DATE, 
    id_usuario NUMER(6), 
    CONSTRAINT pk_comentarios PRIMARY KEY(id), 
    CONSTRAINT fk_comentarios_id_usuario FOREIGN KEY(id_usuario) REFERENCES  
    Usuarios 
);

CREATE TABLE Comentarios( 
    id NUMBER(6), 
    contenido VARCHAR2(250), 
    fecha_publicacion DATE, 
    id_usuario NUMER(6), 
    CONSTRAINT pk_comentarios PRIMARY KEY(id), 
    CONSTRAINT fk_comentarios_id_usuario FOREIGN KEY(id_usuario) REFERENCES Usuario 
);

CREATE TABLE Comentarios( 
    id NUMBER(6), 
    contenido VARCHAR2(250), 
    fecha_publicacion DATE, 
    id_usuario NUMER(6), 
    CONSTRAINT pk_comentarios PRIMARY KEY(id), 
    CONSTRAINT fk_comentarios_id_usuario FOREIGN KEY(id_usuario) REFERENCES Usuarios 
);

CREATE TABLE Comentarios( 
    id NUMBER(6), 
    contenido VARCHAR2(250), 
    fecha_publicacion DATE, 
    id_usuario NUMER(6), 
    CONSTRAINT pk_comentarios PRIMARY KEY(id), 
    CONSTRAINT fk_comentarios_idusuario FOREIGN KEY(id_usuario) REFERENCES Usuarios 
);

CREATE TABLE Comentarios( 
    id NUMBER(6), 
    contenido VARCHAR2(250), 
    fecha_publicacion DATE, 
    id_usuario NUMBER(6), 
    CONSTRAINT pk_comentarios PRIMARY KEY(id), 
    CONSTRAINT fk_comentarios_idusuario FOREIGN KEY(id_usuario) REFERENCES Usuarios 
);

CREATE TABLE Publicaciones( 
    id NUMBER(6), 
    titulo VARCHAR2(30), 
    fecha_publicacion DATE, 
    categoria VARCHAR2(25), 
    contenido VARCHAR2(2500), 
    id_usuario NUMBER(6), 
    CONSTRAINT pk_publicaciones PRIMARY KEY(id), 
    CONSTRAINT fk_publicaciones_idusuario FOREIGN KEY(id_usuario) REFERENCES Usuarios 
);

CREATE TABLE Administran( 
    fecha_administracion DATE, 
    id_administrador NUMBER(6), 
    id_publicacion NUMBER(6), 
    CONSTRAINT pk_administran PRIMARY KEY(id_administrador,fecha_administracion), 
    CONSTRAINT fk_administran_id_administrador FOREIGN KEY(id_administrador) REFERENCES Administradores, 
    CONSTRAINT fk_administran_id_publicacion FOREIGN KEY(id_publicacion) REFERENCES Publicaciones 
);

CREATE TABLE Videojuego( 
    id NUMBER(6), 
    nombre VARCHAR2(30), 
    nombre_serie VARCHAR2(30), 
    CONSTRAINT pk_videojuego PRIMARY KEY(id), 
    CONSTRAINT fk_videojuego_nombre_serie FOREIGN KEY(nombre_serie) REFERENCES Serie 
);

CREATE TABLE Premios( 
    nombre VARCHAR2(30), 
    fecha_entrega DATE, 
    entregado_por VARCHAR2(30), 
    id_videojuego NUMBER(6), 
    CONSTRAINT pk_premios PRIMARY KEY(nombre), 
    CONSTRAINT fk_premios_idvideojuego FOREIGN KEY(id_videojuego) REFERENCES Videojuego 
);

CREATE TABLE Pertenece_genero( 
    id_videojuego NUMBER(6), 
    nombre_genero VARCHAR2(30), 
    CONSTRAINT pk_premios PRIMARY KEY(nombre), 
    CONSTRAINT fk_pertenece_genero_nombregenero FOREIGN KEY(nombre_genero) REFERENCES Genero 
);

CREATE TABLE Pertenece_genero( 
    id_videojuego NUMBER(6), 
    nombre_genero VARCHAR2(30), 
    CONSTRAINT pk_premios PRIMARY KEY(id_videojuego, nombre_genero), 
    CONSTRAINT fk_pertenece_genero_nombregenero FOREIGN KEY(nombre_genero) REFERENCES Genero 
);

CREATE TABLE Pertenece_genero( 
    id_videojuego NUMBER(6), 
    nombre_genero VARCHAR2(30), 
    CONSTRAINT pk_pertenece_genero PRIMARY KEY(id_videojuego, nombre_genero), 
    CONSTRAINT fk_pertenece_genero_nombregenero FOREIGN KEY(nombre_genero) REFERENCES Genero 
);

CREATE TABLE Pertenece_plataforma( 
    id_videojuego NUMBER(6), 
    nombre_plataforma VARCHAR2(30), 
    CONSTRAINT pk_pertenece_plataforma PRIMARY KEY(id_videojuego, nombre_plataforma), 
    CONSTRAINT fk_pertenece_plataforma_id_videojuego FOREIGN KEY(id_videojuego) REFERENCES Videojuego 
    CONSTRAINT fk_pertenece_plataforma_nombre_plataforma FOREIGN KEY(nombre_plataforma) REFERENCES Plataforma 
);

CREATE TABLE Pertenece_plataforma( 
    id_videojuego NUMBER(6), 
    nombre_plataforma VARCHAR2(30), 
    CONSTRAINT pk_pertenece_plataforma PRIMARY KEY(id_videojuego, nombre_plataforma), 
    CONSTRAINT fk_pertenece_plataforma_id_videojuego FOREIGN KEY(id_videojuego) REFERENCES Videojuego, 
    CONSTRAINT fk_pertenece_plataforma_nombre_plataforma FOREIGN KEY(nombre_plataforma) REFERENCES Plataforma 
);

CREATE TABLE Sobre( 
    id_publicacion NUMBER(6), 
    id_videojuego NUMBER(6), 
    CONSTRAINT pk_sobre PRIMARY KEY(id_publicacion, id_videojuego), 
    CONSTRAINT fk_sobre_id_publicacion FOREIGN KEY(id_publicacion) REFERENCES Publicacion, 
    CONSTRAINT fk_sobre_id_videojuego FOREIGN KEY(id_videojuego) REFERENCES Videojuego 
);

CREATE TABLE Sobre( 
    id_publicacion NUMBER(6), 
    id_videojuego NUMBER(6), 
    CONSTRAINT pk_sobre PRIMARY KEY(id_publicacion, id_videojuego), 
    CONSTRAINT fk_sobre_id_publicacion FOREIGN KEY(id_publicacion) REFERENCES Publicaciones, 
    CONSTRAINT fk_sobre_id_videojuego FOREIGN KEY(id_videojuego) REFERENCES Videojuego 
);

CREATE TABLE Distribuye( 
    nombre_distribuye VARCHAR2(30), 
    id_videojuego NUMBER(6), 
    CONSTRAINT pk_distribuye PRIMARY KEY(nombre_distribuye, id_videojuego), 
    CONSTRAINT fk_distribuye_nombre_distribuye FOREIGN KEY(nombre_distribuye) REFERENCES Distribuidora, 
    CONSTRAINT fk_distribuye_id_videojuego FOREIGN KEY(id_videojuego) REFERENCES Videojuego 
);

CREATE TABLE Desarrolla( 
    nombre_desarrolladora VARCHAR2(30), 
    id_videojuego NUMBER(6), 
    CONSTRAINT pk_desarrolla PRIMARY KEY(nombre_desarrolladora, id_videojuego), 
    CONSTRAINT fk_desarrolladora_nombre_desarrolladora FOREIGN KEY(nombre_desarrolladora) REFERENCES Desarrolladora, 
    CONSTRAINT fk_desarrolladora_id_videojuego FOREIGN KEY(id_videojuego) REFERENCES Videojuego 
);

CREATE OR REPLACE PROCEDURE add_usuarios IS 
v_contador NUMBER:=1; 
BEGIN 
WHILE v_contador < 21 LOOP 
    INSERT INTO Usuarios (id_usuario, nombre, correo, juego_favorito,  
    num_publicaciones, contrasenia, fecha_de_creacion) values 
    (v_contador,CONCAT('Usuario', v_contador),'correo'||v_contador||'@gmail.com', 
    CONCAT('juego', v_contador),2,CONCAT('passwd', v_contador), SYSDATE); 
    v_contador := v_contador + 1; 
END LOOP; 
END; 
 
BEGIN 
add_usuarios; 
END; 
/

CREATE OR REPLACE PROCEDURE add_usuarios IS 
v_contador NUMBER:=1; 
BEGIN 
WHILE v_contador < 21 LOOP 
    INSERT INTO Usuarios (id_usuario, nombre, correo, juego_favorito,  
    num_publicaciones, contrasenia, fecha_de_creacion) values 
    (v_contador,CONCAT('Usuario', v_contador),'correo'||v_contador||'@gmail.com', 
    CONCAT('juego', v_contador),2,CONCAT('passwd', v_contador), SYSDATE); 
    v_contador := v_contador + 1; 
END LOOP; 
END; 

/

BEGIN 
add_usuarios; 
END; 
/

CREATE OR REPLACE PROCEDURE add_administradores IS 
v_contador NUMBER:=1; 
BEGIN 
WHILE v_contador < 6 LOOP 
    INSERT INTO Administradores (id_administrador, nombre, contrasenia, correo, fecha_de_creacion)  
    values 
    (v_contador,CONCAT('Admin', v_contador),CONCAT('passwd', v_contador), 
    'Admin'||v_contador||'@gmail.com', sysdate); 
    v_contador := v_contador + 1; 
END LOOP; 
END;
/

BEGIN 
add_administradores; 
END;
/

CREATE OR REPLACE PROCEDURE add_invitados IS 
v_contador NUMBER:=1; 
fecha_caducidad DATE; 
BEGIN 
SELECT sysdate + INTERVAL '20' DAY INTO fecha_caducidad FROM DUAL; 
WHILE v_contador < 41 LOOP 
    INSERT INTO Invitados (id_invitado, nombre, fecha_de_caducidad)  
    values 
    (v_contador,CONCAT('invitado', v_contador), 
    fecha_caducidad); 
    v_contador := v_contador + 1; 
END LOOP; 
END;
/

BEGIN 
add_invitados; 
END;
/

create or replace procedure PROCEDURE_1 ( 
    a in  varchar2 , 
    a in  varchar2 , 
    a in  varchar2  
) 
is 
begin 
    null; 
end PROCEDURE_1; 
/

CREATE OR REPLACE PROCEDURE add_invitados IS 
v_contador NUMBER:=1; 
fecha_caducidad DATE; 
BEGIN 
SELECT sysdate + INTERVAL '20' DAY INTO fecha_caducidad FROM DUAL; 
WHILE v_contador < 41 LOOP 
    INSERT INTO Invitados (id_invitado, nombre, fecha_de_caducidad)  
    values 
    (v_contador,CONCAT('invitado', v_contador), 
    fecha_caducidad); 
    v_contador := v_contador + 1; 
    dbms_output.put_line('Hoola'); 
END LOOP; 
END;
/

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Electronic Arts', 5470000000,'Redwood city', 'BioWare', 'Trip Hawkins', 
1982-05-27,'Laura Miele');

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Electronic Arts', 5470000000,'Redwood city', 'BioWare', 'Trip Hawkins', 
TO_DATE('27-05-1982'),'Laura Miele');

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Electronic Arts', 5470000000,'Redwood city', 'BioWare', 'Trip Hawkins', 
TO_DATE('27-5-1982'),'Laura Miele');

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Electronic Arts', 5470000000,'Redwood city', 'BioWare', 'Trip Hawkins', 
TO_DATE('27/5/1982'),'Laura Miele');

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Electronic Arts', 5470000000,'Redwood city', 'BioWare', 'Trip Hawkins', 
TO_DATE('27/05/1982'),'Laura Miele');

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Electronic Arts', 5470000000,'Redwood city', 'BioWare', 'Trip Hawkins', 
TO_DATE('1982/05/27'),'Laura Miele');

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Electronic Arts', 5470000000,'Redwood city', 'BioWare', 'Trip Hawkins', 
TO_DATE('1982-05-27'),'Laura Miele');

ALTER SESSION SET NLS_DATE_FORMAT='DD/MM/YYYY';

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Electronic Arts', 5470000000,'Redwood city', 'BioWare', 'Trip Hawkins', 
TO_DATE('27/05/1982'),'Laura Miele');

select * from Distribuidora;

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Valve Corporation', 8.300.000.000,'Redwood city', 'BioWare', 'Trip Hawkins', 
TO_DATE('27/05/1982'),'Laura Miele');

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Valve Corporation', 8,300,000,000,'Redwood city', 'BioWare', 'Trip Hawkins', 
TO_DATE('27/05/1982'),'Laura Miele');

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Valve Corporation', 8300000000,'Bellevue', 'Campo Santo', 'Gabe Newell', 
TO_DATE('01/01/1996'),'Laura Miele');

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Sony Interactive Entertainment', 0,'San Mateo, California', 'Audiokinetic', 
'Ken Kutaragi',TO_DATE('16/11/1993'),' Shawn Layden');

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Sony Interactive', 0,'San Mateo, California', 'Audiokinetic', 
'Ken Kutaragi',TO_DATE('16/11/1993'),' Shawn Layden');

ALTER TABLE Distribuidora 
MODIFY nombre 
varchar(100);

ALTER TABLE Distribuidora 
MODIFY oficinas 
varchar(100);

ALTER TABLE Distribuidora 
MODIFY filiales 
varchar(100);

ALTER TABLE Distribuidora 
MODIFY fundador 
varchar(50);

ALTER TABLE Distribuidora 
MODIFY director 
varchar(50);

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Xbox Game Studios', NULL ,NULL, '343 Industries', 
'Bill Gates',TO_DATE('01/03/2000'),'Ken Lobb');

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Nintendo',  1201000000000 , 'Tukwila, Washington', '1-UP Studio, Inc.', 
'Fusajiro Yamauchi',TO_DATE('23/09/1889'),'Shigeru Miyamoto');

ALTER TABLE Distribuidora 
MODIFY cotizacion 
varchar(20);

ALTER TABLE Distribuidora 
MODIFY cotizacion 
NUMBER(20);

INSERT INTO Distribuidora (nombre, cotizacion, oficinas, filiales, fundador,  
fecha_fundacion, director)  
values('Nintendo',  1201000000000 , 'Tukwila, Washington', '1-UP Studio, Inc.', 
'Fusajiro Yamauchi',TO_DATE('23/09/1889'),'Shigeru Miyamoto');

ALTER TABLE Desarrolladora 
MODIFY nombre 
NUMBER(50);

ALTER TABLE Desarrolladora 
MODIFY nombre 
VARCHAR(50);

INSERT INTO Desarrolladora (nombre, personas_clave, oficinas, fundador, fecha_fundacion)  
values('Activision Blizzard', 'Robert Kotick',null, 'Robert Kotick', 
TO_DATE('01/01/2008'));

INSERT INTO Desarrolladora (nombre, personas_clave, oficinas, fundador, fecha_fundacion)  
values('Take-Two Interactive', 'Strauss Zelnick','Nueva York', 'Strauss Zelnick', 
TO_DATE('01/01/1993'));

Desarrolladora


select * from Desarrolladora;

INSERT INTO Desarrolladora (nombre, personas_clave, oficinas, fundador, fecha_fundacion)  
values('Activision', 'Robert Kotick',null, 'Robert Kotick', 
TO_DATE('01/01/1979'));

INSERT INTO Desarrolladora (nombre, personas_clave, oficinas, fundador, fecha_fundacion)  
values('Pendulo Studios, S.L.', null,null, null, 
TO_DATE('01/01/1994'));

INSERT INTO Desarrolladora (nombre, personas_clave, oficinas, fundador, fecha_fundacion)  
values('Valve Corporation', 'Gabe Newell','Bellevue', 'Gabe Newell', 
TO_DATE('01/01/1996'));

select * from Desarrolladora;

INSERT INTO Serie (nombre_serie)  
values('Fallout');

INSERT INTO Serie (nombre_serie)  
values(' Animal Crossing ');

INSERT INTO Serie (nombre_serie)  
values('God of war');

INSERT INTO Serie (nombre_serie)  
values('Assassin’s Creed ');

INSERT INTO Serie (nombre_serie)  
values('FIFA ');

INSERT INTO Serie (nombre_serie)  
values('Fallout');

INSERT INTO Serie (nombre_serie)  
values(' Animal Crossing ');

INSERT INTO Serie (nombre_serie)  
values('God of war');

INSERT INTO Serie (nombre_serie)  
values('Assassin’s Creed ');

INSERT INTO Serie (nombre_serie)  
values('FIFA ');

INSERT INTO Serie (nombre_serie)  
values(' Animal Crossing ');

INSERT INTO Serie (nombre_serie)  
values('God of war');

INSERT INTO Serie (nombre_serie)  
values('Assassin’s Creed ');

INSERT INTO Serie (nombre_serie)  
values('FIFA ');

INSERT INTO Serie (nombre_serie)  
values('Fallout');

SELECT * FROM Serie;

INSERT INTO genero (Nombre_genero)  
values('Acción');

INSERT INTO genero (Nombre_genero)  
values('aventuras');

INSERT INTO genero (Nombre_genero)  
values('Simulación');

INSERT INTO genero (Nombre_genero)  
values('Arcade');

INSERT INTO genero (Nombre_genero)  
values('Deportivo');

SELECT * FROM genero 
;

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('PC', null);

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('PlayStation',TO_DATE('03/12/1994'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('PlayStation 2',TO_DATE('08/11/2001'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('Xbox',TO_DATE('01/01/1996'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('Wii',TO_DATE('19/11/2006'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('Xbox 360',TO_DATE('22/11/2005'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('PlayStation 3',TO_DATE('14/12/2006'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('PlayStation 4',TO_DATE('15/11/2013'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('Nintendo Switch',TO_DATE('03/03/2017'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('PlayStation 5',TO_DATE('12/11/2020'));

ALTER TABLE Plataforma 
ADD fecha_lanzamiento DATE;

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('PC', null);

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('PlayStation',TO_DATE('03/12/1994'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('PlayStation 2',TO_DATE('08/11/2001'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('Xbox',TO_DATE('01/01/1996'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('Wii',TO_DATE('19/11/2006'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('Xbox 360',TO_DATE('22/11/2005'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('PlayStation 3',TO_DATE('14/12/2006'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('PlayStation 4',TO_DATE('15/11/2013'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('Nintendo Switch',TO_DATE('03/03/2017'));

INSERT INTO Plataforma (Nombre_ plataforma ,fecha_lanzamiento)  
values('PlayStation 5',TO_DATE('12/11/2020'));

SELECT * FROM Plataforma 
;

INSERT INTO Plataforma (Nombre_plataforma ,fecha_lanzamiento)  
values('PC', null);

INSERT INTO Plataforma (Nombre_plataforma ,fecha_lanzamiento)  
values('PlayStation',TO_DATE('03/12/1994'));

INSERT INTO Plataforma (Nombre_plataforma ,fecha_lanzamiento)  
values('PlayStation 2',TO_DATE('08/11/2001'));

INSERT INTO Plataforma (Nombre_plataforma ,fecha_lanzamiento)  
values('Xbox',TO_DATE('01/01/1996'));

INSERT INTO Plataforma (Nombre_plataforma ,fecha_lanzamiento)  
values('Wii',TO_DATE('19/11/2006'));

INSERT INTO Plataforma (Nombre_plataforma ,fecha_lanzamiento)  
values('Xbox 360',TO_DATE('22/11/2005'));

INSERT INTO Plataforma (Nombre_plataforma ,fecha_lanzamiento)  
values('PlayStation 3',TO_DATE('14/12/2006'));

INSERT INTO Plataforma (Nombre_plataforma ,fecha_lanzamiento)  
values('PlayStation 4',TO_DATE('15/11/2013'));

INSERT INTO Plataforma (Nombre_plataforma ,fecha_lanzamiento)  
values('Nintendo Switch',TO_DATE('03/03/2017'));

INSERT INTO Plataforma (Nombre_plataforma ,fecha_lanzamiento)  
values('PlayStation 5',TO_DATE('12/11/2020'));

SELECT * FROM Plataforma 
;

CREATE OR REPLACE FUNCTION Suscribirse 
(suscriptor_in IN NUMBER,creador IN NUMBER) 
IS  
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END;
/

CREATE OR REPLACE FUNCTION Suscribirse 
(suscriptor_in IN NUMBER,creador IN NUMBER) 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END;
/

CREATE OR REPLACE FUNCTION Suscribirse 
(suscriptor_in IN NUMBER,creador IN NUMBER); 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END;
/

CREATE OR REPLACE PROCEDURE Suscribirse 
(suscriptor_in IN NUMBER,creador IN NUMBER); 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END;
/

CREATE OR REPLACE PROCEDURE Se_suscriben 
(suscriptor_in IN NUMBER,creador IN NUMBER); 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END;
/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador IN NUMBER); 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END;
/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador IN NUMBER) 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END;
/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador IN NUMBER); 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END;
/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador IN NUMBER)is 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END;
/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador IN NUMBER)is 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END accion_suscribirse;
/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
-- (suscriptor_in IN NUMBER,creador IN NUMBER); 
-- BEGIN 
--     insert into Se_suscriben(suscriptor,creador) 
--     values(suscriptor_in, creador_in); 
-- END;
/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador IN NUMBER); 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END; 

/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador_in IN NUMBER); 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END; 

/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador_in IN NUMBER) 
IS 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END;
/

BEGIN 
    mayor_proc(1,1); 
END;
/

BEGIN 
    accion_suscribirse(1,1); 
END;
/

select * from Se_suscriben;

BEGIN 

/

 SELECT IF (EXISTS  
    (SELECT * FROM Se_suscriben WHERE suscriptor =suscriptor_in));

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador_in IN NUMBER) 
IS 
BEGIN 
    IF EXISTS  
    (SELECT * FROM Se_suscriben  
    WHERE suscriptor =suscriptor_in)  
    BEGIN 
        insert into Se_suscriben(suscriptor,creador) 
        values(suscriptor_in, creador_in); 
    END 
    ELSE 
    BEGIN 
         DBMS_OUTPUT.PUT_LINE('El usuario no existe'); 
    END 
END;
/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador_in IN NUMBER) 
IS 
BEGIN 
    IF EXISTS  
    (SELECT * FROM Se_suscriben  
    WHERE suscriptor =suscriptor_in) THEN 
    BEGIN 
        insert into Se_suscriben(suscriptor,creador) 
        values(suscriptor_in, creador_in); 
    ELSE 
    BEGIN 
         DBMS_OUTPUT.PUT_LINE('El usuario no existe'); 
    END IF; 
END;
/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador_in IN NUMBER) 
IS 
BEGIN 
    IF EXISTS  
    (SELECT * FROM Se_suscriben  
    WHERE suscriptor =suscriptor_in) THEN 
    BEGIN 
        insert into Se_suscriben(suscriptor,creador) 
        values(suscriptor_in, creador_in); 
    ELSE 
         DBMS_OUTPUT.PUT_LINE('El usuario no existe'); 
    END IF; 
END;
/

SELECT * FROM Se_suscriben  
    WHERE suscriptor =suscriptor_in;

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador_in IN NUMBER) 
IS 
BEGIN 
    IF EXISTS (SELECT * FROM Se_suscriben  
    WHERE suscriptor =suscriptor_in) THEN 
    BEGIN 
        insert into Se_suscriben(suscriptor,creador) 
        values(suscriptor_in, creador_in); 
    ELSE 
         DBMS_OUTPUT.PUT_LINE('El usuario no existe'); 
    END IF; 
END;
/

select * from Se_suscriben;

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador_in IN NUMBER) 
IS 
BEGIN 
    IF EXISTS (SELECT * FROM Se_suscriben  
    WHERE suscriptor =suscriptor_in) 
    BEGIN 
        insert into Se_suscriben(suscriptor,creador) 
        values(suscriptor_in, creador_in); 
    ELSE 
         DBMS_OUTPUT.PUT_LINE('El usuario no existe'); 
    END IF; 
END; 

/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador_in IN NUMBER) 
IS 
BEGIN 
    IF EXISTS (SELECT * FROM Se_suscriben  
    WHERE suscriptor =suscriptor_in) THEN 
    BEGIN 
        insert into Se_suscriben(suscriptor,creador) 
        values(suscriptor_in, creador_in); 
    ELSE 
         DBMS_OUTPUT.PUT_LINE('El usuario no existe'); 
    END IF; 
END;
/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador_in IN NUMBER) 
IS 
BEGIN 
    IF (SELECT * FROM Se_suscriben  
    WHERE suscriptor =suscriptor_in) THEN 
    BEGIN 
        insert into Se_suscriben(suscriptor,creador) 
        values(suscriptor_in, creador_in); 
    ELSE 
         DBMS_OUTPUT.PUT_LINE('El usuario no existe'); 
    END IF; 
END;
/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador_in IN NUMBER) 
IS 
BEGIN 
    IF EXISTS (SELECT * FROM Se_suscriben  
    WHERE suscriptor =suscriptor_in) THEN 
    BEGIN 
        insert into Se_suscriben(suscriptor,creador) 
        values(suscriptor_in, creador_in); 
    ELSE 
         DBMS_OUTPUT.PUT_LINE('El usuario no existe'); 
    END IF; 
END; 

/

CREATE OR REPLACE PROCEDURE accion_suscribirse 
(suscriptor_in IN NUMBER,creador_in IN NUMBER) 
IS 
BEGIN 
    insert into Se_suscriben(suscriptor,creador) 
    values(suscriptor_in, creador_in); 
END;
/

BEGIN 
    accion_suscribirse(1,1); 
END;
/

BEGIN 
    accion_suscribirse(2,1); 
END;
/

CREATE OR REPLACE PROCEDURE add_comentarios AS 
CURSOR list_usuarios IS 
SELECT id_usuario 
FROM Usuarios; 
 
v_usuarios list_usuarios%ROWTYPE; 
v_contador NUMBER:=1; 
fecha_creacion DATE; 
 
BEGIN 
OPEN list_usuarios; 
FETCH list_usuarios INTO v_usuarios; 
 
WHILE list_usuarios%FOUND LOOP 
    SELECT sysdate - INTERVAL v_contador DAY INTO fecha_creacion FROM DUAL; 
    INSERT INTO Comentarios(Id, Contenido, Fecha_de_publicacion ,id_usuario) 
    VALUES(v_contador,CONCAT('comentario', v_contador),fecha_creacion,v_contador) 
    v_contador := v_contador + 1; 
    FETCH list_usuarios INTO v_usuarios; 
END LOOP; 
CLOSE list_prof; 
END;
/

CREATE OR REPLACE PROCEDURE add_comentarios AS 
CURSOR list_usuarios IS 
SELECT id_usuario 
FROM Usuarios; 
 
v_usuarios list_usuarios%ROWTYPE; 
v_contador NUMBER:=1; 
fecha_creacion DATE; 
 
BEGIN 
OPEN list_usuarios; 
FETCH list_usuarios INTO v_usuarios; 
 
WHILE list_usuarios%FOUND LOOP 
    SELECT sysdate - INTERVAL v_contador DAY INTO fecha_creacion FROM DUAL; 
    INSERT INTO Comentarios(Id, Contenido, Fecha_de_publicacion ,id_usuario) 
    VALUES(v_contador,CONCAT('comentario', v_contador),fecha_creacion,v_contador) 
    v_contador := v_contador + 1; 
    FETCH list_usuarios INTO v_usuarios; 
END LOOP; 
CLOSE list_usuarios; 
END;
/

CREATE OR REPLACE PROCEDURE add_comentarios AS 
CURSOR list_usuarios IS 
SELECT id_usuario 
FROM Usuarios; 
 
v_usuarios list_usuarios%ROWTYPE; 
v_contador NUMBER:=1; 
 
BEGIN 
OPEN list_usuarios; 
FETCH list_usuarios INTO v_usuarios; 
 
WHILE list_usuarios%FOUND LOOP 
    INSERT INTO Comentarios(Id, Contenido, Fecha_de_publicacion ,id_usuario) 
    VALUES(v_contador,CONCAT('comentario', v_contador),sysdate,v_contador) 
    v_contador := v_contador + 1; 
    FETCH list_usuarios INTO v_usuarios; 
END LOOP; 
CLOSE list_usuarios; 
END; 

/

CREATE OR REPLACE PROCEDURE add_comentarios AS 
CURSOR list_usuarios IS 
SELECT id_usuario 
FROM Usuarios; 
 
v_usuarios list_usuarios%ROWTYPE; 
v_contador NUMBER:=1; 
 
BEGIN 
OPEN list_usuarios; 
FETCH list_usuarios INTO v_usuarios; 
 
WHILE list_usuarios%FOUND LOOP 
    INSERT INTO Comentarios(id, Contenido, Fecha_de_publicacion ,id_usuario) 
    VALUES(v_contador,CONCAT('comentario', v_contador),sysdate,v_contador) 
    v_contador := v_contador + 1; 
    FETCH list_usuarios INTO v_usuarios; 
END LOOP; 
CLOSE list_usuarios; 
END; 
 

/

CREATE OR REPLACE PROCEDURE add_comentarios AS 
CURSOR list_usuarios IS 
SELECT id_usuario 
FROM Usuarios; 
 
v_usuarios list_usuarios%ROWTYPE; 
v_contador NUMBER:=1; 
 
BEGIN 
OPEN list_usuarios; 
FETCH list_usuarios INTO v_usuarios; 
 
WHILE list_usuarios%FOUND LOOP 
    INSERT INTO Comentarios(id, Contenido, Fecha_de_publicacion ,id_usuario) 
    VALUES(v_contador,CONCAT('comentario', v_contador),sysdate,v_contador); 
    v_contador := v_contador + 1; 
    FETCH list_usuarios INTO v_usuarios; 
END LOOP; 
CLOSE list_usuarios; 
END; 

/

CREATE OR REPLACE PROCEDURE add_comentarios AS 
CURSOR list_usuarios IS 
SELECT id_usuario 
FROM Usuarios; 
 
v_usuarios list_usuarios%ROWTYPE; 
v_contador NUMBER:=1; 
 
BEGIN 
OPEN list_usuarios; 
FETCH list_usuarios INTO v_usuarios; 
 
WHILE list_usuarios%FOUND LOOP 
    INSERT INTO Comentarios(id, Contenido, FECHA_PUBLICACION ,id_usuario) 
    VALUES(v_contador,CONCAT('comentario', v_contador),sysdate,v_contador); 
    v_contador := v_contador + 1; 
    FETCH list_usuarios INTO v_usuarios; 
END LOOP; 
CLOSE list_usuarios; 
END; 

/

BEGIN 
add_comentarios; 
END;
/

SELECT * FROM Comentarios;

CREATE OR REPLACE PROCEDURE add_publicaciones AS 
CURSOR list_usuarios IS 
SELECT id_usuario 
FROM Usuarios; 
 
v_usuarios list_usuarios%ROWTYPE; 
v_contador NUMBER:=1; 
 
BEGIN 
OPEN list_usuarios; 
FETCH list_usuarios INTO v_usuarios; 
 
WHILE list_usuarios%FOUND LOOP 
    INSERT INTO Publicaciones(id, titulo, fecha_publicacion ,categoria,contenido,id_usuario) 
    VALUES(v_contador,CONCAT('Titulo', v_contador),sysdate,CONCAT('categoria', v_contador), 
    'Videojuegos',v_contador); 
    v_contador := v_contador + 1; 
    FETCH list_usuarios INTO v_usuarios; 
END LOOP; 
CLOSE list_usuarios; 
END;
/

BEGIN 
add_publicaciones; 
END;
/

SELECT * FROM Publicaciones 
;

CREATE OR REPLACE PROCEDURE add_Administran AS 
 
    CURSOR list_administradores IS 
    SELECT id_administrador 
    FROM Administradores; 
    v_Administradores list_administradores%ROWTYPE; 
     
    CURSOR list_publicaciones IS 
    SELECT ID 
    FROM Publicaciones; 
    v_Publicaciones list_publicaciones%ROWTYPE; 
     
    v_contador NUMBER:=1; 
BEGIN 
    OPEN list_administradores; 
    FETCH list_administradores INTO v_Administradores; 
     
    OPEN list_publicaciones; 
    FETCH list_publicaciones INTO v_Publicaciones; 
     
    WHILE list_administradores%FOUND AND list_publicaciones%FOUND LOOP 
        INSERT INTO Administran(fecha_de_administracion,  
        id_administrador, id_publicacion) 
        VALUES(sysdate,v_contador,v_contador); 
        v_contador := v_contador + 1; 
        FETCH list_administradores INTO v_Administradores; 
        FETCH list_publicaciones INTO v_Publicaciones; 
    END LOOP; 
    CLOSE list_administradores; 
END; 

/

CREATE OR REPLACE PROCEDURE add_Administran AS 
 
    CURSOR list_administradores IS 
    SELECT id_administrador 
    FROM Administradores; 
    v_Administradores list_administradores%ROWTYPE; 
     
    CURSOR list_publicaciones IS 
    SELECT ID 
    FROM Publicaciones; 
    v_Publicaciones list_publicaciones%ROWTYPE; 
     
    v_contador NUMBER:=1; 
BEGIN 
    OPEN list_administradores; 
    FETCH list_administradores INTO v_Administradores; 
     
    OPEN list_publicaciones; 
    FETCH list_publicaciones INTO v_Publicaciones; 
     
    WHILE list_administradores%FOUND AND list_publicaciones%FOUND LOOP 
        INSERT INTO Administran(FECHA_ADMINISTRACION,  
        id_administrador, id_publicacion) 
        VALUES(sysdate,v_contador,v_contador); 
        v_contador := v_contador + 1; 
        FETCH list_administradores INTO v_Administradores; 
        FETCH list_publicaciones INTO v_Publicaciones; 
    END LOOP; 
    CLOSE list_administradores; 
END; 

/

BEGIN 
add_Administran; 
END;
/

SELECT * FROM Administran 
;

select * from serie;

select * from Videojuego;

INSERT INTO Videojuego(id, nombre, nombre_serie) 
values(01, 'Fallout 4','Fallout');

select * from Videojuego 
;

DESC Videojuego 


Alter table Videojuego ALTER COLUMN nombre vARCHAR2(70) 
;

ALTER TABLE Videojuego 
ALTER COLUMN nombre Varchar(50);

ALTER TABLE Videojuego  
MODIFY nombre  
;

ALTER TABLE Videojuego  
MODIFY nombre  
varchar(100);

select * from Serie;

INSERT INTO Videojuego(id, nombre, nombre_serie) 
values(02, 'Animal Crossing: New Horizons',' Animal Crossing ');

INSERT INTO Videojuego(id, nombre, nombre_serie) 
values(03, 'animal crossing new leaf','Animal Crossing');

select * from Serie 
;

UPDATE Serie 
SET nombre_serie = Animal Crossing 
WHERE nombre_serie=' Animal Crossing ';

select * from Serie 
;

UPDATE Serie 
SET nombre_serie = Animal Crossing 
WHERE nombre_serie=' Animal Crossing ';

UPDATE Serie 
SET nombre_serie = Animal Crossing;

ALTER TABLE Serie 
ADD id_serie NUMBER(8);

select * from Serie 
;

select * from Videojuego 
;

DELETE FROM Videojuego ;

select * from Videojuego 
;

select * from Serie 
;

desc Videojuego


SHOW CREATE TABLE Videojuego


ALTER TABLE Videojuego DROP CONSTRAINT fk_videojuego_nombre_serie;

ALTER TABLE Videojuego      
DROP COLUMN nombre_serie;

DESC Videojuego 


DESC Serie 


ALTER TABLE Videojuego 
ADD id_serie number(8);

select * from Videojuego 
;

DESC Videojuego 


DESC Serie 


ALTER TABLE Serie DROP CONSTRAINT pk_nombre_serie;

select * from Serie 
;

DESC Serie 


select * from Serie 
;

ALTER TABLE Serie 
add CONSTRAINT pk_nombre_serie PRIMARY KEY(ID_SERIE);

DELETE FROM Serie;

ALTER TABLE Serie 
add CONSTRAINT pk_nombre_serie PRIMARY KEY(ID_SERIE);

desc Serie 


INSERT INTO Serie (nombre_serie,ID_SERIE)  
values('Fallout', 1);

INSERT INTO Serie (nombre_serie,ID_SERIE)  
values('Animal Crossing',2);

INSERT INTO Serie (nombre_serie,ID_SERIE)  
values('God of war',3);

INSERT INTO Serie (nombre_serie,ID_SERIE)  
values('Assassin’s Creed',4);

INSERT INTO Serie (nombre_serie,ID_SERIE)  
values('FIFA ',5);

select * from Serie 
;

ALTER TABLE Videojuego 
add CONSTRAINT fk_videojuego_id_serie FOREIGN KEY(id_serie) REFERENCES Serie 
    ON DELETE CASCADE;

desc Videojuego 


select * from Serie 
;

INSERT INTO Videojuego(id, nombre, ID_SERIE) 
values(01, 'Fallout 4',1);

select * from Serie 
;

select * from Videojuego 
;

INSERT INTO Videojuego(id, nombre, ID_SERIE) 
values(02, 'animal crossing new horizons',2);

INSERT INTO Videojuego(id, nombre, ID_SERIE) 
values(03, 'animal crossing new leaf',2);

select * from Serie 
;

INSERT INTO Videojuego(id, nombre, ID_SERIE) 
values(04, 'god of war ragnarok',3);

select * from Serie 
;

INSERT INTO Videojuego(id, nombre, ID_SERIE) 
values(05, 'FIFA 2001',5);

select * from Videojuego 
;

desc Premios 


ALTER SESSION SET NLS_DATE_FORMAT='DD/MM/YYYY' 
;

INSERT INTO Videojuego(id, nombre, ID_SERIE) 
values(06, 'The Last of Us Part II', null);

INSERT INTO Premios(NOMBRE, FECHA_ENTREGA, ENTREGADO_POR, ID_VIDEOJUEGO) 
values('Juego del año 2020', TO_CHAR(10/12/2020), 'Geoff Keighley',06);

INSERT INTO Premios(NOMBRE, FECHA_ENTREGA, ENTREGADO_POR, ID_VIDEOJUEGO) 
values('Juego del año 2020', TO_CHAR(10/12/2020), 'Geoff Keighley',6);

desc Premios


INSERT INTO Premios(NOMBRE, FECHA_ENTREGA, ENTREGADO_POR, ID_VIDEOJUEGO) 
values('Juego del año 2020', TO_DATE(10/12/2020), 'Geoff Keighley',6);

INSERT INTO Premios(NOMBRE, FECHA_ENTREGA, ENTREGADO_POR, ID_VIDEOJUEGO) 
values('Juego del año 2020', TO_DATE('10/12/2020'), 'Geoff Keighley',6);

INSERT INTO Premios(NOMBRE, FECHA_ENTREGA, ENTREGADO_POR, ID_VIDEOJUEGO) 
values('Mejor dirección	2020', TO_DATE('10/12/2020'), 'Geoff Keighley',6);

select * from Premios 
;

INSERT INTO Premios(NOMBRE, FECHA_ENTREGA, ENTREGADO_POR, ID_VIDEOJUEGO) 
values('Mejor narrativa 2020', TO_DATE('10/12/2020'), 'Geoff Keighley',6);

select * from Premios 
;

INSERT INTO Videojuego(id, nombre, ID_SERIE) 
values(07, 'Ghost of TsushimaI', null);

INSERT INTO Premios(NOMBRE, FECHA_ENTREGA, ENTREGADO_POR, ID_VIDEOJUEGO) 
values('Mejor dirección artística 2020', TO_DATE('10/12/2020'), 'Geoff Keighley',7);

ALTER TABLE Premios  
MODIFY nombre  
varchar(100);

INSERT INTO Premios(NOMBRE, FECHA_ENTREGA, ENTREGADO_POR, ID_VIDEOJUEGO) 
values('Mejor dirección artística 2020', TO_DATE('10/12/2020'), 'Geoff Keighley',7);

INSERT INTO Serie (nombre_serie,ID_SERIE)  
values('Half-Life',6);

select * from Serie;

INSERT INTO Videojuego(id, nombre, ID_SERIE) 
values(08, 'Half-Life: Alyx', 6);

INSERT INTO Premios(NOMBRE, FECHA_ENTREGA, ENTREGADO_POR, ID_VIDEOJUEGO) 
values('Mejor juego de realidad virtual 2020', TO_DATE('10/12/2020'), 'Geoff Keighley',8);

select * for videojuego;

select * FROM videojuego;

select * FROM Videojuego;

select * FROM Genero;

desc Pertenece_genero


select * FROM Videojuego;

INSERT INTO genero (Nombre_genero)  
values('Videojuego de rol de acción');

desc Pertenece_genero 


INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(1,'Videojuego de rol de acción');

select * FROM Videojuego;

INSERT INTO genero (Nombre_genero)  
values('Simulacion social');

select * FROM Videojuego;

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(2,'Simulacion social');

select * FROM Videojuego;

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(3,'Simulacion social');

select * FROM Videojuego;

select * FROM Genero;

select * FROM Genero;

select * FROM Videojuego;

select * FROM Genero;

Update Genero 
set NOMBRE_GENERO ='Accion' 
where NOMBRE_GENERO ='Acción';

select * FROM Genero;

Update Genero 
set NOMBRE_GENERO ='Simulacion' 
where NOMBRE_GENERO ='Simulación';

select * FROM Genero;

Update Genero 
set NOMBRE_GENERO ='Videojuego de rol de accion' 
where NOMBRE_GENERO ='Videojuego de rol de acción';

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(1,'Videojuego de rol de accion');

DELETE FROM Pertenece_genero WHERE Nombre_genero='Videojuego de rol de accion';

DELETE FROM Pertenece_genero WHERE Nombre_genero='Videojuego de rol de acción';

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(1,'Videojuego de rol de accion');

select * FROM Pertenece_genero;

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(1,'Videojuego de rol de accion');

select * FROM Pertenece_genero;

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(1,'Videojuego de rol de accion');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(4,'Videojuego de rol de accion');

Update Genero 
set NOMBRE_GENERO ='Videojuego de rol de accion' 
where NOMBRE_GENERO ='Videojuego de rol de acción';

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(1,'Videojuego de rol de accion');

select * FROM Pertenece_genero;

select * FROM Genero;

select * FROM Genero;

Update Genero 
set NOMBRE_GENERO ='Aventura' 
where NOMBRE_GENERO ='aventuras';

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(4,'Acción');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(4,'Aventura');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(4,'Accion');

select * FROM Pertenece_genero;

INSERT INTO genero (Nombre_genero)  
values('Hack and slash');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(4,'Hack and slash');

select * FROM Pertenece_genero;

select * FROM Videojuego;

select * FROM Videojuego;

select * FROM Genero;

select * FROM Videojuego;

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(5,'Deportivo');

select * FROM Videojuego;

INSERT INTO genero (Nombre_genero)  
values('Terror');

INSERT INTO genero (Nombre_genero)  
values('Disparos en tercera persona');

select * FROM Videojuego;

select * FROM Genero;

select * FROM Videojuego;

select * FROM Genero;

select * FROM Pertenece_genero;

desc Pertenece_genero 


INSERT INTO genero (Nombre_genero)  
values('Terror');

INSERT INTO genero (Nombre_genero)  
values('Disparos en tercera persona');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(1,'Videojuego de rol de accion');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(2,'Simulacion social');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(3,'Simulacion social');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(4,'Accion');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(4,'Aventura');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(4,'Hack and slash');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(5,'Deportivo');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(6,'Accion');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(6,'Aventura');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(6,'Terror');

INSERT INTO Pertenece_genero(Id_videojuego, Nombre_genero) 
VALUES(6,'Disparos en tercera persona');

desc Pertenece_plataforma


select * FROM Pertenece_plataforma;

desc Pertenece_plataforma 


select * FROM Videojuego;

select * FROM Pertenece_plataforma;

select * FROM Plataforma;

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'PC');

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'PlayStation 4');

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,Xbox');

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
-- VALUES(1,'Xbox');

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'Xbox');

select * FROM Pertenece_plataforma;

select * FROM Plataforma;

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(2,'Nintendo Switch');

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
BEGIN 
    INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
END;
/

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(2,'Nintendo 3DS');

select * FROM Plataforma;

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
BEGIN 
    IF :NEW.NOMBRE_PLATAFORMA NOT EXISTS (SELECT * FROM Plataforma WHERE  
                                    NOMBRE_PLATAFORMA=:NEW.NOMBRE_PLATAFORMA) THEN 
                               INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
END IF; 
END; 

/

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
BEGIN 
    IF :NEW.NOMBRE_PLATAFORMA NOT IN (SELECT * FROM Plataforma WHERE  
                                    NOMBRE_PLATAFORMA=:NEW.NOMBRE_PLATAFORMA) THEN 
                               INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
END IF; 
END
/

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
BEGIN 
    IF :NEW.NOMBRE_PLATAFORMA NOT IN (SELECT * FROM Plataforma WHERE  
                                    NOMBRE_PLATAFORMA=:NEW.NOMBRE_PLATAFORMA) THEN 
                               INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
END IF; 
END;
/

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
BEGIN 
    IF :NEW.NOMBRE_PLATAFORMA NOT IN (SELECT * FROM Plataforma WHERE  
                                    NOMBRE_PLATAFORMA=:NEW.NOMBRE_PLATAFORMA); THEN 
                               INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
END IF; 
END;
/

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
BEGIN 
    IF :NEW.NOMBRE_PLATAFORMA NOT IN (SELECT * FROM Plataforma WHERE  
                                    NOMBRE_PLATAFORMA=:NEW.NOMBRE_PLATAFORMA) THEN 
                               INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
END IF; 
END; 

/

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
BEGIN 
    INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
END;
/

select * FROM Videojuego;

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(4,'PlayStation 5');

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma; 
 
    IF any_rows_found = 0 THEN 
    INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
END;
/

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma; 
    IF any_rows_found = 0 THEN 
    INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
END; 

/

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma 
    IF any_rows_found = 0 THEN 
    INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
END;
/

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma; 
    IF any_rows_found = 0 THEN 
    INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
    END IF; 
END; 

/

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(4,'PlayStation 5');

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(99,'Polistation1');

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'Polistation1');

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma; 
    IF any_rows_found > 0 THEN 
    ELSE 
    INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
    END IF; 
END; 

/

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma; 
    IF any_rows_found > 0 THEN 
    BREAK; 
    ELSE 
    INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
    END IF; 
END; 

/

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma; 
    IF any_rows_found > 1 THEN 
    dbms_output.put_line 
    ('No existe'); 
    ELSE 
    INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
    END IF; 
END; 

/

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'Polistation1');

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'Nintendo 3D');

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'Nintendo 3D');

select * FROM Pertenece_plataforma;

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma; 
    IF any_rows_found > 1 THEN 
    dbms_output.put_line('Si existe'); 
    ELSE 
    dbms_output.put_line('No existe'); 
    END IF; 
END;
/

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'Nintendo 3D');

select * FROM Plataforma;

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'Nintendo 3D');

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'Nintendo 3DS');

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma; 
    IF any_rows_found > 1 THEN 
    dbms_output.put_line 
    ('Si existe'); 
    ELSE 
    INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
    END IF; 
END;
/

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'1Polistation');

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'1Polistation');

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma; 
    IF any_rows_found < 1 THEN 
    dbms_output.put_line 
    ('Si existe'); 
    ELSE 
    INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
    END IF; 
END;
/

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'1Polistation');

select * FROM Plataforma;

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'Nintendo Switch');

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma; 
    IF any_rows_found < 1 THEN 
    dbms_output.put_line 
    (any_rows_found); 
    ELSE 
    dbms_output.put_line 
    (any_rows_found); 
    --INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
    END IF; 
END;
/

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'Nintendo Switch');

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma; 
    IF any_rows_found > 1 THEN 
    dbms_output.put_line 
    (any_rows_found); 
    ELSE 
    dbms_output.put_line 
    (any_rows_found); 
    INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
    END IF; 
END; 

/

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(1,'Nintendo Switch');

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(5,'Nintendo Switch');

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(5,'Nintendo Switc111');

drop TRIGGER insertar_pertenece_plataforma;

INSERT INTO Pertenece_plataforma(Id_videojuego, NOMBRE_PLATAFORMA) 
VALUES(5,'Nintendo Switc111');

select * FROM Videojuego;

select * FROM Plataforma;

select * FROM Pertenece_plataforma;

select * FROM Publicaciones;

select * FROM Sobre;

desc Sobre 


select * FROM Publicaciones;

select * FROM Videojuego;

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,1);

CREATE SEQUENCE inc_publi 
INCREMENT BY 1 
START WITH 1;

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,1);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,1);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,1);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,1);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,1);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,1);

select * FROM Sobre;

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,inc_videojuego.NextVal);

CREATE SEQUENCE inc_videojuego 
INCREMENT BY 1 
START WITH 1;

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,inc_videojuego.NextVal);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,inc_videojuego.NextVal);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,inc_videojuego.NextVal);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,inc_videojuego.NextVal);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,inc_videojuego.NextVal);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,inc_videojuego.NextVal);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,inc_videojuego.NextVal);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,inc_videojuego.NextVal);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,inc_videojuego.NextVal);

INSERT INTO Sobre(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES(inc_publi.NextVal,inc_videojuego.NextVal);

select * FROM Sobre;

select * FROM Distribuidora;

select * FROM Videojuego;

select * FROM Distribuidora;

INSERT INTO Distribuye(ID_PUBLICACION, ID_VIDEOJUEGO) 
VALUES('Valve Corporation',8);

desc Distribuye 


INSERT INTO Distribuye(NOMBRE_DISTRIBUYE, ID_VIDEOJUEGO) 
VALUES('Valve Corporation',8);

select * FROM Distribuidora;

select * FROM Videojuego;

INSERT INTO Distribuye(NOMBRE_DISTRIBUYE, ID_VIDEOJUEGO) 
VALUES('Sony Interactive',4);

select * FROM Videojuego;

select * FROM Distribuidora;

select * FROM Distribuidora;

select * FROM Videojuego;

select * FROM Distribuidora;

INSERT INTO Distribuye(NOMBRE_DISTRIBUYE, ID_VIDEOJUEGO) 
VALUES('Sony Interactive',7);

INSERT INTO Distribuye(NOMBRE_DISTRIBUYE, ID_VIDEOJUEGO) 
VALUES('Nintendo',2);

INSERT INTO Distribuye(NOMBRE_DISTRIBUYE, ID_VIDEOJUEGO) 
VALUES('Nintendo',3);

desc Desarrolla 


select * FROM Desarrolladora;

INSERT INTO Desarrolla(NOMBRE_DESARROLLADORA, ID_VIDEOJUEGO) 
VALUES('Valve Corporation',8);

INSERT INTO Desarrolla(NOMBRE_DESARROLLADORA, ID_VIDEOJUEGO) 
VALUES('Activision Blizzard	',4);

INSERT INTO Desarrolla(NOMBRE_DESARROLLADORA, ID_VIDEOJUEGO) 
VALUES('Take-Two Interactive',7);

INSERT INTO Desarrolla(NOMBRE_DESARROLLADORA, ID_VIDEOJUEGO) 
VALUES('Activision',2);

INSERT INTO Desarrolla(NOMBRE_DESARROLLADORA, ID_VIDEOJUEGO) 
VALUES('Activision',3);

INSERT INTO Desarrolla(NOMBRE_DESARROLLADORA, ID_VIDEOJUEGO) 
VALUES('Activision Blizzard',4);

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma 
where NOMBRE_PLATAFORMA=:NEW.NOMBRE_PLATAFORMA; 
    IF any_rows_found = 0 THEN 
        INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
    ELSE  
    dbms_output.put_line 
    (any_rows_found); 
    END IF; 
END;
/

CREATE OR REPLACE TRIGGER insertar_pertenece_plataforma 
BEFORE INSERT ON Pertenece_plataforma 
for each row 
DECLARE 
any_rows_found number; 
BEGIN 
select count(*) 
into   any_rows_found 
from   Plataforma 
where NOMBRE_PLATAFORMA=:NEW.NOMBRE_PLATAFORMA; 
    IF any_rows_found = 0 THEN 
        INSERT INTO Plataforma(Nombre_plataforma) VALUES(:NEW.NOMBRE_PLATAFORMA); 
    ELSE  
    dbms_output.put_line 
    (any_rows_found); 
    END IF; 
END;
/

insert into PERTENECE_PLATAFORMA(ID_VIDEOJUEGO, NOMBRE_PLATAFORMA) values(1,'PC');

insert into PERTENECE_PLATAFORMA(ID_VIDEOJUEGO, NOMBRE_PLATAFORMA) values(1,'PC');

insert into PERTENECE_PLATAFORMA(ID_VIDEOJUEGO, NOMBRE_PLATAFORMA) values(1,'PC');

insert into PERTENECE_PLATAFORMA(ID_VIDEOJUEGO, NOMBRE_PLATAFORMA) values(8,'PC');

insert into PERTENECE_PLATAFORMA(ID_VIDEOJUEGO, NOMBRE_PLATAFORMA) values(8,'caca');

select * from Plataforma 
;

select * from Pertenece_plataforma 
;

select * from Plataforma 
;

select * from videojuegos 
;

select * from videojuego 
;

select * from Pertenece_plataforma 
;

insert into PERTENECE_PLATAFORMA(ID_VIDEOJUEGO, NOMBRE_PLATAFORMA) values(6,'PC');

insert into PERTENECE_PLATAFORMA(ID_VIDEOJUEGO, NOMBRE_PLATAFORMA) values(6,'bubu');

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
IS 
DECLARE 
    datos usuarios%rowtype;  
BEGIN 
    Select * from usuarios where ID_USUARIO=id_introducida; 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
IS 
    datos usuarios%rowtype;  
BEGIN 
    Select * from usuarios where ID_USUARIO=id_introducida; 
end; 
 

/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
IS 
    datos usuarios%rowtype;  
BEGIN 
    Select * into datos from usuarios where ID_USUARIO=id_introducida; 
end; 

/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
IS 
    datos usuarios%rowtype;  
BEGIN 
    Select * into datos from usuarios where ID_USUARIO=id_introducida; 
    DBMS_OUTPUT.PUT_LINE(datos); 
end; 

/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
BEGIN 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE(v_datos.nombre); 
end; 

/

BEGIN 
datos_usuarios(5); 
end;
/

BEGIN 
datos_usuarios(5000); 
end; 

/

BEGIN 
datos_usuarios(5); 
end; 

/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
BEGIN 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre); 
end;
/

BEGIN 
datos_usuarios(5); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
BEGIN 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre 
                        N'Nombre: '||v_datos.nombre); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
BEGIN 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre|| 
                        N'Nombre: '||v_datos.nombre); 
end;
/

BEGIN 
datos_usuarios(5); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
BEGIN 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'\\\\n hola'); 
end;
/

BEGIN 
datos_usuarios(5); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
    numero_publicaciones number; 
BEGIN 
    select count(*) into numero_publicaciones 
    from publicaciones where ID_USUARIO=id_introducida; 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'Nº de Publicaciones: '|| 
    numero_publicaciones); 
end;
/

BEGIN 
datos_usuarios(5); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
    numero_publicaciones number; 
BEGIN 
    select count(*) into numero_publicaciones 
    from publicaciones where ID_USUARIO=id_introducida; 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
    numero_publicaciones); 
end; 

/

BEGIN 
datos_usuarios(5); 
end; 

/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
    numero_publicaciones number; 
    numero_comentarios number; 
BEGIN 
    select count(*) into numero_publicaciones 
    from publicaciones where ID_USUARIO=id_introducida; 
    select count(*) into numero_comentarios 
    from comentarios where ID_USUARIO=id_introducida; 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
    numero_publicaciones); 
end; 

/

BEGIN 
datos_usuarios(5); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
    numero_publicaciones number; 
    numero_comentarios number; 
BEGIN 
    select count(*) into numero_publicaciones 
    from publicaciones where ID_USUARIO=id_introducida; 
    select count(*) into numero_comentarios 
    from comentarios where ID_USUARIO=id_introducida; 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
    numero_publicaciones||'  Nº de comentarios: '||numero_comentarios); 
end; 

/

BEGIN 
datos_usuarios(5); 
end; 
 

/

Declare 
maximo NUMBER; 
Begin 
SELECT MAX(ID) into maximo; 
Insert INTO comentarios values (maximo+1,'Hola',sysdate,5); 
end;
/

Declare 
maximo NUMBER; 
Begin 
SELECT MAX(ID) into maximo from comentarios; 
Insert INTO comentarios values (maximo+1,'Hola',sysdate,5); 
end; 

/

select * from comentarios;

BEGIN 
datos_usuarios(5); 
end; 

/

Declare 
maximo NUMBER; 
Begin 
SELECT MAX(ID) into maximo from comentarios; 
Insert INTO comentarios values (maximo+1,'Hola',sysdate,5); 
end;
/

BEGIN 
datos_usuarios(5); 
end;
/

select * from comentarios;

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
    numero_publicaciones number; 
    numero_comentarios number; 
     
    no_existe EXCEPTION; 
BEGIN 
    IF id_introducida = 0 THEN  
        RAISE no_existe; 
    ELSE 
        select count(*) into numero_publicaciones 
        from publicaciones where ID_USUARIO=id_introducida; 
        select count(*) into numero_comentarios 
        from comentarios where ID_USUARIO=id_introducida; 
        open datos; 
        fetch datos INTO v_datos; 
        DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
        numero_publicaciones||'  Nº de comentarios: '||numero_comentarios); 
    END IF; 
    EXCEPTION 
        WHEN no_existe THEN 
        RAISE_APPLICATION_ERROR(-20000,'No existe ese usuario'); 
end;
/

BEGIN 
datos_usuarios(0); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
    numero_publicaciones number; 
    numero_comentarios number; 
     
    existe number; 
    no_existe EXCEPTION; 
     
BEGIN 
    select (*) into existe from usuarios 
    where id_usuario = id_introducida; 
    IF existe = 0 THEN  
        RAISE no_existe; 
    ELSE 
        select count(*) into numero_publicaciones 
        from publicaciones where ID_USUARIO=id_introducida; 
        select count(*) into numero_comentarios 
        from comentarios where ID_USUARIO=id_introducida; 
        open datos; 
        fetch datos INTO v_datos; 
        DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
        numero_publicaciones||'  Nº de comentarios: '||numero_comentarios); 
    END IF; 
    EXCEPTION 
        WHEN no_existe THEN 
        RAISE_APPLICATION_ERROR(-20000,'No existe ese usuario'); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
    numero_publicaciones number; 
    numero_comentarios number; 
     
    existe number; 
    no_existe EXCEPTION; 
     
BEGIN 
    select (*) into existe from usuarios 
    where id_usuario = id_introducida; 
    IF existe IS NULL THEN  
        RAISE no_existe; 
    ELSE 
        select count(*) into numero_publicaciones 
        from publicaciones where ID_USUARIO=id_introducida; 
        select count(*) into numero_comentarios 
        from comentarios where ID_USUARIO=id_introducida; 
        open datos; 
        fetch datos INTO v_datos; 
        DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
        numero_publicaciones||'  Nº de comentarios: '||numero_comentarios); 
    END IF; 
    EXCEPTION 
        WHEN no_existe THEN 
        RAISE_APPLICATION_ERROR(-20000,'No existe ese usuario'); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
    numero_publicaciones number; 
    numero_comentarios number; 
     
    existe number; 
    no_existe EXCEPTION; 
     
BEGIN 
    select (*) into existe from usuarios 
    where id_usuario = id_introducida; 
    DBMS_OUTPUT.PUT_LINE(existe); 
     
    select count(*) into numero_publicaciones 
    from publicaciones where ID_USUARIO=id_introducida; 
    select count(*) into numero_comentarios 
    from comentarios where ID_USUARIO=id_introducida; 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
    numero_publicaciones||'  Nº de comentarios: '||numero_comentarios); 
    EXCEPTION 
        WHEN no_existe THEN 
        RAISE_APPLICATION_ERROR(-20000,'No existe ese usuario'); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
    numero_publicaciones number; 
    numero_comentarios number; 
    existe number; 
    no_existe EXCEPTION; 
BEGIN 
    select (*) into existe from usuarios 
    where id_usuario = id_introducida; 
    DBMS_OUTPUT.PUT_LINE(existe); 
    select count(*) into numero_publicaciones 
    from publicaciones where ID_USUARIO=id_introducida; 
    select count(*) into numero_comentarios 
    from comentarios where ID_USUARIO=id_introducida; 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
    numero_publicaciones||'  Nº de comentarios: '||numero_comentarios); 
    EXCEPTION 
        WHEN no_existe THEN 
        RAISE_APPLICATION_ERROR(-20000,'No existe ese usuario'); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
     
    numero_publicaciones number; 
    numero_comentarios number; 
     
    existe number; 
    no_existe EXCEPTION; 
BEGIN 
    select * into existe from usuarios 
    where id_usuario = id_introducida; 
    DBMS_OUTPUT.PUT_LINE(existe); 
    select count(*) into numero_publicaciones 
    from publicaciones where ID_USUARIO=id_introducida; 
    select count(*) into numero_comentarios 
    from comentarios where ID_USUARIO=id_introducida; 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
    numero_publicaciones||'  Nº de comentarios: '||numero_comentarios); 
    EXCEPTION 
        WHEN no_existe THEN 
        RAISE_APPLICATION_ERROR(-20000,'No existe ese usuario'); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
     
    numero_publicaciones number; 
    numero_comentarios number; 
     
    existe number; 
    no_existe EXCEPTION; 
BEGIN 
    select * into existe from usuario 
    where id_usuario = id_introducida; 
    DBMS_OUTPUT.PUT_LINE(existe); 
    select count(*) into numero_publicaciones 
    from publicaciones where ID_USUARIO=id_introducida; 
    select count(*) into numero_comentarios 
    from comentarios where ID_USUARIO=id_introducida; 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
    numero_publicaciones||'  Nº de comentarios: '||numero_comentarios); 
    EXCEPTION 
        WHEN no_existe THEN 
        RAISE_APPLICATION_ERROR(-20000,'No existe ese usuario'); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
     
    numero_publicaciones number; 
    numero_comentarios number; 
     
    existe number; 
    no_existe EXCEPTION; 
BEGIN 
    select * into existe from usuarios 
    where id_usuario = id_introducida; 
    DBMS_OUTPUT.PUT_LINE(existe); 
    select count(*) into numero_publicaciones 
    from publicaciones where ID_USUARIO=id_introducida; 
    select count(*) into numero_comentarios 
    from comentarios where ID_USUARIO=id_introducida; 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
    numero_publicaciones||'  Nº de comentarios: '||numero_comentarios); 
    EXCEPTION 
        WHEN no_existe THEN 
        RAISE_APPLICATION_ERROR(-20000,'No existe ese usuario'); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
     
    numero_publicaciones number; 
    numero_comentarios number; 
     
    existe number; 
    no_existe EXCEPTION; 
BEGIN 
    select count(*) into existe from usuarios 
    where id_usuario = id_introducida; 
     
    DBMS_OUTPUT.PUT_LINE(existe); 
    select count(*) into numero_publicaciones 
    from publicaciones where ID_USUARIO=id_introducida; 
    select count(*) into numero_comentarios 
    from comentarios where ID_USUARIO=id_introducida; 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
    numero_publicaciones||'  Nº de comentarios: '||numero_comentarios); 
    EXCEPTION 
        WHEN no_existe THEN 
        RAISE_APPLICATION_ERROR(-20000,'No existe ese usuario'); 
end; 

/

BEGIN 
datos_usuarios(5); 
end;
/

BEGIN 
datos_usuarios(0); 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
     
    numero_publicaciones number; 
    numero_comentarios number; 
     
    existe number; 
    no_existe EXCEPTION; 
BEGIN 
    select count(*) into existe from usuarios 
    where id_usuario = id_introducida; 
     
    IF existe = 0 THEN  
        RAISE no_existe; 
    ELSE 
    DBMS_OUTPUT.PUT_LINE(existe); 
    select count(*) into numero_publicaciones 
    from publicaciones where ID_USUARIO=id_introducida; 
    select count(*) into numero_comentarios 
    from comentarios where ID_USUARIO=id_introducida; 
    open datos; 
    fetch datos INTO v_datos; 
    DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
    numero_publicaciones||'  Nº de comentarios: '||numero_comentarios); 
    END IF; 
     
    EXCEPTION 
        WHEN no_existe THEN 
        RAISE_APPLICATION_ERROR(-20000,'No existe ese usuario'); 
end;
/

BEGIN 
datos_usuarios(0); 
end;
/

BEGIN 
datos_usuarios(99); 
end; 

/

BEGIN 
datos_usuarios(5); 
end; 

/

Declare 
maximo NUMBER; 
Begin 
SELECT MAX(ID) into maximo from comentarios; 
CREATE VIEW (maximo) AS Maximo; 
end;
/

Declare 
maximo NUMBER; 
Begin 
SELECT MAX(ID) into maximo from comentarios; 
CREATE OR REPLACE VIEW (''||maximo) AS Maximo from dual; 
end;
/

Declare 
maximo NUMBER; 
Begin 
SELECT MAX(ID) into maximo from comentarios; 
CREATE OR REPLACE VIEW pepe AS Maximo from dual; 
end;
/

Begin 
CREATE OR REPLACE VIEW Prueba AS SELECT 
    ID_USUARIO FROM usuarios; 
end; 

/

Begin 
CREATE VIEW Prueba AS SELECT 
    ID_USUARIO FROM usuarios; 
end;
/

Begin 
CREATE OR REPLACE VIEW Prueba AS SELECT 
    * FROM usuarios; 
end;
/

CREATE OR REPLACE VIEW Prueba AS  
SELECT * FROM usuarios;

Begin 
CREATE OR REPLACE VIEW Prueba AS  
SELECT * FROM usuarios; 
end;
/

CREATE OR REPLACE PROCEDURE datos_usuarios 
(id_introducida IN NUMBER) 
AS 
    CURSOR datos IS 
    SELECT * from Usuarios  
    where ID_USUARIO=id_introducida; 
    v_datos datos%ROWTYPE; 
     
    numero_publicaciones number; 
    numero_comentarios number; 
     
    existe number; 
    no_existe EXCEPTION; 
BEGIN 
    select count(*) into existe from usuarios 
    where id_usuario = id_introducida; 
     
    IF existe = 0 THEN  
        RAISE no_existe; 
    ELSE 
        select count(*) into numero_publicaciones 
        from publicaciones where ID_USUARIO=id_introducida; 
        select count(*) into numero_comentarios 
        from comentarios where ID_USUARIO=id_introducida; 
        open datos; 
        fetch datos INTO v_datos; 
        DBMS_OUTPUT.PUT_LINE('Nombre: '||v_datos.nombre||'  Nº de Publicaciones: '|| 
        numero_publicaciones||'  Nº de comentarios: '||numero_comentarios); 
    END IF; 
     
    CREATE OR REPLACE VIEW Prueba AS  
    SELECT * FROM usuarios; 
     
    EXCEPTION 
        WHEN no_existe THEN 
        RAISE_APPLICATION_ERROR(-20000,'No existe ese usuario'); 
end;
/

Select * from Usuarios;

Select * from Publicaciones;

Select * from Videojuego;

Select * from Premio;

Select * from Premios;

Select * from Videojuego;

Select * from Premios;

Select * from Videojuego;

Select * from desarrolladora;

Select * from Desarrolla;

Select * from Videojuego;

Select * from Desarrolla;

Select * from desarrolladora;

insert into Desarrolla values('Valve Corporation',6);

Select * from desarrolladora;

Select * from Premios;

Select * from Videojuego;

Select * from Desarrolla;

SELECT NOMBRE.Premios, NOMBRE.Videojuego, NOMBRE.desarrolladora 
FROM Premios, Videojuego, desarrolladora 
WHERE ID_VIDEOJUEGO.Premios = ID.Videojuego and 
ID_VIDEOJUEGO.Desarrolla = ID.Videojuego;

SELECT NOMBRE.Premios, NOMBRE.Videojuego, NOMBRE.desarrolladora 
FROM P Premios,V Videojuego,D desarrolladora 
WHERE ID_VIDEOJUEGO.Premios = ID.Videojuego and 
ID_VIDEOJUEGO.Desarrolla = ID.Videojuego;

SELECT NOMBRE.Premios, NOMBRE.Videojuego, NOMBRE.desarrolladora 
FROM  Premios, Videojuego, desarrolladora 
WHERE ID_VIDEOJUEGO.Premios = ID.Videojuego and 
ID_VIDEOJUEGO.Desarrolla = ID.Videojuego;

SELECT NOMBRE.Premios, NOMBRE.Videojuego, NOMBRE.desarrolladora 
FROM  Premios, Videojuego, desarrolladora 
WHERE Premios.ID_VIDEOJUEGO = Videojuego.ID and 
Desarrolla.ID_VIDEOJUEGO = Videojuego.ID;

SELECT NOMBRE.Premios, NOMBRE.Videojuego, NOMBRE.desarrolladora 
FROM Premios, Videojuego, desarrolladora 
WHERE ID_VIDEOJUEGO.Premios = ID.Videojuego and 
ID_VIDEOJUEGO.Desarrolla = ID.Videojuego;

SELECT NOMBRE.Premios, NOMBRE.Videojuego, NOMBRE.desarrolladora 
FROM Premios, Videojuego, desarrolladora 
WHERE ID_VIDEOJUEGO.Premios = ID.Videojuego;

Select * from Videojuego;

Select * from Premios;

Select * from desarrolladora;

Select * from Desarrolla;

SELECT P.nombre, V.nombre, d.NOMBRE 
FROM Premios P, Videojuego V, desarrolladora D 
WHERE ID_VIDEOJUEGO.Premios = ID.Videojuego;

SELECT P.nombre, V.nombre, d.NOMBRE 
FROM Premios P, Videojuego V, desarrolladora D 
WHERE ID_VIDEOJUEGO.Premios = ID.Videojuego;

SELECT P.nombre, V.nombre, d.NOMBRE 
-- FROM Premios P, Videojuego V, desarrolladora D 
-- WHERE P.ID_VIDEOJUEGO = V.ID;

SELECT P.nombre, V.nombre, d.NOMBRE 
FROM Premios P, Videojuego V, desarrolladora D 
WHERE P.ID_VIDEOJUEGO = V.ID;

SELECT P.nombre, V.nombre, d.NOMBRE 
FROM Premios P, Videojuego V, desarrolladora D 
WHERE P.ID_VIDEOJUEGO = V.ID and D.ID_VIDEOJUEGO = V.ID;

SELECT P.nombre, V.nombre, d.NOMBRE 
FROM Premios P, Videojuego V, desarrolladora D, desarrolla X 
WHERE P.ID_VIDEOJUEGO = V.ID and X.ID_VIDEOJUEGO = V.ID;

SELECT P.nombre, V.nombre, d.NOMBRE 
FROM Premios P, Videojuego V, desarrolladora D, desarrolla X 
WHERE P.ID_VIDEOJUEGO = V.ID and X.ID_VIDEOJUEGO = V.ID and 
d.ID_VIDEOJUEGO = V.ID;

SELECT P.nombre, V.nombre, d.NOMBRE 
FROM Premios P, Videojuego V, desarrolladora D, desarrolla X 
WHERE P.ID_VIDEOJUEGO = V.ID and X.ID_VIDEOJUEGO = V.ID and 
d.NOMBRE = x.NOMBRE_DESARROLLADORA;

SELECT P.nombre, V.nombre, d.NOMBRE 
FROM Premios P, Videojuego V, desarrolladora D, desarrolla X 
WHERE P.ID_VIDEOJUEGO = 6 and P.ID_VIDEOJUEGO = V.ID and X.ID_VIDEOJUEGO = V.ID and 
d.NOMBRE = x.NOMBRE_DESARROLLADORA;

CREATE OR REPLACE TRIGGER updt_num_publi 
AFTER INSERT ON Publicaciones 
FOR EACH ROW 
declare 
    v_num_pu number; 
BEGIN 
 select count(*) into v_num_pu FROM Publicaciones 
 where ID_USUARIO = :new.ID_USUARIO; 
 update usuarios set NUM_PUBLICACIONES = v_num_pu where ID_USUARIO = :new.ID_USUARIO; 
END; 
 

/

Select * from usuarios;

Select * from Publicaciones;

insert into Publicaciones values(21, 'El engaño de Fallout4', sysdate, 'Critica',  
'Es broma, fallout 4 mola mucho',1);

CREATE TABLE numero_publicaciones( 
    id_usuario NUMBER(6), 
    numero_pub NUMBER(6), 
    CONSTRAINT pk_numero_publicaciones PRIMARY KEY(id_usuario), 
    CONSTRAINT fk_numero_publicaciones FOREIGN KEY(id_usuario) REFERENCES Usuarios, 
);

CREATE TABLE numero_publicaciones( 
    id_usuario NUMBER(6), 
    numero_pub NUMBER(6), 
    CONSTRAINT fk_numero_publicaciones FOREIGN KEY(id_usuario) REFERENCES Usuarios, 
);

CREATE TABLE numero_publicaciones( 
    id_usuario NUMBER(6), 
    numero_pub NUMBER(6), 
    CONSTRAINT pk_numero_publicaciones PRIMARY KEY(id_usuario), 
    CONSTRAINT fk_numero_publicaciones FOREIGN KEY(id_usuario) REFERENCES Usuarios 
);

CREATE OR REPLACE TRIGGER updt_num_publi 
AFTER INSERT ON Publicaciones 
FOR EACH ROW 
declare 
    v_num_pu number; 
BEGIN 
 select count(*) into v_num_pu FROM Publicaciones 
 where ID_USUARIO = :new.ID_USUARIO; 
 insert into numero_publicaciones values(:new.ID_USUARIO, v_num_pu); 
END;
/

Select * from numero_publicaciones;

Select * from usuarios;

Select * from numero_publicaciones;

Select * from usuarios;

CREATE OR REPLACE TRIGGER updt_num_publi 
AFTER INSERT ON numero_publicaciones 
FOR EACH ROW 
declare 
BEGIN 
 update usuarios set NUM_PUBLICACIONES= :new.NUMERO_PUB	where ID_USUARIO=:new.ID_USUARIO; 
END;
/

CREATE OR REPLACE TRIGGER updt_num_publi2 
AFTER INSERT ON numero_publicaciones 
FOR EACH ROW 
declare 
BEGIN 
 update usuarios set NUM_PUBLICACIONES= :new.NUMERO_PUB	where ID_USUARIO=:new.ID_USUARIO; 
END;
/

insert into Publicaciones values(21, 'El engaño de Fallout4', sysdate, 'Critica',  
'Es broma, fallout 4 mola mucho',1);

CREATE OR REPLACE TRIGGER updt_num_publi 
AFTER INSERT ON Publicaciones 
FOR EACH ROW 
declare 
    v_num_pu number; 
BEGIN 
 select count(*) into v_num_pu FROM Publicaciones 
 where ID_USUARIO = :new.ID_USUARIO; 
 insert into numero_publicaciones values(:new.ID_USUARIO, v_num_pu); 
END;
/

CREATE OR REPLACE TRIGGER updt_num_publi2 
AFTER INSERT ON numero_publicaciones 
FOR EACH ROW 
declare 
BEGIN 
 update usuarios set NUM_PUBLICACIONES= :new.NUMERO_PUB	where ID_USUARIO=:new.ID_USUARIO; 
END;
/

insert into Publicaciones values(21, 'El engaño de Fallout4', sysdate, 'Critica',  
'Es broma, fallout 4 mola mucho',1);

Select * from numero_publicaciones;

insert into Publicaciones values(21, 'El engaño de Fallout4', sysdate, 'Critica',  
'Es broma, fallout 4 mola mucho',1);

CREATE OR REPLACE TRIGGER updt_num_publi2 
BEFORE INSERT ON numero_publicaciones 
FOR EACH ROW 
declare 
BEGIN 
 update usuarios set NUM_PUBLICACIONES= :new.NUMERO_PUB	where ID_USUARIO=:new.ID_USUARIO; 
END;
/

CREATE OR REPLACE TRIGGER updt_num_publi 
BEFORE INSERT ON Publicaciones 
FOR EACH ROW 
declare 
    v_num_pu number; 
BEGIN 
 select count(*) into v_num_pu FROM Publicaciones 
 where ID_USUARIO = :new.ID_USUARIO; 
 insert into numero_publicaciones values(:new.ID_USUARIO, v_num_pu); 
END;
/

CREATE OR REPLACE TRIGGER updt_num_publi2 
BEFORE INSERT ON numero_publicaciones 
FOR EACH ROW 
declare 
BEGIN 
 update usuarios set NUM_PUBLICACIONES= :new.NUMERO_PUB	where ID_USUARIO=:new.ID_USUARIO; 
END;
/

insert into Publicaciones values(21, 'El engaño de Fallout4', sysdate, 'Critica',  
'Es broma, fallout 4 mola mucho',1);

Select * from numero_publicaciones;

Select * from usuarios;

