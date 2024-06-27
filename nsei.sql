create table `bd_caso_estudo_vendas`.`tb_forn`(
	`forn_cod` int not null,
    `forn_nome` varchar(60) null,
    `forn_tel` varchar (13) null,
    primary key (`forn_cod`)
);
create table `bd_caso_estudo_vendas`.`tb_depto`(
    `depto_cod` int not null primary key,
    `depto_desc` varchar(60) null
);
create table `bd_caso_estudo_vendas`.`tb_func`(
	`func_cod` int not null,
    `func_depto` int not null,
    `func_nome` varchar(60) null,
    `func_cpf` varchar(18) null
);
create 