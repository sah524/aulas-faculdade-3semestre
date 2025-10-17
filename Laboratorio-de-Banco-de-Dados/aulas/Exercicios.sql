use biblioteca;

set autocommit = 0;

select * from Autor;
select * from Livro;

start transaction;

insert into livro (isbn, titulo, ano, autorid) values 
("99988877732","livro1",2012,3),
("22255588878","livro2",2001,3);

commit;

start transaction;

rollback;

 
--      __  ATIVIDADES __

-- 01)Retorne as pessoas que estão com saldo 0

create view saldozero as 
select nome 
from pessoa
where saldo = 0;

select * from saldozero;

-- 02)Retorne as pessoas menores de idade

create view menorIdade as 
select nome
from pessoa
where data_nasc > "2007-10-10";

 select * from menorIdade;

-- 03)Retorne os nomes dos autores e dos livros

create view autorlivro as
select l.titulo, a.nome
from autor a 
inner join livro l on l.autorID = a.ID;

select * from autorlivro;

-- 04) Retorne os nomes dos autores e dos livros

create view pessoalivro as
select l.titulo, p.nome
from pessoa p
inner join emprestimo e on e.pessoa_id = p.ID 
inner join livro l on e.ISBN_livro = l.ISBN;

select * from pessoalivro;

-- 05) Mostre quantos livros foram escritos por autor, apenas autores que escreveram dois ou mais livros , ordene pelos autores que escreveram mais livros 

create view qtdlivros as
select l.titulo, a.autor, count(*)
from autor a
inner join livro l on l.autorID = a.ID
where livro ;



-- 06) Apresente quantos livros foram alugados por pessoa apenas nos anos de 2024 e 2026, ordene por mais alugou livros

-- 07)Mostre quanto cada cliente tem que pagar e quanto do saldo sobrará caso realize o pagamento
-- select p.ID , p.nome , l*( case 
-- 	when timestampdiff(day, data_emprestimo , data_devolucao) < 7 
 --    then 0
-- 	else timestampdiff(day, data_emprestimo , data_devolucao) - 7 
-- 		end) 
-- 	end) as atraso

-- from Emprestimo e ;




create user atendente@localhost identified by "12345678";

grant select on biblioteca.autor to atendente@localhost;

create view vw_dados as 
select 
 nome as nome_completo
 from autor;
 
 grant select on biblioteca.vw_dados to atendente@localhost;
 
 

select * from autor;



create user gerente@localhost identified by "12345678";

grant all on biblioteca.* to gerente@localhost;

create view qtdlivros as
select l.titulo, a.autor, count(*)
from autor a
inner join livro l on l.autorID = a.ID
where livro ;

