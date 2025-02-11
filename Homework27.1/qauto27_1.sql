create database qauto27_1;

create table car_brands(
id int auto_increment primary key,
title varchar(255) not null);

create table car_models(
id int auto_increment primary key,
carBrandId int not null,
title varchar(255) not null,
foreign key(carBrandId) references car_brands(id));

create table users(
id int auto_increment primary key,
firstName varchar(255) not null,
lastName varchar(255) not null,
email varchar(255) not null unique,
password varchar(255) not null);

create table cars(
id int auto_increment primary key,
userID int not null,
foreign key(userId) references users(id),
carBrandId int not null,
foreign key(carBrandId) references car_brands(id),
carModelId int not null,
foreign key(carModelId) references car_models(id),
mileage int not null,
initialMilleage int not null);

insert into car_brands(title)
values
("Audi"),
("BMW"),
("Ford"),
("Porche"),
("Fiat");

insert into car_models(carBrandId, title)
values
("1","TT"),
("1", "R8"),
("1","Q7"),
("1","A6"),
("1","A8"),
("2","3"),
("2","5"),
("2","X5"),
("2","X6"),
("2","Z3"),
("3","Fiesta"),
("3","Focus"),
("3","Fusion"),
("3","Mondeo"),
("3","Sierra"),
("4","911"),
("4","Cayenne"),
("4","Panamera"),
("5","Palio"),
("5","Ducato"),
("5","Panda"),
("5","Punto"),
("5","Scudo");

insert into users(firstName, lastName, email, password)
values
("Lynn","Moffitt","LynnHMoffitt@dayrep.com","12345lynn"),
("Elizabeth","Chesley","ElizabethJChesley@teleworm.us","12345elizabeth"),
("Carolyn","Madrid","CarolynJMadrid@jourrapide.com","aifae0Shahn"),
("Ruby","Eaton","RubyJEaton@armyspy.com","poxee3eibiSae"),
("Ed","Miller","EdMMiller@jourrapide.com","Aephia8aim4"),
("Edie","Mujher","EdieMfgggler@gmail.com","rewqw124");

insert into cars(userId, carBrandId, carModelId, mileage, initialMilleage)
values
("1","1","2","120","100"),
("2","2","3","120","100"),
("3","3","4","120","100"),
("4","4","5","120","100"),
("5","5","7","120","100");
