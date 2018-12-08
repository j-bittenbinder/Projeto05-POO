DROP TABLE automoveis;
CREATE TABLE automoveis(
            id_automovel BIGINT not null primary key GENERATED always AS IDENTITY (START WITH 1, INCREMENT by 1),
            placa varchar(15) not null,
            renavan varchar(15) not null,
            ano int not null,
            marca varchar(15) not null,
            modelo varchar(50) not null,
            cor varchar(20) not null,
            preco float not null
            );


INSERT INTO automoveis VALUES(default,'102-pcx', 'qualquer',2010, 'qualquer', 'qualquer', 'Azul', 35450.00);

DROP TABLE cliente;
CREATE TABLE cliente(
            id_cliente BIGINT not null primary key GENERATED always AS IDENTITY (START WITH 1, INCREMENT by 1),
            nome varchar(100) not null,
            cpf varchar(15) not null,
            email varchar(70) not null,
            telefone varchar(11) not null
            );

INSERT INTO cliente VALUES(default,'Joao', '123456789', 'joao@joao.com', '34596766');