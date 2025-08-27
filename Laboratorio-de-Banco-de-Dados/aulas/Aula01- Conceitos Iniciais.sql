create database aula01; -- cria o banco de dados 

use aula01; -- banco de dados padrão

create table Pessoa(

    ID int primary key auto_increment,
    CPF varchar(11) unique not null,
    nome varchar(255) not null,
    data_nasc date not null,
    saldo float not null default 0.0
    
);

insert into pessoa(CPF, nome , data_nasc)
values('12345678901' , 'Tais' , '1589-12-12'),
('12345678902' , 'Yasmim' , '2006-04-08');

select id , cpf , nome , data_nasc, saldo
from pessoa;

insert into pessoa (cpf, nome , data_nasc , saldo)
values ('12345678903' , 'Jefferson' , '2005-04-01', 10000);


