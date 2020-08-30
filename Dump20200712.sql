-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `codcategoria` int NOT NULL,
  `nomcategoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Nacional'),(2,'Internacional'),(3,'lima'),(7,'Extranjero');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallep`
--

DROP TABLE IF EXISTS `detallep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallep` (
  `codp` int NOT NULL,
  `codde` varchar(45) NOT NULL,
  `pruno` varchar(45) DEFAULT NULL,
  `prdos` varchar(45) DEFAULT NULL,
  `prtres` varchar(45) DEFAULT NULL,
  `prcuatro` varchar(45) DEFAULT NULL,
  `prcinco` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codde`),
  KEY `fk_pedido_deta_idx` (`codp`),
  CONSTRAINT `fk_pedido_deta` FOREIGN KEY (`codp`) REFERENCES `pedido` (`codpedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallep`
--

LOCK TABLES `detallep` WRITE;
/*!40000 ALTER TABLE `detallep` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabricante` (
  `codcategoria` int NOT NULL,
  `codfabricante` int NOT NULL,
  `nomfabricante` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codfabricante`,`codcategoria`),
  KEY `FK_fabricante_categoria_idx` (`codcategoria`),
  CONSTRAINT `FK_fabricante_categoria` FOREIGN KEY (`codcategoria`) REFERENCES `categoria` (`codcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante`
--

LOCK TABLES `fabricante` WRITE;
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
INSERT INTO `fabricante` VALUES (1,1,'PeruSAC'),(2,1,'UsaSAC'),(1,2,'LimaSAC'),(2,2,'ChileSAC'),(2,3,'AsiaSAC'),(1,4,'Extranjero'),(1,5,'mnmn');
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `codpedido` int NOT NULL,
  `codproducto` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `usua` varchar(45) DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`codpedido`),
  KEY `fk_pedido_producto_idx` (`codproducto`),
  KEY `fk_pedido_usua_idx` (`usua`),
  CONSTRAINT `fk_pedido_producto` FOREIGN KEY (`codproducto`) REFERENCES `producto` (`codproducto`),
  CONSTRAINT `fk_pedido_usua` FOREIGN KEY (`usua`) REFERENCES `usuarios` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (6,'p002',1,NULL,50),(7,'p001',2,NULL,40),(8,'p001',1,NULL,20),(9,'p001',1,'mkmk',20),(10,'p001',1,'lo',20),(11,'p001',1,'mkmk',20),(12,'p001',1,'lo',20),(13,'p001',2,'lo',40),(14,'p001',1,NULL,20),(15,'p001',2,'lo',40),(16,NULL,0,NULL,0),(17,NULL,0,NULL,0),(18,NULL,0,NULL,0),(19,'p001',1,NULL,20),(20,'p002',1,NULL,70),(21,'p002',1,NULL,70),(22,'p002',1,NULL,70),(23,'p002',1,NULL,70),(24,'p002',1,NULL,70),(25,'p002',1,NULL,70),(26,'p002',1,NULL,70),(27,'p002',1,NULL,70),(28,'p002',1,NULL,70),(29,'p002',1,NULL,70),(30,'p002',1,NULL,70),(31,'p002',1,NULL,70),(32,'p002',1,NULL,70),(33,'p002',1,NULL,70),(34,'p002',1,NULL,70),(35,'p002',1,NULL,70),(36,'p002',1,NULL,70),(37,'p002',1,NULL,70),(38,'p002',1,NULL,70),(39,'p002',1,NULL,70),(40,'p002',1,NULL,70);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `codproducto` varchar(45) NOT NULL,
  `codcategoria` int DEFAULT NULL,
  `codfabricante` int DEFAULT NULL,
  `nomproducto` varchar(45) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `stockcompromiso` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`codproducto`),
  KEY `FK_prodfab_idx` (`codfabricante`),
  CONSTRAINT `FK_prodfab` FOREIGN KEY (`codfabricante`) REFERENCES `fabricante` (`codfabricante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES ('p001',1,1,'Cantuta',50,0,20,NULL),('p002',1,2,'Orquidea',100,0,30,NULL),('p003',2,1,'Girasol',70,0,15,NULL),('p004',3,1,'Tulipanes',40,0,20,NULL);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportes`
--

DROP TABLE IF EXISTS `reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reportes` (
  `id` int NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `equita` varchar(45) DEFAULT NULL,
  `descrip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reporte_usu_idx` (`usuario`),
  CONSTRAINT `fk_reporte_usu` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportes`
--

LOCK TABLES `reportes` WRITE;
/*!40000 ALTER TABLE `reportes` DISABLE KEYS */;
INSERT INTO `reportes` VALUES (1,NULL,'compra','no llega mi compra'),(2,NULL,'compra','no llega mi compra'),(3,NULL,'compra','no llega mi compra'),(5,NULL,'compra','mi compra no llega'),(6,NULL,'compra','no llega mi compra ayuda'),(7,NULL,'compra','no llega mi compra ayuda'),(8,NULL,'compra','no llega mi compra ayuda'),(9,NULL,'compra','no llega mi compra ayuda');
/*!40000 ALTER TABLE `reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `usuario` varchar(45) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `contra` varchar(45) DEFAULT NULL,
  `nivel` int DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('admin','gian','gtapiaf13@gmail.com','123',1),('hola','hola','gtapiaf13@gmail.com','gtapiaf13@gmail.com',2),('lo','lolo','lk','123456789',2),('lulu','lulu','gtapiaf13@gmail.com','1472583691',2),('mkmk','lolo','lolo','123456789',2),('popo','lolo','lolo','123456457985',2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-12 23:27:23
