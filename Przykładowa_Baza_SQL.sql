CREATE TABLE Wojewodztwo ( 
Kod_wojewodztwa INT PRIMARY KEY, 
Nazwa NVARCHAR(100) NOT NULL,   
Stolica NVARCHAR(100) NOT NULL)  

CREATE TABLE Powiat ( 
Nr_powiatu INT PRIMARY KEY, 
Nazwa NVARCHAR(100) NOT NULL,   
Stolica NVARCHAR(100) NOT NULL,  
Kod_wojewodztwa INT REFERENCES Wojewodztwo(Kod_wojewodztwa)) 

CREATE TABLE Klienci ( 
NIP BIGINT PRIMARY KEY, 
Nazwa_firmy NVARCHAR(100) NOT NULL,   
Nazwisko NVARCHAR(100) NOT NULL,  
Imie NVARCHAR(100) NOT NULL, 
Miejscowosc NVARCHAR(100) NOT NULL, 
Ulica NVARCHAR(100) NOT NULL, 
Nr_domu INT NOT NULL, 
Nr_powiatu INT REFERENCES Powiat(Nr_powiatu)) 

CREATE TABLE Daty ( 
Nr_daty INT PRIMARY KEY, 
data DATE) 

CREATE TABLE Vat ( 
Nr_vat INT PRIMARY KEY, 
Vat INT NOT NULL) 

CREATE TABLE Jednostki_miary ( 
Nr_jednostki_miary INT PRIMARY KEY, 
Jednostka_miary NVARCHAR(100) NOT NULL)

CREATE TABLE Towary ( 
Nr_towaru INT PRIMARY KEY, 
Nazwa_towaru NVARCHAR(100) NOT NULL,  
Cena INT NOT NULL, 
Nr_Vat INT REFERENCES VAT(Nr_vat), 
CHECK (Cena>=0)) 

CREATE TABLE Dokumenty ( 
Nr_dokumentu INT PRIMARY KEY, 
Nr_daty INT REFERENCES Daty(Nr_daty), 
Nr_towaru INT REFERENCES Towary(Nr_towaru),  
Nazwa_dokumentu NVARCHAR(100) NOT NULL) 

CREATE TABLE Sprzedawcy ( 
Nr_sprzedawcy INT PRIMARY KEY, 
Nr_dokumentu INT REFERENCES Dokumenty(Nr_dokumentu),  
Nazwisko NVARCHAR(100) NOT NULL,  
Imie NVARCHAR(100) NOT NULL, 
Miejscowosc NVARCHAR(100) NOT NULL, 
Ulica NVARCHAR(100) NOT NULL, 
Nr_domu INT NOT NULL, 
Nr_powiatu INT REFERENCES Powiat(Nr_powiatu)) 

CREATE TABLE Obroty ( 
Nr_obrotu INT PRIMARY KEY, 
Nr_daty INT REFERENCES Daty(Nr_daty), 
Nr_sprzedawcy INT REFERENCES Sprzedawcy(Nr_sprzedawcy),  
Nr_towaru INT REFERENCES Towary(Nr_towaru),  
Nr_klienta BIGINT REFERENCES Klienci(Nip)) 

INSERT INTO Wojewodztwo (Kod_wojewodztwa, Nazwa, Stolica)
VALUES (1, 'Mazowieckie', 'Warszawa'),
       (2, 'Śląskie', 'Katowice'),
       (3, 'Wielkopolskie', 'Poznań'),
       (4, 'Małopolskie', 'Kraków'),
       (5, 'Dolnośląskie', 'Wrocław');

INSERT INTO Powiat (Nr_powiatu, Nazwa, Stolica, Kod_wojewodztwa)
VALUES (1, 'Warszawski', 'Warszawa', 1),
       (2, 'Katowicki', 'Katowice', 2),
       (3, 'Poznański', 'Poznań', 3),
       (4, 'Krakowski', 'Kraków', 4),
       (5, 'Wrocławski', 'Wrocław', 5);

