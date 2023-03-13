-- CRIAR TABELA DO PROJETO FOLHA
CREATE DATABASE leafProject;

-- USAR O BANCO DE DADOS 
USE leafProject;

-- ********************************************* TABELA USUARIO *********************************************************
-- CRIAR A TABELA USUARIO
CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(40) NOT NULL,
    Sobrenome VARCHAR(60) NOT NULL,
    RG CHAR(15) NOT NULL,
    Telefone CHAR(15),
    Email VARCHAR(70) NOT NULL,
    Senha VARCHAR(70) NOT NULL
    );

-- INSERIR DADOS DA TABELA USUARIO
INSERT INTO usuario (Nome, Sobrenome, RG, Telefone, Email, Senha) VALUES
    ('Melissa', 'Perreira Santos', '26.465.287-7','(11)9554-73561','melissaperreirasantos@gmail.com', 11123456781112),
	('Bruno', 'Dias Silva', '27.135.116-0','(11)9156-41346','brunodiassilva@gmail.com', 'sadOThl61C'),
	('Maria', 'Guedes Bueno', '41.462.680-1','(11)9872-36541','mariaguedesbueno@gmail.com', 'yURuATHJA5'),
	('Lucas', 'Lima da Almeida', '18.159.711-1', '(11)9775-32164','lucaslimadealmeida@gmail.com', '7zscsQ2hlb'),
	('Paulo', 'Rossa Limeiro', '21.896.076-1','(11)99823-65127','paulorossalimeiro@gmail.com', 'YA7taX5Png');

-- MOSTRAR OS DADOS DA TABELA USUARIO
SELECT  * FROM usuario;

-- MOSTRAR A DESCRIÇÃO DA TABELA USUARIO
DESC usuario;

-- ATUALIZAR A TABELA USUARIO PARA O RG ** ONDE O ID É 2
UPDATE usuario SET RG = '14.783.953-1' WHERE idUsuario = 2;

-- MOSTRAR OS DADOS DA TABELA USUARIO ONDE O NOME COMEÇA COM A LETRA "A"
SELECT * FROM usuario WHERE nome LIKE 'P%';    

-- EXCLUIR A TABELA USUARIO
DROP TABLE usuario;

-- ********************************************* TABELA EMPRESA *********************************************************
    
-- CRIAR A TABELA DA EMPRESA
CREATE TABLE empresa(
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    Razao_social VARCHAR(60) NOT NULL,
    CNPJ CHAR(20) NOT NULL,
    Telefone CHAR(15),
    Email VARCHAR(70),
    Senha VARCHAR(70)
);

-- INSERIR OS DADOS DA EMPRESA
INSERT INTO empresa (Razao_social, CNPJ, Telefone, Email, Senha) VALUES
    ('Assaí', '1112345678', '(11)9434-75567', 'supermercadoassai@gmail.com', '11123456781#@'),
    ('Extra Hortifruti', '11123456781112','(11)9434-75567', 'extra.hortfruti@gmail.com', '2212345678@'),
    ('Walmart', '22123456782212', '(11)9434-75567', 'walmart@hotmail.com', '3312345678#'),
    ('Lider Atacadista', '33123456783312', '(11)9434-75567' , 'lider.atacadista@gmail.com', '4412345678$'),
    ('CANTU VERDURAS', '4412345678441' , '(11)9434-75567','cantu.verduras@hotmail.com', '6612345678&');
    
-- MOSTRAR OS DADOS DA TABELA EMPRESA
SELECT  * FROM empresa;

-- MOSTRAR A DESCRIÇÃO DA TABELA EMPRESA
DESC empresa;

-- ATUALIZAR O EMAIL DA TABELA EMPRESA ONDE O ID É 2
UPDATE empresa SET Email = 'atualizando.email@gmail.com' WHERE idEmpresa = 2;

-- MOSTRAR OS DADOS DA TABELA EMPRESA ONDE A RAZÃO SOCIAL COMEÇA COM A LETRA "A"
SELECT * FROM empresa WHERE Razao_social LIKE 'A%';    

-- EXCLUIR A TABELA EMPRESA
DROP TABLE empresa;

-- ********************************************* TABELA PLANTA *********************************************************
-- CRIAR A TABELA PLANTA
CREATE TABLE planta (
	idPlanta INT PRIMARY KEY AUTO_INCREMENT,
    Especie_planta VARCHAR(40) NOT NULL,
    Desenvolvimento_dias INT,
    Area_ocupada INT NOT NULL,
    Tempo_Luz FLOAT
    );

-- INSERIR OS DADOS DAS PLANTAS
INSERT INTO planta (Especie_planta, Desenvolvimento_dias, Area_ocupada, Tempo_Luz) VALUES 
    ('Alface', 60, 30, 560),
    ('Taioba', 75, 50, 600),
    ('Repolho', 80, 40, 480);

