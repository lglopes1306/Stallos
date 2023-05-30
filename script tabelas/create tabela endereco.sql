create table Endereco_integracao(
 idEndereco INT identity(1,1) primary key,
 idPessoa int not null,
 dsCEP varchar(100) null,
 constraint endereco_fk_pessoa foreign key (idPessoa) references Pessoa(idPessoa)
 );