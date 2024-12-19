-- Create database
CREATE DATABASE bands;

-- Use the database
USE SCHEMA bands.PUBLIC;

CREATE TABLE band (
    band_id INT PRIMARY KEY,
    band_url STRING,
    band_name STRING
);

CREATE TABLE album (
    album_id INT PRIMARY KEY,
    band_id INT,
    album_name STRING,
    release_date DATE,
    abstract STRING,
    run_time INT,
    sales_amount FLOAT,
    FOREIGN KEY (band_id) REFERENCES band(band_id)
);

CREATE TABLE band_genre (
    genre_id INT PRIMARY KEY,
    genre_name STRING
);

CREATE TABLE band_has_genre (
    band_id INT,
    genre_id INT,
    PRIMARY KEY (band_id, genre_id),
    FOREIGN KEY (band_id) REFERENCES band(band_id),
    FOREIGN KEY (genre_id) REFERENCES band_genre(genre_id)
);

CREATE TABLE musician (
    member_id INT PRIMARY KEY,
    member_url STRING
);

CREATE TABLE band_musician (
    band_id INT,
    member_id INT,
    member_status STRING,
    PRIMARY KEY (band_id, member_id),
    FOREIGN KEY (band_id) REFERENCES band(band_id),
    FOREIGN KEY (member_id) REFERENCES musician(member_id)
);

CREATE TABLE musician_name (
    musician_id INT PRIMARY KEY,
    musician_name STRING,
    FOREIGN KEY (musician_id) REFERENCES musician(member_id)
);


----

INSERT INTO band (band_id, band_url, band_name)
VALUES
  (1, 'https://example.com/band1', 'The Rockers'),
  (2, 'https://example.com/band2', 'The Blues Brothers'),
  (3, 'https://example.com/band3', 'The Jazz Quartet'),
  (4, 'https://example.com/band4', 'The Metalheads'),
  (5, 'https://example.com/band5', 'The Folk Singers'),
  (6, 'https://example.com/band6', 'The Pop Stars'),
  (7, 'https://example.com/band7', 'The Electronic Sound'),
  (8, 'https://example.com/band8', 'The Indie Collective'),
  (9, 'https://example.com/band9', 'The Punk Rockers'),
  (10, 'https://example.com/band10', 'The Classical Ensemble'),
  (11, 'https://example.com/band11', 'The Reggae Runners'),
  (12, 'https://example.com/band12', 'The Experimentalists'),
  (13, 'https://example.com/band13', 'The Country Crooners'),
  (14, 'https://example.com/band14', 'The Soul Voices'),
  (15, 'https://example.com/band15', 'The Funk Brothers'),
  (16, 'https://example.com/band16', 'The Ambient Explorers'),
  (17, 'https://example.com/band17', 'The House Music Crew'),
  (18, 'https://example.com/band18', 'The Hip-Hop Nation'),
  (19, 'https://example.com/band19', 'The Acoustic Tones'),
  (20, 'https://example.com/band20', 'The Synthwave Legends');

  
