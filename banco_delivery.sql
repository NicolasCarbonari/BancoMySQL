-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.11.2-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

-- Copiando estrutura para tabela delivery.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela delivery.categorias: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT IGNORE INTO `categorias` (`id`, `nome`) VALUES
	(1, 'Pizza'),
	(2, 'Hambúrguer'),
	(3, 'Comida Mexicana'),
	(4, 'Comida Japonesa'),
	(5, 'Comida Brasileira'),
	(6, 'Comida Italiana'),
	(7, 'Comida Árabe'),
	(8, 'Comida Chinesa'),
	(9, 'Comida Vegetariana'),
	(10, 'Comida Vegana'),
	(100, 'Outros');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Copiando estrutura para tabela delivery.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `cpf_cliente` decimal(11,0) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  PRIMARY KEY (`cpf_cliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela delivery.clientes: ~33 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT IGNORE INTO `clientes` (`cpf_cliente`, `nome`, `email`, `telefone`, `endereco`) VALUES
	(15467842093, 'Gustavo Almeida', 'gustavo.almeida@yahoo.com', '(62) 9999-2468', 'Rua O, 456 - Setor Bela Vista'),
	(17540837166, 'Fernanda Almeida', 'fernanda.almeida@hotmail.com', '(62) 9999-2468', 'Av. E, 987 - Setor Marista'),
	(26964139584, 'Mariana Costa', 'mariana.costa@gmail.com', '(62) 9999-4680', 'Av. G, 789 - Setor Coimbra'),
	(30387686458, 'João da Silva', 'joao.silva@gmail.com', '(62) 9999-1234', 'Rua A, 123 - Setor Oeste'),
	(34459317900, 'Maria Santos', 'maria.santos@hotmail.com', '(62) 9999-5678', 'Av. B, 456 - Setor Bueno'),
	(34578963891, 'Isabela Oliveira', 'isabela.oliveira@gmail.com', '(62) 9999-0246', 'Rua M, 654 - Setor Marista'),
	(42361975076, 'Amanda Silva', 'amanda.silva@hotmail.com', '(62) 9999-8024', 'Rua K, 321 - Setor Bueno'),
	(47693271887, 'Ana Rodrigues', 'ana.rodrigues@gmail.com', '(62) 9999-1357', 'Rua D, 321 - Setor Leste'),
	(50234528902, 'Lucas Gomes', 'lucas.gomes@hotmail.com', '(62) 99999-1111', 'Rua K, 321, Setor Pedro Ludovico'),
	(50567890106, 'Isabela Almeida', 'isabela.almeida@gmail.com', '(62) 99999-0000', 'Rua J, 987, Setor Pedro Ludovico'),
	(51223498510, 'João Santos', 'joao.santos@hotmail.com', '(62) 99999-2222', 'Rua B, 456, Setor Bela Vista'),
	(51537849007, 'Mariana Pereira', 'mariana.pereira@yahoo.com.br', '(62) 99999-6666', 'Rua F, 890, Setor Sul'),
	(52009873601, 'Ana Souza', 'ana.souza@gmail.com', '(62) 99999-4444', 'Rua D, 321, Setor Matista'),
	(52047382907, 'Diego Oliveira', 'diego.oliveira@yahoo.com.br', '(62) 99999-5555', 'Rua O, 654, Setor Santa Genoveva'),
	(52122342501, 'Bruno Carvalho', 'bruno.carvalho@gmail.com', '(62) 99999-7777', 'Rua G, 654, Setor Aeroposto'),
	(52234589106, 'Pedro Henrique', 'pedro.henrique@hotmail.com', '(62) 99999-7777', 'Rua Q, 321, Setor Leste Vila Nova'),
	(52511217504, 'Maria Silva', 'maria.silva@gmail.com', '(62) 99999-1111', 'Rua A, 123, Setor Oeste'),
	(52873276509, 'Camila Fernandes', 'camila.fernandes@hotmail.com', '(62) 99999-8888', 'Rua H, 321, Setor Sul'),
	(53028493800, 'Carolina Santos', 'carolina.santos@hotmail.com', '(62) 99999-4444', 'Rua N, 321, Setor Marista'),
	(53093208403, 'Luiz Costa', 'luiz.costa@hotmail.com', '(62) 99999-5555', 'Rua E, 567, Setor Coimbra'),
	(53278821307, 'Rafael Sousa', 'rafael.sousa@yahoo.com.br', '(62) 99999-9999', 'Rua I, 654, Setor Oeste'),
	(53678943204, 'Lívia Costa', 'livia.costa@gmail.com', '(62) 99999-6666', 'Rua P, 987, Setor Urias Magalhães'),
	(54093489005, 'Vitória Lima', 'vitoria.lima@yahoo.com.br', '(62) 99999-2222', 'Rua L, 654, Setor Oeste'),
	(54839853409, 'Gustavo Rodrigues', 'gustavo.rodrigues@gmail.com', '(62) 99999-3333', 'Rua M, 987, Setor Bueno'),
	(55091126405, 'Pedro Oliveira', 'pedro.oliveira@yahoo.com.br', '(62) 99999-3333', 'Rua C, 789, Setor Sul'),
	(58546738141, 'Pedro Oliveira', 'pedro.oliveira@yahoo.com', '(62) 9999-2468', 'Rua C, 789 - Setor Sul'),
	(59813174819, 'Lucas Pereira', 'lucas.pereira@yahoo.com', '(62) 9999-3579', 'Rua F, 654 - Setor Bela Vista'),
	(65934208722, 'Camila Pereira', 'camila.pereira@gmail.com', '(62) 9999-3579', 'Av. P, 789 - Setor Nova Suíça'),
	(70159890316, 'Rafaela Souza', 'rafaela.souza@hotmail.com', '(62) 9999-5791', 'Rua H, 123 - Setor Nova Suíça'),
	(71234231744, 'Carlos Santos', 'carlos.santos@yahoo.com', '(62) 9999-9135', 'Av. L, 987 - Setor Sul'),
	(83216470928, 'Bruno Ferreira', 'bruno.ferreira@yahoo.com', '(62) 9999-6802', 'Av. I, 456 - Setor Aeroporto'),
	(89023195687, 'Rodrigo Rodrigues', 'rodrigo.rodrigues@hotmail.com', '(62) 9999-1357', 'Av. N, 123 - Setor Coimbra'),
	(96389748513, 'Gabriel Martins', 'gabriel.martins@gmail.com', '(62) 9999-7913', 'Rua J, 789 - Setor Vila Nova');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela delivery.itens_pedidos
CREATE TABLE IF NOT EXISTS `itens_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) NOT NULL,
  `prato_id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_id` (`pedido_id`),
  KEY `prato_id` (`prato_id`),
  CONSTRAINT `itens_pedidos_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `itens_pedidos_ibfk_2` FOREIGN KEY (`prato_id`) REFERENCES `pratos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Copiando estrutura para tabela delivery.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf_cliente` decimal(11,0) NOT NULL,
  `cnpj_restaurante` decimal(14,0) NOT NULL,
  `endereco_entrega` varchar(200) NOT NULL,
  `observacao_pedido` text DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `data_hora` datetime NOT NULL,
  `status_pedido` enum('Pendente','Preparando','Entregando','Entregue','Cancelado') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cpf_cliente` (`cpf_cliente`),
  KEY `cnpj_restaurante` (`cnpj_restaurante`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cpf_cliente`) REFERENCES `clientes` (`cpf_cliente`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`cnpj_restaurante`) REFERENCES `restaurantes` (`cnpj_restaurante`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Copiando estrutura para tabela delivery.pratos
CREATE TABLE IF NOT EXISTS `pratos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `cnpj_restaurante` decimal(14,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `cnpj_restaurante` (`cnpj_restaurante`),
  CONSTRAINT `pratos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `pratos_ibfk_2` FOREIGN KEY (`cnpj_restaurante`) REFERENCES `restaurantes` (`cnpj_restaurante`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela delivery.pratos: ~72 rows (aproximadamente)
/*!40000 ALTER TABLE `pratos` DISABLE KEYS */;
INSERT IGNORE INTO `pratos` (`id`, `nome`, `descricao`, `preco`, `categoria_id`, `cnpj_restaurante`) VALUES
	(1, 'Feijoada Completa', 'Deliciosa feijoada com acompanhamentos', 39.90, 5, 38203905000125),
	(2, 'Frango à Parmegiana', 'Frango empanado com molho de tomate e queijo', 29.90, 6, 38203905000125),
	(3, 'Bife à Cavalo', 'Bife grelhado com ovo frito e acompanhamentos', 24.90, 5, 38203905000125),
	(4, 'Pizza Margherita', 'Pizza tradicional com molho de tomate, queijo e manjericão', 29.90, 1, 46047984000109),
	(5, 'Pizza Calabresa', 'Pizza com molho de tomate, queijo, calabresa e cebola', 31.90, 1, 46047984000109),
	(6, 'Pizza Quatro Queijos', 'Pizza com molho de tomate, queijo mussarela, queijo prato, queijo gorgonzola e queijo parmesão', 33.90, 1, 46047984000109),
	(7, 'Picanha', 'Picanha suculenta acompanhada de arroz, feijão tropeiro e vinagrete', 49.90, 5, 71947444000166),
	(8, 'Costela de Porco', 'Costela de porco assada com molho barbecue e acompanhamentos', 39.90, 5, 71947444000166),
	(9, 'Cordeiro Assado', 'Cordeiro assado lentamente com temperos especiais', 59.90, 5, 71947444000166),
	(10, 'Virado à Paulista', 'Virado de feijão com arroz, bisteca, couve, banana frita e ovo', 34.90, 5, 15551594000138),
	(11, 'Feijão Tropeiro', 'Feijão tropeiro com bacon, linguiça, torresmo e couve', 28.90, 5, 15551594000138),
	(12, 'Moqueca de Peixe', 'Moqueca de peixe com arroz e pirão', 39.90, 5, 15551594000138),
	(13, 'Spaghetti à Bolonhesa', 'Spaghetti com molho de tomate e carne moída', 26.90, 6, 76642534000195),
	(14, 'Lasanha à Moda da Casa', 'Lasanha com molho bolonhesa, queijos e presunto', 32.90, 6, 76642534000195),
	(15, 'Risoto de Funghi', 'Risoto cremoso com cogumelos funghi', 36.90, 6, 76642534000195),
	(16, 'Sashimi de Salmão', 'Fatias frescas de salmão cru', 29.90, 4, 28411330000102),
	(17, 'Uramaki Filadélfia', 'Uramaki recheado com salmão, cream cheese e pepino', 18.90, 4, 28411330000102),
	(18, 'Temaki de Atum', 'Temaki enrolado à mão com atum fresco', 14.90, 4, 28411330000102),
	(19, 'Pastel de Carne', 'Pastel frito recheado com carne moída temperada', 5.90, 100, 29328118000120),
	(20, 'Pastel de Queijo', 'Pastel frito recheado com queijo derretido', 5.90, 100, 29328118000120),
	(21, 'Pastel de Frango com Catupiry', 'Pastel frito recheado com frango e catupiry', 6.90, 100, 29328118000120),
	(22, 'Petisco de Calabresa', 'Porção de calabresa acebolada e apimentada', 19.90, 100, 90161839000100),
	(23, 'Porção de Fritas', 'Porção generosa de batata frita crocante', 14.90, 100, 90161839000100),
	(24, 'Porção de Frango a Passarinho', 'Porção de pedaços de frango fritos', 24.90, 100, 90161839000100),
	(25, 'Rodízio de Carnes', 'Diversas opções de carnes grelhadas no estilo rodízio', 54.90, 5, 12633581000140),
	(26, 'Picanha na Pedra', 'Picanha grelhada servida na pedra quente', 49.90, 5, 12633581000140),
	(27, 'Frango Grelhado', 'Frango grelhado com acompanhamentos', 29.90, 5, 12633581000140),
	(28, 'Yakissoba de Carne', 'Macarrão oriental frito com carne e legumes', 34.90, 8, 54814727000112),
	(29, 'Sushi Variado', 'Combinação de sushis diversos', 39.90, 4, 54814727000112),
	(30, 'Yakitori', 'Espetinhos de frango grelhados', 18.90, 7, 54814727000112),
	(31, 'Pizza Calzone', 'Pizza fechada com diversos recheios', 32.90, 1, 68239771000135),
	(32, 'Pizza de Frango com Catupiry', 'Pizza com frango desfiado e catupiry', 29.90, 1, 68239771000135),
	(33, 'Pizza Doce de Chocolate', 'Pizza doce com chocolate derretido', 25.90, 1, 68239771000135),
	(34, 'Carne de Panela', 'Carne cozida lentamente com temperos e acompanhamentos', 34.90, 5, 72077768000100),
	(35, 'Feijão Tropeiro', 'Feijão tropeiro com bacon, linguiça, torresmo e couve', 28.90, 5, 72077768000100),
	(36, 'Pudim de Leite', 'Sobremesa clássica de pudim de leite', 12.90, 100, 72077768000100),
	(37, 'Costela de Porco', 'Costela de porco assada com molho barbecue e acompanhamentos', 39.90, 5, 12633581000140),
	(38, 'Frango Grelhado', 'Frango grelhado com acompanhamentos', 29.90, 5, 12633581000140),
	(39, 'Bife Ancho', 'Bife de ancho suculento com molho especial', 44.90, 5, 12633581000140),
	(40, 'Camarão Empanado', 'Camarões empanados e fritos', 34.90, 7, 90161839000100),
	(41, 'Frango à Passarinho', 'Pedacinhos de frango fritos e crocantes', 24.90, 5, 90161839000100),
	(42, 'Porção de Mandioca', 'Porção de mandioca frita', 14.90, 100, 90161839000100),
	(43, 'Escondidinho de Carne Seca', 'Carne seca desfiada coberta com purê de mandioca e queijo gratinado', 39.90, 5, 72077768000100),
	(44, 'Bobó de Camarão', 'Camarões refogados em molho de azeite de dendê com purê de mandioca', 49.90, 5, 72077768000100),
	(45, 'Feijoada Completa', 'Feijoada tradicional com carnes diversas e acompanhamentos', 42.90, 5, 72077768000100),
	(46, 'Torta de Frango', 'Torta de frango com massa crocante e recheio suculento', 29.90, 5, 72077768000100),
	(47, 'Lasanha à Bolonhesa', 'Lasanha de carne moída com molho à bolonhesa e queijo gratinado', 36.90, 6, 72077768000100),
	(48, 'Picanha', 'Suculenta picanha grelhada com acompanhamentos', 59.90, 5, 12633581000140),
	(49, 'Cupim', 'Cupim assado com molho especial e acompanhamentos', 49.90, 5, 12633581000140),
	(50, 'Costela de Boi', 'Costela de boi assada com temperos e acompanhamentos', 52.90, 5, 12633581000140),
	(51, 'Cordeiro Assado', 'Cordeiro assado com temperos especiais e acompanhamentos', 59.90, 5, 12633581000140),
	(52, 'Medalhão de Filé Mignon', 'Medalhões de filé mignon grelhados com molho de sua escolha e acompanhamentos', 69.90, 5, 12633581000140),
	(53, 'Calabresa Acebolada', 'Calabresa fatiada acebolada', 26.90, 5, 90161839000100),
	(54, 'Frango à Parmegiana', 'Filé de frango empanado coberto com molho de tomate e queijo gratinado', 34.90, 5, 90161839000100),
	(55, 'Pastel de Queijo', 'Pastel frito recheado com queijo', 12.90, 100, 90161839000100),
	(56, 'Isca de Peixe', 'Isca de peixe empanada e frita', 29.90, 5, 90161839000100),
	(57, 'Bolinho de Feijoada', 'Bolinhos de feijoada fritos', 18.90, 100, 90161839000100),
	(58, 'Frango à Passarinho', 'Pedacinhos de frango fritos e temperados', 29.90, 5, 38203905000125),
	(59, 'Bife à Parmegiana', 'Bife empanado coberto com molho de tomate e queijo gratinado', 36.90, 5, 38203905000125),
	(60, 'Strogonoff de Carne', 'Cubos de carne cozidos em molho cremoso de cogumelos e creme de leite', 42.90, 5, 38203905000125),
	(61, 'Nhoque ao Molho de Tomate', 'Nhoque de batata com molho de tomate e queijo parmesão ralado', 34.90, 6, 38203905000125),
	(62, 'Salada Caprese', 'Salada de tomate, mussarela de búfala e manjericão regada com azeite de oliva', 28.90, 100, 38203905000125),
	(63, 'Risoto de Funghi', 'Risoto cremoso com cogumelos porcini', 49.90, 6, 76642534000195),
	(64, 'Espaguete à Carbonara', 'Espaguete com molho de queijo parmesão, ovos, pancetta e pimenta preta', 39.90, 6, 76642534000195),
	(65, 'Polpetone recheado', 'Carne moída temperada recheada com queijo e coberta com molho de tomate', 42.90, 6, 76642534000195),
	(66, 'Bruschetta', 'Fatias de pão italiano cobertas com tomate, manjericão e queijo parmesão', 18.90, 100, 76642534000195),
	(67, 'Tiramisù', 'Sobremesa italiana feita com biscoitos champanhe, café, queijo mascarpone e cacau', 24.90, 100, 76642534000195),
	(68, 'Pastel de Carne', 'Pastel frito recheado com carne moída temperada', 8.90, 100, 29328118000120),
	(69, 'Pastel de Queijo', 'Pastel frito recheado com queijo', 8.90, 100, 29328118000120),
	(70, 'Pastel de Frango', 'Pastel frito recheado com frango desfiado e temperado', 8.90, 100, 29328118000120),
	(71, 'Pastel de Palmito', 'Pastel frito recheado com palmito', 8.90, 100, 29328118000120),
	(72, 'Pastel de Nutella', 'Pastel frito recheado com Nutella', 12.90, 100, 29328118000120);
/*!40000 ALTER TABLE `pratos` ENABLE KEYS */;

-- Copiando estrutura para tabela delivery.restaurantes
CREATE TABLE IF NOT EXISTS `restaurantes` (
  `cnpj_restaurante` decimal(14,0) NOT NULL,
  `razao_social` varchar(100) NOT NULL,
  `nome_fantasia` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  PRIMARY KEY (`cnpj_restaurante`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela delivery.restaurantes: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `restaurantes` DISABLE KEYS */;
INSERT IGNORE INTO `restaurantes` (`cnpj_restaurante`, `razao_social`, `nome_fantasia`, `email`, `telefone`, `endereco`) VALUES
	(12633581000140, 'Churrascaria Tchê Ltda.', 'Tchê', 'contato@churrascariaTche.com.br', '(62) 3215-0009', 'Avenida São João, 456, Setor Bueno'),
	(15551594000138, 'Restaurante do Zé Ltda.', 'Do Zé', 'contato@restauranteDoZe.com.br', '(62) 3214-0004', 'Rua das Pedras, 321, Setor Sul'),
	(28411330000102, 'Sushi House Ltda.', 'Sushi House', 'contato@sushiHouse.com.br', '(62) 3278-0006', 'Rua dos Diamantes, 789, Setor Oeste'),
	(29328118000120, 'Pastelaria Central Ltda.', 'Pastelaria Central', 'contato@pastelariaCentral.com.br', '(62) 3241-0007', 'Avenida Tocantins, 234, Setor Central'),
	(38203905000125, 'Restaurante Bom Gosto Ltda.', 'Bom Gosto', 'contato@restauranteBomGosto.com.br', '(62) 3232-0001', 'Rua das Flores, 123, Setor Central'),
	(46047984000109, 'Pizzaria Bella Napoli Ltda.', 'Bella Napoli', 'contato@pizzariaBellaNapoli.com.br', '(62) 3222-0002', 'Avenida Brasil, 456, Setor Oeste'),
	(54814727000112, 'Restaurante Oriental Ltda.', 'Oriental', 'contato@restauranteOriental.com.br', '(62) 3232-0010', 'Rua dos Jardins, 789, Setor Marista'),
	(68239771000135, 'Pizza e Companhia Ltda.', 'Pizza e Companhia', 'contato@pizzaeCompanhia.com.br', '(62) 3222-0011', 'Rua dos Pinheiros, 321, Setor Sudoeste'),
	(71947444000166, 'Churrascaria Gaúcha Ltda.', 'Gaúcha', 'contato@churrascariaGaucha.com.br', '(62) 3285-0003', 'Rua São Paulo, 789, Setor Leste'),
	(72077768000100, 'Restaurante da Vovó Ltda.', 'Da Vovó', 'contato@restauranteDaVovo.com.br', '(62) 3285-0012', 'Avenida das Flores, 654, Setor Leste'),
	(76642534000195, 'Cantina Italiana Ltda.', 'Cantina Italiana', 'contato@cantinaItaliana.com.br', '(62) 3254-0005', 'Rua do Comércio, 654, Setor Aeroporto'),
	(90161839000100, 'Bar do Zé Ltda.', 'Bar do Zé', 'contato@barDoZe.com.br', '(62) 3281-0008', 'Rua das Oliveiras, 123, Setor Sul');
/*!40000 ALTER TABLE `restaurantes` ENABLE KEYS */;

