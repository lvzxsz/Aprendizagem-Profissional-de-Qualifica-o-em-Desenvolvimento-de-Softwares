/*Criando Index*/
alter table `bd_caso_estudos_vendas`.`tb_func`
add index `fk_func_dept_idx`(`func_depto`ASC);

/*Criando a chave estrangeira*/
alter table `bd_caso_estudos_vendas`.`tb_func`
add constraint `fk_func_depto`
foreign key (`func_depto`)
references `bd_caso_estudos_vendas`.`tb_depto`(`depto_cod`)
on delete no action
on update no action;

/*Criando Index e definindo que a compra é registrada para um funcionario*/
alter table `bd_caso_estudos_vendas`.`tb_compra`
add index `fk_compra_cli_idx` (`compra_cli_cod` asc);
/*Criando a chave estrangeira*/
alter table `bd_caso_estudos_vendas`.`tb_compra`
add constraint `fk_compra_cli`
foreign key (`compra_cli_cod`)
references `bd_caso_estudos_vendas`.`tb_cli`(`cli_cod`)
on delete no action
on update no action;

/*Criando index e definindo que um cliente realiza uma compra*/
alter table `bd_caso_estudos_vendas`.`tb_compra`
add index `fk_compra_cli_idx`(`compra_cli_cod` asc);
/*Criando a chave estrangeira*/
alter table `bd_caso_estudos_vendas`.`tb_compra`
add constraint `fk_compra_cli`
foreign key (`compra_cli_cod`)
references `bd_caso_estudos_vendas`.`tb_cli`(`cli_cod`)
on delete no action
on update no action 

/*Criando Index e definindo que um produto é definido por um fornecedor*/
alter table `bd_caso_estudos_vendas`.`tb_prod`
add index `fk_prod_forn_idx`(`prod_forn_cod` ASC);
/*Criando chave estrangeira*/
alter table `bd_caso_estudos_vendas`.`tb_prod`
add constraint `fk_prod_forn`
foreign key (`forn_prod_cod`)
references `bd_caso_estudos_vendas`.`tb_forn` (`forn_cod`)
on delete no action 
on update no action;
 
/*Criando Index e definindo que cliente possui muitos telefones*/
alter table `bd_caso_estudos_vendas`.`tb_cli_tel`
add index `fk_cli_tel_idx` (`tel_cli_cod` asc);
/*Adicionando chave estrangeira*/
 alter table `bd_caso_estudos_vendas`.`tb_cli_tel`
 add constraint `fk _cli_tel`
 foreign key (`tel_cli_cod`)
 references `bd_caso_estudos_vendas`.`tb_cli`(`cli_cod`)
 on delete no action
 on update no action;