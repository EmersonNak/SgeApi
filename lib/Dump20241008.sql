CREATE DATABASE  IF NOT EXISTS `projeto_sge` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `projeto_sge`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto_sge
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno_turma`
--

DROP TABLE IF EXISTS `aluno_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno_turma` (
  `fk_id_aluno` int(11) NOT NULL,
  `fk_id_turma` int(11) NOT NULL,
  PRIMARY KEY (`fk_id_aluno`,`fk_id_turma`),
  KEY `fk_id_turma` (`fk_id_turma`),
  CONSTRAINT `aluno_turma_ibfk_1` FOREIGN KEY (`fk_id_aluno`) REFERENCES `alunos` (`id_alunos`),
  CONSTRAINT `aluno_turma_ibfk_2` FOREIGN KEY (`fk_id_turma`) REFERENCES `turma` (`id_turma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_turma`
--

LOCK TABLES `aluno_turma` WRITE;
/*!40000 ALTER TABLE `aluno_turma` DISABLE KEYS */;
INSERT INTO `aluno_turma` VALUES (1,1),(1,2),(2,3),(3,4),(4,1),(5,5),(5,6),(5,7),(5,8),(6,5),(6,6),(6,7),(6,8),(7,5),(7,6),(7,7),(7,8),(8,5),(8,6),(8,7),(8,8),(9,5),(9,6),(9,7),(9,8),(10,5),(10,6),(10,7),(10,8),(11,5),(11,6),(11,7),(11,8),(12,5),(12,6),(12,7),(12,8),(13,5),(13,6),(13,7),(13,8),(14,5),(14,6),(14,7),(14,8),(15,5),(15,6),(15,7),(15,8),(16,5),(16,6),(16,7),(16,8),(17,5),(17,6),(17,7),(17,8),(18,5),(18,6),(18,7),(18,8),(19,5),(19,6),(19,7),(19,8),(20,5),(20,6),(20,7),(20,8),(21,5),(21,6),(21,7),(21,8),(22,5),(22,6),(22,7),(22,8),(23,5),(23,6),(23,7),(23,8),(24,5),(24,6),(24,7),(24,8);
/*!40000 ALTER TABLE `aluno_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunos` (
  `id_alunos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_alunos`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Lucas','Mendes','12345678900','senhaLucas',''),(2,'Mariana','Silva','98765432100','senhaMariana',''),(3,'Carlos','Santos','45678912300','senhaCarlos',''),(4,'Ana','Oliveira','32165498700','senhaAna',''),(5,'Lucas','Pereira','11111111111','senhaLucas','url_imagem_lucas'),(6,'Mariana','Souza','22222222222','senhaMariana','url_imagem_mariana'),(7,'João','Silva','33333333333','senhaJoao','url_imagem_joao'),(8,'Ana','Costa','44444444444','senhaAna','url_imagem_ana'),(9,'Carlos','Mendes','55555555555','senhaCarlos','url_imagem_carlos'),(10,'Beatriz','Almeida','66666666666','senhaBeatriz','url_imagem_beatriz'),(11,'Pedro','Santos','77777777777','senhaPedro','url_imagem_pedro'),(12,'Julia','Lima','88888888888','senhaJulia','url_imagem_julia'),(13,'Renato','Gomes','99999999999','senhaRenato','url_imagem_renato'),(14,'Fernanda','Ferreira','10101010101','senhaFernanda','url_imagem_fernanda'),(15,'Ricardo','Nunes','20202020202','senhaRicardo','url_imagem_ricardo'),(16,'Paula','Oliveira','30303030303','senhaPaula','url_imagem_paula'),(17,'Gabriel','Martins','40404040404','senhaGabriel','url_imagem_gabriel'),(18,'Isabela','Barros','50505050505','senhaIsabela','url_imagem_isabela'),(19,'Leonardo','Azevedo','60606060606','senhaLeonardo','url_imagem_leonardo'),(20,'Camila','Rocha','70707070707','senhaCamila','url_imagem_camila'),(21,'Rafael','Cardoso','80808080808','senhaRafael','url_imagem_rafael'),(22,'Larissa','Silveira','90909090909','senhaLarissa','url_imagem_larissa'),(23,'Thiago','Monteiro','12121212121','senhaThiago','url_imagem_thiago'),(24,'Sofia','Moreira','13131313131','senhaSofia','url_imagem_sofia');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Ciências Exatas','Área relacionada a disciplinas de exatas'),(2,'Ciências Humanas','Área relacionada a disciplinas humanas'),(3,'Ciências Biológicas','Área relacionada a biologia');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplina` (
  `id_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nome_disciplina` varchar(100) NOT NULL,
  `fk_id_area` int(11) NOT NULL,
  PRIMARY KEY (`id_disciplina`),
  KEY `fk_id_area` (`fk_id_area`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`fk_id_area`) REFERENCES `area` (`id_area`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Matemática',1),(2,'Física',1),(3,'História',2),(4,'Biologia',3),(5,'Banco de Dados',1),(6,'Modelagem de Dados',1),(7,'Desenvolvimento de Sistemas',1),(8,'Programação de Aplicativos',1);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id_notas` int(11) NOT NULL AUTO_INCREMENT,
  `nota` float NOT NULL,
  `fk_id_aluno` int(11) NOT NULL,
  `fk_id_tarefa` int(11) NOT NULL,
  PRIMARY KEY (`id_notas`),
  KEY `fk_id_aluno` (`fk_id_aluno`),
  KEY `fk_id_tarefa` (`fk_id_tarefa`),
  CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`fk_id_aluno`) REFERENCES `alunos` (`id_alunos`),
  CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`fk_id_tarefa`) REFERENCES `tarefa` (`id_tarefa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,8.5,1,1),(2,7,1,2),(3,9,2,3),(4,6.5,3,4),(5,9,4,1);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `id_professor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_professor`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Pedro','Almeida','senhaPedro','11111111111',''),(2,'Joana','Martins','senhaJoana','22222222222',''),(3,'Roberto','Gomes','senhaRoberto','33333333333',''),(4,'Onofre','Silva','senhaOnofre','44444444444',''),(5,'Roberval','Souza','senhaRoberval','55555555555',''),(6,'Lambarildo','Peixe','senhaLambarildo','66666666666',''),(7,'Fredegunda','Oliveira','senhaFredegunda','77777777777','');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_disciplina`
--

DROP TABLE IF EXISTS `professor_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor_disciplina` (
  `id_professor_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_professor` int(11) NOT NULL,
  `fk_id_disciplina` int(11) NOT NULL,
  PRIMARY KEY (`id_professor_disciplina`),
  KEY `fk_id_professor` (`fk_id_professor`),
  KEY `fk_id_disciplina` (`fk_id_disciplina`),
  CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`fk_id_professor`) REFERENCES `professor` (`id_professor`),
  CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`fk_id_disciplina`) REFERENCES `disciplina` (`id_disciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_disciplina`
--

LOCK TABLES `professor_disciplina` WRITE;
/*!40000 ALTER TABLE `professor_disciplina` DISABLE KEYS */;
INSERT INTO `professor_disciplina` VALUES (1,1,1),(2,1,2),(3,2,3),(4,3,4),(5,4,5),(6,5,6),(7,6,7),(8,7,8);
/*!40000 ALTER TABLE `professor_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarefa`
--

DROP TABLE IF EXISTS `tarefa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarefa` (
  `id_tarefa` int(11) NOT NULL AUTO_INCREMENT,
  `nome_tarefa` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `data_entrega` date NOT NULL,
  `fk_id_turma` int(11) NOT NULL,
  PRIMARY KEY (`id_tarefa`),
  KEY `fk_id_turma` (`fk_id_turma`),
  CONSTRAINT `tarefa_ibfk_1` FOREIGN KEY (`fk_id_turma`) REFERENCES `turma` (`id_turma`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefa`
--

LOCK TABLES `tarefa` WRITE;
/*!40000 ALTER TABLE `tarefa` DISABLE KEYS */;
INSERT INTO `tarefa` VALUES (1,'Trabalho de Álgebra','Entregar lista de exercícios','2024-10-15',1),(2,'Experimento de Física','Relatório sobre experiência de gravidade','2024-10-20',2),(3,'Trabalho sobre Revolução Industrial','Pesquisa sobre revoluções','2024-10-25',3),(4,'Relatório de Ecossistemas','Análise de um ecossistema local','2024-11-01',4);
/*!40000 ALTER TABLE `tarefa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turma` (
  `id_turma` int(11) NOT NULL AUTO_INCREMENT,
  `nome_turma` varchar(100) NOT NULL,
  `fk_id_professor_disciplina` int(11) NOT NULL,
  PRIMARY KEY (`id_turma`),
  KEY `fk_id_professor_disciplina` (`fk_id_professor_disciplina`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`fk_id_professor_disciplina`) REFERENCES `professor_disciplina` (`id_professor_disciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'Turma A - Matemática',1),(2,'Turma A - Física',2),(3,'Turma B - História',3),(4,'Turma C - Biologia',4),(5,'3º Módulo Desenvolvimento de Sistemas - Banco de Dados',4),(6,'3º Módulo Desenvolvimento de Sistemas - Modelagem de Dados',5),(7,'3º Módulo Desenvolvimento de Sistemas - Desenvolvimento de Sistemas',6),(8,'3º Módulo Desenvolvimento de Sistemas - Programação de Aplicativos',7);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 17:23:11
