CREATE DATABASE Leaf_Project;
USE Leaf_Project;

CREATE TABLE Usuário (
	ID_Usuário INT PRIMARY KEY AUTO_INCREMENT, 
    ID_Endereço FOREIGN KEY INT,
	Razao_Social VARCHAR(50),
	telefone VARCHAR(20),
	email VARCHAR(40) NOT NULL,
	senha VARCHAR(40) NOT NULL,
	cnpj INT NOT NULL
);

CREATE TABLE Planta (
	ID_Planta INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(40),
    Desenvolvimento VARCHAR(40),
    Area_ocupada VARCHAR(40),
    Tempo_Luz FLOAT
    );
    
    CREATE TABLE Sensor (
		IdSensor INT PRIMARY KEY AUTO_INCREMENT,
        Tipo_de_sensor VARCHAR(40),
        Condicao VARCHAR (40),
        Quantidade INT,
        Material VARCHAR(40)
	);
    
    CREATE TABLE Endereço (
    ID_endereço INT PRIMARY KEY AUTO_INCREMENT,
    Logradouro VARCHAR(40), 
    Complemento VARCHAR(40),
    Bairro VARCHAR(40),
    CEP CHAR(9),
    Cidade VARCHAR(40),
    UF CHAR(2)
    );
    
    