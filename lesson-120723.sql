-- Aula 12/07
-- CONSTRAINTS; CHAVE ESTRANGEIRA; INSERT; UPDATE; DELETE;

CREATE TABLE colaborador(
	idColaborador INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    salario DECIMAL(8, 2) NOT NULL, -- Oito dígitos e 2 de precisão
    telefone VARCHAR(20) UNIQUE NOT NULL,
    dataNascimento DATE NOT NULL,
    fkDepartamento INTEGER NOT NULL,
    FOREIGN KEY(fkDepartamento) -- Coluna que será a chave estrangeira
    REFERENCES departamento(idDepartamento) -- Chave primária da outra tabela
);

DROP TABLE colaborador; -- Apaga a tabela e todos os registros dela

SHOW TABLES;
DESCRIBE colaborador; -- Mostra a estrutura da tabela

CREATE TABLE endereco(
	idEndereco INTEGER PRIMARY KEY AUTO_INCREMENT,
    cidade VARCHAR(30) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    rua VARCHAR(40) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    -- Usa "Sem complemento" caso não definirmos um valor específico
    complemento VARCHAR(40) DEFAULT("Sem complemento"),
    fkColaborador INTEGER UNIQUE NOT NULL, -- Impede que o ID do colaborador seja repetido (1:1)
    FOREIGN KEY(fkColaborador)
    REFERENCES colaborador(idColaborador)
);

SHOW TABLES;
DESCRIBE endereco;

-- Listar dados de uma tabela
SELECT * FROM departamento;
SELECT * FROM colaborador;
SELECT * FROM endereco;

INSERT INTO departamento 
VALUES (NULL, "Recursos Humanos", NULL);

INSERT INTO departamento 
VALUES (NULL, "Marketing", "Faz marketing");

INSERT INTO colaborador
VALUES (NULL, "José Ferreira", "11111111111", 5500.0, "+5588972308020", "1980-01-28", 1);

INSERT INTO colaborador
VALUES (NULL, "João Carlos", "11111111112", 6000.0, "+5588972308021", "1980-01-28", 2);

INSERT INTO endereco 
VALUES (NULL, "Ubajara", "CE", "Rua X", "200", NULL, 1);

INSERT INTO endereco 
VALUES (NULL, "Tianguá", "CE", "Rua Y", "235", NULL, 3);
