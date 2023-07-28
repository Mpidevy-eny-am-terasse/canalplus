--nom de la base de donnée : canal

create table categorie_chaine
(
    idCatChaine serial primary key,
    categorie varchar(100)
);

create table chaine
(
    idChaine serial primary key,
    idCatChaine int not null,
    chaine varchar(50)
);

alter table chaine add foreign key (idCatChaine) references categorie_chaine (idCatChaine);