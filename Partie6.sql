--Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).--
--P6E1--
SELECT version
FROM `frameworks`
WHERE `version` LIKE 'version 2.%'; --% est l'extension de la clause WHERE--
--Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.--
--P6E2--
SELECT `id`, `framework`
FROM `frameworks`
WHERE `id` = 1
OR `id` = 3;

SELECT `id`, `framework`
FROM `frameworks`
WHERE `id` IN (1,3);
--Dans la table ide, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.--
--P6E3--
SELECT `id`, `name`, `date`
FROM `ide`
WHERE `date` BETWEEN '20100101' AND '20111231';

SELECT `id`, `name`, DATE_FORMAT(`date`, '%d %m %Y') AS `datefr` --format date VF et avec 'AS `datefr`on modify le topic--
FROM `ide`
WHERE `date` BETWEEN '20100101' AND '20111231';