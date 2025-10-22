use biblioteca;

set autocommit = 0;

select * from autor;
select * from livro;

start transaction;

insert into livro (ISBN , titulo, ano , autorID) values 
("888888888888", "Livro do ciclano vol.1", 2012, 3),
("777777777777", "Livro do ciclano vol.2", 2023, 3);

commit;

-- Quantidade de livros que cada pessa pegou
create view vw_qnt_livros_emprestados as 
select p.cpf , p.nome , count(e.id) as qnt_livros_emprestados 
from Pessoa p 
left join emprestimo e on p.id = e.pessoa_id
group by p.cpf
order by qnt_livros_emprestados desc