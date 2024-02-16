SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `itens_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) NOT NULL,
  `prato_id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_id` (`pedido_id`),
  KEY `prato_id` (`prato_id`),
  CONSTRAINT `itens_pedidos_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `itens_pedidos_ibfk_2` FOREIGN KEY (`prato_id`) REFERENCES `pratos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


LOCK TABLES `itens_pedidos` WRITE;
/*!40000 ALTER TABLE `itens_pedidos` DISABLE KEYS */;
INSERT INTO `itens_pedidos` VALUES (1,1,3,2),(2,1,8,1),(3,2,7,1),(4,2,9,2),(5,3,1,1),(6,3,4,1),(7,3,5,1),(8,4,2,1),(9,4,6,2),(10,4,10,1),(11,5,1,1),(12,5,3,1),(13,6,4,1),(14,6,7,1),(15,6,9,1),(16,7,2,2),(17,7,8,1),(18,8,5,1),(19,8,6,1),(20,8,10,2),(21,9,3,1),(22,9,7,2),(23,10,1,1),(24,10,4,1),(25,10,9,1),(26,20,3,1),(27,20,7,1),(28,19,1,1),(29,19,5,2),(30,18,2,1),(31,18,4,1),(32,18,6,1),(33,17,1,1),(34,17,3,1),(35,17,5,1),(36,16,4,1),(37,16,7,1),(38,16,9,1),(39,15,2,1),(40,15,6,1),(41,15,10,2),(42,14,3,1),(43,14,8,1),(44,13,4,1),(45,13,5,1),(46,13,7,1),(47,11,2,1),(48,11,6,2),(49,11,8,1),(50,12,1,1),(51,12,3,1),(52,12,9,1),(53,1,3,2),(54,1,8,1),(55,2,7,1),(56,2,9,2),(57,3,1,1),(58,3,4,1),(59,3,5,1),(60,4,2,1),(61,4,6,2),(62,4,10,1),(63,5,1,1),(64,5,3,1),(65,6,4,1),(66,6,7,1),(67,6,9,1),(68,7,2,2),(69,7,8,1),(70,8,5,1),(71,8,6,1),(72,8,10,2),(73,9,3,1),(74,9,7,2),(75,10,1,1),(76,10,4,1),(77,10,9,1),(78,20,3,1),(79,20,7,1),(80,19,1,1),(81,19,5,2),(82,18,2,1),(83,18,4,1),(84,18,6,1),(85,17,1,1),(86,17,3,1),(87,17,5,1),(88,16,4,1),(89,16,7,1),(90,16,9,1),(91,15,2,1),(92,15,6,1),(93,15,10,2),(94,14,3,1),(95,14,8,1),(96,13,4,1),(97,13,5,1),(98,13,7,1),(99,11,2,1),(100,11,6,2),(101,11,8,1),(102,12,1,1),(103,12,3,1),(104,12,9,1);
/*!40000 ALTER TABLE `itens_pedidos` ENABLE KEYS */;
UNLOCK TABLES;


CREATE TABLE `pratos` (
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


LOCK TABLES `pratos` WRITE;
/*!40000 ALTER TABLE `pratos` DISABLE KEYS */;
INSERT INTO `pratos` VALUES (1,'Feijoada Completa','Deliciosa feijoada com acompanhamentos',39.90,5,38203905000125),(2,'Frango à Parmegiana','Frango empanado com molho de tomate e queijo',31.90,6,38203905000125),(3,'Bife à Cavalo','Bife grelhado com ovo frito e acompanhamentos',26.90,5,38203905000125),(4,'Pizza Margherita','Pizza tradicional com molho de tomate, queijo e manjericão',29.90,1,46047984000109),(5,'Pizza Calabresa','Pizza com molho de tomate, queijo, calabresa e cebola',31.90,1,46047984000109),(6,'Pizza Quatro Queijos','Pizza com molho de tomate, queijo mussarela, queijo prato, queijo gorgonzola e queijo parmesão',33.90,1,46047984000109),(7,'Picanha','Picanha suculenta acompanhada de arroz, feijão tropeiro e vinagrete',49.90,5,71947444000166),(8,'Costela de Porco','Costela de porco assada com molho barbecue e acompanhamentos',39.90,5,71947444000166),(9,'Cordeiro Assado','Cordeiro assado lentamente com temperos especiais',59.90,5,71947444000166),(10,'Virado à Paulista','Virado de feijão com arroz, bisteca, couve, banana frita e ovo',34.90,5,15551594000138),(11,'Feijão Tropeiro','Feijão tropeiro com bacon, linguiça, torresmo e couve',28.90,5,15551594000138),(12,'Moqueca de Peixe','Moqueca de peixe com arroz e pirão',39.90,5,15551594000138),(13,'Spaghetti à Bolonhesa','Spaghetti com molho de tomate e carne moída',26.90,6,76642534000195),(14,'Lasanha à Moda da Casa','Lasanha com molho bolonhesa, queijos e presunto',32.90,6,76642534000195),(15,'Risoto de Funghi','Risoto cremoso com cogumelos funghi',36.90,6,76642534000195),(16,'Sashimi de Salmão','Fatias frescas de salmão cru',29.90,4,28411330000102),(17,'Uramaki Filadélfia','Uramaki recheado com salmão, cream cheese e pepino',18.90,4,28411330000102),(18,'Temaki de Atum','Temaki enrolado à mão com atum fresco',14.90,4,28411330000102),(19,'Pastel de Carne','Pastel frito recheado com carne moída temperada',5.90,100,29328118000120),(20,'Pastel de Queijo','Pastel frito recheado com queijo derretido',5.90,100,29328118000120),(21,'Pastel de Frango com Catupiry','Pastel frito recheado com frango e catupiry',6.90,100,29328118000120),(22,'Petisco de Calabresa','Porção de calabresa acebolada e apimentada',19.90,100,90161839000100),(23,'Porção de Fritas','Porção generosa de batata frita crocante',14.90,100,90161839000100),(24,'Porção de Frango a Passarinho','Porção de pedaços de frango fritos',24.90,100,90161839000100),(25,'Rodízio de Carnes','Diversas opções de carnes grelhadas no estilo rodízio',54.90,5,12633581000140),(26,'Picanha na Pedra','Picanha grelhada servida na pedra quente',49.90,5,12633581000140),(27,'Frango Grelhado','Frango grelhado com acompanhamentos',29.90,5,12633581000140),(28,'Yakissoba de Carne','Macarrão oriental frito com carne e legumes',34.90,8,54814727000112),(29,'Sushi Variado','Combinação de sushis diversos',39.90,4,54814727000112),(30,'Yakitori','Espetinhos de frango grelhados',18.90,7,54814727000112),(31,'Pizza Calzone','Pizza fechada com diversos recheios',32.90,1,68239771000135),(32,'Pizza de Frango com Catupiry','Pizza com frango desfiado e catupiry',29.90,1,68239771000135),(33,'Pizza Doce de Chocolate','Pizza doce com chocolate derretido',25.90,1,68239771000135),(34,'Carne de Panela','Carne cozida lentamente com temperos e acompanhamentos',34.90,5,72077768000100),(35,'Feijão Tropeiro','Feijão tropeiro com bacon, linguiça, torresmo e couve',28.90,5,72077768000100),(36,'Pudim de Leite','Sobremesa clássica de pudim de leite',12.90,100,72077768000100),(37,'Costela de Porco','Costela de porco assada com molho barbecue e acompanhamentos',39.90,5,12633581000140),(38,'Frango Grelhado','Frango grelhado com acompanhamentos',29.90,5,12633581000140),(39,'Bife Ancho','Bife de ancho suculento com molho especial',44.90,5,12633581000140),(40,'Camarão Empanado','Camarões empanados e fritos',34.90,7,90161839000100),(41,'Frango à Passarinho','Pedacinhos de frango fritos e crocantes',24.90,5,90161839000100),(42,'Porção de Mandioca','Porção de mandioca frita',14.90,100,90161839000100),(43,'Escondidinho de Carne Seca','Carne seca desfiada coberta com purê de mandioca e queijo gratinado',39.90,5,72077768000100),(44,'Bobó de Camarão','Camarões refogados em molho de azeite de dendê com purê de mandioca',49.90,5,72077768000100),(45,'Feijoada Completa','Feijoada tradicional com carnes diversas e acompanhamentos',42.90,5,72077768000100),(46,'Torta de Frango','Torta de frango com massa crocante e recheio suculento',29.90,5,72077768000100),(47,'Lasanha à Bolonhesa','Lasanha de carne moída com molho à bolonhesa e queijo gratinado',36.90,6,72077768000100),(48,'Picanha','Suculenta picanha grelhada com acompanhamentos',59.90,5,12633581000140),(49,'Cupim','Cupim assado com molho especial e acompanhamentos',49.90,5,12633581000140),(50,'Costela de Boi','Costela de boi assada com temperos e acompanhamentos',52.90,5,12633581000140),(51,'Cordeiro Assado','Cordeiro assado com temperos especiais e acompanhamentos',59.90,5,12633581000140),(52,'Medalhão de Filé Mignon','Medalhões de filé mignon grelhados com molho de sua escolha e acompanhamentos',69.90,5,12633581000140),(53,'Calabresa Acebolada','Calabresa fatiada acebolada',26.90,5,90161839000100),(54,'Frango à Parmegiana','Filé de frango empanado coberto com molho de tomate e queijo gratinado',34.90,5,90161839000100),(55,'Pastel de Queijo','Pastel frito recheado com queijo',12.90,100,90161839000100),(56,'Isca de Peixe','Isca de peixe empanada e frita',29.90,5,90161839000100),(57,'Bolinho de Feijoada','Bolinhos de feijoada fritos',18.90,100,90161839000100),(58,'Frango à Passarinho','Pedacinhos de frango fritos e temperados',29.90,5,38203905000125),(59,'Bife à Parmegiana','Bife empanado coberto com molho de tomate e queijo gratinado',36.90,5,38203905000125),(60,'Strogonoff de Carne','Cubos de carne cozidos em molho cremoso de cogumelos e creme de leite',42.90,5,38203905000125),(61,'Nhoque ao Molho de Tomate','Nhoque de batata com molho de tomate e queijo parmesão ralado',34.90,6,38203905000125),(62,'Salada Caprese','Salada de tomate, mussarela de búfala e manjericão regada com azeite de oliva',28.90,100,38203905000125),(63,'Risoto de Funghi','Risoto cremoso com cogumelos porcini',49.90,6,76642534000195),(64,'Espaguete à Carbonara','Espaguete com molho de queijo parmesão, ovos, pancetta e pimenta preta',39.90,6,76642534000195),(65,'Polpetone recheado','Carne moída temperada recheada com queijo e coberta com molho de tomate',42.90,6,76642534000195),(66,'Bruschetta','Fatias de pão italiano cobertas com tomate, manjericão e queijo parmesão',18.90,100,76642534000195),(67,'Tiramisù','Sobremesa italiana feita com biscoitos champanhe, café, queijo mascarpone e cacau',24.90,100,76642534000195),(68,'Pastel de Carne','Pastel frito recheado com carne moída temperada',8.90,100,29328118000120),(69,'Pastel de Queijo','Pastel frito recheado com queijo',8.90,100,29328118000120),(70,'Pastel de Frango','Pastel frito recheado com frango desfiado e temperado',8.90,100,29328118000120),(71,'Pastel de Palmito','Pastel frito recheado com palmito',8.90,100,29328118000120),(72,'Pastel de Nutella','Pastel frito recheado com Nutella',12.90,100,29328118000120);
/*!40000 ALTER TABLE `pratos` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Pizza'),(2,'Hambúrguer'),(3,'Comida Mexicana'),(4,'Comida Japonesa'),(5,'Comida Brasileira'),(6,'Comida Italiana'),(7,'Comida Árabe'),(8,'Comida Chinesa'),(9,'Comida Vegetariana'),(10,'Comida Vegana'),(100,'Outros');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TABLE `clientes` (
  `cpf_cliente` decimal(11,0) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  PRIMARY KEY (`cpf_cliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (15467842093,'Gustavo Almeida','gustavo.almeida@yahoo.com','(62) 99888-2465','Rua O, 456 - Setor Bela Vista'),(17540837166,'Fernanda Almeida','fernanda.almeida@hotmail.com','(62) 9999-2468','Av. E, 987 - Setor Marista'),(26964139584,'Mariana Costa','mariana.costa@gmail.com','(62) 9999-4680','Av. G, 789 - Setor Coimbra'),(30387686458,'João da Silva','joao.silva@gmail.com','(62) 9999-1234','Rua A, 123 - Setor Oeste'),(34459317900,'Maria Santos','maria.santos@hotmail.com','(62) 9999-5678','Av. B, 456 - Setor Bueno'),(34578963891,'Isabela Oliveira','isabela.oliveira@gmail.com','(62) 9999-0246','Rua M, 654 - Setor Marista'),(42361975076,'Amanda Silva','amanda.silva@hotmail.com','(62) 9999-8024','Rua K, 321 - Setor Bueno'),(47693271887,'Ana Rodrigues','ana.rodrigues@gmail.com','(62) 9999-1357','Rua D, 321 - Setor Leste'),(50234528902,'Lucas Gomes','lucas.gomes@hotmail.com','(62) 99999-1111','Rua K, 321, Setor Pedro Ludovico'),(50567890106,'Isabela Almeida','isabela.almeida@gmail.com','(62) 99999-0000','Rua J, 987, Setor Pedro Ludovico'),(51223498510,'João Santos','joao.santos@hotmail.com','(62) 99999-2222','Rua B, 456, Setor Bela Vista'),(51537849007,'Mariana Pereira','mariana.pereira@yahoo.com.br','(62) 99999-6666','Rua F, 890, Setor Sul'),(52009873601,'Ana Souza','ana.souza@gmail.com','(62) 99999-4444','Rua D, 321, Setor Matista'),(52047382907,'Diego Oliveira','diego.oliveira@yahoo.com.br','(62) 99999-5555','Rua O, 654, Setor Santa Genoveva'),(52122342501,'Bruno Carvalho','bruno.carvalho@gmail.com','(62) 99999-7777','Rua G, 654, Setor Aeroposto'),(52234589106,'Pedro Henrique','pedro.henrique@hotmail.com','(62) 99999-7777','Rua Q, 321, Setor Leste Vila Nova'),(52511217504,'Maria Silva','maria.silva@gmail.com','(62) 99999-1111','Rua A, 123, Setor Oeste'),(52873276509,'Camila Fernandes','camila.fernandes@hotmail.com','(62) 99999-8888','Rua H, 321, Setor Sul'),(53028493800,'Carolina Santos','carolina.santos@hotmail.com','(62) 99999-4444','Rua N, 321, Setor Marista'),(53093208403,'Luiz Costa','luiz.costa@hotmail.com','(62) 99999-5555','Rua E, 567, Setor Coimbra'),(53278821307,'Rafael Sousa','rafael.sousa@yahoo.com.br','(62) 99999-9999','Rua I, 654, Setor Oeste'),(53678943204,'Lívia Costa','livia.costa@gmail.com','(62) 99999-6666','Rua P, 987, Setor Urias Magalhães'),(54093489005,'Vitória Lima','vitoria.lima@yahoo.com.br','(62) 99999-2222','Rua L, 654, Setor Oeste'),(54839853409,'Gustavo Rodrigues','gustavo.rodrigues@gmail.com','(62) 99999-3333','Rua M, 987, Setor Bueno'),(55091126405,'Pedro Oliveira','pedro.oliveira@yahoo.com.br','(62) 99999-3333','Rua C, 789, Setor Sul'),(58546738141,'Pedro Oliveira','pedro.oliveira@yahoo.com','(62) 9999-2468','Rua C, 789 - Setor Sul'),(59813174819,'Lucas Pereira','lucas.pereira@yahoo.com','(62) 9999-3579','Rua F, 654 - Setor Bela Vista'),(65934208722,'Camila Pereira','camila.pereira@gmail.com','(62) 9999-3579','Av. P, 789 - Setor Nova Suíça'),(70159890316,'Rafaela Souza','rafaela.souza@hotmail.com','(62) 9999-5791','Rua H, 123 - Setor Nova Suíça'),(71234231744,'Carlos Santos','carlos.santos@yahoo.com','(62) 9999-9135','Av. L, 987 - Setor Sul'),(83216470928,'Bruno Ferreira','bruno.ferreira@yahoo.com','(62) 9999-6802','Av. I, 456 - Setor Aeroporto'),(89023195687,'Rodrigo Rodrigues','rodrigo.rodrigues@hotmail.com','(62) 9999-1357','Av. N, 123 - Setor Coimbra'),(96389748513,'Gabriel Martins','gabriel.martins@gmail.com','(62) 9999-7913','Rua J, 789 - Setor Vila Nova');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;


CREATE TABLE `pedidos` (
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,30387686458,28411330000102,'Rua A, 123 - Setor Oeste','Sem cebola',35.90,'2023-05-16 12:30:00','Entregue'),(2,34459317900,54814727000112,'Av. B, 456 - Setor Bueno','Picante',45.50,'2023-05-16 13:15:00','Entregue'),(3,58546738141,12633581000140,'Rua C, 789 - Setor Sul','Adicionar refrigerante',60.00,'2023-05-16 18:00:00','Entregue'),(4,47693271887,71947444000166,'Rua D, 321 - Setor Leste','Sem pimenta',75.80,'2023-05-16 20:30:00','Entregue'),(5,17540837166,54814727000112,'Av. E, 987 - Setor Marista','Entrega rápida',22.50,'2023-05-17 11:45:00','Entregue'),(6,59813174819,12633581000140,'Rua F, 654 - Setor Bela Vista','Sem cebola',32.00,'2023-05-17 13:30:00','Entregue'),(7,26964139584,28411330000102,'Av. G, 789 - Setor Coimbra','Sem glúten',28.90,'2023-05-17 19:15:00','Entregue'),(8,70159890316,71947444000166,'Rua H, 123 - Setor Nova Suíça','Adicionar molho extra',42.75,'2023-05-17 21:00:00','Entregue'),(9,83216470928,54814727000112,'Av. I, 456 - Setor Aeroporto','Retirar cebola',18.50,'2023-05-18 12:45:00','Entregue'),(10,96389748513,12633581000140,'Rua J, 789 - Setor Vila Nova','Picante',30.00,'2023-05-18 14:30:00','Entregue'),(11,42361975076,28411330000102,'Rua K, 321 - Setor Bueno','Sem lactose',35.80,'2023-05-18 18:30:00','Entregue'),(12,71234231744,71947444000166,'Av. L, 987 - Setor Sul','Retirar cebola',28.50,'2023-05-18 20:15:00','Entregue'),(13,34578963891,12633581000140,'Rua M, 654 - Setor Marista','Sem pimenta',24.50,'2023-05-19 11:45:00','Entregue'),(14,89023195687,54814727000112,'Av. N, 123 - Setor Coimbra','Entrega rápida',18.00,'2023-05-19 13:30:00','Entregue'),(15,15467842093,71947444000166,'Rua O, 456 - Setor Bela Vista','Adicionar queijo',36.75,'2023-05-19 19:15:00','Entregue'),(16,65934208722,28411330000102,'Av. P, 789 - Setor Nova Suíça','Trocar arroz por batata frita',42.00,'2023-05-20 10:45:00','Entregue'),(17,52511217504,71947444000166,'Rua A, 123 - Setor Oeste','Sem cebola',22.50,'2023-05-20 14:30:00','Entregue'),(18,51223498510,54814727000112,'Rua B, 456 - Setor Bela Vista','Adicionar molho barbecue',27.00,'2023-05-20 18:30:00','Entregue'),(19,55091126405,71947444000166,'Rua C, 789 - Setor Sul','Entrega com urgência',29.80,'2023-05-20 20:15:00','Entregue'),(20,52009873601,54814727000112,'Rua D, 321 - Setor Matista','Retirar cebola',14.50,'2023-05-21 11:45:00','Entregue'),(21,52511217504,12633581000140,'Rua X, 123 - Bairro A','Sem cebola',45.90,'2023-05-21 13:30:00','Entregando'),(22,54093489005,54814727000112,'Av. Y, 456 - Bairro B','Adicionar molho picante',32.50,'2023-05-21 15:45:00','Pendente'),(23,50567890106,15551594000138,'Rua Z, 789 - Bairro C','Retirar tomate',18.00,'2023-05-22 10:15:00','Pendente'),(24,53093208403,46047984000109,'Av. W, 321 - Bairro D','Entrega rápida',23.50,'2023-05-22 12:30:00','Pendente'),(25,52047382907,15551594000138,'Rua V, 987 - Bairro E','Trocar arroz por batata frita',38.75,'2023-05-22 16:15:00','Pendente'),(26,53093208403,46047984000109,'Av. U, 654 - Bairro F','Sem lactose',29.00,'2023-05-23 09:45:00','Pendente'),(27,52234589106,68239771000135,'Rua T, 321 - Bairro G','Adicionar maionese',16.50,'2023-05-23 11:30:00','Pendente'),(28,51537849007,76642534000195,'Av. S, 987 - Bairro H','Retirar pimenta',21.80,'2023-05-23 14:15:00','Pendente'),(29,52122342501,76642534000195,'Rua R, 654 - Bairro I','Sem cebola',32.00,'2023-05-24 10:30:00','Pendente'),(30,53028493800,76642534000195,'Av. Q, 321 - Bairro J','Adicionar molho apimentado',28.50,'2023-05-24 12:45:00','Entregando'),(31,54093489005,72077768000100,'Rua X, 123 - Bairro A','Sem cebola',45.90,'2023-05-25 13:30:00','Entregando');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;


