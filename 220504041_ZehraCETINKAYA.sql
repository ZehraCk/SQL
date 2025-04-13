CREATE TABLE Oyuncular(
oyuncuID INT PRIMARY KEY,
kullaniciAdi VARCHAR(50),
eposta VARCHAR(50),
sifre VARCHAR(50),
kayitTarihi  DATE,
seviye INT,
deneyimPuani INT
);

CREATE TABLE Ogeler(
ogeAdi VARCHAR(50),
ogeTuru VARCHAR(50),
ogeDegeri VARCHAR(50),
oyuncuID INT,
FOREIGN KEY(oyuncuID) REFERENCES Oyuncular(oyuncuID)
);

CREATE TABLE Skorlar(
oyuncuID INT,
skor INT,
oyunModu VARCHAR(50),
tarih DATE,
FOREIGN KEY (oyuncuID) REFERENCES Oyuncular(oyuncuID)
);

CREATE TABLE Gorevler(
gorevAdi VARCHAR(100),
aciklama VARCHAR(150),
odul VARCHAR(50),
oyuncuID INT,
FOREIGN KEY(oyuncuID) REFERENCES Oyuncular(oyuncuID),
durum VARCHAR(50)
);

CREATE TABLE Basarimlar(
basarimAdi VARCHAR(100),
basarimAciklamasi VARCHAR(150),
basarimTarihi DATE,
oyuncuID INT,
FOREIGN KEY(oyuncuID) REFERENCES Oyuncular(oyuncuID)
);

CREATE TABLE Arkadaslar(
arkadasID INT PRIMARY KEY,
oyuncuID INT,
FOREIGN KEY(oyuncuID) REFERENCES Oyuncular(oyuncuID)
);

INSERT INTO Oyuncular(oyuncuID,kullaniciAdi,eposta,sifre,kayitTarihi,seviye,deneyimPuani)
VALUES(1,'Zeynep91','zeynepcice@gmail.com','12345','2023-02-14',32,25),
(2,'Ali12','aliyilmaz@gmail.com','34596','2022-01-21',56,65),
(3,'Melek34','melekcelik@gmail.com','23526','2024-02-20',17,24),
(4,'Elif83','elifkilic@gmail.com','95835','2024-03-27',3,8),
(5,'Deniz65','denizcetin@gmail.com','54224','2021-10-12',45,57),
(6,'Zehra98','zehraozbek@gmail.com','32542','2023-08-04',23,30),
(7,'Aras72','arasyucel@gmail.com','17425','2020-12-30',99,89),
(8,'Mert78','mertdurmaz@gmail.com','75851','2023-11-10',42,55),
(9,'Defne36','defnetoprak@gmail.com','85002','2021-09-23',66,71),
(10,'Melisa56','melisasu@gmail.com','13453','2019-05-18',39,49);

INSERT INTO Ogeler(ogeAdi,ogeTuru,ogeDegeri,oyuncuID)
VALUES('Capa','Tarla_Aletleri',2,1),
('Yemlik','Beslenme',5,2),
('Sulama_ALeti','Tarla_Aletleri',6,3),
('Olta','Avlanma_Aletleri',2,4),
('Ordek_Havuzu','Barinma',8,5),
('Degirmen','Bugday_Uretimi',9,6),
('Domates_Tohumu','Tarla_Aletleri',3,7),
('Misafir_Evi','Barinma',4,8),
('Su_Kuyusu','Beslenme',8,9),
('Kumes','Barinma',3,10);

INSERT INTO Skorlar(oyuncuID,skor,oyunModu,tarih)
VALUES (1,101,'kolay','2024-01-23'),
(2,80,'orta','2023-03-24'),
(3,20,'zor','2024-10-19'),
(4,120,'zor','2021-05-08'),
(5,43,'kolay','2023-11-27'),
(6,78,'orta','2020-02-21'),
(7,158,'orta','2024-05-03'),
(8,12,'zor','2019-12-31'),
(9,214,'kolay','2017-08-16'),
(10,83,'orta','2022-06-14');
	
INSERT INTO Gorevler(gorevAdi,aciklama,odul,oyuncuID,durum)
VALUES ('Hayvan_Yetistirciligi','Ciftlikte_sut_satabilmek_icin_inek_yetistirmek_gerekiyor','15_altin',1,'yapildi'),
('Bugday_Yetistirme','Un_yapabilmek_icin_bugdaya_ihtiyac_var','23 _altin',2,'yapildi'),
('Bugdaylari_Gubreleme','Daha_saglikli_ve_kaliteli_bugdaylar_yetistirmek_icin_gubrelemek_grekir','12_altin',3,'yapildi'),
('Bugdaylari_Ilaclama','Bugdaylari_Boceklerden_korumak_icin_ilaclamak_gerekir','6_altin',4,'yapildi'),
('Kuyudan_Su_Cekme','Tarladaki_Urunlerin_sulanmasi_ve_hayvanlarin_icmesi_icin_kuyudan_su_cekmek_gerek','30_altin',5,'yapildi'),
('Ekinleri_Hasat_Etme','Ekinleri_Satmak_ve_tuketmek_icin_hasat_etmen_gerekir','40_altin',6,'yapildi'),
('Ekinleri_Pazara_Goturme','Hasati_yapilan_urunleri_satmak_icin_pazara_goturmek_gerekir','8_altin',7,'yapildi'),
('Ekinleri_Pazarda_Satma','Hasati_Yapilan_Urunler_Pazarda_Satilir','19_altin',8,'yapildi'),
('Bugdaylari_Degirmene_Goturme','Bugdaylar_Un_olmasi_icin_degirmene_gorturulur','34_altin',9,'yapildi'),
('Ordekleri_Orderk_Havuzuna_Goturme','Oredekler_yuzebilsin_diye_ordek_havuzuna_goturulur','12_altin',10,'yapildi');

