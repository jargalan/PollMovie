
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

INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber, member_id, email) VALUES ('Curious','George',30,'Boy Monkey', 8754,'admin',null);
INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber,member_id, email) VALUES ('Allen','Rench',30,'Torque Master', 8733,'admin2',null);
INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber,member_id, email) VALUES ('Test1','User1',25,'Test user', 9001,'user1', 'jargalanch@gmail.com');
INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber,member_id, email) VALUES ('Test2','User2',25,'Test user', 9002,'user2',null);
INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber,member_id, email) VALUES ('Test3','User3',25,'Test user', 9003,'user3', 'jchimedregzen@mum.edu');
INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber,member_id, email) VALUES ('Test4','User4',25,'Test user', 9004,'user4',null);

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

INSERT INTO poll (id, `name`, description) VALUES (1, "Inspirational Person History Trailblazer Biopics", "Movie biopics are a great way to honor, educate and celebrate the contributions of great person with the star power");
INSERT INTO poll (id, `name`, description) VALUES (2, "Favorite 60s British Movie", "In 1999 the British Film Institute produced the BFI 100 list of the greatest British films of the 20th century. The 1960's led the pack with 26 films of merit for the decade.");
INSERT INTO poll (id, `name`, description) VALUES (3, "Great Directors' Lowest Rated Titles", "All the following directors have at least one movie in the IMDb Top 1000 but not all of their movies have been so well received by critics and spectators. This list presents their lowest rated titles");
INSERT INTO poll (id, `name`, description) VALUES (4, "Favorite Gangster in AFI's Top 10 Gangster Films", "Presented by the American Film Institute (AFI) are Top 10 Lists of the Greatest Films ever made for a specific genre. In AFI's Top 10 Gangster Films, which notorious hoodlum portrayed in a gangster films.");
INSERT INTO poll (id, `name`, description) VALUES (5, "Smart and Evil", "What could be more dangerous than intelligence? In an evil mind.\nThese are some movie villains that have brain as their ultimate power. Who's the smartest of them all?");
INSERT INTO poll (id, `name`, description) VALUES (6, "Comic Book Movie Characters That Appear in Comic Issues the Most", "Here is a ranked list of the most popular comic book characters that appear in movies and in over 5,000 comic books, reprints, magazines, books, etc. Which comic book character are you interested?");
INSERT INTO poll (id, `name`, description) VALUES (7, "TV Character Wisdom", "With which of these TV character words of wisdom do you most agree?");
INSERT INTO poll (id, `name`, description) VALUES (8, "'Man vs. Town' Movies", "The term 'Man vs. Town' refers to these films where one man singlehandedly confronts a whole town or a large community of people from the same location");
INSERT INTO poll (id, `name`, description) VALUES (9, "Oscars 2018 — Favorite Winner", "Which of the winners at the 2018 Oscars were you most happy about?");
INSERT INTO poll (id, `name`, description) VALUES (10, "Which Worst Picture Will You Watch?", "If you have to watch one of these Razzie winners for Worst Picture, which movie will you choose? ");
INSERT INTO poll (id, `name`, description) VALUES (11, "Forgotten 80's Science Fiction Movies Many People Won't Admit to Loving", "There are a few SciFi-movies made in the 80's that were popular at their release. Some of them were reasonably illogical or even trashy, but even today they got some fans.");
INSERT INTO poll (id, `name`, description) VALUES (12, "Mystery, Suspense, and Detective Mystery Parodies", "The word “Parody” means a humorous exaggerated imitation or ode to a writer, artist, person, or genre. These are comedies that parody mysteries, suspense");
INSERT INTO poll (id, `name`, description) VALUES (13, "Most Inspiring Winter Olympics Movie?", "Which inspirational movie about world class athletes competing, qualifying or training for the Winter Olympics touches you the most?");

INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (1,1,0),(1,2,0),(1,3,10),(1,4,7),(1,5,5),(1,6,0),(1,7,2),(1,8,0),(1,9,0),(1,10,0),(1,11,0);
INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (2,1,0),(2,2,0),(2,3,0),(2,4,18),(2,5,10),(2,6,0),(2,7,4),(2,8,0),(2,9,0),(2,10,0),(2,11,0);
INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (3,1,0),(3,2,22),(3,3,0),(3,4,0),(3,5,0),(3,6,23),(3,7,0),(3,8,0),(3,9,0),(3,10,10),(3,11,0);
INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (4,1,0),(4,2,10),(4,3,4),(4,4,6),(4,5,4),(4,6,31),(4,7,0),(4,8,0),(4,9,0),(4,10,0),(4,11,0);
INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (5,1,10),(5,2,0),(5,3,10),(5,4,0),(5,5,0),(5,6,0),(5,7,0),(5,8,0),(5,9,22),(5,10,27),(5,11,0);
INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (6,1,0),(6,2,1),(6,3,0),(6,4,22),(6,5,0),(6,6,0),(6,7,16),(6,8,0),(6,9,0),(6,10,30),(6,11,0);
INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (7,1,0),(7,2,0),(7,3,23),(7,4,0),(7,5,7),(7,6,10),(7,7,14),(7,8,0),(7,9,0),(7,10,0),(7,11,0);
INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (8,1,7),(8,2,2),(8,3,10),(8,4,0),(8,5,20),(8,6,0),(8,7,0),(8,8,41),(8,9,0),(8,10,0),(8,11,0);
INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (9,1,0),(9,2,0),(9,3,0),(9,4,0),(9,5,0),(9,6,11),(9,7,8),(9,8,2),(9,9,0),(9,10,0),(9,11,0);
INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (10,1,3),(10,2,0),(10,3,40),(10,4,30),(10,5,28),(10,6,12),(10,7,33),(10,8,0),(10,9,0),(10,10,0),(10,11,0);
INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (11,1,0),(11,2,19),(11,3,23),(11,4,0),(11,5,19),(11,6,0),(11,7,0),(11,8,7),(11,9,0),(11,10,6),(11,11,2);
INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (12,1,0),(12,2,3),(12,3,10),(12,4,0),(12,5,0),(12,6,16),(12,7,0),(12,8,0),(12,9,10),(12,10,40),(12,11,0);
INSERT INTO Poll_Movie (poll_id, movie_id, votes) VALUES (13,1,0),(13,2,0),(13,3,5),(13,4,0),(13,5,8),(13,6,0),(13,7,0),(13,8,7),(13,9,20),(13,10,0),(13,11,0);

