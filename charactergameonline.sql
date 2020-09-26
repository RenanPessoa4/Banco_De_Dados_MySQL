create database if not exists db_generarion_game_online;

use db_generarion_game_online;

create table if not exists tb_classe (
id int(10) primary key auto_increment,
classe varchar(30),
descricao text
);

create table if not exists tb_personagem (
id int(10) primary key auto_increment,
nome varchar(60),
classe varchar(60),
ataque int,
defesa int,
agilidade int,
inteligencia int
);

insert into tb_classe(classe, descricao) values
("Warrior", "Strength and defense"),
("Mage", "Magic of Power"),
("Hobbit", "Stealth specialist"),
("Archer", "Bows and arrows");

insert into tb_personagem (nome, classe, ataque, defesa, agilidade, inteligencia) values
('Delta', 'Warrior', 3500, 3500, 1500, 1500),
('Tango', 'Mage', 1000, 2000, 2000, 5000),
('Charlie', 'Hobbit', 2000, 1000, 5000, 2000),
('Alfa', 'Archer', 3500, 1000, 2000, 3500);

select * from tb_personagem where ataque >= 2000;
select * from tb_personagem where defesa >= 1000 and defesa <= 2000;
select * from tb_personagem where nome like 'T%';
select * from tb_classe;

