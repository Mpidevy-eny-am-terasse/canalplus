CREATE DATABASE test;
\c test;

CREATE TABLE users
(
    idUser SERIAL PRIMARY KEY not null,
    nom VARCHAR(50) not null,
    anneeNaissance int
);

INSERT INTO users (nom,anneeNaissance) VALUES ('anrick', 2003);
INSERT INTO users (nom,anneeNaissance) VALUES ('jagy', 1998);
