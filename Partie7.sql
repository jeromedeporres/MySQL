--Dans la table languages, supprimer toutes les lignes parlant de HTML.--
--P7E1--
USE `webdevelopment`;
DELETE FROM `languages`
WHERE `language` = 'HTML';
--Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.--
--P7E2--
USE `webdevelopment`;
UPDATE `frameworks`
SET `framework` = 'Symfony2'
WHERE `framework` = 'Symfony';
--Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1.--
--P7E3--
USE `webdevelopment`;
UPDATE `languages`
SET `version` = 'version 5.1'
WHERE `language` = 'JavaScript' AND `version` = 'version 5';