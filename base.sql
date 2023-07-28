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
    montant float
);

create table Abonnement
(
    idAbonnement serial primary key not null,
    date_debut date not null,
    date_fin date not null,
    prix float,
    idClients int,
    idBouquets int,
    FOREIGN KEY (idClients) REFERENCES Clients (idClients),
    foreign key (idBouquets) references Bouquets(idBouquets)

); 

create table Compo_Bouquet
(
    idCB serial primary key not null,
    idBouquets int not null,
    foreign key (idBouquets) references Bouquets(idBouquets)
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

create table ChaineCB
(
    idCCB serial primary key not null,
    idCB int not null,
    idChaine int not null,
    foreign key (idCB) references Compo_Bouquet(idCB),
    foreign key (idChaine) references Chaine(idChaine)
);
>>>>>>> 4d54f31928c35c9e0a568309c64d99b9b5479629

