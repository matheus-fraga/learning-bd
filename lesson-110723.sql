-- Aula 11/07
-- COMANDOS BÁSICOS
-- REGRA SQL 1: MAIUSCULO NOS COMANDOS
-- REGRA SQL 2: MINÚSCULO EM OUTROS VALORES

SHOW DATABASES; -- listar os bancos disponíveis

CREATE DATABASE empresa_db; -- cria um banco de dados com o nome especificado

USE empresa_db; -- seleciona o banco para rodar os comandos

SHOW TABLES; -- mostra as tabelas do banco selecionado

DROP DATABASE empresa_db; -- apaga TUDO (tabelas, dados, etc)

CREATE TABLE departamento(
	-- <nome da coluna> <tipo> <constraints>
    idDepartamento INTEGER PRIMARY KEY AUTO_INCREMENT,  -- PRIMARY KEY = chave primária, AUTO_INCREMENT = id automático
    nome VARCHAR(150) NOT NULL, -- NOT NULL = torna a coluna obrigatória
    descricao VARCHAR(200)
);

-- TIPOS DE DADOS
	-- INT/INTEGER = até 2 bilhões
    -- BIGINT = até 9 quintilhões
    -- DECIMAL = valores decimais exatos
    -- FLOAT = até 7 casas de precisão
    -- DOUBLE = até 15 casas de precisão
    -- VARCHAR = string
    -- TEXT = textos muito longos
    -- DATE = formato YYYY-MM-DD
    -- TIME = formato hh:mm:ss
    -- DATETIME = formato YYYY-MM-DD hh:mm:ss
    -- BLOB = arquivos (binary large object)