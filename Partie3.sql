--Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).--
--P3E1--
USE `webDevelopment`;
ALTER TABLE `languages`
ADD COLUMN `versions` VARCHAR(40);
--Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).--
--P3E2--
USE `webDevelopment`;
ALTER TABLE `frameworks`  
ADD COLUMN `version` VARCHAR(40);
--Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.--
--P3E3--
USE `webDevelopment`;
ALTER TABLE `languages`,
CHANGE `versions` `version` VARCHAR (40);
--Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.--
--P3E4--
USE `webDevelopment`;
ALTER TABLE `frameworks`
CHANGE `name` `framework` VARCHAR (40);
--Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.--
--P3E5--
USE `webDevelopment`;
ALTER TABLE `frameworks`
MODIFY `version` VARCHAR(10);
--Dans la base codex, dans la table clients :--
-- supprimer la colonne secondPhoneNumber--
--renommer la colonne firstPhoneNumber en phoneNumber--
--changer le type de la colonne phoneNumber en VARCHAR--
--ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)--
--P3TP--
USE `codex`;
ALTER TABLE `clients`
    DROP COLUMN `secondPhoneNumber`,
    CHANGE `firstPhoneNumber` `phoneNumber` VARCHAR(10),
    ADD COLUMN `zipCode` VARCHAR(10) NOT NULL,
    ADD COLUMN `city` VARCHAR(10) NOT NULL;