CREATE TABLE "usuarios" (
  "id_Usuario" varchar2 PRIMARY KEY,
  "nombre_usuario" varchar2,
  "correo_electronico" varchar2 UNIQUE,
  "contrasenha" varchar2,
  "fecha_registro" date
);

CREATE TABLE "post" (
  "id_posteo" varchar2 PRIMARY KEY,
  "id_Usuario" varchar2,
  "titulo_post" varchar2,
  "contenido_posteo" varchar2,
  "fecha_creacion" date
);

CREATE TABLE "seguidores" (
  "id_seguidor" varchar2 PRIMARY KEY,
  "seguidor_id" varchar2,
  "seguido_id" varchar2
);

ALTER TABLE "post" ADD FOREIGN KEY ("id_Usuario") REFERENCES "usuarios" ("id_Usuario");

ALTER TABLE "seguidores" ADD FOREIGN KEY ("seguidor_id") REFERENCES "usuarios" ("id_Usuario");

ALTER TABLE "seguidores" ADD FOREIGN KEY ("seguido_id") REFERENCES "usuarios" ("id_Usuario");