INSERT INTO Basarimlar(basarimAdi,basarimAciklamasi,basarimTarihi,oyuncuID)
VALUES ('inek_yetistirme','3_tane_inek_yetistirlidi','2023-11-10',1),
('bugday_ekimi','5000m2_bugday_ekildi','2020-09-12',2),
('pazarda_ekinleri_satma','50_altin_kazanildi','2021-02-14',3),
('degirmen_insasi','1_degirmen_insa_edildi','2020-12-21',4),
('ordeklerin_bakimi','ordeklerin_bakimlari_yapildi','2018-06-05',5),
('komsu_cifliklerin_ziyareti','8_arkadas_ciftlik_ziyaret_edildi','2020-03-19',6),
('arkadas_edin','9_ciftlikle_arkadas_olundu','2023-04-28',7),
('misafirleri_agirla','2_tane_misafir_ciftlikte_agirlandi','2024-01-28',8),
('kopeklerin_asilarini_yaptir','3_kopegin_asisi_yapildi','2024-02-01',9),
('balik_tutma','34_adet_balik_tutuldu','2023-11-26',10);

INSERT INTO Arkadaslar(arkadasID,oyuncuID)
VALUES(1,2),
(2,3),
(3,6),
(4,7),
(5,7),
(6,8),
(7,9),
(8,9),
(9,6),
(10,9);

--Belirli bir oyuncunun sahip oldugu tum ogeleri alfabetik olarak listeleyin.
select o.oyuncuID, o.kullaniciAdi, a.ogeAdi from Oyuncular o join Ogeler a on o.oyuncuID=a.oyuncuID order by a.ogeAdi asc

--Belirli bir oyuncunun tamamladigi tum gorevleri ve gorevlerin durumlarini listeleyiniz.
select o.oyuncuID, o.kullaniciAdi, g.gorevAdi, g.durum from Oyuncular o join Gorevler g on o.oyuncuId=g.oyuncuID

--Verilen kullanici koduna gore o kullaniciya ait tum skorlari siraliyarak listeleyen sql kodunu yaziniz.
select o.oyuncuID, o.kullaniciAdi, s.skor from Oyuncular o join Skorlar s on o.oyuncuID=s.oyuncuID order by s.skor desc

--En yuksek skora sahip oyuncu ve o oyuncunun en fazla tamamladigi gorevleri gosteren sql kodunu yaziniz.
select top 1(s.skor),o.kullaniciAdi,count(g.gorevAdi) as Tamamladigi_Gorev_Sayisi from Oyuncular o join Skorlar s on o.oyuncuID=s.oyuncuID join Gorevler g on s.oyuncuID= g.oyuncuID 
group by o.kullaniciAdi, s.skor order by s.skor desc  

--Skor sayisi 100'un uzerinde ve en az 5 gorevi tamamlamis oyuncuyu populer oyuncu olarak gosteren sql kodunu yaziniz.
select o.kullaniciAdi , count(g.gorevAdi) as Tamamladigi_Gorev_Sayisi from Oyuncular o join skorlar s on o.oyuncuID=s.oyuncuID join gorevler g on s.oyuncuID=g.oyuncuID
where s.skor>100 group by o.kullaniciAdi having count(g.gorevAdi)>5

--En fazla skor ve tamamlanan goreve sahip ilk 5 oyuncunun bilgilerini ve skor ile gorev sayilarini listeleyen sql kodunu yaziniz.
select top 5 count(g.gorevAdi) as Tamamlanan_Gorev_Sayisi ,o.kullaniciAdi, s.skor from Oyuncular o join Skorlar s on o.oyuncuID=s.oyuncuID join Gorevler g on s.oyuncuID=g.oyuncuID
group by o.kullaniciAdi ,s.skor order by s.skor desc

--En fazla arkadas ekleyen oyuncunun arkadaslarini listeleyen sql kodunu yaziniz.
select top 1 count(a.arkadasID) as Eklenen_Arkadas_Sayisi, o.oyuncuID from Oyuncular o join Arkadaslar a on a.oyuncuID=o.oyuncuID group by o.oyuncuID order by Eklenen_Arkadas_Sayisi desc

--Yeni bir oge ekleme islemini gerceklestiren bir Stroed Procedure olusturun. Bu Stroed Procedure oge bilgilerini alarak Ogeler tablosuna yeni bir kayit ekleyecektir.
CREATE PROCEDURE ogeEkle
@ogeAdi VARCHAR(50),
@ogeTuru VARCHAR(50),
@ogeDegeri VARCHAR(50),
@oyuncuID INT
as
begin 
insert into Ogeler(ogeAdi,ogeTuru,ogeDegeri,oyuncuID)
values(@ogeAdi,@ogeTuru,@ogeDegeri,@oyuncuID)
end










