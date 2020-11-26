-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: us-cdbr-east-02.cleardb.com    Database: heroku_e8750bf3785355a
-- ------------------------------------------------------
-- Server version	5.5.62-log

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
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `id` varchar(255) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `name` text,
  `site` text,
  `email` text,
  `phone` text,
  `street` text,
  `city` text,
  `state` text,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES ('030eaf75-da6e-4748-9727-f2704f831498',5,'La Pruebita','pruebita.com','asd@gmail.com','5556663331','','xfhgfgh','ghjfg',90.52,70.3),('04e43341-64c0-4f66-822f-f2c0ef02e6',4,'uno','uno','uno','uno','uno','uno','uno',12.5,20.32),('04e43341-64c0-4f66-822f-f2c0ef02e6b',4,'uno','uno','uno','uno','uno','uno','uno',12.5,20.32),('04e43341-64c0-4f66-822f-f2c0ef02e6bc',4,'uno','uno','uno','uno','uno','uno','uno',12.5,20.32),('073aa6dc-3363-417c-b3f4-eba74fb75de8',3,'Palacios, Moreno and Bustamante','http://bernardo.mx','Luis.Anaya25@corpfolder.com','581 978 966','37097 Florencia Senda','Octavioville','Chiapas',19.4346,-99.1324),('097f66dd-ca33-4f30-88e4-33193fcf8cda',1,'Briseño - Rodarte','https://fernando javier.com','Mario84@yahoo.com','5256-976-186','780 Medina Terrenos','Madridland','Sonora',19.4339,-99.1254),('0b9447e8-6253-4337-b9a0-d6573149fde0',1,'Palomino - Vargas','http://abigail.mx','Cecilia_Zabaleta76@nearbpo.com','566.689.802','396 Abreu Bloque','Kortajarenaside','Quintana Roo',19.4345,-99.1318),('0c91a515-2be1-4e8b-a4b0-be4f0ed1cce1',0,'Pedroza, Heredia and Lebrón','https://zoe.com','Teodoro_Zelaya@gmail.com','5932-627-483','69201 Dávila Edificio','Julioview','Baja California Norte',19.4339,-99.1266),('15c7fea0-89e8-4539-8632-46a619ef4ce9',1,'García e Hijos','http://victor manuel.gob.mx','JosEmilio31@corpfolder.com','5250-478-668','3239 Apodaca Parque','Campeche Ramiroborough','Puebla',19.4329,-99.1312),('19e1837a-c9ad-49d8-8d6d-7cb1d2ee0700',0,'Águilar - Matos','https://eloisa.com.mx','LuisMiguel.Godnez83@yahoo.com','5616-561-563','319 Dolores Rampa','Coatzacoalcos Gonzalo','Oaxaca',19.4371,-99.1265),('1b413a3a-e894-4142-a954-37176f12003b',1,'Báez, Karan and Armijo','https://fernando.info','Alexa.Ortega@yahoo.com','545520700','08030 Juan Manuel Torrente','Uruapan del Progreso Juan Pabloland','Tabasco',19.4337,-99.1311),('1ce2e219-d0e5-4f88-85f9-c152485ec7ab',0,'Matos S.L.','https://ricardo.info','JosEmilio.Cotto69@corpfolder.com','5502-208-117','69982 Luis Gabino Terrenos','Cancún Estefaníahaven','Hidalgo',19.442,-99.1314),('1ce4a7f8-ff21-4450-9107-f4f952f39f99',4,'Kortajarena - Rangel','http://débora.gob.mx','Brandon_Quiros@gmail.com','560 092 151','59897 Esquivel Aldea','Monterrey Dulce María','Querétaro',19.4407,-99.126),('1d7e6cac-013e-404b-8d93-19d838ef30e1',1,'Padilla, Mata and Posada','https://gabriel.com.mx','Josefina_Cano@corpfolder.com','554 352 295','0658 Espino Conjunto','Mérida Emilio','Guerrero',19.4391,-99.1241),('24345eda-0451-4225-a6d0-17365f746afc',3,'Jaramillo - Flores','http://josé antonio.com.mx','Patricia.Noriega75@yahoo.com','520.411.112','2399 Esquibel Partida','Culiacán Cristianport','Chihuahua',19.442,-99.1243),('2b8f5a44-1e8b-44ec-9b25-0edc5b64b7e6',3,'Hurtado, Rolón and Segovia','https://elías.org','RosaMara_Figueroa@corpfolder.com','559.867.074','039 Susana Polígono','Marco Antonioland','Colima',19.4335,-99.1285),('32084e1d-41b9-4dc8-9b8a-83b5003302c1',2,'Sáenz - Romo','https://juan.gob.mx','Pablo_Alicea@yahoo.com','523671866','65816 Sergio Parque','Becerraport','Sonora',19.4397,-99.1294),('32b74fb4-1911-4db9-9646-f5ce4663ff1c',0,'Alicea - Castañeda','https://gustavo.org','Gerardo_Ozuna32@yahoo.com','599 747 935','5702 Yamileth Terrenos','Coronadoview','Zacatecas',19.4395,-99.1264),('35b9efad-5168-419e-96bc-0535e5e5d2f9',1,'Villarreal - Gaytán','http://yolanda.info','Camila.Castellanos@corpfolder.com','5344-687-599','00698 Vallejo Ferrocarril','Arriagabury','Veracruz',19.4371,-99.1286),('36d43234-edd6-4680-8054-f2f6e4e4ab47',3,'Polanco - Rodríguez','http://paola.gob.mx','Mayte.Camacho@nearbpo.com','5778-085-952','31916 Daniel Glorieta','Zitacuaro Monserratchester','Sinaloa',19.4345,-99.1268),('3765054a-c706-4dcd-8424-aa8db4e5a4bd',4,'Casárez S.L.','https://julio césar.gob.mx','Isaac86@gmail.com','567057696','808 Noriega Pasaje','La Paz Lucasbury','Jalisco',19.4355,-99.1257),('38c965f9-74b0-4d8e-9cc2-2e457a1ebb83',3,'Arreola Hermanos','https://alejandra.com.mx','Ximena_Domnquez62@yahoo.com','531.757.355','9061 Fernando Puente','Campeche Mercedes','Guanajuato',19.435,-99.1263),('39292d20-d201-4f0f-91a2-58e0f38fb2a2',0,'Carrillo - Ozuna','https://carlos.mx','Armando82@yahoo.com','515577461','18190 Villagómez Ronda','Reynosa-Río Bravo Sofia','Colima',19.4426,-99.1282),('39be48e9-ec92-4ce5-8c90-768dfe20fc37',1,'Almaraz, Narváez and Urías','https://sebastian.com.mx','Lola32@nearbpo.com','500 100 614','684 Rolón Apartamento','Karanmouth','Oaxaca',19.4404,-99.1312),('3b84c87a-1cf9-40e8-81ff-19669240ce9b',2,'Naranjo, Galarza and Águilar','https://juan pablo.com','Monserrat.Lozano77@corpfolder.com','588438707','9390 Manuel Sector','Cuernavaca Aliciachester','Puebla',19.4353,-99.133),('3e21e0c4-3f89-42fb-8676-8350b95883e2',3,'Muñoz, Armendáriz and Moya','https://abraham.com.mx','Emilio.Kortahernandez@nearbpo.com','500 103 302','626 Adriana Ramal','Rochaport','Veracruz',19.4347,-99.1241),('3e26a92c-defb-4475-8c23-450750556fb9',4,'Galarza, Griego and Orozco','https://josé luis.com.mx','JosEduardo_Narvez@nearbpo.com','5177-114-746','0785 José Luis Mercado','Tampico-Pánuco Mercedes','Guerrero',19.4353,-99.1309),('3eb803d7-445a-43cd-9d08-2c3bd1c56148',1,'Esquivel S.L.','https://abigail.com','Norma40@corpfolder.com','552972577','66678 Andrés Salida','Zacatlan Berta','Baja California Sur',19.4381,-99.1334),('40424cd9-a4ff-466f-bea9-51cacb2dd2d5',3,'Cruz, Korta hernandez and Yáñez','http://pedro.info','Jorge.Carrion@gmail.com','551 482 751','684 Barrientos Monte','Orizaba Nataliahaven','Estado de México',19.442,-99.1328),('4501fb34-eefe-4f63-90c9-a9a1272df71d',0,'Gallardo - Angulo','https://josé antonio.mx','Brandon34@gmail.com','5191-333-084','7229 Villarreal Gran Subida','Campeche Daniela','Quintana Roo',19.4341,-99.1326),('4e17896d-a26f-44ae-a8a4-5fbd5cde79b0',0,'Hernández - Lira','http://graciela.com.mx','Brandon_Vigil@hotmail.com','570 746 998','93725 Erick Arroyo','Mateofurt','Hidalgo',19.4379,-99.1287),('4e20f081-3095-4918-88f8-9591991b017f',4,'Vélez - Maldonado','http://josé eduardo.org','Diego16@gmail.com','516.205.131','5206 Juárez Salida','Manuelaburgh','Puebla',19.4378,-99.1286),('534d5669-c0d4-4fe1-805e-7f836eb80e0f',1,'Zayas - Loya','https://javier.com','Teresa_Miramontes@nearbpo.com','523.743.315','9119 Lorenzo Riera','Tulancingo Zoe','Tlaxcala',19.441,-99.1257),('556091ed-3047-4f07-a2e3-1abbb37ff1bd',4,'Kamat S.L.','http://melissa.mx','Eva88@corpfolder.com','5756-043-582','4820 Gurule Rambla','León Kimberlyland','Aguascalientes',19.4403,-99.1292),('5675b76e-738a-4f6f-9adc-2a1b708b67fc',1,'Yanes S.A.','http://rubén.info','MaraLuisa_Amador@nearbpo.com','555 572 993','358 María Soledad Arrabal','Tlalnepantla Cristobal','Baja California Sur',19.4392,-99.1289),('58131b8b-1b93-495f-b7a1-0e2e1b93633d',2,'Meraz e Hijos','http://ximena.gob.mx','Isabela.Briones11@gmail.com','5495-151-485','10411 Pagan Salida','Ciudad de México Carlota','Aguascalientes',19.4387,-99.1289),('58c0549f-4b2c-43d4-af8d-d4641ffa9f66',4,'Zabaleta S.A.','http://sofia.com','Bernardo.Yebra48@hotmail.com','538173475','65562 Olivas Rincón','Durango Elizabethchester','Campeche',19.4353,-99.1292),('596081be-67c8-4c47-8c56-e2611cd4fa32',2,'Olivo, Santana and Elizondo','http://victor manuel.gob.mx','Emmanuel_Rosas56@nearbpo.com','545.851.405','4409 José Luis Rampa','Elizabethtown','Durango',19.435,-99.1274),('59cddeed-fbea-425f-8181-4bd1354b4dfe',1,'Arias S.L.','https://alejandro.com.mx','Axel.Zavala60@hotmail.com','537 651 378','739 Ortiz Manzana','Abrahamfurt','Baja California Norte',19.4331,-99.1278),('5b04ad6d-54c1-419c-b8cd-69090fee4e76',0,'Ramos S.L.','https://matías.gob.mx','Daniela_Castillo26@yahoo.com','565166901','919 Salvador Colonia','Ángel Gabrielfurt','Chiapas',19.4329,-99.1334),('5dccd552-2941-485c-a80d-8a769f4df5c5',0,'Pelayo, Puente and Echevarría','https://homero.gob.mx','Eva.Ferrer47@hotmail.com','568360596','96024 Ana Sofía Polígono','Chetumal Liliafort','Tlaxcala',19.4407,-99.1275),('5e238917-a1e1-408a-93d5-0c1bcb3361bc',0,'Carranza e Hijos','http://diana.org','Teresa_Domnquez39@corpfolder.com','545.204.593','19099 Isabel Bloque','Tlaxcala-Apizaco Juan Manuel','Sinaloa',19.4397,-99.1323),('601c7236-e03c-4ba1-beb5-38fbc09108f9',1,'Mesa e Hijos','http://sofia.org','Julia_Chavarra@nearbpo.com','565 772 068','6236 Axel Masía','Francisco Javierland','Baja California Sur',19.4332,-99.1317),('6308a2f2-6719-4ff6-818e-4e62f41a5296',4,'Benítez - Carbajal','https://jaime.com.mx','Eva_Faras11@corpfolder.com','566384264','795 Gaytán Colonia','Nicolásview','Durango',19.4393,-99.1315),('650156a1-081b-4760-b438-0cee445be58e',3,'Reyna S.A.','https://soledad.gob.mx','XimenaGuadalupe.Alaniz@nearbpo.com','518 264 968','895 Xenia Prolongación','Mazatlán Antoniamouth','Morelos',19.4391,-99.1332),('6589e471-ae41-4e6b-83b8-9654d6fc71ea',1,'Peres, Meraz and Peña','http://esteban.com.mx','Luisngel.Gmez50@nearbpo.com','581 479 974','134 Hidalgo Avenida','Ojo de agua Luis Ángelport','Campeche',19.4329,-99.1313),('6b7cd221-7859-4ece-8ed6-fd79283f0e65',2,'Hurtado, Armijo and Soto','https://iker.org','Patricio.Alonso52@gmail.com','5234-475-063','830 Valentín Colonia','La Laguna Ana Maríamouth','Tabasco',19.4334,-99.1304),('6e658154-be6f-409c-9c38-b53cc38c2705',3,'Figueroa e Hijos','http://maría cristina.org','FernandoJavier.Batista@nearbpo.com','576.091.302','166 Gaona Ferrocarril','Tetela de Ocampo Ester','Yucatán',19.4342,-99.1307),('714ce590-f302-4453-895b-aa2992c2fa2c',1,'Armendáriz S.A.','https://eloisa.org','Regina35@yahoo.com','542 891 822','821 Agustín Quinta','Piedras Negras Jesúsberg','Chiapas',19.4366,-99.133),('7173d827-3308-46d8-9b9e-86306ec64f78',3,'Carreón e Hijos','http://dolores.org','Benjamn.Arenas27@yahoo.com','572.204.703','7124 Granado Parcela','Celaya Carlos','Puebla',19.4406,-99.1268),('71795f1c-4ca0-4ec7-b925-5b906711329b',3,'Zamudio S.L.','http://cecilia.com.mx','Estela.Quinta80@hotmail.com','590.101.852','928 Benavídez Municipio','Terrazasside','Baja California Sur',19.4365,-99.1256),('72bd30eb-192f-4f5a-bda2-bde3ae0844c2',1,'Huerta e Hijos','https://esteban.com.mx','Gloria_Robledo73@nearbpo.com','509.051.989','93160 Xairo Belmonte Vía','Ciudad Obregón Emmanuel','Zacatecas',19.4391,-99.1247),('72cc52c1-7aa5-4098-a391-5a713e2d9781',0,'Lozada, Chávez and Guerrero','https://estefanía.mx','Victoria.Valadez@corpfolder.com','567 287 108','66998 Tejada Colegio','Isabelbury','Oaxaca',19.4387,-99.1258),('74c9182c-9ec1-47cb-8271-50729ae7f95d',3,'Solís, Valles and Collado','http://mariana.com','Mario_Arreola51@gmail.com','5917-337-221','638 Sedillo Urbanización','Concepciónside','Quintana Roo',19.4411,-99.1293),('7b845a5f-94d4-4d52-bbb7-838839a180d6',1,'Saiz, Aponte and Muñoz','https://homero.com','Carolina_Merino@nearbpo.com','584212054','563 Verduzco Vía Pública','Nuevo Laredo Alejandrahaven','San Luis Potosí',19.4415,-99.1275),('7b97ebd0-6c61-43b1-80c6-bdc88846c727',3,'Aragón, Robles and Echevarría','https://mario.org','MaradeJess32@gmail.com','558.191.752','5983 Tapia Lado','Juanaborough','Baja California Sur',19.437,-99.1301),('7ef3ed97-ebd6-4114-b2c1-af664534df79',1,'Jáquez, Jimínez and Yami','http://dulce maría.org','Ivan_Delro32@gmail.com','555522401','057 Meléndez Aldea','Zacatlan Claudia','Baja California Sur',19.4418,-99.1296),('80537b08-6bae-444b-9564-98731e680f59',0,'Alaniz - Aponte','https://ariadna.com.mx','Mara26@corpfolder.com','524.823.622','750 Alberto Escalinata','Tehuantepec-Salina Cruz Mauriciostad','Hidalgo',19.4329,-99.1264),('811fa2fc-f29c-4152-a821-7c2a67ab5d21',4,'Gallegos, Anguiano and Jurado','http://eduardo.com','Carla.Ramn81@corpfolder.com','5572-745-754','2179 José Plaza','Sofiaville','Durango',19.4341,-99.1238),('83967700-00d9-4d8e-8b5d-dd72f4fba3e5',0,'Bueno, Crespo and Rodrígez','https://gonzalo.com','Toms.Sols@gmail.com','5578-929-369','6347 Reina Salida','Roybalfort','Zacatecas',19.4414,-99.1285),('84314586-29fb-420f-95e5-f15fbe7a619c',0,'Mayorga S.L.','https://eva.com.mx','Melissa51@corpfolder.com','521.791.308','4152 Karem Mercado','Coatzacoalcos Nicolásstad','Baja California Norte',19.4397,-99.1324),('84572f5a-ea3d-4800-930c-5799a897b06c',1,'Khalid - Cortés','https://rosa maría.mx','Alan.Escobar@corpfolder.com','5191-038-970','225 Cortés Masía','Ixtapaluca María de Jesúsmouth','Veracruz',19.4387,-99.1267),('851f799f-0852-439e-b9b2-df92c43e7672',1,'Barajas, Bahena and Kano','https://federico.com','Anita_Mata71@hotmail.com','534 814 204','82247 Mariano Entrada','Mérida Alfredotown','Durango',19.4401,-99.127),('87b35453-f063-461a-b17b-9173f7f09805',0,'Arevalo - Reséndez','http://esteban.info','Valeria.Espinal@yahoo.com','560 091 544','481 Raquel Huerta','Ríoshaven','Guanajuato',19.4363,-99.1329),('8a5aefe2-8d0c-45b6-aab2-4da2769e10fa',4,'Vázquez, Espinal and Cervántez','http://mariana.gob.mx','Leticia.Hidalgo@nearbpo.com','528679468','055 Julio Lugar','Zacatlan José Emilioside','Guanajuato',19.4384,-99.1276),('8b8af894-bc42-4664-b08c-6cf4ef28081f',3,'Delgadillo - Escobar','http://cristian.mx','JosLuis.Valds86@yahoo.com','5325-988-654','73621 Gloria Colegio','Delgadilloshire','Michoacan',19.435,-99.1317),('8d567e51-e73c-47b3-ad15-9ca14c32da14',0,'Ñañez S.L.','http://cristobal.mx','Eduardo_Montes75@nearbpo.com','506.416.955','705 Gloria Avenida','Armijomouth','Tabasco',19.4348,-99.1248),('8e086874-60ff-44d5-a327-e4bccf3a90ed',2,'Moya - Cepeda','https://claudia.info','Silvia20@hotmail.com','592.612.849','28658 José Antonio Aldea','Guardadoview','Chihuahua',19.442,-99.1321),('8e5f2c9c-7a25-4cc0-a4fa-306c1a6e2d91',2,'Sedillo - Márquez','https://maría teresa.org','DulceMara98@nearbpo.com','5452-478-262','4279 Tadeo Parcela','Lozanoshire','Chiapas',19.4345,-99.1336),('937518f0-a27f-491e-8788-ae9be0c65b31',2,'Gonzales, Valladares and Espinal','https://carlota.org','Dolores.Mercado64@corpfolder.com','5528-685-947','30474 Montez Mercado','José Luisstad','Sinaloa',19.4373,-99.1281),('9c6f0247-d128-4396-b80c-8f9648928ec0',4,'Salcedo Hermanos','https://marco antonio.org','Victoria.Lucero@corpfolder.com','573 413 844','7688 Puga Entrada','Gonzaloborough','Sinaloa',19.4407,-99.1321),('9e71243d-3b46-45de-9f1f-019b1bfe6bac',1,'Romo, Olmos and Calderón','https://valeria.gob.mx','Emilio29@corpfolder.com','510.186.181','67576 Cabán Chalet','Nicolásfurt','Jalisco',19.441,-99.1246),('9f98fad3-ecd6-421b-ba8c-2bd63340473d',2,'Macías S.L.','http://miguel.com.mx','Jazmin_Santiago7@yahoo.com','508272671','1736 Adela Urbanización','Puerto Vallarta Dorotea','Baja California Sur',19.4369,-99.1316),('a850ff07-516e-44e4-acd7-26fa0c12f4fc',1,'Palomo - Cardona','http://marco antonio.org','Lizbeth.Laboy@hotmail.com','508.505.560','5588 Leticia Torrente','Tetela de Ocampo Silviafurt','Colima',19.4349,-99.1281),('ac3bafbe-ea67-47cb-af99-63d945f71bf5',1,'Ledesma, Vélez and Matías','https://miranda.mx','Amalia27@gmail.com','593 520 541','7630 Collado Huerta','Irapuato Carolina','Jalisco',19.4427,-99.1273),('b2ca0188-62c0-4bba-b20c-62bc2d4ba192',4,'Rubio S.A.','http://víctor.info','Hugo.Casrez2@hotmail.com','5471-253-103','119 Polanco Colegio','Vicentechester','Morelos',19.4364,-99.1265),('b464014b-44ca-43e3-ba27-7477c8af2a53',0,'Carrero Hermanos','http://luz.info','Adn.valos@corpfolder.com','562 179 920','7383 Hinojosa Huerta','Carlahaven','Hidalgo',19.4331,-99.1239),('b6c3a6d0-4082-4353-926a-b903132b29f4',4,'Ramón Hermanos','http://gloria.gob.mx','Abril.Yez@yahoo.com','526.705.438','41601 Lucia Manzana','Vallechester','Quintana Roo',19.4373,-99.1279),('b8b03b3d-4c06-4d91-b895-5d8dc85cbb2e',2,'Venegas S.L.','http://maría guadalupe.com.mx','Dbora.Delgado66@gmail.com','5810-547-684','776 Burgos Plaza','Karantown','Quintana Roo',19.4414,-99.133),('beef488c-7f32-4a35-8469-89f5c6277972',4,'Cordero, Chapa and Lomeli','https://erick.org','Elisa.Orozco1@gmail.com','577 596 369','70658 Arredondo Extrarradio','Torreón Tadeochester','Veracruz',19.4413,-99.1309),('c0ffd058-e773-47f1-974b-42d41cb555bf',3,'Rendón - Elizondo','https://cristina.mx','Hugo.Casanova49@gmail.com','5866-337-812','5518 Monserrat Explanada','Chignahuapan María','Sinaloa',19.4361,-99.1298),('c29082c4-4352-4517-9b4b-c45f86fc1830',2,'Nájera - Chávez','https://pedro.gob.mx','Carlota31@hotmail.com','5532-129-406','79224 Mariano Travesía','Nezahualcóyotl Timoteo','Coahuila',19.4425,-99.1238),('c4965d5d-4c08-4806-8cfc-77099379ce4e',1,'Rael, Mota and Cintrón','https://francisco.org','Miguelngel4@corpfolder.com','511.280.590','821 Lorena Ramal','Tula Adánville','Chihuahua',19.4416,-99.1264),('c9186202-30a4-48e7-b20b-c56d733fa76a',1,'Viera S.L.','http://ximena.gob.mx','Benjamn26@yahoo.com','518272168','675 Kamal Chalet','Guanajuato Tadeoview','Estado de México',19.4423,-99.1293),('cb0e214f-b0e4-496a-8164-eac6105b2d35',0,'Valles, Tamez and Duarte','https://marta.com','Anita_Crdova@gmail.com','574 635 517','16737 Garrido Rampa','Piedras Negras Martaport','Campeche',19.4336,-99.1332),('cc9c245d-8b02-44c3-868e-90a3149edd5b',2,'Vallejo, Jiménez and Jaimes','https://alfredo.gob.mx','Ramn_Campos@nearbpo.com','534 642 223','9775 Amaya Cuesta','Valle de México Juanborough','Tlaxcala',19.4357,-99.1253),('d04fd5aa-4a56-43a6-91c9-35edaaadadc9',0,'Calvillo S.L.','https://martín.info','JuanPablo.Cervntez@nearbpo.com','501 812 092','38836 Emilio Partida','Rubénchester','Tabasco',19.4424,-99.1266),('d3df42be-c6ff-43f6-8226-066140ab1b01',0,'Kanzaki e Hijos','http://ivanna.info','Eva_Guerra48@gmail.com','5487-547-323','8465 Jorge Luis Aldea','Saizside','Querétaro',19.4341,-99.129),('d6782cfc-29ef-4241-985b-0a6ff6cf4c64',4,'Munguía S.L.','https://emmanuel.com.mx','Yaretzi_Saldivar28@yahoo.com','573.429.070','05203 Martín Lado','León Césarland','Guerrero',19.4389,-99.1303),('d7888ed4-52f0-4be8-a210-f0d28ce0e565',0,'Paredes - Montero','http://abraham.com.mx','Vanessa_Quinterodelacruz84@hotmail.com','5783-052-043','237 Regina Jardines','Pilarshire','Nuevo León',19.4392,-99.1332),('da7c9bad-6036-4a3a-8873-81dfaa585b26',0,'Hinojosa Hermanos','https://erick.mx','XimenaGuadalupe.Mireles@nearbpo.com','5382-692-003','8772 Marrero Huerta','Zaragozafort','Morelos',19.4371,-99.1293),('dd56e1e9-bd67-41cd-baac-a8f9f47ad5c8',4,'Fuentes, Porras and Barajas','http://ariadna.com.mx','Jimena25@hotmail.com','5087-469-378','81414 Luz Ferrocarril','Paolabury','Michoacan',19.4394,-99.1331),('ddb77425-2c3f-435c-8391-021b40010b0d',0,'Serrato Hermanos','https://octavio.org','Yamileth_Lugo28@corpfolder.com','571.744.718','14476 Delgadillo Partida','Nevárezfort','Michoacan',19.4347,-99.1264),('e5f21255-2dde-469e-bff8-4ea81d6fca27',3,'Medrano - Chavarría','http://julia.org','Kevin.Longoria68@nearbpo.com','568061069','0302 Águilar Terrenos','Ocotlán Maricarmenstad','Tabasco',19.4368,-99.1278),('e6c4bf95-dba4-44b5-af90-b0ab7214146e',0,'Zavala - Chavarría','https://ignacio.mx','Jernimo_Armas@nearbpo.com','588078464','019 Aragón Urbanización','Carrasquillobury','Yucatán',19.4332,-99.1323),('ecbdb52a-4263-4bf1-87fb-8d9d809ea6aa',4,'Soliz Hermanos','http://roberto.gob.mx','Mercedes_Lugo@hotmail.com','537 295 998','440 Ceballos Huerta','Oaxaca Sara','Aguascalientes',19.435,-99.1272),('ed23040e-6d68-4211-b31c-62e2f36d120a',3,'Casanova - Jaramillo','http://brayan.com','Valentina_Gracia59@nearbpo.com','573.342.065','220 Ángel Gabriel Solar','Cancún Yaretzi','Durango',19.4338,-99.1293),('edb50561-46f9-4541-9c04-8de82401cc13',4,'Pedraza - Niño','http://josé eduardo.gob.mx','Irene_Rojas95@nearbpo.com','537 531 201','207 Chavarría Lado','Franciscohaven','Baja California Norte',19.4427,-99.125),('ejemplo',3,'1erw','2ewr','3wer','4we','5ewr','6wer','7wew',12.64,123.67),('f73cfbce-60b8-4e2c-9ec7-de8dbb5e0a49',1,'Palacios - Montez','https://felipe.org','Rosalia.Estvez@nearbpo.com','590 666 046','7676 Raquel Solar','Marco Antonioton','Michoacan',19.4411,-99.1305),('fcb9b113-49f5-4119-8016-c7357ac135fc',0,'Briones S.A.','http://maría de jesús.com','Emilio_Abeyta@yahoo.com','539 404 967','375 Puente Puente','Tulancingo de Bravo Margarita','Zacatecas',19.4398,-99.1261),('fdc12e77-af11-496a-846b-94068dcded56',2,'Aragón, Herrera and Cortez','https://camila.com.mx','Victoria14@hotmail.com','5359-320-036','18089 Ramírez Partida','Los Mochis Carlachester','Jalisco',19.4373,-99.1317),('fe82f695-e437-4f42-9a69-d3a451c4a1d0',0,'Jaramillo - Narváez','https://raúl.org','scar_Olivo@yahoo.com','591 730 248','0112 Jaime Apartamento','Comitán de Dominguez Gregorio','Jalisco',19.4403,-99.1262);
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'heroku_e8750bf3785355a'
--

