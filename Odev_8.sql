--1.) test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
--2.) Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--3.) Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
--4.) Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

--Sorgu_1
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    birthday DATE,
    email VARCHAR(100)
);

--Sorgu_2
insert into employee (name, birthday, email) values ('Sydel', '1905-04-25', 'sheffron0@washington.edu');
insert into employee (name, birthday, email) values ('Winna', '2005-11-17', 'winett1@naver.com');
insert into employee (name, birthday, email) values ('Catie', '1985-10-23', 'carpur2@businessweek.com');
insert into employee (name, birthday, email) values ('Selestina', '2006-12-29', 'smarkushkin3@vistaprint.com');
insert into employee (name, birthday, email) values ('Carmelina', '1939-06-04', 'cisaak4@cpanel.net');
insert into employee (name, birthday, email) values ('Alanah', '1936-08-19', null);
insert into employee (name, birthday, email) values ('Clair', '1982-02-24', 'cduly6@lycos.com');
insert into employee (name, birthday, email) values ('Hildegaard', '1930-12-16', null);
insert into employee (name, birthday, email) values ('Mareah', '1960-06-29', 'mcarney8@meetup.com');
insert into employee (name, birthday, email) values ('Chaddie', '1935-05-12', 'cgodball9@weibo.com');
insert into employee (name, birthday, email) values ('Petronilla', '1953-04-15', 'pgirdwooda@gizmodo.com');
insert into employee (name, birthday, email) values ('Skell', '1936-05-05', 'ssharphurstb@mediafire.com');
insert into employee (name, birthday, email) values ('Boycey', '1996-04-04', 'bstarkiec@amazon.de');
insert into employee (name, birthday, email) values ('Vanni', '1987-10-20', 'vsaltwelld@sitemeter.com');
insert into employee (name, birthday, email) values ('Romona', '2007-04-06', 'rwhooleye@cam.ac.uk');
insert into employee (name, birthday, email) values ('Morgana', null, 'mtrammelf@cpanel.net');
insert into employee (name, birthday, email) values ('Kasper', null, null);
insert into employee (name, birthday, email) values ('Trudey', '1964-05-21', null);
insert into employee (name, birthday, email) values ('Lacy', null, 'lnorresi@time.com');
insert into employee (name, birthday, email) values ('Rudy', null, 'rjonathonj@yelp.com');
insert into employee (name, birthday, email) values ('Cele', '1991-02-18', 'cbouldek@hubpages.com');
insert into employee (name, birthday, email) values ('Jere', null, 'jthormwelll@comcast.net');
insert into employee (name, birthday, email) values ('Ninetta', null, 'nduckitm@godaddy.com');
insert into employee (name, birthday, email) values ('Vivienne', null, 'vmeaken@oaic.gov.au');
insert into employee (name, birthday, email) values ('Kimmie', '2011-12-19', 'kcrottagho@1und1.de');
insert into employee (name, birthday, email) values ('Zora', '2020-05-17', 'zbellwoodp@goo.gl');
insert into employee (name, birthday, email) values ('Beitris', '1934-04-04', null);
insert into employee (name, birthday, email) values ('Tomasina', null, 'tepgraver@yahoo.co.jp');
insert into employee (name, birthday, email) values ('Reinhard', '2013-03-22', 'rdurdans@networksolutions.com');
insert into employee (name, birthday, email) values ('Minta', null, 'mcrossert@google.nl');
insert into employee (name, birthday, email) values ('Willamina', '1935-05-10', 'wpreddyu@oakley.com');
insert into employee (name, birthday, email) values ('Nessie', '1993-12-23', 'nhargetv@google.fr');
insert into employee (name, birthday, email) values ('Kary', '1925-08-03', 'kjewsonw@ocn.ne.jp');
insert into employee (name, birthday, email) values ('Anne', '1920-01-07', 'ajedrykax@ca.gov');
insert into employee (name, birthday, email) values ('Cherin', '2021-10-02', 'ccasseldiney@seattletimes.com');
insert into employee (name, birthday, email) values ('Sarita', '1935-03-07', null);
insert into employee (name, birthday, email) values ('Tricia', '1963-03-30', 'tgaize10@oakley.com');
insert into employee (name, birthday, email) values ('Amalle', '1926-06-11', 'afeechan11@walmart.com');
insert into employee (name, birthday, email) values ('Fancie', '1933-11-26', 'flermit12@qq.com');
insert into employee (name, birthday, email) values ('Lodovico', '2013-11-16', 'lpuddan13@nps.gov');
insert into employee (name, birthday, email) values ('Bobbye', '1974-06-22', 'bwarters14@usa.gov');
insert into employee (name, birthday, email) values ('Carlos', '1935-06-01', null);
insert into employee (name, birthday, email) values ('Carol-jean', '1981-10-24', 'cgiottoi16@a8.net');
insert into employee (name, birthday, email) values ('Dunstan', '2015-09-27', 'dwaldrum17@chron.com');
insert into employee (name, birthday, email) values ('Hephzibah', '1918-12-04', 'hbenka18@cyberchimps.com');
insert into employee (name, birthday, email) values ('Piotr', null, 'pfincke19@bandcamp.com');
insert into employee (name, birthday, email) values ('Jilleen', '1964-10-12', 'jautrie1a@tumblr.com');
insert into employee (name, birthday, email) values ('Karel', '2014-08-31', 'kpeizer1b@flickr.com');
insert into employee (name, birthday, email) values ('Elenore', '1922-07-20', 'egrosvenor1c@google.ru');
insert into employee (name, birthday, email) values ('Carry', '2013-08-16', 'cdresse1d@virginia.edu');

--Sorgu_3
UPDATE employee SET name = 'Yasin Burak', email = 'y.burak@aydin.com', birthday = '1992-07-23' WHERE id = 17 RETURNING *;
UPDATE employee SET name = 'Gunther', email = 'gbesantieb@usa.gov', birthday = '1955-01-14' WHERE id = 22 RETURNING *;
UPDATE employee SET name = 'Ailene', email = 'agaynesfordj@topsy.com' WHERE birthday = '1960-06-29' RETURNING *;
UPDATE employee SET name = 'Jeren' WHERE email = 'jthormwelll@comcast.net' RETURNING *;
UPDATE employee SET name = 'Behzat' WHERE id = 25 RETURNING *;

--Sorgu_4
DELETE FROM employee WHERE id=11 RETURNING *;
DELETE FROM employee WHERE name = 'Carry' RETURNING *;
DELETE FROM employee WHERE email = 'afeechan11@walmart.com' RETURNING *;
DELETE FROM employee WHERE birthday = '2020-05-17' RETURNING *;
DELETE FROM employee WHERE name = 'Jere' RETURNING *;