INSERT INTO album (album_id, band_id, album_name, release_date, abstract, run_time, sales_amount)
VALUES
  (1, 1, 'Rock On', '2009-01-01', 'A debut album filled with hard rock tracks.', 50, 50000.0),
  (2, 2, 'Blues Revival', '1989-05-20', 'Bringing blues back to the forefront of music.', 45, 45000.0),
  (3, 3, 'Jazz Vibes', '2022-11-15', 'A smooth blend of traditional and modern jazz.', 60, 60000.0),
  (4, 4, 'Heavy Metal Storm', '2018-02-10', 'A powerful and energetic metal album.', 55, 70000.0),
  (5, 5, 'Folk Stories', '1989-06-01', 'A collection of stories through folk music.', 50, 40000.0),
  (6, 6, 'Pop Dream', '2024-01-15', 'A vibrant pop album with catchy tunes.', 45, 80000.0),
  (7, 7, 'Electric Pulse', '2022-08-25', 'An album mixing electronic and experimental sounds.', 65, 30000.0),
  (8, 8, 'Indie Horizons', '1994-07-07', 'A fresh take on indie rock with soulful lyrics.', 50, 35000.0),
  (9, 9, 'Punk Spirit', '1980-09-12', 'A fast-paced and rebellious punk album.', 45, 25000.0),
  (10, 10, 'Classical Inspirations', '2007-10-05', 'Timeless classical pieces with a modern twist.', 70, 150000.0),
  (11, 11, 'Reggae Roots', '1989-03-15', 'A reggae album full of good vibes and positivity.', 60, 20000.0),
  (12, 12, 'Experimental Soundscapes', '2024-02-20', 'Innovative sound experiments that push boundaries.', 75, 10000.0),
  (13, 13, 'Country Roads', '1987-11-22', 'A nostalgic country album with a heartfelt touch.', 50, 45000.0),
  (14, 14, 'Soulful Journey', '1996-04-10', 'A deep and soulful album that explores love and loss.', 60, 50000.0),
  (15, 15, 'Funkadelic Beats', '2019-12-01', 'Groovy funk beats that get you moving.', 50, 55000.0),
  (16, 16, 'Ambient Waves', '2024-01-30', 'A serene album perfect for relaxation and focus.', 65, 30000.0),
  (17, 17, 'House Anthem', '2014-06-30', 'A dance album full of energetic house music.', 55, 60000.0),
  (18, 18, 'Hip-Hop Chronicles', '1983-10-20', 'A bold and raw collection of hip-hop tracks.', 60, 70000.0),
  (19, 19, 'Acoustic Dreaming', '1985-05-10', 'An intimate acoustic album with heartfelt lyrics.', 50, 25000.0),
  (20, 20, 'Synthwave Dreams', '2024-03-01', 'A nostalgic synthwave album with retro vibes.', 45, 30000.0),
  (21, 1, 'Rock Revolution', '2012-03-05', 'An experimental shift in sound with heavier riffs.', 55, 60000.0),
  (22, 1, 'Back to Basics', '1993-11-20', 'Returning to the roots of classic rock.', 50, 45000.0),
  (23, 2, 'Blues Legacy', '1994-04-12', 'A deep dive into the history and legacy of blues.', 60, 55000.0),
  (24, 2, 'Modern Blues', '1997-06-18', 'Blues with a contemporary twist and fresh rhythms.', 55, 42000.0),
  (25, 3, 'Jazz Masterpieces', '2024-01-08', 'Re-imagining classic jazz pieces with a modern touch.', 65, 75000.0),
  (26, 3, 'The Sound of Jazz', '2018-12-05', 'A soulful album with unforgettable jazz melodies.', 70, 68000.0),
  (27, 4, 'Metal Fury', '2024-02-22', 'High-energy metal with screaming solos and fast drums.', 60, 80000.0),
  (28, 5, 'Folk Rhythms', '1991-09-14', 'Folk songs that tell heartfelt stories of the land.', 50, 30000.0),
  (29, 6, 'Pop Fantasy', '2024-03-29', 'A pop album full of dream-like beats and catchy tunes.', 45, 85000.0),
  (30, 7, 'Synth and Beats', '2024-05-20', 'A fusion of electronic beats and retro synth vibes.', 65, 32000.0),
  (31, 7, 'Electric Waves', '2024-07-15', 'A second album exploring deeper electronic textures.', 60, 35000.0),
  (32, 8, 'Indie Waves', '2006-10-25', 'Indie rock songs that touch on personal journeys.', 55, 39000.0),
  (33, 8, 'Sounds of Freedom', '2024-01-10', 'A creative blend of rock and indie genres.', 60, 42000.0),
  (34, 9, 'Punk Revolution', '1987-08-13', 'Punk with raw energy and rebellious themes.', 50, 27000.0),
  (35, 9, 'Anarchy and Chaos', '1991-03-05', 'An experimental punk album that pushes boundaries.', 55, 22000.0),
  (36, 10, 'The Classics', '2024-02-18', 'A compilation of the best classical pieces from around the world.', 80, 150000.0),
  (37, 11, 'Roots of Reggae', '1981-05-25', 'The soulful roots of reggae with positive vibrations.', 60, 30000.0),
  (38, 12, 'Sound Experiments', '2001-11-12', 'A collection of abstract sound experiments and mixes.', 75, 12000.0),
  (39, 13, 'Country Stars', '2024-02-02', 'A tribute to the legends of country music.', 50, 46000.0),
  (40, 14, 'Soul Origins', '1991-09-30', 'An album exploring the soulful side of life.', 65, 52000.0);


INSERT INTO band_genre (genre_id, genre_name)
VALUES
  (1, 'Rock'),
  (2, 'Blues'),
  (3, 'Jazz'),
  (4, 'Metal'),
  (5, 'Folk'),
  (6, 'Pop'),
  (7, 'Electronic'),
  (8, 'Indie'),
  (9, 'Punk'),
  (10, 'Classical'),
  (11, 'Reggae'),
  (12, 'Experimental'),
  (13, 'Country'),
  (14, 'Soul'),
  (15, 'Funk'),
  (16, 'Ambient'),
  (17, 'House'),
  (18, 'Hip-Hop'),
  (19, 'Acoustic'),
  (20, 'Synthwave');

INSERT INTO band_has_genre (band_id, genre_id)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10),
  (11, 11),
  (12, 12),
  (13, 13),
  (14, 14),
  (15, 15),
  (16, 16),
  (17, 17),
  (18, 18),
  (19, 19),
  (20, 20);

