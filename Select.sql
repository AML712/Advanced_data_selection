--Количество исполнителей в каждом жанре

select genre.name, count(artist_id) from genreartist ga
left join genre on genre_id = genre.id
group by genre.name
order by count(artist_id) DESC;

--Количество треков, вошедших в альбомы 2019-2020 годов

select album.year, count(track.id) from album
join track on track.album_id = album.id 
where album.year between 2019 and 2020
group by album.year;

--Средняя продолжительность треков по каждому альбому

select album.name, AVG(track.length) from track
left join album on track.album_id = album.id
GROUP by album.name
order by album.name;

--Все исполнители, которые не выпустили альбомы в 2020 году;

select artist.name from album
left join artistalbum aa on aa.album_id = album.id
left join artist on artist.id = aa.artist_id 
where not album.year = 2020
group by artist.name;


--Названия сборников, в которых присутствует конкретный исполнитель (например, Eminem)

select collection.name from collection
left join trackcollection tc on tc.collection_id = collection.id
left join track on tc.track_id = track.id
left join album on track.album_id = album.id
left join artistalbum aa on album.id = aa.album_id 
left join artist on artist.id = aa.artist_id 
where artist.name like 'Eminem';

--Название альбомов, в которых присутствуют исполнители более 1 жанра

select album.name from artistalbum aa
join album on album.id = aa.album_id
where aa.artist_id in
(select ga.artist_id from genreartist ga
group by ga.artist_id
having count(ga.genre_id) > 1);

--Наименование треков, которые не входят в сборники

select track.name from track
left join trackcollection tc on tc.track_id = track.id
where tc.track_id is null;

--Исполнители, написавшие самый короткий по продолжительности трек

select artist.name from track
left join album on track.album_id = album.id 
left join artistalbum aa on album.id = aa.album_id 
left join artist on artist.id = aa.artist_id 
where track.length = (select min(length) from track);

--Название альбомов, содержащих наименьшее количество треков

select album.name from album
left join track on track.album_id = album.id
group by album.name
having count(track.name) <= ALL(
       select count(track.name) from album
       join track on track.album_id = album.id 
       group by album.name);