--
-- Dumping routines for database 'heroku_e8750bf3785355a'
--
/*!50003 DROP PROCEDURE IF EXISTS `addOrEditRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`b6bc5ac77907e4`@`%` PROCEDURE `addOrEditRestaurant`(
	_id varchar(255),
    _rating int,
    _name text,
    _site text,
    _email text,
    _phone text,
    _street text,
    _city text,
    _state text,
    _lat float,
    _lng float
)
BEGIN
	if (select count(*) from restaurants where id = _id) = 0 then
		insert into restaurants(
			id,rating,name,site,email,phone,street,city,state,lat,lng
		) values(
			_id,_rating,_name,_site,_email,_phone,_street,_city,_state,_lat,_lng
        );
		
	else
		update restaurants set
			id = _id,
            rating = _rating,
            name = _name,
            site = _site,
            email = _email,
            phone = _phone,
            street = _street,
            city = _city,
            state = _state,
            lat = _lat,
            lng = _lng
		where id = _id;
	end if;
    
     select _id as id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerStadisticas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`b6bc5ac77907e4`@`%` PROCEDURE `obtenerStadisticas`(
	_lat_origen float,
	_lng_origen float,
	_radius float
)
BEGIN
	select count(*) as count, avg(rating) as avg, STDDEV(rating)  as std
	from( 
		select id,rating,lat,lng, lat_origen, lng_origen , distancia
		from (
			select 
				id,rating,lat,lng, lat_origen, lng_origen , 
				(SELECT (acos(sin(radians( lat_origen )) * sin(radians( lat )) + 
					cos(radians( lat_origen )) * cos(radians( lat )) * 
					cos(radians( lng_origen ) - radians( lng ))) * 6378) * 1000) as distancia
			from (
				select 
					id,rating,lat,lng , _lat_origen as lat_origen, _lng_origen as lng_origen
				from restaurants) T) t1
		where distancia < _radius ) t2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-26 15:09:45
