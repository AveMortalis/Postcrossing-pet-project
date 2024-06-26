SET NAMES 'utf8';

DROP TABLE IF EXISTS address;
CREATE TABLE address(
  id int NOT NULL AUTO_INCREMENT,
  country_shortcut varchar(2) DEFAULT NULL,
  city varchar(25) DEFAULT NULL,
  address varchar(45) DEFAULT NULL,
  postcode varchar(15) DEFAULT NULL,
  PRIMARY KEY (id)    
);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  login varchar(15) DEFAULT NULL,
  password varchar(100) DEFAULT NULL,
  email varchar(35) DEFAULT NULL,
  name varchar(25) DEFAULT NULL,
  surname varchar(25) DEFAULT NULL,
  address_id int DEFAULT NULL,
  details varchar(250) DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (address_id) REFERENCES address (id)
);

DROP TABLE IF EXISTS queueingrecipients;
CREATE TABLE queueingrecipients (
  id int NOT NULL AUTO_INCREMENT,
  user_id_fk int DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id_fk) REFERENCES users (id)
);

DROP TABLE IF EXISTS country;
CREATE TABLE country (
  countryShortcut varchar(2) NOT NULL,
  countryName varchar(100) DEFAULT NULL,
  PRIMARY KEY (countryShortcut)
) DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS parcels;
CREATE TABLE parcels(
  id int NOT NULL AUTO_INCREMENT,
  mailer_fk int NOT NULL,
  recipient_fk int NOT NULL,
  registration_code varchar(25) DEFAULT NULL,
  status varchar(10) DEFAULT NULL,
  send_date date DEFAULT NULL,
  receive_date date DEFAULT NULL,
  PRIMARY KEY (id), 
  FOREIGN KEY (mailer_fk) REFERENCES users (id),
  FOREIGN KEY (recipient_fk) REFERENCES users (id)
);


