use aula01;

select timestampdiff(year, "1935-05-05", CURDATE())
;

DELIMITER $

create trigger idade_valida_insert
before insert
on Pessoa
FOR EACH ROW
BEGIN
IF timestampdiff(year, new.data_nasc , CURDATE()) < 5 THEN
    set new.data_nasc = date_sub(curdate(), interval 5 year);
elseif timestampdiff(year, NEW.data_nasc, CURDATE()) > 90 THEN 
     set new.data_nasc = date_sub(curdate(), interval 90 year);
	
end if;
END$
DELIMITER ;

insert into pessoa (CPF , nome,data_nasc, saldo) values
("9857458745" , "teste", "2025-05-12", 654),
("9289756548" , "teste Old", "1985-04-12", 0001);

select * from pessoa;


create function calc_multa(data_emprestimo timestamp,
						    data_devolucao timestamp,
                            valor_multa decimal(10,2))
                            returns decimal (10,2)
deterministic                            
BEGIN
DECLARE resultado decimal(10,2);
if timestampdiff(day, data_emprestimo, data_devolucao) <= 7 then
	set resultado = 0;
else
    set resultado = (timestampdiff, data_emprestimo , data_devolucao) - 7) * valor_multa;
end if;
return resultado;
END
DELIMITER;                            