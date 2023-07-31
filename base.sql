--nom de la base de donnée : canal

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

insert into Bouquets(nomBouquet, montant) values ('Tongasoa',25000);
insert into Bouquets(nomBouquet, montant) values ('ACCESS',35000);
insert into Bouquets(nomBouquet, montant) values ('EVASION',55000); 
insert into Bouquets(nomBouquet, montant) values ('ESSENTIAL',70000); 
insert into Bouquets(nomBouquet, montant) values ('ESSENTIAL+',100000); 

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
insert into Compo_Bouquet(idBouquets) values (1);
insert into Compo_Bouquet(idBouquets) values (2);
insert into Compo_Bouquet(idBouquets) values (3);
insert into Compo_Bouquet(idBouquets) values (4);
insert into Compo_Bouquet(idBouquets) values (5);


create table categorie_chaine
(
    idCatChaine serial primary key,
    categorie varchar(100)
);
insert into categorie_chaine(categorie) values('Sport');
insert into categorie_chaine(categorie) values('Anime');
insert into categorie_chaine(categorie) values('Movies Famiz');
insert into categorie_chaine(categorie) values('Movies Action');
insert into categorie_chaine(categorie) values('Movies Serie');
insert into categorie_chaine(categorie) values('Porno');
insert into categorie_chaine(categorie) values('Musique');
insert into categorie_chaine(categorie) values('Radio');
insert into categorie_chaine(categorie) values('Journal');

create table chaine
(
    idChaine serial primary key,
    idCatChaine int not null,
    chaine varchar(50)
);

alter table chaine add foreign key (idCatChaine) references categorie_chaine (idCatChaine);

insert into chaine(idCatChaine, Chaine) values (1,'chaine1');
insert into chaine(idCatChaine, Chaine) values (1,'chaine10');
insert into chaine(idCatChaine, Chaine) values (2,'chaine2');
insert into chaine(idCatChaine, Chaine) values (2,'chaine11');
insert into chaine(idCatChaine, Chaine) values (3,'chaine3');
insert into chaine(idCatChaine, Chaine) values (3,'chaine12');
insert into chaine(idCatChaine, Chaine) values (4,'chaine4');
insert into chaine(idCatChaine, Chaine) values (4,'chaine13');
insert into chaine(idCatChaine, Chaine) values (5,'chaine5');
insert into chaine(idCatChaine, Chaine) values (5,'chaine14');
insert into chaine(idCatChaine, Chaine) values (6,'chaine6');
insert into chaine(idCatChaine, Chaine) values (6,'chaine15');
insert into chaine(idCatChaine, Chaine) values (7,'chaine7');
insert into chaine(idCatChaine, Chaine) values (7,'chaine16');
insert into chaine(idCatChaine, Chaine) values (8,'chaine8');
insert into chaine(idCatChaine, Chaine) values (8,'chaine17');
insert into chaine(idCatChaine, Chaine) values (9,'chiane9');
insert into chaine(idCatChaine, Chaine) values (9,'chiane18');

create table ChaineCB
(
    idCCB serial primary key not null,
    idCB int not null,
    idChaine int not null,
    foreign key (idCB) references Compo_Bouquet(idCB),
    foreign key (idChaine) references Chaine(idChaine)
);
insert into ChaineCB(idCB, idChaine) values (1,18);
insert into ChaineCB(idCB, idChaine) values (2,17);
insert into ChaineCB(idCB, idChaine) values (3,16);
insert into ChaineCB(idCB, idChaine) values (4,15);
insert into ChaineCB(idCB, idChaine) values (5,14);
insert into ChaineCB(idCB, idChaine) values (1,13);
insert into ChaineCB(idCB, idChaine) values (2,12);
insert into ChaineCB(idCB, idChaine) values (3,11);
insert into ChaineCB(idCB, idChaine) values (4,10);
insert into ChaineCB(idCB, idChaine) values (5,9);
insert into ChaineCB(idCB, idChaine) values (1,8);
insert into ChaineCB(idCB, idChaine) values (2,7);
insert into ChaineCB(idCB, idChaine) values (3,6);
insert into ChaineCB(idCB, idChaine) values (4,5);
insert into ChaineCB(idCB, idChaine) values (5,4);
insert into ChaineCB(idCB, idChaine) values (1,3);
insert into ChaineCB(idCB, idChaine) values (2,2);
insert into ChaineCB(idCB, idChaine) values (3,1);

insert into Clients(nom,tel,cin,adresse,mail) values('Papa Lee',0340000110,123654789,'IVH 015 B Talatamaty','lee@gmail.com');
insert into Clients(nom,tel,cin,adresse,mail) values('Rudy Lee',0331200110,123654700,'IVH 111 B Talatamaty','rudy@gmail.com');
insert into Clients(nom,tel,cin,adresse,mail) values('Anrick Larsen',0340000021,105654789,'IVB 096 B Talatamaty','anrick@gmail.com');
insert into Clients(nom,tel,cin,adresse,mail) values('Jary Nomena',0327500110,123654789,'IVA 214 A Talatamaty','jary@gmail.com');
insert into Clients(nom,tel,cin,adresse,mail) values('Gasy Kely',0348609151,000654789,'IVB 118 A Soavimasoandro','gasy@gmail.com');

--tet

