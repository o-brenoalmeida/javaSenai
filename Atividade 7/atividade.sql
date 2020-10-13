-- criação de tabelas
CREATE TABLE IF NOT EXISTS `cursojava`.`Contato` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `endereco` VARCHAR(200) NOT NULL,
  `email` VARCHAR(200) NOT NULL,
  `celular` VARCHAR(13) NOT NULL,
  `data` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `cursojava`.`Dependente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NOT NULL,
  `dataNascimento` DATE NOT NULL,
  `cpf` CHAR(11) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `cursojava`.`Funcao` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `salario` FLOAT NOT NULL,
  `ativo` CHAR(1) NOT NULL DEFAULT 'N' COMMENT 'N - Não\nS - Sim',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `cursojava`.`Funcionario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NOT NULL,
  `dataNascimento` DATE NOT NULL,
  `cpf` CHAR(11) NOT NULL,
  `Funcao_id` INT UNSIGNED NOT NULL,
  `Contato_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Funcao_id`))
ENGINE = InnoDB;


-- INSERTS
-- cursojava.funcionario
INSERT INTO `funcionario` (`id`, `nome`, `dataNascimento`, `cpf`, `Funcao_id`, `Contato_id`) VALUES (NULL, 'Fulano de Tal', '2000-10-01', '00000000000', '1', '1');
INSERT INTO `funcionario` (`id`, `nome`, `dataNascimento`, `cpf`, `Funcao_id`, `Contato_id`) VALUES (NULL, 'Beltrano', '2010-01-11', '00000000000', '1', '1');
INSERT INTO `funcionario` (`id`, `nome`, `dataNascimento`, `cpf`, `Funcao_id`, `Contato_id`) VALUES (NULL, 'Ciclano', '2020-10-01', '00000000000', '1', '1');
INSERT INTO `funcionario` (`id`, `nome`, `dataNascimento`, `cpf`, `Funcao_id`, `Contato_id`) VALUES (NULL, 'Abêcêdê', '1990-10-01', '00000000000', '1', '1');
INSERT INTO `funcionario` (`id`, `nome`, `dataNascimento`, `cpf`, `Funcao_id`, `Contato_id`) VALUES (NULL, 'Lorem Ipsum', '1992-12-21', '00000000000', '1', '1');
INSERT INTO `funcionario` (`id`, `nome`, `dataNascimento`, `cpf`, `Funcao_id`, `Contato_id`) VALUES (NULL, 'Mohamed', '2020-10-01', '00000000000', '1', '1');

-- cursojava.funcao
INSERT INTO `funcao` (`id`, `nome`, `descricao`, `salario`, `ativo`) VALUES ('', 'Vendedor', 'Responsável pelas ações de vendas', '1000', 'S');
INSERT INTO `funcao` (`id`, `nome`, `descricao`, `salario`, `ativo`) VALUES ('', 'Gerente', 'Responsável pelos funcionários', '3000', 'S');
INSERT INTO `funcao` (`id`, `nome`, `descricao`, `salario`, `ativo`) VALUES ('', 'Caixa', 'Responsável pelas ações de caixa', '1500', 'S');
INSERT INTO `funcao` (`id`, `nome`, `descricao`, `salario`, `ativo`) VALUES ('', 'Serviço Geral', 'Responsável pelas ações de serviços gerais', '1000', 'S');
INSERT INTO `funcao` (`id`, `nome`, `descricao`, `salario`, `ativo`) VALUES ('', 'Segurança', 'Responsável pela segurança do estabelecimento', '2000', 'S');

-- cursojava.dependente
INSERT INTO `dependente` (`id`, `nome`, `dataNascimento`, `cpf`, `tipo`) VALUES ('', 'Filho de Fulano', '2020-10-05', '11111111111', 'Filho');
INSERT INTO `dependente` (`id`, `nome`, `dataNascimento`, `cpf`, `tipo`) VALUES ('', 'Filho de Fulano', '2020-10-05', '11111111111', 'Filho');
INSERT INTO `dependente` (`id`, `nome`, `dataNascimento`, `cpf`, `tipo`) VALUES ('', 'Filha de Ciclano', '2010-10-05', '11111111111', 'Filha');
INSERT INTO `dependente` (`id`, `nome`, `dataNascimento`, `cpf`, `tipo`) VALUES ('', 'Filha de Ciclano', '2010-10-05', '11111111111', 'Filha');
INSERT INTO `dependente` (`id`, `nome`, `dataNascimento`, `cpf`, `tipo`) VALUES ('', 'Filho de Fulano', '2000-10-05', '11111111111', 'Filho');

-- cursojava.contato
INSERT INTO `contato` (`id`, `endereco`, `email`, `celular`, `data`) VALUES (NULL, 'SQS 101', 'a@a.com', '8321903812', CURRENT_DATE());
INSERT INTO `contato` (`id`, `endereco`, `email`, `celular`, `data`) VALUES (NULL, 'SQS 102', 'b@b.com', '8321903812', CURRENT_DATE());
INSERT INTO `contato` (`id`, `endereco`, `email`, `celular`, `data`) VALUES (NULL, 'SQS 103', 'c@c.com', '8321903812', CURRENT_DATE());
INSERT INTO `contato` (`id`, `endereco`, `email`, `celular`, `data`) VALUES (NULL, 'SQS 104', 'd@d.com', '8321903812', CURRENT_DATE());
INSERT INTO `contato` (`id`, `endereco`, `email`, `celular`, `data`) VALUES (NULL, 'SQS 105', 'e@e.com', '8321903812', CURRENT_DATE());


-- SELECTS	
select * from cursojava.funcionario;
select * from cursojava.funcao;
select * from cursojava.dependente;
select * from cursojava.contato;

select id, nome from cursojava.funcionario;
select id, nome from cursojava.funcao;
select id, nome from cursojava.dependente;
select id, endereco from cursojava.contato;

-- UPDATE
UPDATE `contato` SET `endereco` = 'SQS 1' WHERE `contato`.`id` = 1;
UPDATE `dependente` SET `dataNascimento` = '2020-10-02' WHERE `dependente`.`id` = 2;
UPDATE `funcao` SET `descricao` = 'Responsável pelos funcionários do estabelecimento' WHERE `funcao`.`id` = 3;
UPDATE `funcionario` SET `dataNascimento` = '1988-10-01' WHERE `funcionario`.`id` = 3 AND `funcionario`.`Funcao_id` = 1;

-- DELETE
DELETE FROM `funcionario` WHERE `funcionario`.`id` = 4 AND `funcionario`.`Funcao_id` = 1";
DELETE FROM `funcao` WHERE `funcao`.`id` = 6;
DELETE FROM `dependente` WHERE `dependente`.`id` = 5;
DELETE FROM `contato` WHERE `contato`.`id` = 6