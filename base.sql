--test
--nom de la base de donnée : canal
create database canal;
use canal;

create table Clients
(
    idClients int auto_increment primary key,
    nom varchar(60) not null,
    tel int not null,
    cin int not null,
    adresse varchar(100),
    mail varchar(35)
);

create table Bouquets
(
    idBouquets int auto_increment primary key,
    nomBouquet varchar(100),
    montant float
);

insert into Bouquets values (null,'Tongasoa',25000);
insert into Bouquets values (null,'ACCESS',35000);
insert into Bouquets values (null,'EVASION',55000); 
insert into Bouquets values (null,'ESSENTIAL',70000); 
insert into Bouquets values (null,'ESSENTIAL+',100000); 

create table Abonnement
(
    idAbonnement int auto_increment primary key,
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
    idCB int auto_increment primary key,
    idBouquets int not null,
    foreign key (idBouquets) references Bouquets(idBouquets)
);
insert into Compo_Bouquet values (null,1);
insert into Compo_Bouquet values (null,2);
insert into Compo_Bouquet values (null,3);
insert into Compo_Bouquet values (null,4);
insert into Compo_Bouquet values (null,5);


create table categorie_chaine
(
    idCatChaine int auto_increment primary key,
    categorie varchar(100)
);
insert into categorie_chaine values(null,'Sport');
insert into categorie_chaine values(null,'Anime');
insert into categorie_chaine values(null,'Movies Famiz');
insert into categorie_chaine values(null,'Movies Action');
insert into categorie_chaine values(null,'Movies Serie');
insert into categorie_chaine values(null,'Porno');
insert into categorie_chaine values(null,'Musique');
insert into categorie_chaine values(null,'Radio');
insert into categorie_chaine values(null,'Journal');

create table chaine
(
    idChaine int auto_increment primary key,
    idCatChaine int not null,
    chaine varchar(50)
);

alter table chaine add foreign key (idCatChaine) references categorie_chaine (idCatChaine);

insert into chaine(idChaine,idCatChaine, Chaine) values (null,1,'chaine1');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,1,'chaine10');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,2,'chaine2');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,2,'chaine11');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,3,'chaine3');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,3,'chaine12');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,4,'chaine4');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,4,'chaine13');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,5,'chaine5');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,5,'chaine14');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,6,'chaine6');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,6,'chaine15');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,7,'chaine7');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,7,'chaine16');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,8,'chaine8');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,8,'chaine17');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,9,'chiane9');
insert into chaine(idChaine,idCatChaine, Chaine) values (null,9,'chiane18');

create table ChaineCB
(
    idCCB int auto_increment primary key,
    idCB int not null,
    idChaine int not null,
    foreign key (idCB) references Compo_Bouquet(idCB),
    foreign key (idChaine) references Chaine(idChaine)
);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,1,18);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,2,17);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,3,16);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,4,15);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,5,14);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,1,13);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,2,12);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,3,11);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,4,10);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,5,9);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,1,8);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,2,7);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,3,6);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,4,5);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,5,4);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,1,3);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,2,2);
insert into ChaineCB(idCCB,idCB, idChaine) values (null,3,1);

insert into Clients values(null,'Papa Lee',0340000110,123654789,'IVH 015 B Talatamaty','lee@gmail.com');
insert into Clients values(null,'Rudy Lee',0331200110,123654700,'IVH 111 B Talatamaty','rudy@gmail.com');
insert into Clients values(null,'Anrick Larsen',0340000021,105654789,'IVB 096 B Talatamaty','anrick@gmail.com');
insert into Clients values(null,'Jary Nomena',0327500110,123654789,'IVA 214 A Talatamaty','jary@gmail.com');
insert into Clients values(null,'Gasy Kely',0348609151,000654789,'IVB 118 A Soavimasoandro','gasy@gmail.com');

