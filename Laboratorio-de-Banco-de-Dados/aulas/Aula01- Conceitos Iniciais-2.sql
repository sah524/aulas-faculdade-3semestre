use aula01;

-- criando a tabela(entidade) e atribuindo os atributos
create table autor(
    ID int primary key auto_increment,
    nome varchar (255) not null
    
);

-- inserindo dados na tabela
insert into autor (nome)
values ('Tais') ,("Yasmim");

-- 
select * from autor;

create table livro(
   ISBN varchar(13) primary key,
   titulo varchar(200) not null,
   ano int,
   autorID int not null,
   constraint autorid_fk
   foreign key (autorID) references Autor(ID) -- obrigatório
   on update cascade
   on delete restrict
    
);

insert into livro (ISBN , titulo , autorID)
values ('1111111542111', 'Não sei' , 1),
('222222451544' , "100 dias de Códigos" , 2);

select * from livro;

insert into livro (ISBN , titulo, ano,  autorID)
values ('458715425471', 'Harry Potter', 2025 ,3);




