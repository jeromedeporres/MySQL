--Dans la table languages, afficher toutes les données de la table.--
--P5E1--
USE `webDevelopment`;
SELECT `id`, `language`, `version` 
FROM languages
--Dans la table languages, afficher toutes les versions de PHP.--
--P5E2--
USE `webDevelopment`;
SELECT `version` 
FROM languages 
WHERE `language` = 'PHP';
--Dans la table languages, afficher toutes les versions de PHP et de JavaScript.--
--P5E3--
USE `webDevelopment`;
SELECT `version` 
FROM `languages` WHERE `language` = 'PHP' OR `language` = 'JavaScript';
--Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.--
--P5E4--
USE `webDevelopment`;
SELECT `id`, `language`, `version` 
FROM languages
WHERE id IN (3, 5, 7);
--Dans la table languages, afficher les deux première entrées de JavaScript.--
--P5E5--
USE `webDevelopment`;
SELECT `language`
FROM `languages`
WHERE `language` = 'JavaScript'
LIMIT 2;
--Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP.--
--P5E6--
USE `webDevelopment`;
SELECT `language`
FROM languages 
WHERE `language` <> 'PHP';
--Dans la table languages, afficher toutes les données par ordre alphabétique.--
--P5E7--
USE `webDevelopment`;
SELECT `language`, `version` 
FROM `languages`
ORDER BY `language` ASC;