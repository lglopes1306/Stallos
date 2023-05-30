create table Endereco_Integracao(
 idEnderecoIntegracao int identity(1,1) primary key,
 idEndereco INT,
 dsUF varchar(50) null,
 nmCidade varchar(100) null,
 nmBairro varchar(50) null,
 nmLogradouro varchar(100) null,
 dsComplemento varchar(100) null,
 constraint enderecointegracao_fk_endereco foreign key (idEndereco) references Endereco(idEndereco)
 );