-- MOSTRAR OS DADOS DA TABELA PLANTA
SELECT  * FROM planta;

-- MOSTRAR A DESCRIÇÃO DA TABELA PLANTA
DESC planta;

-- ATUALIZAR A ESPECIE DA PLANTA NA TABELA PLANTA ONDE O ID É 2
UPDATE planta SET Especie_planta = 'Alface Roxo' WHERE idPlanta = 2;

-- MOSTRAR OS DADOS DA TABELA PLANTA ONDE O ESPECIE DA PLANTA COMEÇA COM A LETRA "R"
SELECT * FROM planta WHERE Especie_planta LIKE 'R%';    

-- EXCLUIR A TABELA PLANTA
DROP TABLE planta;

-- ********************************************* TABELA SENSOR *********************************************************
 -- CRIAR A TABELA SENSOR
 CREATE TABLE sensor (
		IdSensor INT PRIMARY KEY AUTO_INCREMENT,
        tipo_de_sensor VARCHAR(40),
        condicao VARCHAR (40), 
        quantidade INT,
        constraint chkSensor_CND check (condicao in ('ativo', 'inativo', 'manutenção'))
);

-- INSERIR OS DADOS NA TABELA SENSOR
INSERT INTO sensor ( tipo_de_sensor, condicao, quantidade ) VALUES
    ('LDR 5mm', 'inativo', 1),
    ('LDR 5mm', 'ativo', 1),
    ('LDR 5mm', 'ativo', 1),
	('LDR 10mm', 'manutenção', 1);
    
-- TENTAR INSERIR UM VALOR ERRADO PARA TESTAR A CONSTRAINT
INSERT INTO sensor (condicao) VALUES
('não ativo');

-- MOSTRAR OS DADOS DA TABELA SENSOR
SELECT  * FROM sensor;

-- ATUALIZAR A TABELA SENSOR PARA O RG ** ONDE O ID É 2
UPDATE sensor SET tipo_de_sensor = 'LM35' WHERE idSensor = 1;

-- MOSTRAR OS DADOS DA TABELA SENSOR ONDE A CONDIÇÃO COMEÇA COM A LETRA "L"
SELECT * FROM sensor WHERE condicao LIKE 'L%';    
    
-- EXCLUIR A TABELA SENSOR
DROP TABLE sensor;

-- ********************************************* TABELA DADOS DO SENSOR *********************************************************
-- CRIAR A TABELA DADOS SENSOR
 CREATE  TABLE  dados_sensor (
		idDados INT  PRIMARY KEY AUTO_INCREMENT,
        resistência FLOAT,
        hora_captacao DATETIME DEFAULT CURRENT_TIMESTAMP
	);
    
-- INSERIR DADOS NA TABELA DADOS SENSOR
INSERT INTO dados_sensor (resistência) VALUES
     (234.05),
     (257.14),
     (187.02),
     (300.00); 
     
-- MOSTRAR OS DADOS DO SENSOR
 SELECT  *  FROM dados_sensor;
 
 -- MOSTRAR A DESCRIÇÃO DA TABELA DADOS SENSOR
  desc dados_sensor;
  
-- EXCLUIR A TABELA DADOS SENSOR
DROP TABLE dados_sensor;

-- ********************************************* TABELA ENDEREÇO *********************************************************
-- CRIAR A TABELA ENDERECO
CREATE TABLE endereco (
    idEndereco INT PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(40), 
    complemento VARCHAR(40),
    bairro VARCHAR(40),
    CEP CHAR(9),
    cidade VARCHAR(40),
    UF CHAR(2)
    );

-- INSERIR OS DADOS NA TABELA ENDERECO
INSERT INTO endereco (logradouro, complemento, bairro, CEP, cidade, UF) VALUES
			('Rua Agenor Faion','','Vila Bertini','13473510','Americana','SP'),
            ('Rua Abelardo Luz','','Jardim Mutinga','06463260','Baruer','SP'),
            ('Rua Acácio e Silva','','Stella Maris','06463760','Baruer','SP'),
            ('Avenida Majorca','','	Residencial Ibisa','16201076','Birigüi','SP'),
            ('Rua Alaska','','Jardim Klayton','16203034','Birigüi','SP'),
			('Avenida Aníbal Correia','','Parque Viana','06447010','Barueri','SP');

-- MOSTRAR OS DADOS DA TABELA ENDERECO
SELECT  * FROM endereco;

-- ATUALIZAR BAIRRO DA TABELA ENDEREÇO ONDE O ID É 2
UPDATE endereco SET bairro = 'Jabaquara' WHERE idEndereco = 2;

-- MOSTRAR OS DADOS DA TABELA ENDERECO ONDE O BAIRRO COMEÇA COM A LETRA "J"
SELECT * FROM endereco WHERE bairro LIKE 'J%';    

-- EXCLUIR TABELA ENDERECO
DROP TABLE endereco;