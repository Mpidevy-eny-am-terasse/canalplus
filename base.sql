--nom de la base de donnée : canal

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