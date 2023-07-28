--nom de la base de donnée : canal

<<<<<<< HEAD
create table Clients
(
    idClients SERIAL PRIMARY KEY not null,
    nom varchar(60) not null,
    tel int not null,
    cin int not null,
    adresse varchar(100),
    mail varchar(35)
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

insert into Clients(nom,tel,cin,adresse,mail) values('Papa Lee',0340000110,123654789,'IVH 015 B Talatamaty','lee@gmail.com');
insert into Clients(nom,tel,cin,adresse,mail) values('Rudy Lee',0331200110,123654700,'IVH 111 B Talatamaty','rudy@gmail.com');
insert into Clients(nom,tel,cin,adresse,mail) values('Anrick Larsen',0340000021,105654789,'IVB 096 B Talatamaty','anrick@gmail.com');
insert into Clients(nom,tel,cin,adresse,mail) values('Jary Nomena',0327500110,123654789,'IVA 214 A Talatamaty','jary@gmail.com');
insert into Clients(nom,tel,cin,adresse,mail) values('Gasy Kely',0348609151,000654789,'IVB 118 A Soavimasoandro','gasy@gmail.com');
>>>>>>> 4d54f31928c35c9e0a568309c64d99b9b5479629

