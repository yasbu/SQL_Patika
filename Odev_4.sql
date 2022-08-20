--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--1.) film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
--2.) film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
--3.) film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
--4.)country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
--5.)city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?

--Sorgu_1
SELECT DISTINCT replacement_cost FROM film;

--Sorgu_2
SELECT COUNT(DISTINCT replacement_cost) FROM film;

--Sorgu_3
SELECT Count(*) FROM film
WHERE title LIKE 'T%' and rating = 'G';

--Sorgu_4
SELECT Count(*) FROM country
WHERE country LIKE '_____';

--Sorgu_5
SELECT COUNT(*) FROM city
WHERE city ILIKE '%r';