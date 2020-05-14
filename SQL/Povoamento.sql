-- Universidade do Minho
-- Mestrado Integrado em Engenharia Informática
-- Unidade Curricular de Bases de Dados
-- 2019/2020
-- Povoamento do Trabalho Prático 

USE sportsmedicalcenter;

-- Povoamento da tabela Código Postal

INSERT INTO `Codigo_Postal` (`cod_postal`,`localidade`) VALUES ("4000-113","Porto");
INSERT INTO `Codigo_Postal` (`cod_postal`,`localidade`) VALUES ("1000-024","Lisboa");
INSERT INTO `Codigo_Postal` (`cod_postal`,`localidade`) VALUES ("5300-017","Bragança");
INSERT INTO `Codigo_Postal` (`cod_postal`,`localidade`) VALUES ("8000-079","Faro");

-- Povoamento da tabela Especialidade

INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Cardiologia");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Oftalmologia");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Fisioterapeuta");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Genética Médica");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Medicina Desportiva");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Neurologia");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Oncologia");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Ortopedia Médica");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Enfermagem");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Psiquiatria");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Pneumologia");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Endocrinologia e Nutrição");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Cirurgia Geral");
INSERT INTO `Especialidade` (`id`,`designacao`) VALUES (null,"Anestesiologia");

-- Povoamento do Profissional_de_Saude

INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Rua St. Ivo Pires 3814 Odivelas",910578274,"1990-08-18","Jaime Fernandes de Castro","8000-079",2);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Travessa Valente, 6, 78º Dir. 1330 Santana",278993565,"1971-07-05","Vasco Rodrigo de Castro","4000-113",1);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Rua São. Tatiana 7091 Cartaxo",252413618,"1972-04-12","Tatiana Yara Vicente Vieira","4000-113",10);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Travessa St. Emanuel Rocha, 64, 92º Eq. 7834 Estremoz",924777166,"1960-01-11","Carlos William Rodrigues","8000-079",12);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Avenida São. Gabriela, nº 734 5744 Póvoa de Varzim",923656645,"1988-08-18","Débora Rocha Rocha","4000-113",8);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Largo Beatriz Nunes 5194-788 Abrantes",217182585,"1974-09-22","Leandro Mateus Henriques de Barros","1000-024",14);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Largo Viviane Rocha, nº 253 8801 Oliveira de Azeméis",235282953,"1983-06-17","Ariana Maia Mendes","5300-017",7);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Largo São. Helena 3264 Beja",914160588,"1955-10-23","Diogo Barbosa","5300-017",6);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Rua de Rodrigues 4685 Peniche",255439175,"1976-09-23","Ana Benedita Andrade Pinho","1000-024",5);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Largo de Sousa, nº 5, 3º Dr. 1339 Ourém",281220098,"1989-07-02","Alexandra Amaral de Nogueira","8000-079",4);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Rua de Martins 1381 Montijo",267149016,"1991-04-02","Wilson Carvalho de Gomes","5300-017",11);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Largo Andreia Pires, nº 59 2894-036 Rio Tinto",291973499,"1980-10-10","Luna Domingues Barbosa","4000-113",3);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Avenida Mário Fernandes 9674 Vila Praia da Vitória",271202514,"1978-04-03","Ivan João Vieira Nascimento Andrade","5300-017",13);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Travessa de Barbosa 8314 Mangualde",221673897,"1959-02-24","Filipa Mariana Vieira Barbosa Neves","4000-113",13);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"R. Sérgio Costa, nº 7, 54º Dir. 5141-749 Tomar",916407754,"1971-12-16","Jorge Vicente Batista Moreira Coelho","1000-024",12);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Travessa Campos 1365 Machico",910578274,"1990-01-29","Teresa Júlia de Melo","1000-024",8);
INSERT INTO `Profissional_de_Saude` (`id`,`morada`,`contacto`,`data_de_nascimento`,`nome`,`codigo_postal`,`especialidade_id`) VALUES (null,"Travessa São. Tatiana, 16, 38º Dir. 4041-601 Lixa",270300727,"1963-04-02","Joaquim Vicente Ribeiro Lima Rodrigues","4000-113",9);

-- Povoamento da tabela Clube
INSERT INTO `Clube` (`id`,`designacao`) VALUES (null,"Clube de Atletismo de Amarante");
INSERT INTO `Clube` (`id`,`designacao`) VALUES (null,"Clube de Atletismo da Povoa");
INSERT INTO `Clube` (`id`,`designacao`) VALUES (null,"Clube de Atletismo de Vinhaes");

-- Povoamento da tabela Atleta

INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (219341494,"Benedita Lima Moura","Rua de Rodrigues, nº 857, Bl. 9 3771-583 Montemor-o-Novo","1996-11-25",938487805,"F","Português","4000-113",0,1);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (255390343,"Nuno Leite de Santos","Avenida de Rodrigues 4094 Loures","1978-01-29",991132457,"M","Sueco","4000-113",0,2);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (200593153,"Letícia Vanessa Gonçalves Soares","Travessa St. Ricardo Pacheco, nº 642 2951-083 Machico","1991-12-29",961789752,"M","Brasileiro","1000-024",0,2);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (208569766,"Ana Figueiredo Anjos","R. de Vicente 5379 Montemor-o-Novo","1997-01-21",916991684,"F","Russo","4000-113",0,2);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (250898268,"Tiago Márcio Gomes de Gomes","R. Jesus, nº 441 3730-830 Portimão","1986-10-12",960795790,"M","Espanhol","1000-024",0,1);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (215748417,"Íris Garcia Fonseca","Largo de Ferreira 1230-212 Setúbal","1971-06-13",918830396,"F","Françês","8000-079",0,2);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (256068100,"Leandro Faria de Gomes","Largo St. Viviane Amorim, 52 7055 Anadia","1968-06-28",991137457,"M","Chinês","8000-079",0,3);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (271864460,"Vicente Hélder Marques de Amorim","Largo Telmo Valente, 9 1735-014 Setúbal","1986-04-03",962562388,"F","Alemão","8000-079",0,1);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (230770304,"Daniel Azevedo Anjos","Av. de Nogueira, Vale de Cambra","1956-07-26",917186122,"M","Inglês","4000-113",0,2);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (233502033,"Enzo Miranda Pacheco","Largo de Matias 4269 Marco de Canaveses, Vale de Cambra","1977-04-19 ",915168866,"M","Norte Americano","8000-079",0,3);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (270961062,"David Torres Torres","R. Reis 1649 Abrantes","1994-10-30",934457805,"F","Argentino","8000-079",0,null);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (256113122,"Júlia Renata Cunha","Rua Carneiro, 231, 11º Dr. 6271 Peso da Régua","1965-07-26",967740907,"M","Polaco","8000-079",0,1);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (222382260,"Alexandra Débora Teixeira Pacheco","Largo São. Soraia, 3, Bloco 1 6659 Vila Praia da Vitória","1969-06-20",915980629,"M","Dinamarquês","4000-113",0,2);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (200461184,"Mariana Pinho de Mendes","Av. Campos, nº 898","1962-06-07",918640617,"F","Holandês","8000-079",0,3);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (282273590,"David Brito","Avenida Igor Brito, nº 77 3344 Viana do Castelo","1994-01-28",252371563,"M","Australiano","5300-017",0,2);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (215267664,"Cláudio Branco Cunha","Av. St. Liliana Andrade, 45, 6º Dr. 2060 Águeda","2000-03-05",219716902,"F","Italiano","5300-017",0,1);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (299368025,"Henrique Maia","Largo Beatriz Brito, nº 59 2059 Vendas Novas","1960-09-20",290746448,"M","Mexicano","4000-113",0,3);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (257948066,"Salvador António de Leal","Rua São. Carlos 5104-254 Ponta Delgada","1966-03-29",925273646,"F","Canadiano","1000-024",0,2);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (288011813,"Bruna Érika Campos Valente Ferreira","R. São. André, nº 328, 55º Dir. 5524 Ponta Delgada","1995-12-29",299552838,"M","Angolano","5300-017",0,3);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (225941740,"Anna Vaz de Silva","Rua St. Liliana Rodrigues, nº 998 3120-501 Oliveira de Azeméis","1959-04-06",936582729,"F","Grego","1000-024",0,2);
INSERT INTO `Atleta` (`nif`,`nome`,`morada`,`data_de_nascimento`,`contacto`,`sexo`,`nacionalidade`,`codigo_postal`,`acumulado`,`idClube`) VALUES (287426580,"Margarida Cardoso","Av. de Matos, nº 3 8190-182 Alcácer do Sal","1969-10-02",227389282,"M","Turco","1000-024",0,1);

-- Povoamento da tabela Modalidade

INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Provas de Lançamento de Peso","Peso");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Provas de Lançamento de Peso","Dardo");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Provas de Lançamento de Peso","Disco");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Provas de Lançamento de Peso","Martelo");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Combinadas","Decatlo");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Combinadas","Heptatlo");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Saltos","Altura");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Saltos","Triplo");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Saltos","Comprimento");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Saltos","Vara"); 
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Marcha","20km");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Marcha","50km");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Corridas","Obstáculos");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Corridas"," Barreiras");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Maratona","Meia");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Corridas de pista","Velocidade");
INSERT INTO `Modalidade`(`id`,`designacao`,`categoria`) VALUES (null,"Corridas de pista","Resistência");

-- Povoamento da tabela Atleta_has_Modalidade

INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (219341494,1);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (255390343,2);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (200593153,3);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (208569766,4);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (250898268,5);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (215748417,6);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (256068100,7);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (271864460,1);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (230770304,4);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (233502033,11);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (270961062,1);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (256113122,17);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (222382260,16);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (200461184,16);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (282273590,1);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (215267664,9);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (299368025,2);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (257948066,3);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (288011813,10);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (225941740,13);
INSERT INTO `Atleta_has_Modalidade` (`atleta_nif`,`modalidade_id`) VALUES (287426580,16);

