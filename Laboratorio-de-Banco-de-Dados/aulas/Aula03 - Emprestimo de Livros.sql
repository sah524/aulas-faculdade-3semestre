-- utilizando o mesmo banco 
use Biblioteca;

-- inserindo mais autores  
insert into Autor (nome) values
("Rosa"), ("Lu");

select * from Autor;

-- inserindo  mais livros 
insert into Livro (ISBN, titulo, ano, autorId)
values ('6667778889991', 'Engenharia', 2020, 2),
('1223334445552', 'Teste de Software', 2020, 2),
('1334445556663', 'Humanismo', 2022, 3),
('1445556667774', 'WEB', 2022, 3);

select * from Livro;

insert into Pessoa (CPF, nome, data_nasc)
values ('12345678904', 'Ludmila', '2005-03-11'),
('12345678905', 'Sarah', '2005-12-13');

select * from Pessoa;

insert into Emprestimo (isbn_livro, id_pessoa)
values ('1223334445552', 2), ('1334445556663', 3), ('1445556667774', 3);

select * from Emprestimo;

delete from Emprestimo where isbn_livro = '2223334445556';
delete from Livro where autorId = 1;

update Emprestimo
set data_dev = now()  /* atualiza a devolução para o momento atual */
where id = 2;

update Emprestimo
set data_dev = current_timestamp() /* atualiza a devolução para o momento atual, igual o now, diferença semantica só */
where id = 3;