INSERT INTO Klienci (NIP, Nazwa_firmy, Nazwisko, Imie, Miejscowosc, Ulica, Nr_domu, Nr_powiatu)
VALUES (1234567890, 'Firma A', 'Kowalski', 'Jan', 'Warszawa', 'Mickiewicza', 10, 1),
       (2234567890, 'Firma B', 'Nowak', 'Anna', 'Katowice', 'Słoneczna', 12, 2),
       (3234567890, 'Firma C', 'Wiśniewski', 'Piotr', 'Poznań', 'Kwiatowa', 14, 3),
       (4234567890, 'Firma D', 'Zielińska', 'Magda', 'Kraków', 'Długa', 16, 4),
       (5234567890, 'Firma E', 'Lewandowski', 'Robert', 'Wrocław', 'Krótka', 18, 5);

INSERT INTO Daty (Nr_daty, data)
VALUES (1, '2024-01-01'),
       (2, '2024-02-01'),
       (3, '2024-03-01'),
       (4, '2024-04-01'),
       (5, '2024-05-01');

INSERT INTO Vat (Nr_vat, Vat)
VALUES (1, 23),
       (2, 8),
       (3, 5),
       (4, 0);

INSERT INTO Jednostki_miary (Nr_jednostki_miary, Jednostka_miary)
VALUES (1, 'sztuka'),
       (2, 'kg'),
       (3, 'litr'),
       (4, 'opakowanie');

INSERT INTO Towary (Nr_towaru, Nazwa_towaru, Cena, Nr_Vat)
VALUES (1, 'Telewizor', 2000, 1),
       (2, 'Lodówka', 1500, 1),
       (3, 'Pralka', 1200, 2),
       (4, 'Laptop', 3000, 1),
       (5, 'Mikrofalówka', 400, 3);
       

INSERT INTO Dokumenty (Nr_dokumentu, Nr_daty, Nr_towaru, Nazwa_dokumentu)
VALUES (1, 1, 1, 'Faktura 001'),
       (2, 2, 2, 'Faktura 002'),
       (3, 3, 3, 'Faktura 003'),
       (4, 4, 4, 'Faktura 004'),
       (5, 5, 5, 'Faktura 005');

INSERT INTO Sprzedawcy (Nr_sprzedawcy, Nr_dokumentu, Nazwisko, Imie, Miejscowosc, Ulica, Nr_domu, Nr_powiatu)
VALUES (1, 1, 'Kowalski', 'Jan', 'Warszawa', 'Mickiewicza', 10, 1),
       (2, 2, 'Nowak', 'Anna', 'Katowice', 'Słoneczna', 12, 2),
       (3, 3, 'Wiśniewski', 'Piotr', 'Poznań', 'Kwiatowa', 14, 3),
       (4, 4, 'Zielińska', 'Magda', 'Kraków', 'Długa', 16, 4),
       (5, 5, 'Lewandowski', 'Robert', 'Wrocław', 'Krótka', 18, 5);

INSERT INTO Obroty (Nr_obrotu, Nr_daty, Nr_sprzedawcy, Nr_towaru, Nr_klienta)
VALUES (1, 1, 1, 1, 1234567890),
       (2, 2, 2, 2, 2234567890),
       (3, 3, 3, 3, 3234567890),
       (4, 4, 4, 4, 4234567890),
       (5, 5, 5, 5, 5234567890);



SELECT  
DK.Nr_dokumentu AS 'Numer faktury',  
SUM(TW.Cena) as 'Suma pozycji faktury', 
AVG(TW.Cena) as 'Średnia z pozycji faktury', 
MAX(TW.Cena) as 'Najdroższa pozycja faktury', 
MIN(TW.Cena) as 'Najtańsza pozycja faktury', 
MAX(TW.Cena) - MIN(TW.Cena) as 'Rozstęp pozycji faktury', 
STDEV(TW.Cena) as 'Odchylenie od średniej z pozycji faktury' 
FROM  
dbo.Dokumenty AS DK LEFT JOIN dbo.Daty AS DT ON DK.Nr_daty = DT.Nr_daty 
LEFT JOIN dbo.Towary AS TW ON DK.Nr_towaru = TW.Nr_towaru 
WHERE  
DT.[data] >= '2023.01.01' 
GROUP BY  
DK.Nr_dokumentu 