-- Povoamento da tabela Teste_Clinico

INSERT INTO `Teste_Clinico`(`id`,`nome`,`preco`,`duracao`) VALUES (null,"Exame Médico Desportivo",50,1);
INSERT INTO `Teste_Clinico`(`id`,`nome`,`preco`,`duracao`) VALUES (null,"Teste de esforço cardiorrespistorório",10,1);
INSERT INTO `Teste_Clinico`(`id`,`nome`,`preco`,`duracao`) VALUES (null,"Ergoespirometria",30,1);
INSERT INTO `Teste_Clinico`(`id`,`nome`,`preco`,`duracao`) VALUES (null,"Teste de Sangue",200,1);
INSERT INTO `Teste_Clinico`(`id`,`nome`,`preco`,`duracao`) VALUES (null,"Eletrocardiograma",400,1);
INSERT INTO `Teste_Clinico`(`id`,`nome`,`preco`,`duracao`) VALUES (null,"Teste intolerância alimentar",1450,1);
INSERT INTO `Teste_Clinico`(`id`,`nome`,`preco`,`duracao`) VALUES (null,"Teste ADN Desporto",750,1);
INSERT INTO `Teste_Clinico`(`id`,`nome`,`preco`,`duracao`) VALUES (null,"Teste Antidoping",900,1);
INSERT INTO `Teste_Clinico`(`id`,`nome`,`preco`,`duracao`) VALUES (null,"Raio X",750,1);
INSERT INTO `Teste_Clinico`(`id`,`nome`,`preco`,`duracao`) VALUES (null,"Teste taxa metabólica repouso",550,1);
INSERT INTO `Teste_Clinico`(`id`,`nome`,`preco`,`duracao`) VALUES (null,"Baropodometria",20,1); 
INSERT INTO `Teste_Clinico`(`id`,`nome`,`preco`,`duracao`) VALUES (null,"Avaliação Isocinética",300,1); 

-- Povoamento da tabela Boletim_Clinico

INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-06-04 15:00:00",200461184,1,1,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-06-20 16:00:00",208569766,4,2,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-06-14 13:00:00",230770304,7,4,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-06-24 18:00:00",222382260,5,15,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-06-05 17:00:00",215267664,3,17,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-06-07 14:00:00",257948066,9,17,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-06-19 15:00:00",287426580,8,17,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-06-29 15:00:00",250898268,6,12,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2001-03-04 09:00:00",200461184,1,9,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-12-12 10:00:00",200461184,5,15,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2005-03-04 09:00:00",299368025,1,3,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2021-03-04 10:00:00",200461184,4,9,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2001-03-04 09:00:00",200461184,1,17,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-12-12 11:00:00",200461184,9,17,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-12-12 12:00:00",230770304,9,17,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-02-01 09:00:00",250898268,11,13,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2020-02-02 10:00:00",250898268,3,17,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2001-06-14 02:00:00",250898268,11,13,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2005-06-30 01:00:00",215748417,9,17,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2021-05-14 00:00:00",200461184,7,4,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2006-04-23 19:00:00",271864460,5,15,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2010-07-17 23:00:00",215748417,5,15,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2011-08-21 22:00:00",222382260,6,12,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2016-12-12 21:00:00",200461184,1,3,0,1);
INSERT INTO `Boletim_Clinico`(`id`,`data_marcacao`,`atleta_nif`,`testeclinico_id`,`profsaude_id`,`reagendado`,`pago`) VALUES (null,"2019-02-13 20:00:00",288011813,1,9,0,1);

-- Povoamento da tabela Especialidade_has_teste_clinico

INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (5,1);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (9,1);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (10,1);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (2,1);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (1,2);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (11,2);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (9,3);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (1,4);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (5,4);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (9,4);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (12,5);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (3,6);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (4,6);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (5,7);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (12,7);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (9,7);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (9,8);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (9,9);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (12,10);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (3,11);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (5,11);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (1,12);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (3,12);
INSERT INTO `Teste_Clinico_has_Especialidade` (`especialidade_id`,`teste_clinico_id`) VALUES (5,12);

-- Povoamento da tabela Equipa

INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (1,1);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (2,1);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (3,1);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (2,2);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (5,2);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (4,2);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (4,3);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (7,3);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (1,3);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (15,4);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (17,4);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (9,4);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (17,5);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (2,5);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (5,5);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (17,6);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (8,6);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (12,6);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (17,7);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (16,7);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (4,7);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (12,8);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (2,8);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (5,8);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (9,9);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (15,10);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (3,11);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (9,12);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (17,13);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (17,14);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (17,15);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (13,16);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (17,17);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (13,18);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (7,18);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (2,18);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (17,19);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (1,19);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (4,20);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (2,20);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (15,21);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (15,22);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (12,23);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (11,23);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (3,24);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (9,25);
INSERT INTO `Equipa` (`profsaude_id`,`bolclinico_id`) VALUES (10,25);