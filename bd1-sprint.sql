CREATE DATABASE leafproject;
USE leafproject;

CREATE TABLE Usuario (
    ID_Usuário INT PRIMARY KEY AUTO_INCREMENT, 
	Nome VARCHAR(60),
    Sobrenome VARCHAR(60),
	Telefone VARCHAR(12),
    RG CHAR(15),
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(20) NOT NULL
);

drop table usuario;
CREATE TABLE Empresa (
    ID_Usuário INT PRIMARY KEY AUTO_INCREMENT, 
	Razao_Social VARCHAR(60),
	Telefone VARCHAR(12),
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(12) NOT NULL,
	CNPJ CHAR(20) NOT NULL
);

drop table usuario;
CREATE TABLE Planta (
	ID_Planta INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(40),
    Desenvolvimento_dias INT,
    Area_ocupada  INT,
    Tempo_Luz FLOAT
    );
    
    CREATE TABLE Sensor (
		IdSensor INT PRIMARY KEY AUTO_INCREMENT,
        Tipo_de_sensor VARCHAR(40),
        Condicao VARCHAR (40),
        Quantidade INT
	);
    
    CREATE TABLE Endereco (
    ID_endereço INT PRIMARY KEY AUTO_INCREMENT,
    Logradouro VARCHAR(40), 
    Complemento VARCHAR(40),
    Bairro VARCHAR(40),
    CEP CHAR(9),
    Cidade VARCHAR(40),
    UF CHAR(2)
    );
    
    
      INSERT INTO Empresa (Razao_Social, Telefone, Email, Senha, CNPJ) VALUE
    ('SUPERMERCADOS BH', 1112345678, 'SUPERMERCADOSBH@gmail.com', '1112345678!', 11123456781112),
    ('EXTRAFRUTI', 2212345678, 'EXTRAFRUTI@gmail.com', '2212345678@', 22123456782212),
    ('HORTIFRUTIGRANJEIROS', 3312345678, 'HORTIFRUTIGRANJEIROS@hotmail.com', '3312345678#', 33123456783312),
    ('LIDER ATACADISTA', 4412345678 , 'LIDER ATACADISTA@gmail.com', '4412345678$', 4412345678441),
    ('GIRUS MERCANTIL LTDA', 5512345678 , 'GIRUS MERCANTILLTDA@hotmail.com', '5512345678%', 5512345678551),
    ('CANTU VERDURAS', 6612345678 , 'CANTUVERDURAS@hotmail.com', '6612345678&', 6612345678661);
    
    
    INSERT INTO Usuario (Nome, Sobrenome, Telefone, RG, Email, Senha) VALUE
    ('Erika', 'Silva Santos', '8936307464', '29.942.355-4','erika123@gmail.com', 11123456781112),
	('Roberto', 'Galvão', '8928870228', '27.135.116-0','erika123@gmail.com', 'sadOThl61C'),
	('Lucca', 'da Paz', '89981848271', '41.462.680-1','LuCCa@gmail.com', 'yURuATHJA5'),
	('Maya', 'Carla Rosa Campos', '1135797463', '18.159.711-1','Maya321xx@gmail.com', '7zscsQ2hlb'),
	('Isis', 'Esther Corte Reals', ' 12994645627', '21.896.076-1','isis.cortereal@gmail.com', 'YA7taX5Png'),
    ('Tiago', 'Vinicius Bryan Vieira', ' 1227789470', '39.133.222-3','vieira.almaquinas@gmail.com', 'GmITnnGtFg');

        
    INSERT INTO Planta (Nome, Desenvolvimento_dias, Area_ocupada,  Tempo_Luz)   VALUES 
    ('Alface', 60, 30, 560),
    ('Taioba', 75, 50, 600),
    ('Repolho', 80, 40, 480);
    
    INSERT INTO Sensor ( Tipo_de_sensor, Condicao, Quantidade ) VALUES
    ('LDR 5mm', 'ligado', 1);
    
    INSERT INTO Endereco (Logradouro, Complemento, Bairro, CEP, Cidade, UF) VALUES
			('Rua Agenor Faion','','Vila Bertini','13473510','Americana','SP'),
            ('Rua Abelardo Luz','','Jardim Mutinga','06463260','Baruer','SP'),
            ('Rua Acácio e Silva','','Stella Maris','06463760','Baruer','SP'),
            ('Avenida Majorca','','	Residencial Ibisa','16201076','Birigüi','SP'),
            ('Rua Alaska','','Jardim Klayton','16203034','Birigüi','SP'),
			('Avenida Aníbal Correia','','Parque Viana','06447010','Barueri','SP');
    
    SELECT * FROM Usuario;
    SELECT * FROM Planta;
	SELECT * FROM Sensor;
	SELECT * FROM Endereco;
    
    desc Usuario;
    desc Planta;
    desc Sensor;
    desc Endereco;
    
    update usuario set rg = '14.783.953-1' where ID_Usuário = 2;
    
    select * from endereco where bairro like 'J%';
    
    
