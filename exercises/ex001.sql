CREATE DATABASE cadastro 
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

CREATE TABLE pessoas (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M', 'F'), 
    peso DECIMAL(5, 2), 
    altura DECIMAL(3,2), 
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
) DEFAULT CHARSET = utf8mb4;

INSERT INTO pessoas
	(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
	(DEFAULT, 'Ana', '2004-10-21', 'F', '58.9', '1.69', DEFAULT),
    (DEFAULT, 'Pedro', '2008-05-17', 'M', '102.1', '1.75', 'Irlanda'),
    (DEFAULT, 'Juliana', '1975-12-22', 'F', '49.9', '1.45', 'EUA');