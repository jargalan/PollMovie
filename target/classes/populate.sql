
INSERT INTO credentials(username,password,enabled) VALUES ('admin','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('admin2','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('user1','$2a$10$0.ESlGysrPaiW5HaapKwoehzWt5AibgbPPOvMhDv8D6H26QQ/CwhS', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('user2','$2a$10$0.ESlGysrPaiW5HaapKwoehzWt5AibgbPPOvMhDv8D6H26QQ/CwhS', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('user3','$2a$10$0.ESlGysrPaiW5HaapKwoehzWt5AibgbPPOvMhDv8D6H26QQ/CwhS', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('user4','$2a$10$0.ESlGysrPaiW5HaapKwoehzWt5AibgbPPOvMhDv8D6H26QQ/CwhS', TRUE);

INSERT INTO authority (username, authority) VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO authority (username, authority) VALUES ('admin', 'ROLE_USER');
INSERT INTO authority (username, authority) VALUES ('admin2', 'ROLE_ADMIN');
INSERT INTO authority (username, authority) VALUES ('admin2', 'ROLE_USER');
INSERT INTO authority (username, authority) VALUES ('user1', 'ROLE_USER');
INSERT INTO authority (username, authority) VALUES ('user2', 'ROLE_USER');
INSERT INTO authority (username, authority) VALUES ('user3', 'ROLE_USER');
INSERT INTO authority (username, authority) VALUES ('user4', 'ROLE_USER');

INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber, member_id, email) VALUES ('Curious','George',30,'Boy Monkey', 8754,'admin');
INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber,member_id, email) VALUES ('Allen','Rench',30,'Torque Master', 8733,'admin2');
INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber,member_id, email) VALUES ('Test1','User1',25,'Test user', 9001,'user1', 'jargalanch@gmail.com');
INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber,member_id, email) VALUES ('Test2','User2',25,'Test user', 9002,'user2');
INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber,member_id, email) VALUES ('Test3','User3',25,'Test user', 9003,'user3', 'jchimedregzen@mum.edu');
INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber,member_id, email) VALUES ('Test4','User4',25,'Test user', 9004,'user4');

INSERT INTO movie (title, genre, actors, `year`, imdb, movie_index) VALUES ('The Shawshank Redemption','Adventure','Tim Robbins, Morgan Freeman, Bob Gunton','1994','http://www.imdb.com/title/tt0111161/','161');
INSERT INTO movie (title, genre, actors, `year`, imdb, movie_index) VALUES ('The Godfather','Crime','Marlon Brando, Al Pacino, James Caan','1972','http://www.imdb.com/title/tt0068646/','646');
INSERT INTO movie (title, genre, actors, `year`, imdb, movie_index) VALUES ('The Dark Knight','Action','Christian Bale, Heath Ledger','2008','http://www.imdb.com/title/tt0468569/','569');
INSERT INTO movie (title, genre, actors, `year`, imdb, movie_index) VALUES ('Schindler List','Drama','Liam Neeson, Ralph Fiennes','1993','http://www.imdb.com/title/tt0108052/','052');
INSERT INTO movie (title, genre, actors, `year`, imdb, movie_index) VALUES ('Fight Club','Drama','Brad Pitt, Edward Norton','1999','http://www.imdb.com/title/tt0137523/','523');
INSERT INTO movie (title, genre, actors, `year`, imdb, movie_index) VALUES ('Forrest Gump','Drama','Tom Hanks','1994','http://www.imdb.com/title/tt0109830/','830');
INSERT INTO movie (title, genre, actors, `year`, imdb, movie_index) VALUES ('The Silence of the Lambs','Crime','Jodie Foster, Anthony Hopkins','1991','http://www.imdb.com/title/tt0102926/','926');
INSERT INTO movie (title, genre, actors, `year`, imdb, movie_index) VALUES ('The Green Mile','Drama','Tom Hanks','1999','http://www.imdb.com/title/tt0120689/','689');
INSERT INTO movie (title, genre, actors, `year`, imdb, movie_index) VALUES ('Saving Private Ryan','War','Tom Hanks, Matt Damon','1998','http://www.imdb.com/title/tt0120815/','815');
INSERT INTO movie (title, genre, actors, `year`, imdb, movie_index) VALUES ('Léon: The Professional','Crime','Jean Reno, Gary Oldman, Natalie Portman','1994','http://www.imdb.com/title/tt0110413/','413');
INSERT INTO movie (title, genre, actors, `year`, imdb, movie_index) VALUES ('The Usual Suspects','Crime','Kevin Spacey, Gabriel Byrne, Chazz Palminteri','1995','http://www.imdb.com/title/tt0114814/','814');


