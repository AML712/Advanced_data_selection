INSERT INTO Genre(name)
VALUES
    ('Country'),
    ('Hip hop'),
    ('Pop'),
    ('R&B'),
    ('Rock'),
    ('Pop Rock');

INSERT INTO Artist(name)
VALUES
    ('Taylor Swift'),
    ('Linkin Park'),
    ('Rihanna'),
    ('Eminem'),
    ('Madonna'),
    ('Michael Jackson'),
    ('Jay-Z'),
    ('The Script'),
    ('Ariana Grande'),
    ('Black Eyed Peas'),
    ('Justin Timberlake'),
    ('One Republic');

INSERT INTO Album(name, year)
VALUES
    ('Fearless', 2008),
    ('One More Light', 2017),
    ('Good Girl Gone Bad', 2007),
    ('Recovery', 2010),
    ('Music', 2010),
    ('Dangerous', 1991),
    ('The Black Album', 2003),
    ('Sunsets & Full Moons', 2019),
    ('Sweetener', 2018),
    ('Translation', 2020),
    ('Justified', 2002),
    ('The E.N.D.', 2009),
    ('Minutes to Midnight', 2007),
    ('Human', 2021);

INSERT INTO Track(name, length, album_id)
VALUES
    ('White Horse', 212, 1),
    ('Talking to Myself', 210, 2),
    ('Rehab', 272, 3),
    ('Not Afraid', 244, 4),
    ('Gone', 194, 5),
    ('Black or White', 249, 6),
    ('99 Problems', 212, 7),
    ('Underdog', 202, 8),
    ('Good Goodbye', 198, 2),
    ('Dont Stop the Music', 256, 3),
    ('Gone Too Soon', 193, 6),
    ('God Is a Woman', 190, 9),
    ('No Tears Left to Cry', 195, 9),
    ('Ritmo', 200, 10),
    ('Cry Me a River', 268, 11),
    ('Meet Me Halfway', 266, 12),
    ('I Gotta Feelling', 269, 12),
    ('Leave Out All the Rest', 197, 13),
    ('What I’ve Done', 195, 13),
    ('Someday', 184, 14);


INSERT INTO Collection(name, year)
VALUES
    ('Nostalgia', 2020),
    ('Rock', 2018),
    ('Meditation', 2015),
    ('Hits of 2000s', 2011),
    ('Hits of All Time', 2017),
    ('Motivation', 2020),
    ('Party Hard', 2018),
    ('Female Vocals', 2021);

INSERT INTO GenreArtist(genre_id, artist_id)
VALUES
    (1, 1),
    (2, 7),
    (2, 10),
    (2, 4),
    (3, 5),
    (3, 6),
    (4, 3),
    (4, 9),
    (4, 11),
    (5, 2),
    (6, 8),
    (6, 12);

INSERT INTO ArtistAlbum(artist_id, album_id)
VALUES
    (1, 1),
    (2, 2),
    (2, 13),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (10, 12),
    (11, 11),
    (12, 14);

INSERT INTO TrackCollection(track_id, collection_id)
VALUES
    (1, 8),
    (2, 2),
    (3, 1),
    (3, 3),
    (3, 8),
    (4, 1),
    (4, 6),
    (5, 5),
    (6, 5),
    (7, 4),
    (8, 2),
    (8, 7), 
    (9, 2),
    (10, 1),
    (10, 4),
    (11, 5),
    (12, 6),
    (13, 3),
    (13, 8),
    (14, 7),
    (15, 1),
    (16, 1),
    (16, 4),
    (17, 4),
    (17, 7),
    (18, 1),
    (18, 2),
    (19, 1),
    (19, 2),
    (20, 6);
    
INSERT INTO Track(name, length, album_id)
VALUES('Run', 114, 14);

insert into GenreArtist(genre_id, artist_id)
VALUES(3, 9);
   
   