create database biblioteca;

use biblioteca; -- banco de dados padrão

-- criando a tabela(entidade) e atribuindo os atributos
create table Autor(
    ID int primary key auto_increment,
    nome varchar (255) not null
    
);

-- inserindo dados na tabela
insert into autor (nome) values ('Tais') ,("Yasmim");

-- visualizando os dados na tabela
select * from autor;

create table livro(
   ISBN decimal(13) primary key,
   titulo varchar(200) not null,
   ano smallint,
   autorID int not null,
   constraint autorid_fk -- para colocar apelido
   foreign key (autorID) references Autor(ID) -- obrigatório
   on update cascade -- Define o que acontece quando o registro referenciado é atualizado
   on delete restrict -- Define o que acontece quando o registro referenciado é excluído
    
);

insert into livro (ISBN , titulo ,ano, autorID)
values ('1111111542111', 'Algoritmos' , 2024,  1),
('222222451544' , "Bancos de Dados" ,2025, 1);

select * from livro;

create table Pessoa(

    ID int primary key auto_increment,
    CPF decimal(11) unique not null,
    nome varchar(255) not null,
    data_nasc date not null,
    saldo decimal(9,2) default 0.0
    
);

insert into pessoa(CPF, nome , data_nasc)
values('12345678901' , 'Tais' , '1589-12-12'),
('12345678902' , 'Yasmim' , '2006-04-08');


select id , cpf , nome , data_nasc, saldo
from pessoa;

insert into pessoa (cpf, nome , data_nasc , saldo)
values ('12345678903' , 'Jefferson' , '2005-04-01', 10000);


create table emprestimo(
	ID int primary key auto_increment,
	data_emp timestamp null null default current_timestamp, -- pegar o exato que o livro foi inserido
	data_dev timestamp,
    isbn_livro decimal(13) not null,
    id_pessoa int not null,
    foreign key (isbn_livro) references livro(ISBN),
	foreign key (id_pessoa) references pessoa(ID)
);

insert into emprestimo(isbn_livro, id_pessoa)
values ("1111111542111", 1);

select * from emprestimo;

