/*criando novo usuario no servidor*/
create user 'lara.rodrigues'@'localhost' identified by '123456';
create user 'izabella.oliveira'@'localhost' identified by '123456';
create user 'luane.gabrielly'@'localhost' identified by '123456';
create user 'tiago.lima'@'localhost' identified by '123456';
create user 'daniel.gomes'@'localhost' identified by '123456';

/*aplicando permissão de consulta a todos os arquivos/banco no servidor*/
grant select 
on *.*
to danielgomes@localhost;
show databases
/*aplicando permissões de banco inserção em todas as tabelas do banco*/
grant insert
on bd_caso_estudo_vendas.*
to danielgomes@localhost;
/*aplicando permissão de banco de inserção e atualização em tabela definida*/
grant insert 
on bd_caso_estudo_vendas.tb_prod
to danielgomes@localhost;
grant
    select (cli_cod,cli_nome,cli_cpf),
    update (cli_end_cep)
on bd_caso_estudo_vendas.tb_cli
to danielgomes@localhost;
/**/
grant insert, update ,delete
on `bd_caso_estudo_vendas`.`tb_func`
to danielgomes@localhost;

revoke insert, update
on  `bd_caso_estudo_vendas`.`tb_func`
from danielgomes@localhost;

grant delete 
on `bd_caso_estudo_vendas`.`tb_func`
to danielgomes@localhost;

revoke select 
on `bd_caso_estudo_vendas`.`tb_func`
from danielgomes@localhost;

grant insert 
on `bd_caso_estudo_vendas`.`tb_func`
to danielgomes@localhost;