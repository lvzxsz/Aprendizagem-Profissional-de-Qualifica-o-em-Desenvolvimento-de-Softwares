use `bd_caso_estudos_vendas`
/*Inserindo Rgistros nas tabelas*/
insert into `bd_caso_estudos_vendas`.`tb_depto` (depto_cod,depto_desc)
values (1,'vendas');
insert into `bd_caso_estudos_vendas`.`tb_depto` (depto_cod,depto_desc)
values (2,'administrativo');
insert into `bd_caso_estudos_vendas`.`tb_depto` (depto_cod,depto_desc)
values (3,'marketing');
insert into `bd_caso_estudos_vendas`.`tb_depto` (depto_cod,depto_desc)
values (4,'financeiro');
insert into `bd_caso_estudos_vendas`.`tb_depto` (depto_cod,depto_desc)
values (5,'pessoal');
/*Consultando Registros*/

select * from tb_depto