-- INSERT INTO address VALUES (1,'BY','Minsk','Yakuba Kolasa d.20 kv.120','200200'),(2,'RO','Buharest','Lenina','300300'),(3,'US','Texas','Cowboy','100100'),(6,'BY','Minsk','Yakuba Kolasa d.10 kv.11','220111'),(7,'BY','Minsk','Orlovskaya st. d.33 kv.111','110011'),(8,'MX','Mexico','Delaverde h.11 ap.22','222222'),(9,'AF','zxc','zxc','123124'),(10,'AO','qwe','qwe','111213'),(11,'DJ','asd','asd','222541');
--
-- INSERT INTO users VALUES (2,'Mari','Mari','Mari@gmail.com','Marishka','Melushkevich',1,'Drum and base'),(3,'Petr','Petr','Petrovich@gmail.com','Petr','Petrovich',6,NULL),(4,'Ave','Ave','ave@july.com','Ceaser','July',7,'Люблю читать'),(5,'test','test','test@testov.test','Test','Testovich',8,'I would like to get any type of postcards'),(6,'zxc','$2a$10$aLpr.OsXRsueVLr6V38/xuU.bLSkOe8yTbiyOJHuxe.ml3VC08zKu','zxc\"','zxc','zxc',9,'zxc'),(7,'qwe','$2a$10$r3pmlREVoS3M3G/bJXUboeVnkkHGbOODKrGw22.Ty8x1GPipiefiq','qwe','qwe','qwe',10,'qweqweqwe'),(8,'asd','$2a$10$J7OthpqxVVBZ2Sqed2lgfOJOp4.vHRuMGq3/M4o21okypxYzm5Kvm','asdasd','asd','asd',11,'zxczxczxc');
--
-- INSERT INTO country VALUES ('AC','Остров Вознесения'),('AD','Андорра'),('AE','ОАЭ'),('AF','Афганистан'),('AG','Антигуа и Барбуда'),('AI','Ангилья'),('AL','Албания'),('AM','Армения'),('AN','Нидерландские Антильские о-ва'),('AO','Ангола'),('AQ','Антарктида'),('AR','Аргентина'),('AS','Американское Самоа'),('AT','Австрия'),('AU','Австралия'),('AW','Аруба'),('AX','Аландские о-ва'),('AZ','Азербайджан'),('BA','Босния и Герцеговина'),('BB','Барбадос'),('BD','Бангладеш'),('BE','Бельгия'),('BF','Буркина Фасо'),('BG','Болгария'),('BH','Бахрейн'),('BI','Бурунди'),('BJ','Бенин'),('BL','Остров Святого Бартоломея'),('BM','Бермудские о-ва'),('BN','Бруней Даруссалам'),('BO','Боливия'),('BR','Бразилия'),('BS','Багамские о-ва'),('BT','Бутан'),('BV','Остров Буве'),('BW','Ботсвана'),('BY','Беларусь'),('BZ','Белиз'),('CA','Канада'),('CC','Кокосовые о-ва'),('CD','Демократическая Республика Конго'),('CF','ЦАР'),('CG','Конго'),('CH','Швейцария'),('CI','Кот д’Ивуар'),('CK','Острова Кука'),('CL','Чили'),('CM','Камерун'),('CN','Китай'),('CO','Колумбия'),('CP','Остров Клиппертон'),('CR','Коста-Рика'),('CS','Сербия и Черногория'),('CU','Куба'),('CV','Острова Зеленого Мыса'),('CX','Остров Рождества'),('CY','Кипр'),('CZ','Чехия'),('DE','Германия'),('DG','Диего-Гарсия'),('DJ','Джибути'),('DK','Дания'),('DM','Доминика'),('DO','Доминиканская Республика'),('DZ','Алжир'),('EA','Сеута и Мелилья'),('EC','Эквадор'),('EE','Эстония'),('EG','Египет'),('EH','Западная Сахара'),('ER','Эритрея'),('ES','Испания'),('ET','Эфиопия'),('EU','Европейский союз'),('FI','Финляндия'),('FJ','Фиджи'),('FK','Фолклендские о-ва'),('FM','Федеративные Штаты Микронезии'),('FO','Фарерские о-ва'),('FR','Франция'),('GA','Габон'),('GB','Великобритания'),('GD','Гренада'),('GE','Грузия'),('GF','Французская Гвиана'),('GG','Гернси'),('GH','Гана'),('GI','Гибралтар'),('GL','Гренландия'),('GM','Гамбия'),('GN','Гвинея'),('GP','Гваделупа'),('GQ','Экваториальная Гвинея'),('GR','Греция'),('GS','Южная Джорджия и Южные Сандвичевы Острова'),('GT','Гватемала'),('GU','Гуам'),('GW','Гвинея-Бисау'),('GY','Гайана'),('HK','Гонконг (особый район)'),('HM','Острова Херд и Макдональд'),('HN','Гондурас'),('HR','Хорватия'),('HT','Гаити'),('HU','Венгрия'),('IC','Канарские о-ва'),('ID','Индонезия'),('IE','Ирландия'),('IL','Израиль'),('IM','Остров Мэн'),('IN','Индия'),('IO','Британская территория в Индийском океане'),('IQ','Ирак'),('IR','Иран'),('IS','Исландия'),('IT','Италия'),('JE','Джерси'),('JM','Ямайка'),('JO','Иордания'),('JP','Япония'),('KE','Кения'),('KG','Киргизия'),('KH','Камбоджа'),('KI','Кирибати'),('KM','Коморские о-ва'),('KN','Сент-Киттс и Невис'),('KP','Северная Корея'),('KR','Республика Корея'),('KW','Кувейт'),('KY','Каймановы острова'),('KZ','Казахстан'),('LA','Лаос'),('LB','Ливан'),('LC','Сент-Люсия'),('LI','Лихтенштейн'),('LK','Шри-Ланка'),('LR','Либерия'),('LS','Лесото'),('LT','Литва'),('LU','Люксембург'),('LV','Латвия'),('LY','Ливия'),('MA','Марокко'),('MC','Монако'),('MD','Молдова'),('ME','Черногория'),('MF','Остров Святого Мартина'),('MG','Мадагаскар'),('MH','Маршалловы о-ва'),('MK','Македония'),('ML','Мали'),('MM','Мьянма'),('MN','Монголия'),('MO','Макао (особый район)'),('MP','Северные Марианские о-ва'),('MQ','Мартиника'),('MR','Мавритания'),('MS','Монтсеррат'),('MT','Мальта'),('MU','Маврикий'),('MV','Мальдивские о-ва'),('MW','Малави'),('MX','Мексика'),('MY','Малайзия'),('MZ','Мозамбик'),('NA','Намибия'),('NC','Новая Каледония'),('NE','Нигер'),('NF','Остров Норфолк'),('NG','Нигерия'),('NI','Никарагуа'),('NL','Нидерланды'),('NO','Норвегия'),('NP','Непал'),('NR','Науру'),('NU','Ниуе'),('NZ','Новая Зеландия'),('OM','Оман'),('PA','Панама'),('PE','Перу'),('PF','Французская Полинезия'),('PG','Папуа – Новая Гвинея'),('PH','Филиппины'),('PK','Пакистан'),('PL','Польша'),('PM','Сен-Пьер и Микелон'),('PN','Питкэрн'),('PR','Пуэрто-Рико'),('PS','Палестинские территории'),('PT','Португалия'),('PW','Палау'),('PY','Парагвай'),('QA','Катар'),('QO','Внешняя Океания'),('RE','Реюньон'),('RO','Румыния'),('RS','Сербия'),('RU','Россия'),('RW','Руанда'),('SA','Саудовская Аравия'),('SB','Соломоновы о-ва'),('SC','Сейшельские о-ва'),('SD','Судан'),('SE','Швеция'),('SG','Сингапур'),('SH','Остров Святой Елены'),('SI','Словения'),('SJ','Свальбард и Ян-Майен'),('SK','Словакия'),('SL','Сьерра-Леоне'),('SM','Сан-Марино'),('SN','Сенегал'),('SO','Сомали'),('SR','Суринам'),('ST','Сан-Томе и Принсипи'),('SV','Сальвадор'),('SY','Сирия'),('SZ','Свазиленд'),('TA','Тристан-да-Кунья'),('TC','Острова Тёркс и Кайкос'),('TD','Чад'),('TF','Французские Южные Территории'),('TG','Того'),('TH','Таиланд'),('TJ','Таджикистан'),('TK','Токелау'),('TL','Восточный Тимор'),('TM','Туркменистан'),('TN','Тунис'),('TO','Тонга'),('TR','Турция'),('TT','Тринидад и Тобаго'),('TV','Тувалу'),('TW','Тайвань'),('TZ','Танзания'),('UA','Украина'),('UG','Уганда'),('UM','Внешние малые острова (США)'),('US','США'),('UY','Уругвай'),('UZ','Узбекистан'),('VA','Ватикан'),('VC','Сент-Винсент и Гренадины'),('VE','Венесуэла'),('VG','Британские Виргинские о-ва'),('VI','Виргинские о-ва (США)'),('VN','Вьетнам'),('VU','Вануату'),('WF','Уоллис и Футуна'),('WS','Самоа'),('YE','Йемен'),('YT','Майотта'),('ZA','ЮАР'),('ZM','Замбия'),('ZW','Зимбабве');
--
-- INSERT INTO parcels VALUES (22,3,2,'BY393799BY','Received','2020-10-14'),(23,4,2,'BY895372BY','Received','2020-10-14'),(31,2,4,'BY747205BY','Received','2020-10-23'),(32,2,4,'BY64328BY','Received','2020-10-23'),(33,2,3,'BY402589BY','Received','2020-10-23'),(34,5,2,'MX454737BY','Received','2020-10-23'),(35,2,3,'BY850573BY','Received','2020-10-23'),(36,7,2,'AO586562BY','Received','2020-10-27'),(37,6,2,'AF789966BY','Received','2020-10-28'),(38,6,2,'AF931843BY','Received','2020-10-28'),(39,6,2,'AF330460BY','Received','2020-10-28'),(40,6,4,'AF955034BY','Sent','2020-10-28'),(41,6,4,'AF971732BY','Received','2020-10-28'),(42,6,4,'AF694984BY','Lost','2020-10-28'),(43,6,7,'AF443227AO','Sent','2020-10-28');
--
-- INSERT INTO awaitlist VALUES (20,6);