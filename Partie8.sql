--Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.--
--P8E1 V1--
SELECT *
FROM `languages` AS `lan`
LEFT JOIN `frameworks` AS `fra`
ON `fra`. `languagesId` = `lan`.`id`;

--P8E1 V2--
SELECT `lan`. `name` AS `LanguageName` , `fra`. `name`AS `FrameworkName`   
FROM `languages` AS `lan`
LEFT JOIN `frameworks` AS `fra`
ON `fra`. `languagesId` = `lan`.`id`;
--Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.--
--P8E2 V1--
SELECT *
FROM `languages`
INNER JOIN `frameworks`
ON `languagesId` = `languages`.`id`;
--P8E2 V2--
SELECT `lan`. `name` AS `LanguageName`, `fra`. `name` AS `FrameworkName` 
FROM `languages` AS `lan`
INNER JOIN `frameworks` AS `fra`
ON `fra`.`languagesId` = `lan`.`id`;
--Afficher le nombre de framework qu'a un langage.--
--P8E3--
SELECT `lan`.`name`, COUNT(`fra`.`id`) AS `numberofFrameworks`
FROM `languages` AS `lan`
LEFT JOIN `frameworks` AS `fra`
ON `fra`.`languagesId` = `lan`.`id`
GROUP BY  `lan`.`name`;
--Afficher les langages ayant plus de 3 frameworks.--
--P8E4--
SELECT `lan`.`name`, COUNT(`fra`.`id`) AS `numberofFrameworks`
FROM `languages` AS `lan`
LEFT JOIN `frameworks` AS `fra`
ON `fra`.`languagesId` = `lan`.`id`
GROUP BY  `lan`.`name`
HAVING `numberofFrameworks` > 3;