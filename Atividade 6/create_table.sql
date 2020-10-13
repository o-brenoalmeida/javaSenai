CREATE TABLE IF NOT EXISTS `mydb`.`Contato` (
  `id` INT NOT NULL,
  `endereco` VARCHAR(200) NOT NULL,
  `email` VARCHAR(200) NOT NULL,
  `celular` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `mydb`.`Dependente` (
  `id` INT NOT NULL,
  `nome` VARCHAR(200) NOT NULL,
  `dataNascimento` DATE NOT NULL,
  `cpf` CHAR(11) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `mydb`.`Dependente_has_Funcionario` (
  `Dependente_id` INT NOT NULL,
  `Funcionario_id` INT NOT NULL,
  `Funcionario_Funcao_id` INT UNSIGNED NOT NULL,
  `dataInclusao` DATE NOT NULL,
  PRIMARY KEY (`Dependente_id`, `Funcionario_id`, `Funcionario_Funcao_id`),
  INDEX `fk_Dependente_has_Funcionario_Funcionario1_idx` (`Funcionario_id` ASC, `Funcionario_Funcao_id` ASC) VISIBLE,
  INDEX `fk_Dependente_has_Funcionario_Dependente1_idx` (`Dependente_id` ASC) VISIBLE,
  CONSTRAINT `fk_Dependente_has_Funcionario_Dependente1`
    FOREIGN KEY (`Dependente_id`)
    REFERENCES `mydb`.`Dependente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Dependente_has_Funcionario_Funcionario1`
    FOREIGN KEY (`Funcionario_id` , `Funcionario_Funcao_id`)
    REFERENCES `mydb`.`Funcionario` (`id` , `Funcao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `mydb`.`Funcao` (
  `id` INT UNSIGNED NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `salario` FLOAT NOT NULL,
  `ativo` CHAR(1) NOT NULL DEFAULT N COMMENT 'N - Não\nS - Sim',
  PRIMARY KEY (`id`))
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `mydb`.`Funcionario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NOT NULL,
  `dataNascimento` DATE NOT NULL,
  `cpf` CHAR(11) NOT NULL,
  `Funcao_id` INT UNSIGNED NOT NULL,
  `Contato_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Funcao_id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_Funcionario_Funcao_idx` (`Funcao_id` ASC) VISIBLE,
  INDEX `fk_Funcionario_Contato1_idx` (`Contato_id` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionario_Funcao`
    FOREIGN KEY (`Funcao_id`)
    REFERENCES `mydb`.`Funcao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funcionario_Contato1`
    FOREIGN KEY (`Contato_id`)
    REFERENCES `mydb`.`Contato` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB