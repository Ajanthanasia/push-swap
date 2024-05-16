CREATE DATABASE IF NOT EXISTS my_quizz;

USE my_quizz;

CREATE TABLE
       categorie (
              id INT (6) AUTO_INCREMENT PRIMARY KEY,
              name VARCHAR(100) NOT NULL
       );

INSERT INTO
       `categorie` (`id`, `name`)
VALUES
       (1, "Harry Potter");

INSERT INTO
       `categorie` (`id`, `name`)
VALUES
       (2, "
Sigles Français");

INSERT INTO
       `categorie` (`id`, `name`)
VALUES
       (3, "
Définitions de mots");

INSERT INTO
       `categorie` (`id`, `name`)
VALUES
       (4, "
Les spécialités culinaires");

INSERT INTO
       `categorie` (`id`, `name`)
VALUES
       (5, "
Séries TV : les simpson - partie 1");

INSERT INTO
       `categorie` (`id`, `name`)
VALUES
       (6, "
Séries TV : les simpson - partie 2");

INSERT INTO
       `categorie` (`id`, `name`)
VALUES
       (7, "
Séries TV : Stargate SG1");

INSERT INTO
       `categorie` (`id`, `name`)
VALUES
       (8, "
Séries TV : NCIS");

INSERT INTO
       `categorie` (`id`, `name`)
VALUES
       (9, "
Jeux de société");

INSERT INTO
       `categorie` (`id`, `name`)
VALUES
       (10, "
Programmation");

INSERT INTO
       `categorie` (`id`, `name`)
VALUES
       (11, "
Sigles informatiques");

CREATE TABLE
       question (
              id INT (6) AUTO_INCREMENT PRIMARY KEY,
              id_categorie INT (6),
              question VARCHAR(255)
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              1,
              1,
              "Dans la partie déchec, Harry Potter prend la place de :"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              2,
              1,
              "Quel est le mot de passe du bureau de Dumbledore ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              3,
              1,
              "Quel chiffre est écrit à l'avant du Poudlard Express ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              4,
              1,
              "Avec qui Harry est-il interdit de jouer à vie au Quidditch par Ombrage ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              5,
              1,
              "Sur quelle(s) main(s) Harry s'écrit-il je ne dois pas dire de mensonge pendant ses retenues avec Ombrage ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (6, 1, "Everard et Dilys sont :");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              7,
              1,
              "Quel est le prénom du professeur Gobe-Planche ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              8,
              1,
              "Quel est le nom de jeune fille de Molly Weasley ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              9,
              1,
              "Lequel de ces Mangemorts n'était pas présent lors de l'invasion au ministère ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              10,
              1,
              "En quelle année sont morts les parents de Harry Potter ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (11, 2, "Que signifie AOC ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (12, 2, "Que signifie CROUS ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (13, 2, "Que signifie FAI ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (14, 2, "Que signifie l'INSEE ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (15, 2, "Que signifie ADN ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (16, 2, "Que signifie SAMU ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (17, 2, "Que signifie SFR ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (18, 2, "Que signifie FNAC ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (19, 2, "Que signifie RATP ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (20, 2, "Que signifie SMIC ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (21, 3, "Que signifie le verbe Enrêner ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (22, 3, "Qu'est-ce qu'un protocole ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              23,
              3,
              "Que fait une langue qui est protractile ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (24, 3, "Qu'est ce qu'un Campanile ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (25, 3, "Que signifie le mot « gentilé » ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (26, 3, "Qu'est ce qu'un Pugilat ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              27,
              3,
              "Parmi ces définitions, laquelle n'est pas une torpille ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (28, 3, "Qu'est ce que la déontologie ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (29, 3, "Qu'est ce qu'un carcan ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (30, 3, "Que signifie le terme univoque ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (31, 4, "Quelle est la spécialité de Reims ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              32,
              4,
              "Parmi ces spécialités, laquelle ne fait pas partie du patrimoine gastronomique de la ville de Troyes ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              33,
              4,
              "Dans quelle département trouve-t-on les lentilles du Puy ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              34,
              4,
              "Dans quel département trouve-t-on la Teurgoule ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              35,
              4,
              "Quel fromage ne trouve-t-on pas en Normandie ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              36,
              4,
              "Parmi ces spécialités, laquelle ne vient pas de la région PACA ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (37, 4, "Quelle est la spécialité de Tours ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              38,
              4,
              "Parmi ces biscuits lesquelles ne vient pas de Bretagne ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              39,
              4,
              "Quelle est le nom de cette recette: Lamproie à la ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (40, 4, "Le Kouglof est une spécialité de :");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              41,
              5,
              "Comment s'appelle le père d'Homer Simpson ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              42,
              5,
              "Quel est le nom du dessin animé gore préféré de Bart et Lisa Simpson ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (43, 5, "De quel instrument joue Lisa Simpson ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              44,
              5,
              "Comment s'appelle le meilleur ami de Bart ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (45, 5, "Quelle est la profession de Wiggum ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (46, 5, "Qui en veut à la vie de Bart Simpson ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (47, 5, "Qui est Smithers ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (48, 5, "Quelle est la nationalité de Willy ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              49,
              5,
              "Quelle est la nourriture préférée d'Homer ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (50, 5, "Dans quelle ville habitent les Simpson ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (51, 6, "Qui est le créateur des Simpson ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              52,
              6,
              "Quel est le nom de jeune fille de Marge Simpson ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              53,
              6,
              "Que faisait le chien des Simpson avant qu'ils l'adoptent ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (54, 6, "Où Maud Flanders trouva t-elle la mort ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              55,
              6,
              "Quelle réplique prononce très souvent Homer Simpson ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              56,
              6,
              "Comment s'appelle la bière préférée des habitat de Springfield ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (57, 6, "Comment s'appelle la mère d'Homer ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              58,
              6,
              "Comment s'appelle la ville voisine et ennemie de Springfrield ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              59,
              6,
              "Quelle est l'une des particularités de Moe ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              60,
              7,
              "Où se trouve la base de commandement du SGC ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              61,
              7,
              "Comment s'appelle les crabes métalliques qui se reproduisent rapidement en se nourrissant de métal ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              62,
              7,
              "Combien a y-t-il de saisons dans Stargate SG1 ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              63,
              7,
              "Dans l'épisode « L'histoire sans fin » que font Jack et Teal'c d'assez particulier ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              64,
              7,
              "Qui est le commandant suprême de la flotte Asgard ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (65, 7, "De qui Jolinar était-elle la compagne ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              66,
              7,
              "Quel mot désigne les habitants de la planète Terre ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (67, 7, "De qui Sha'are devient-elle l'hôte ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              68,
              7,
              "L'alliance des quatre races est composée des Anciens, Des Asgards, des Furlings et.."
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              69,
              7,
              "Comment meurt Daniel Jackson avant de faire son Ascension et d'être ensuite remplacé par Jonas Quinn ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (70, 8, "Quels sont les prénoms de Gibbs ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              71,
              8,
              "Comment est morte Kate à la fin de la deuxième saison ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (72, 8, "Quelle est la boisson préférée d'Abby ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              73,
              8,
              "Qui est en réalité Jeanne Benoit, la petite amie de Tony dans la Saison 4 ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              74,
              8,
              "De quelle grave maladie Tony DiNozzo est infectée dans la saison 2 ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              75,
              8,
              "A part les filles, quelle est la grande passion de Tony DiNozzo ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (76, 8, "Ziva David est un ancien officier du  ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              77,
              8,
              "Lorsque Gibbs décide de démissionner à la fin de la Saison 3, quel personnage devient le chef de l'équipe ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              78,
              8,
              "Avec quel agent Palmer a-t-il eu une liaison ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              79,
              8,
              "Comment Jenny Shepard trouve-t-elle la mort au court de la saison 5 ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              80,
              9,
              "Lequel de ces navires ne se retrouvent pas dans le « Toucher-couler » ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              81,
              9,
              "Laquelle de ces couleurs n'existe pas au Trivial poursuite traditionnel ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              82,
              9,
              "Laquelle de ces lettres vaut 10 points au scrabble ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              83,
              9,
              "Quelle est la rue qui coute le moins cher au Monopoly français ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              84,
              9,
              "Dans le monopoly d'origine combien gagnait-on en passant par la case départ ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              85,
              9,
              "Parmi ces pays, lequel n'est pas présent sur le plateau du jeu « Risk » ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              86,
              9,
              "Combien y a-t-il de flèches au Backgammon ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              87,
              9,
              "Lequel de ces déplacement n'existe pas aux échecs ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (88, 9, "Au jeu du Cluedo qui est professeur ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              89,
              9,
              "Comment appelle-t-on le groupe de cartes au 1000 bornes qui comprend : As du volant, camion-citerne, increvable, prioritaire...."
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              90,
              10,
              "Lequel de ces langages ne peut pas être exécuté côté serveur ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              91,
              10,
              "Lequel de ces langages a la vitesse d'éxécution la plus rapide ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              92,
              10,
              "Quel est l'animal qui représente habituellement le langage PHP ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              93,
              10,
              "Lequel de ces systèmes d'exploitation est sous environnement UNIX ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              94,
              10,
              "Lequel de ces langages est reconnu pour sa grande portabilité et sa flexibilité ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              95,
              10,
              "Laquelle de ces propositions n'est pas un langage de programmation ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              96,
              10,
              "Quelle commande permet de planifier l'éxécution de tâches sous UNIX ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              97,
              10,
              "Quel est le composant principal d'un ordinateur, sur lequel sont greffés les autres ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              98,
              10,
              "Quel port externe n'existe pas sur un ordinateur ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              99,
              10,
              "Quel nom d'attaque n'existe pas dans le domaine de la sécurité ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (100, 11, "Que signifie HTTP ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (101, 11, "Que signifie SSL ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (102, 11, "Que signifie FTP ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              103,
              11,
              "Laquelle de ces propositions n'est pas un SGBDR ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (104, 11, "Que signifie WWW ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (105, 11, "Que signifie URI ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (106, 11, "Que signifie IP ?");

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              107,
              11,
              "Qu'est-ce que peut évoquer REMOTE_ADDR ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              108,
              11,
              "Laquelle de ces propositions n'est pas une IP correcte ?"
       );

INSERT INTO
       `question` (`id`, `id_categorie`, `question`)
VALUES
       (
              109,
              11,
              "Laquelle de ces propositions n'est pas une MAC correcte ?"
       );

CREATE TABLE
       reponse (
              id INT (6) AUTO_INCREMENT PRIMARY KEY,
              id_question INT (6),
              reponse VARCHAR(255),
              reponse_expected BOOLEAN
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (1, "Un fou", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (1, "Une tour", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (1, "Un pion", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (2, "Sorbet Citron", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (2, "Chocogrenouille", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (2, "Dragées Surprise", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (3, "5972", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (3, "4732", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (3, "6849", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (4, "George Weasley", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (4, "Fred Weasley", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (4, "Drago Malefoy", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (5, "La droite", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (5, "La gauche", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (5, "Les deux", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (6, "Deux directeurs de Poudlard", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (6, "Deux amants célèbres de Poudlard", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (6, "Deux préfets en chef", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (7, "Wilhelmina", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (7, "Libellia", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (7, "Carlotta", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (8, "Prewett", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (8, "Foist", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (8, "Jugson", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (9, "Rowle", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (9, "Crabbe", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (9, "Goyle", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (10, "1981", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (10, "1982", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (10, "1983", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (11, "Appellation d'Origine Contrôlée", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (11, "Aliment Original Contrôlé", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              11,
              "Association des Obligations des Consommateurs",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              12,
              "Centre Régional des Oeuvres Universitaires et Scolaires",
              1
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              12,
              "Centre de Restauration et d'Organisation Universitaire et Secondaire",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              12,
              "Comité Régional pour l'Organisation Universitaire et Scolaire",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (13, "Fournisseur d'Accès Internet", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              13,
              "Fournisseur d'Alimention et d'Informatique",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (13, "Fédération à l'Accès Informatique", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              14,
              "Institut National de la Statistique et des Études Économiques",
              1
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              14,
              "Institut National de Service pour l'Économie et l'Enseignement",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              14,
              "Institution Nationalisé pour les Statistiques des Établissements Économiques",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (15, "Acide Desoxyriboucléique", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (15, "Atome Desoxygénénucléique", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (15, "Aspérité Desoxygéné et Nucléanbique", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (16, "Service d'Aide Médicale Urgente", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              16,
              "Service d'Ambulance et de Médecine d'Urgence",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (16, "Service Auxiliaire Mutualisé d'Urgence", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (17, "Société Française de Radiotéléphone", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (17, "Société Francophone des Réseaux", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (17, "Société Financière et Radio-téléphonique", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (18, "Fédération Nationale d'Achat des Cadres", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (18, "Franchise Nationale d'Art et de Culture", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (18, "Firme Nationale d'Achat Culturel", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (19, "Régie autonome des transports parisiens", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              19,
              "Reseaux automatisé des transports parisiens",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              19,
              "Régie automatique des transports de Paris",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              20,
              "Salaire Minimum Interprofessionnel de Croissance",
              1
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (20, "Salaire Médian d'Intérêt Communautaire", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (20, "Salaire Moyen d'Insertion de Croissance", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (21, "Mettre des rênes", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (21, "Etre dépendent de quelque chose", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (21, "Etre à l'origine d'un fait", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (22, "Un ensemble de règles établies", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              22,
              "Le fait de savoir parler plusieurs langues",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (22, "Une série de chiffre", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (23, "Elle peut être étirée vers l'avant", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (23, "Elle peut se diviser en deux", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (23, "Elle peut s'enrouler sur elle même", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (24, "Un cloché", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (24, "Une maison de campagne", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (24, "Une forteresse", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (25, "C'est le nom des habitants d'un lieu", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (25, "C'est un synonyme du mot gentillesse", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              25,
              "C'est le nom du mouvement que l'on fait avec un tournevis",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (26, "Un combat au corps à corps", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (26, "Une demande d'audience", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (26, "Une sorte de dague", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (27, "Une espèce de calamar", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (27, "Un poisson qui ressemble à une raie", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (27, "Un engin automoteur sous-marin", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (28, "Le code de conduite d'une profession", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              28,
              "Une partie de la médecine qui étudie la peau",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              28,
              "L'étude des facultés psychiques des dauphins",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (29, "Une contrainte qui entrave la liberté", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (29, "Une sorte de montre", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (29, "Une pièce de tissu", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (30, "Qui n'a qu'un sens", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (30, "Qui a plusieurs sens", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (30, "Qui est sans contrainte", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (31, "Le biscuit rose", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (31, "Le trou rémois", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (31, "Le cidre rosé", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (32, "La pâte de fruit à la mirabelle", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (32, "Le chaource", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (32, "L'andouillette", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (33, "Haute Loire", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (33, "Allier", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (33, "Cantal", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (34, "Le Calvados", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (34, "Le cantal", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (34, "L'ardèche", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (35, "Saint Félicien", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (35, "Livarot", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (35, "Neufchâtel", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (36, "Le cassoulet", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (36, "La tapenade", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (36, "Les calissons", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (37, "Les rillons", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (37, "Le confis", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (37, "Le magret", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (38, "Les madeleines", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (38, "Les craquelins", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (38, "Les gavottes", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (39, "Bordelaise", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (39, "Toulousaine", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (39, "Marseillaise", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (40, "L'Alsace", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (40, "La lorraine", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (40, "La Franche comté", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (41, "Abraham", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (41, "Georges", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (41, "Francis", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (42, "Itchy et Scratchy show", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (42, "Les tronçonneuses folles", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (42, "Cat and dog", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (43, "Du saxophone", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (43, "De la trompette", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (43, "De la clarinette", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (44, "Milhouse", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (44, "Martin", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (44, "Ralph", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (45, "C'est le chef de la police", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (45, "Il est vendeur de BD", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (45, "C'est le vrai nom de l'homme Abeille", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (46, "Tahiti Bob", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (46, "Krusty le clown", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (46, "L'homme Abeille", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              47,
              "L'assistant du président de la centrale nucléaire",
              1
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (47, "Un collègue d'Homer Simpson", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              47,
              "Le président de la centrale nucléaire où travaille Homer",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (48, "Ecossais", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (48, "Canadien", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (48, "Australien", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (49, "Les donuts", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (49, "Les pizzas", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (49, "Les hamburgers", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (50, "Springfield", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (50, "Sheffield", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (50, "Shortfield", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (51, "Matt Groening", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (51, "Seth Mac Farlane", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (51, "Glenn Eichler", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (52, "Bouvier", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (52, "Polsen", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (52, "March", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (53, "De la course de lévriers", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (53, "C'était un chien d'aveugle", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (53, "Il était chien policer", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (54, "Dans les gradins d'un stade", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (54, "Elle disparaît en mer", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (54, "Dans la maison des Simpson", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (55, "Oh punaise!", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (55, "Oh mon dieu!", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (55, "Oh bravo!", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (56, "La Duff", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (56, "La Kronekein", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (56, "La Spiner", 0);

-- INSERT INTO `reponse`(`id_question`, `reponse`, `reponse_expected` ) VALUES (57, "Elle a une addiction aux jeux d'argent", 1);
-- INSERT INTO `reponse`(`id_question`, `reponse`, `reponse_expected` ) VALUES (57, "Elle se drogue secrètement", 0);
-- INSERT INTO `reponse`(`id_question`, `reponse`, `reponse_expected` ) VALUES (57, "Elle boit souvent", 0);
INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (57, "Mona", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (57, "Gina", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (57, "Dina", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (58, "Shelbyville", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (58, "Summerville", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (58, "Stringville", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (59, "Il a des tendances suicidaires", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (59, "Il est ventriloque", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (59, "Il vole dans les supermarchés", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (60, "Dans le Colorado", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (60, "Dans l'Arizona", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (60, "Dans l'Utah", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (61, "Les réplicateurs", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (61, "Les réplicants", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (61, "Les répliqueurs", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (62, "10 Saisons", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (62, "8 Saisons", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (62, "12 Saisons", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              63,
              "Ils font du golf avec la porte des étoiles",
              1
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (
              63,
              "Ils jouent au tennis dans les couloirs de la base",
              0
       );

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (63, "Ils font du camping dans la base", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (64, "Thor", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (64, "Loki", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (64, "Penegal", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (65, "Martouf", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (65, "Selmak", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (65, "Malek", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (66, "Les Tau'ri", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (66, "Les Tok'ra", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (66, "Les Oris", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (67, "Amonet", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (67, "Amaterasu", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (67, "Hathor", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (68, "Des Nox", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (68, "Des Ori", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (68, "Des Unas", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (69, "Il absorbe une dose de radiation", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (69, "Il est tué par Apophis", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (69, "Il tombe dans un ravin", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (70, "Leroy Jethro", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (70, "Jack Lenny", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (70, "Lance Jimmy", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (71, "D'une balle dans la tête", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (71, "Lors d'une explosion", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (71, "En tombant d'un toit", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (72, "Un soda caféine", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (72, "Un diabolo menthe", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (72, "Un thé glacé", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (73, "La fille d'un trafiquant d'armes", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (73, "Une espionne russe", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (73, "Un agent double de la CIA", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (74, "La peste", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (74, "La tuberculose", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (74, "Le cholera", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (75, "Le cinéma", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (75, "Le base-ball", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (75, "Les voitures de courses", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (76, "Mossad", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (76, "KGB", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (76, "NSA", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (77, "Tony", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (77, "Ziva", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (77, "McGee", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (78, "Lee", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (78, "Ziva", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (78, "Kate", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (79, "Lors d'une fusillade", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (79, "Lors d'un accident de voiture", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (79, "Lors d'une explosion", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (80, "Un cuirassé", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (80, "Un sous-marin", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (80, "Un porte-avions", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (81, "Rouge", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (81, "Orange", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (81, "Vert", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (82, "K", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (82, "J", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (82, "Q", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (83, "Boulevard de Belleville", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (83, "Rue de Vaugirard", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (83, "Rue Lecourbe", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (84, "20 000 francs", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (84, "2 000 francs", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (84, "50 000 francs", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (85, "Russie", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (85, "Ukraine", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (85, "Chine", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (86, "24", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (86, "12", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (86, "32", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (87, "Le pool", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (87, "Le roque", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (87, "En passant", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (88, "Violet", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (88, "Olive", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (88, "Orange", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (89, "Les bottes", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (89, "Les parades", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (89, "Les attaques", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (90, "HTML", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (90, "JavaScript", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (90, "PHP", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (91, "C", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (91, "PHP", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (91, "Python", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (92, "Elephant", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (92, "Serpent", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (92, "Souris", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (93, "Debian", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (93, "Windows", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (93, "Java", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (94, "Java", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (94, "Python", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (94, "C++", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (95, "Saphir", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (95, "Ruby", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (95, "Perl", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (96, "crontab", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (96, "task", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (96, "run", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (97, "Carte mère", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (97, "Processeur", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (97, "Carte graphique", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (98, "VGE", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (98, "HDMI", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (98, "USB", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (99, "MS-DOS 95", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (99, "DDOS", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (99, "Bruteforce", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (100, "Hyper Text Transfer Protocol", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (100, "Host Type Text Protocol", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (100, "Host Trame Transfer Protocol", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (101, "Secure Socket Layer", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (101, "Socket Same Loundge", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (101, "Security Socket Law", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (102, "File Transfer Protocol", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (102, "Film Transfert Processus", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (102, "File Trame Pratical", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (103, "CSV", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (103, "MySQL", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (103, "MongoDB", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (104, "World Wide Web", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (104, "Word Wild Web", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (104, "Warp World Web", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (105, "Uniform Resource Identifier", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (105, "Ulimit Redirection Id", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (105, "Unity Range Information", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (106, "Internet Protocol", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (106, "Internic Procedural", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (106, "Internal Processus", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (107, "Une Adresse IP", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (107, "Une Adresse MAC", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (107, "Une Prise de contrôle", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (108, "128.256.0.1", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (108, "127.0.0.1", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (108, "255.255.0.0", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (109, "EX:3F:7E:E6:2D:58", 1);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (109, "EA:9D:00:5B:CE:FF", 0);

INSERT INTO
       `reponse` (`id_question`, `reponse`, `reponse_expected`)
VALUES
       (109, "AA:BB:CC:DD:EE:FF", 0);