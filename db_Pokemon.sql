CREATE TABLE `professorcarvalho` (
  `id_professor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `idade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_professor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `professorcarvalho` VALUES (1,'Samuel Carvalho',64);

CREATE TABLE `treinador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `idade` int(11) NOT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `box` (
  `id_box` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_ambiente` varchar(50) NOT NULL,
  `num_suportado` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL,
  `id_treinador` int(11) NOT NULL,
  PRIMARY KEY (`id_box`),
  KEY `id_prof` (`id_prof`),
  KEY `id_treinador` (`id_treinador`),
  CONSTRAINT `box_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `professorcarvalho` (`id_professor`),
  CONSTRAINT `box_ibfk_2` FOREIGN KEY (`id_treinador`) REFERENCES `treinador` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `pokebola` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ocupada` tinyint(1) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `id_box` int(11) NOT NULL,
  `id_treinador` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_treinador` (`id_treinador`),
  KEY `id_box` (`id_box`),
  CONSTRAINT `pokebola_ibfk_1` FOREIGN KEY (`id_treinador`) REFERENCES `treinador` (`id`),
  CONSTRAINT `pokebola_ibfk_2` FOREIGN KEY (`id_box`) REFERENCES `box` (`id_box`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nivel_felicidade` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `hp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `armazena` (
  `id_pokebola` int(11) NOT NULL,
  `id_pokemon` int(11) NOT NULL,
  `data_captura` datetime DEFAULT NULL,
  PRIMARY KEY (`id_pokebola`),
  KEY `id_pokemon` (`id_pokemon`),
  CONSTRAINT `armazena_ibfk_1` FOREIGN KEY (`id_pokebola`) REFERENCES `pokebola` (`id`),
  CONSTRAINT `armazena_ibfk_2` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `ataque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,,
  `tipo` varchar(20) DEFAULT NULL,
  `ccuracy` int(11) NOT NULL,
  `dano` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `evolucao1` (
  `id_pokemon` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `CP` int(11) NOT NULL,
  PRIMARY KEY (`id_pokemon`),
  CONSTRAINT `evolucao1_ibfk_1` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `evolucao2` (
  `id_pokemon` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `CP` int(11) NOT NULL,
  `tipo2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pokemon`),
  CONSTRAINT `evolucao2_ibfk_1` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `evolucao3` (
  `id_pokemon` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `CP` int(11) NOT NULL,
  `tipo2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pokemon`),
  CONSTRAINT `evolucao3_ibfk_1` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tem` (
  `id_pokemon` int(11) NOT NULL AUTO_INCREMENT,
  `id_ataque` int(11) NOT NULL,
  KEY `id_pokemon` (`id_pokemon`),
  KEY `id_ataque` (`id_ataque`),
  CONSTRAINT `tem_ibfk_1` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemon` (`id`),
  CONSTRAINT `tem_ibfk_2` FOREIGN KEY (`id_ataque`) REFERENCES `ataque` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

