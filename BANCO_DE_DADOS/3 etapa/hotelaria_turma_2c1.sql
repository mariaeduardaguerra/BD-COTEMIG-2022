-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 21-Out-2022 às 11:03
-- Versão do servidor: 8.0.18
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotelaria_turma_2c1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `cod_cliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'chave primária de cliente',
  `nome` varchar(80) NOT NULL COMMENT 'nome cliente',
  `CPF` int(11) NOT NULL COMMENT 'CPF cliente',
  `tipo_convenio` varchar(40) NOT NULL COMMENT 'tipo convênio cliente',
  PRIMARY KEY (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hóspede`
--

DROP TABLE IF EXISTS `hóspede`;
CREATE TABLE IF NOT EXISTS `hóspede` (
  `cod_hospede` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'chave primária hóspede',
  `nome` varchar(80) NOT NULL,
  `fk_reserva_cod` int(11) NOT NULL,
  `telefone` char(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`cod_hospede`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `quarto`
--

DROP TABLE IF EXISTS `quarto`;
CREATE TABLE IF NOT EXISTS `quarto` (
  `cod_quarto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'chave primária quarto',
  `numero` int(11) NOT NULL,
  `andar` int(11) NOT NULL,
  `classificação` varchar(40) NOT NULL,
  `fk_hospede_cod` int(11) NOT NULL,
  PRIMARY KEY (`cod_quarto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

DROP TABLE IF EXISTS `reserva`;
CREATE TABLE IF NOT EXISTS `reserva` (
  `cod_reserva` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dataInicio` date NOT NULL,
  `dataFim` date NOT NULL,
  `quarto` int(11) NOT NULL,
  `valor` double(9,2) NOT NULL,
  `fk_cliente_cod` int(11) NOT NULL,
  PRIMARY KEY (`cod_reserva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
