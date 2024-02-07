-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/02/2024 às 03:17
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `minhafesta`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `nivel2` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `cpf`, `senha`, `nivel2`) VALUES
(2, 'arthhhhasdadswww', 'arthh@gmail.com', '12345678900', '$2y$10$DhDFoGYIfL1fbGw.d5FX2eXFwe5cnc8BVwCyuoG6IXr', ''),
(3, 'aasdkoasdkopasdkopasd', 'arthurbraboxx@gmail.com', '12123123121', '$2y$10$fwL1i7s.NOyeAdNbeMSVueLXEkKcM42Y.BXkBu5Zgow', ''),
(5, 'arthursoufodaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'arthursoufodanacamateexculacho@gmail.com', '13297812377', '$2y$10$0Ac2opI69lUmYLcLELszM.s0Kg/VWJASIGW.wdpEh5K', '2'),
(6, 'arthurlogincliente', 'arthurlogincliente@gmail.com', '12312312312', '$2y$10$cAQWdDzgQQK/E6o7ZdSfS...3BKsUa7YArBrWueNjy6', '2');

-- --------------------------------------------------------

--
-- Estrutura para tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `horario_entrada` time NOT NULL,
  `horario_saida` time NOT NULL,
  `local` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `eventos`
--

INSERT INTO `eventos` (`id`, `nome`, `data`, `horario_entrada`, `horario_saida`, `local`) VALUES
(1, 'KKKKKKKKKKKKKKKKKKKKKKK', '0000-00-00', '16:00:00', '16:00:00', 'asdmk,çasdmk,asdjkçkçasd'),
(7, 'ASDJKASDKJASDKÇKKKKKKKKKKKKKKKKKKKKKKKKK', '2001-04-25', '12:03:00', '10:02:00', 'KKKKKKKKKKKKKKKKKKKKKKK'),
(9, 'KKKKKKKKKKKKKKKK', '4234-12-24', '12:57:00', '12:43:00', 'ASDASDASDFASFASF');

-- --------------------------------------------------------

--
-- Estrutura para tabela `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `avaliacao` int(11) NOT NULL,
  `comentario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `avaliacao`, `comentario`) VALUES
(1, 5, 'adsasdasdasdasdasd'),
(2, 1, 'ASDLHJASDJHLLAJKSDJKQWIJKOPQWEKLPMÇQWEKLMÇADS'),
(3, 2, 'asddasasdasd'),
(4, 5, 'asdmklasdjklasdjklasdjkl'),
(5, 2, 'asdkjasdjklasdjklaskldjqwwq'),
(6, 3, '333333 JIKLASDJKLADSJKLADSHKJAHAHAHAHAHA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` int(11) NOT NULL,
  `local` varchar(255) NOT NULL,
  `bolo` varchar(255) NOT NULL,
  `bebidas` varchar(255) NOT NULL,
  `decoracoes` varchar(255) NOT NULL,
  `comidas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `local`, `bolo`, `bebidas`, `decoracoes`, `comidas`) VALUES
(27, '', 'Bolo de Chocolate - R$50, Bolo de Morango - R$60, Bolo de Coco - R$45', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `nivel1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `cpf`, `senha`, `nivel1`) VALUES
(13, 'arthurrraaaaaaasdaswww', 'arthurbrabo2@gmail.com', '12345678901', '$2y$10$O7D.4nwURzY.QiEd68F9WeZ27qWD5oGzJ5QWeC7HMM/I1FZSHI4Oq', ''),
(36, 'arthurrrrrrrrrrrrwqqeqwe', 'arthurrrrrrrrr@gmail.com', '12323112312', '$2y$10$3BncjPbaK.Ewc23qfslA/.g.WQcBLLrAs4eGowG1aPyB6p9zy2M2C', '1'),
(37, 'adsasdasdasdasdwwwwwwwwwwwwwww', 'asdasdasdasd', '22311231231', '$2y$10$DHqVUalZUAOEUi6QfiNtl.fKGSFE6kJjwjx8eZFWKtjUu/DoB1wQS', '1'),
(57, 'asdadsasdasdasdasdasdasdwwwwww', 'asdasdasdasaaaaaaaaaad@gmail.com', '21312312312', '$2y$10$TNDAFLLMXtsbVWkMRW.idOZkkuJy.800dGUgH74sLgsHWcsjR0Wli', '1'),
(78, 'wwwwwwwwwwwwwwwaaaaaa', 'wwwwwwwwwwwwwww@gmail.com', '12378983791', '$2y$10$MuScniC2q8YqyNr57RUr4eNid4znIex1e.3DQ5HthATBsD3p2MYSi', '1'),
(79, 'wwwwwwwwwwwwwwwwwas', 'wwwwwwwwwwwwwwwwwas@gmail.com', '11231231231', '123', '1'),
(80, 'hhhhhhhhhhhhhhhhhhhh', 'hhhhhhhhhhhhhhhhhhhh@gmail.com', '21389018902', '123', '1'),
(81, 'aaaaaaaaaarthurtttww', 'aaaaaaaaaarthur@gmail.com', '12312312312', '$2y$10$S0S0U9fZFpimkxTvgVQPZ.c5HiFid5p42FedRfB/wuyeCmawI7UtS', '1'),
(82, 'arthurlogin', 'arthurlogin@gmail.com', '21312312312', '$2y$10$HMvL5506cGhflJ9goaJMZeWE3Y7rbkmaa9Et23q6uKdgiLHh6ciMu', '1'),
(83, 'arthurloginn', 'arthurloginn@gmail.com', '21389012389', '$2y$10$asq7RwQRE0XE2rfwxBy7hezxolKPLXyT5tSB4CjYeYUVy8.634rgG', '1');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
