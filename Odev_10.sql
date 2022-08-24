--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--1.) city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte 
--    görebileceğimiz LEFT JOIN sorgusunu yazınız.
--2.) customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name 
--    isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
--3.) customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini 
--    birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.


--Sorgu_1
SELECT city.city, country.country FROM city
LEFT JOIN country ON country.country_id = city.country_id;

--Sorgu_2
SELECT payment.payment_id, customer.first_name, customer.last_name FROM customer
RIGHT JOIN payment ON customer.customer_id = payment.customer_id;

--Sorgu_3
SSELECT rental.rental_id, customer.first_name, customer.last_name FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id;