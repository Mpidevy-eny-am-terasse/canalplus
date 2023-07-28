--nom de la base de donnée : canal

<<<<<<< HEAD
create table Clients
(
    idClients SERIAL PRIMARY KEY not null,
    nom varchar(60) not null,
    tel int not null,
    cin int not null,
    adresse varchar(100)
);

create table Bouquets
(
    idBouquets serial primary key not null,
    nomBouquet varchar(100),
    montant float,
    idCB int not null,
    foreign key idCB references Compo_Bouquet(idCB);
);
=======
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
>>>>>>> 4d54f31928c35c9e0a568309c64d99b9b5479629

