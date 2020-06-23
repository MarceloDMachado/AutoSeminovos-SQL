--CREATE DATABASE AutoSeminovos;
--GO

--USE AutoSeminovos
--GO

--CREATE TABLE tblFuncionario (
--	IdFuncionario INT IDENTITY(1,1) PRIMARY KEY,
--	Nome VARCHAR(255) NOT NULL,
--	Telefone VARCHAR(16),
--	CPF varchar (11) UNIQUE NOT NULL,
--	Ativo BIT DEFAULT 1
--)
--GO

--INSERT INTO tblFuncionario (Nome, Telefone, CPF)
--	VALUES ('Marcelo D. Machado', '(11) 9 4933-5709', '01234567890')
--GO

--CREATE TABLE tblModelo (
--	IdModelo INT IDENTITY (1,1) PRIMARY KEY,
--	Descricao VARCHAR(255) NOT NULL UNIQUE,
--	Ativo BIT DEFAULT 1
--)
--GO

--INSERT INTO TBLMODELO (DESCRICAO)
--	VALUES ('Volkswagen Fusca')
--GO


--CREATE TABLE tblCarro (
--	IdCarro INT IDENTITY(1,1) PRIMARY KEY,
--	IdModelo INT FOREIGN KEY REFERENCES tblModelo(idModelo) NOT NULL,
--	Ano INT NOT NULL,
--	Placa VARCHAR (8) NOT NULL,
--	Valor DECIMAL (9,2) NOT NULL,
--	DataCadastro DATETIME DEFAULT GETDATE(),
--	Ativo bit default 1
--)
--GO

--INSERT INTO tblCarro(IdModelo, Ano, Placa, Valor)
--	VALUES (1, 1987,'ABC-1234', 30000.00)
--GO

--CREATE TABLE tblComissao (
--	IdComissao INT IDENTITY(1,1) PRIMARY KEY,
--	Descricao VARCHAR(255),
--	Fixo DECIMAL(9,2),
--	Percentual DECIMAL (4,2),
--	DataCadastro DATETIME DEFAULT GETDATE(),
--	InicioVigencia DATE NOT NULL,
--	TerminoVigencia DATE NOT NULL,
--	Especial BIT DEFAULT 0,
--	Ativo BIT DEFAULT 1
--)
--GO

--INSERT INTO tblComissao (Descricao, Fixo, Percentual, InicioVigencia, TerminoVigencia)
--	VALUES ('JUNHO/2020', 150.00, 0.05, '01/06/2020', '30/06/2020')
--GO

--CREATE TABLE tblVenda (
--	IdVenda INT IDENTITY(1,1) PRIMARY KEY,
--	IdFuncionario INT FOREIGN KEY REFERENCES tblFuncionario(IdFuncionario) NOT NULL,
--	IdCarro INT FOREIGN KEY REFERENCES tblCarro(IdCarro) NOT NULL,
--	IdComissao INT FOREIGN KEY REFERENCES tblComissao(IdComissao) NOT NULL,
--	DataVenda DATETIME DEFAULT GETDATE()
--)
--GO