INSERT INTO musician (member_id, member_url)
VALUES
  (1, 'https://example.com/musician1'),
  (2, 'https://example.com/musician2'),
  (3, 'https://example.com/musician3'),
  (4, 'https://example.com/musician4'),
  (5, 'https://example.com/musician5'),
  (6, 'https://example.com/musician6'),
  (7, 'https://example.com/musician7'),
  (8, 'https://example.com/musician8'),
  (9, 'https://example.com/musician9'),
  (10, 'https://example.com/musician10'),
  (11, 'https://example.com/musician11'),
  (12, 'https://example.com/musician12'),
  (13, 'https://example.com/musician13'),
  (14, 'https://example.com/musician14'),
  (15, 'https://example.com/musician15'),
  (16, 'https://example.com/musician16'),
  (17, 'https://example.com/musician17'),
  (18, 'https://example.com/musician18'),
  (19, 'https://example.com/musician19'),
  (20, 'https://example.com/musician20'),
  (21, 'https://example.com/musician21'),
  (22, 'https://example.com/musician22'),
  (23, 'https://example.com/musician23'),
  (24, 'https://example.com/musician24'),
  (25, 'https://example.com/musician25'),
  (26, 'https://example.com/musician26'),
  (27, 'https://example.com/musician27'),
  (28, 'https://example.com/musician28'),
  (29, 'https://example.com/musician29'),
  (30, 'https://example.com/musician30'),
  (31, 'https://example.com/musician31'),
  (32, 'https://example.com/musician32'),
  (33, 'https://example.com/musician33'),
  (34, 'https://example.com/musician34'),
  (35, 'https://example.com/musician35'),
  (36, 'https://example.com/musician36'),
  (37, 'https://example.com/musician37'),
  (38, 'https://example.com/musician38'),
  (39, 'https://example.com/musician39'),
  (40, 'https://example.com/musician40'),
  (41, 'https://example.com/musician41'),
  (42, 'https://example.com/musician42'),
  (43, 'https://example.com/musician43'),
  (44, 'https://example.com/musician44'),
  (45, 'https://example.com/musician45'),
  (46, 'https://example.com/musician46'),
  (47, 'https://example.com/musician47'),
  (48, 'https://example.com/musician48'),
  (49, 'https://example.com/musician49'),
  (50, 'https://example.com/musician50'),
  (51, 'https://example.com/musician51'),
  (52, 'https://example.com/musician52'),
  (53, 'https://example.com/musician53'),
  (54, 'https://example.com/musician54'),
  (55, 'https://example.com/musician55'),
  (56, 'https://example.com/musician56'),
  (57, 'https://example.com/musician57'),
  (58, 'https://example.com/musician58'),
  (59, 'https://example.com/musician59'),
  (60, 'https://example.com/musician60');

INSERT INTO musician_name (musician_id, musician_name)
VALUES
  (1, 'John Doe'),
  (2, 'Jane Smith'),
  (3, 'Bob Johnson'),
  (4, 'Alice Brown'),
  (5, 'Charlie Davis'),
  (6, 'David Wilson'),
  (7, 'Emily Clark'),
  (8, 'Frank Harris'),
  (9, 'Grace Lewis'),
  (10, 'Henry Lee'),
  (11, 'Isabel Walker'),
  (12, 'Jack White'),
  (13, 'Kelly Adams'),
  (14, 'Liam Carter'),
  (15, 'Mia Mitchell'),
  (16, 'Nina Turner'),
  (17, 'Oscar Perez'),
  (18, 'Paul Young'),
  (19, 'Quincy Scott'),
  (20, 'Rita Evans'),
  (21, 'John Doe'),
  (22, 'Jane Smith'),
  (23, 'Robert Brown'),
  (24, 'Emily Davis'),
  (25, 'Michael Wilson'),
  (26, 'Sarah Miller'),
  (27, 'James Taylor'),
  (28, 'Mary Anderson'),
  (29, 'David Lee'),
  (30, 'Linda White'),
  (31, 'Richard Harris'),
  (32, 'Jennifer Clark'),
  (33, 'William Lewis'),
  (34, 'Elizabeth Walker'),
  (35, 'Thomas Young'),
  (36, 'Patricia Hall'),
  (37, 'Charles Allen'),
  (38, 'Nancy Scott'),
  (39, 'Joseph King'),
  (40, 'Betty Wright'),
  (41, 'Steven Green'),
  (42, 'Dorothy Adams'),
  (43, 'Daniel Nelson'),
  (44, 'Samantha Carter'),
  (45, 'Paul Mitchell'),
  (46, 'Shirley Perez'),
  (47, 'Jack Roberts'),
  (48, 'Deborah Evans'),
  (49, 'Brian Campbell'),
  (50, 'Betty Parker'),
  (51, 'Gary Edwards'),
  (52, 'Katherine Cooper'),
  (53, 'Donald Murphy'),
  (54, 'Ruth Bailey'),
  (55, 'Kevin Gonzalez'),
  (56, 'Sophia Rivera'),
  (57, 'Gregory Morgan'),
  (58, 'Diana Mitchell'),
  (59, 'Louis Murphy'),
  (60, 'Jessica Taylor');

