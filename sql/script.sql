DROP TABLE automoveis;
CREATE TABLE automoveis(
            id_automovel BIGINT not null primary key GENERATED always AS IDENTITY (START WITH 1, INCREMENT by 1),
            placa varchar(15) not null,
            modelo varchar(50) not null,
            cor varchar(20) not null,
            preco decimal(10,2) not null
            );


INSERT INTO automoveis VALUES(default,'102-pcx', 'qualquer', 'Azul', 35450.00);