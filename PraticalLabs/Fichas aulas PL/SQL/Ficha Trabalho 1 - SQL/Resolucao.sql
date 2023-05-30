--a)
Select*
From Genre

--b)
INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Neck Deep', '2002')

--c)
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('The Peace and The Panic', '2017', '360', 'MyRecords', 28, 4)

--d)
INSERT INTO Song (Title, SongLength, AlbumId, ReleaseDate, ArtistId) VALUES ('Motion Sickness', '420', 21, '07/2017', 28)
INSERT INTO Song (Title, SongLength, AlbumId, ReleaseDate, ArtistId) VALUES ('Happy Judgement Day', '120', 21, '08/2017', 28)
INSERT INTO Song (Title, SongLength, AlbumId, ReleaseDate, ArtistId) VALUES ('Parachute', '630', 21, '09/2017', 28)

--e)

UPDATE Song SET GenreId = 13 WHERE ArtistId = 28

--f)

UPDATE Album SET AlbumLength = 1400 WHERE Title = 'The Peace and The Panic'

--g)
UPDATE Album SET GenreId = 9 WHERE Title = 'The Peace and The Panic'

--h)
Select *
From song, Artist
where song.ArtistId=Artist.Id and Artist.ArtistName='beatles'

--i)

Select *
From song
where song.ReleaseDate like '%198%'

-- j)
Select distinct Artist.ArtistName
From Artist, Genre, Song
Where Artist.Id=Song.ArtistId and Song.GenreId=Genre.Id and Genre.Label='Rock'

-- k)
-- não

--l)

Select *
From Song
Where Song.SongLength between 500 and 800

--m)
Select *
From Song, Album
Where Song.AlbumId=Album.Id and Album.Title='Eliminator'

--n)
Select Artist.ArtistName
From Artist, Album
Where Album.Title='Revolver' and Artist.Id=Album.ArtistId

--o)

Select Count(*) as Numero
From Album, Song
Where Album.Id=Song.AlbumId and Album.Title='Revolver'

--p)

Select Artist.ArtistName
From Artist
Order by Artist.ArtistName desc

--r)

Select *
From Song, Album
Where Song.AlbumId=Album.Id and Album.Title='TV Party'
Union
Select *
From Song, Album
Where Song.AlbumId=Album.Id and Album.Title='Eliminator'
order by AlbumId

--s)
Select *
From Song, genre
where song.GenreId=Genre.Id and Genre.Label='pop'
UNION
Select *
From Song, genre
where song.GenreId=Genre.Id and Genre.Label='rock'
UNION
Select *
From Song, genre
where song.GenreId=Genre.Id and Genre.Label='punk'
order by song.GenreId