INSERT INTO band_musician (band_id, member_id, member_status)
VALUES
  (1, 1, 'active'),
  (1, 2, 'active'),
  (2, 3, 'inactive'),
  (2, 4, 'active'),
  (3, 5, 'active'),
  (3, 6, 'active'),
  (4, 7, 'active'),
  (4, 8, 'inactive'),
  (5, 9, 'active'),
  (5, 10, 'active'),
  (6, 11, 'inactive'),
  (6, 12, 'active'),
  (7, 13, 'active'),
  (7, 14, 'inactive'),
  (8, 15, 'active'),
  (8, 16, 'active'),
  (9, 17, 'inactive'),
  (9, 18, 'active'),
  (10, 19, 'active'),
  (10, 20, 'inactive'),
  (1, 21, 'active'),
  (1, 22, 'inactive'),
  (1, 23, 'active'),
  (2, 24, 'active'),
  (2, 25, 'inactive'),
  (2, 26, 'active'),
  (3, 27, 'inactive'),
  (3, 28, 'active'),
  (4, 29, 'active'),
  (5, 30, 'inactive'),
  (5, 31, 'active'),
  (5, 32, 'active'),
  (6, 33, 'inactive'),
  (7, 34, 'active'),
  (7, 35, 'active'),
  (7, 36, 'inactive'),
  (8, 37, 'active'),
  (8, 38, 'active'),
  (8, 39, 'inactive'),
  (9, 40, 'active'),
  (9, 41, 'inactive'),
  (10, 42, 'active'),
  (10, 43, 'active'),
  (11, 44, 'inactive'),
  (11, 45, 'active'),
  (12, 46, 'inactive'),
  (13, 47, 'active'),
  (14, 48, 'inactive'),
  (15, 49, 'active'),
  (15, 50, 'inactive'),
  (16, 51, 'active'),
  (17, 52, 'inactive'),
  (18, 53, 'active'),
  (18, 54, 'active'),
  (19, 55, 'inactive'),
  (20, 56, 'active'),
  (21, 57, 'inactive'),
  (21, 58, 'active'),
  (22, 59, 'active'),
  (23, 60, 'inactive');

---
-- Contar cuántos álbumes ha lanzado cada banda y mostrar el número total de ventas para cada una
select 
    b.band_name,
    count(a.album_id) as total_albums,
    sum(a.sales_amount) as total_sales
from 
    band b
join 
    album a on b.band_id = a.band_id
group by 
    b.band_name
order by 
    total_sales desc;

-- Para cada banda, mostrar los álbumes de más a menos vendido, y usar un CASE WHEN para resaltar el más vendido
select 
    b.band_name,
    a.album_name,
    a.sales_amount,
    case 
        when a.sales_amount = (select max(sales_amount) from album where band_id = b.band_id) 
        then 'oh, yeah' 
        else 'nope' 
    end as es_el_mas_vendido
from 
    band b
join 
    album a on b.band_id = a.band_id
order by 
    b.band_name, a.sales_amount desc;

-- Promedio de tiempo de los álbumes de cada banda
select 
    b.band_name,
    avg(a.run_time) as duracion_album_promedio,
from 
    band b
join 
    album a on b.band_id = a.band_id
group by 
    b.band_name
order by
    duracion_album_promedio desc;

-- Mostrar las bandas con la mayor cantidad de álbumes lanzados en cada década (1990s, 2000s, etc.)
select 
    b.band_name,
    count(a.album_id) as albumes_en_decada,
    case 
        when year(a.release_date) between 1980 and 1989
        then '\'80'
        
        when year(a.release_date) between 1990 and 1999
        then '\'90'
        
        when year(a.release_date) between 2000 and 2009
        then '\'00'
        
        when year(a.release_date) between 2010 and 2019
        then '\'10'
        
        when year(a.release_date) between 2020 and 2029
        then '\'20'
        
        else 'otra'
    end as decada
from 
    band b
join 
    album a on b.band_id = a.band_id
group by 
    b.band_name, decada
order by 
    b.band_name;

-- Coge el nombre de los músicos en mayúsculas, reemplaza espacios por guiones, y cuenta la longitud de los nombres.Incluye las bandas a las que pertenecen.
select
    upper(replace(mn.musician_name, ' ', '-')) as nombre_transformado,
    length(mn.musician_name) as longitud_nombre,
    b.band_name
from musician_name mn
join band_musician bm on bm.member_id = mn.musician_id
join band b on b.band_id = bm.band_id
order by longitud_nombre desc;