CREATE TABLE `restaurantes` (
  `cnpj_restaurante` decimal(14,0) NOT NULL,
  `razao_social` varchar(100) NOT NULL,
  `nome_fantasia` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  PRIMARY KEY (`cnpj_restaurante`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


LOCK TABLES `restaurantes` WRITE;
/*!40000 ALTER TABLE `restaurantes` DISABLE KEYS */;
INSERT INTO `restaurantes` VALUES (12633581000140,'Churrascaria Tchê Ltda.','Tchê','contato@churrascariaTche.com.br','(62) 3215-0009','Avenida São João, 456, Setor Bueno'),(15551594000138,'Restaurante do Zé Ltda.','Do Zé','contato@restauranteDoZe.com.br','(62) 3214-0004','Rua das Pedras, 321, Setor Sul'),(28411330000102,'Sushi House Ltda.','Sushi House','contato@sushiHouse.com.br','(62) 3278-0006','Rua dos Diamantes, 789, Setor Oeste'),(29328118000120,'Pastelaria Central Ltda.','Pastelaria Central','contato@pastelariaCentral.com.br','(62) 3241-0007','Avenida Tocantins, 234, Setor Central'),(38203905000125,'Restaurante Bom Gosto Ltda.','Bom Gosto','contato@restauranteBomGosto.com.br','(62) 3232-0001','Rua das Flores, 123, Setor Central'),(46047984000109,'Pizzaria Bella Napoli Ltda.','Bella Napoli','contato@pizzariaBellaNapoli.com.br','(62) 3222-0002','Avenida Brasil, 456, Setor Oeste'),(54814727000112,'Restaurante Oriental Ltda.','Oriental','contato@restauranteOriental.com.br','(62) 3232-0010','Rua dos Jardins, 789, Setor Marista'),(68239771000135,'Pizza e Companhia Ltda.','Pizza e Companhia','contato@pizzaeCompanhia.com.br','(62) 3222-0011','Rua dos Pinheiros, 321, Setor Sudoeste'),(71947444000166,'Churrascaria Gaúcha Ltda.','Gaúcha','contato@churrascariaGaucha.com.br','(62) 3285-0003','Rua São Paulo, 789, Setor Leste'),(72077768000100,'Restaurante da Vovó Ltda.','Da Vovó','contato@restauranteDaVovo.com.br','(62) 3285-0012','Avenida das Flores, 654, Setor Leste'),(76642534000195,'Cantina Italiana Ltda.','Cantina Italiana','contato@cantinaItaliana.com.br','(62) 3254-0005','Rua do Comércio, 654, Setor Aeroporto'),(90161839000100,'Bar do Zé Ltda.','Bar do Zé','contato@barDoZe.com.br','(62) 3281-0008','Rua das Oliveiras, 123, Setor Sul');
/*!40000 ALTER TABLE `restaurantes` ENABLE KEYS */;
UNLOCK TABLES;

SET FOREIGN_KEY_CHECKS = 1;
