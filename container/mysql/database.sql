CREATE SCHEMA `devops` COLLATE utf8mb4_unicode_ci;

USE devops;

DROP TABLE IF EXISTS `siswa`;

CREATE TABLE `siswa` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `angkatan` varchar(256) DEFAULT NULL,
  `nama` varchar(256) DEFAULT NULL,
  `nim` varchar(256) DEFAULT NULL,
  `jurusan` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `siswa` WRITE;

UNLOCK TABLES;
