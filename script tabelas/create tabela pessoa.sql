create table Pessoa(
idPessoa integer identity(1,1) Primary key, 
flNatureza int not null,
dsDocumento varchar(20) not null,
nmPrimeiro varchar(100) not null,
nmSegundo varchar(100) not null,
dtRegistro date null
);