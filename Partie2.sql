--Dans la base de données webDevelopment, créer la table languages avec les colonnes : -- 
-- id (type INT, auto-incrémenté, clé primaire) language (type VARCHAR)--
CREATE TABLE `languages`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `languages`VARCHAR(40) NOT NULL
) ENGINE=InnoDB;
--Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :--
-- id (type INT, auto-incrémenté, clé primaire) tool (type VARCHAR)--
CREATE TABLE `tools`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `tool`VARCHAR(40) NOT NULL
) ENGINE=InnoDB;
--Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :--
--id (type INT, auto-incrémenté, clé primaire) name (type VARCHAR)--
--P2E3--
CREATE TABLE `frameworks`(
    `id` INT AUTO_INCREMENT,
    `name`VARCHAR(40) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;
--P2E4--
CREATE TABLE `libraries`(
    `id` INT AUTO_INCREMENT,
    `library`VARCHAR(40) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;
--Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :-- 
--id (type INT, auto-incrémenté, clé primaire) ideName (type VARCHAR)--
--P2E5--
CREATE TABLE `ide`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `ideName`VARCHAR(40) NOT NULL
) ENGINE=InnoDB;
--Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :--
--id (type INT, auto-incrémenté, clé primaire) name (type VARCHAR)--
--P2E6--
CREATE TABLE IF NOT EXISTS `frameworks `(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name`VARCHAR(40) NOT NULL
) ENGINE=InnoDB;
--Supprimer la table tools si elle existe.--
--P2E7--
DROP TABLE IF EXISTS `tools`;
--Supprimer la table libraries.--
--P2E8--
DROP TABLE `libraries`;
--Supprimer la table ide.--
--P2E9--
DROP TABLE `ide`;
--Créer la base codex. Y créer une table clients qui aura comme colonnes--
--P2TP--
CREATE DATABASE `codex`
CHARACTER SET 'utf8';
CREATE TABLE `clients`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `lastname` VARCHAR(40) NOT NULL,
    `firstname` VARCHAR(40) NOT NULL,
    `birthDate` DATE NOT NULL,
    `address` VARCHAR(40) NOT NULL,
    `firstPhoneNumber` INT NOT NULL,
    `secondPhoneNumber` INT NOT NULL,
    `mail` VARCHAR(255) NOT NULL,
) ENGINE=InnoDB;