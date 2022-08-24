--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--1.) film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
--2.) film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
--3.) film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
--4.) payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.


--Sorgu_1
SELECT COUNT(*) FROM film
WHERE length > (SELECT AVG(length) FROM film);

--Sorgu_2
SELECT COUNT(*) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

--Sorgu_3
SELECT * FROM film
WHERE rental_rate = (SELECT MIn(rental_rate) FROM film)
AND
replacement_cost  = (SELECT MIn(replacement_cost ) FROM film);

--Sorgu_4
SELECT SUM(amount), customer_id FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;