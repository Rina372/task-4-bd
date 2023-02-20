-- количество исполнителей в каждом жанре;
select distinct genre_name, count(singer_name)
from list_genres lg join singers s on s.singer_id = lg.genre_id
join genre g on g.genre_id = lg.genre_id
group by genre_name;

-- количество треков, вошедших в альбомы 2019-2021 годов;
select album_name, release_date, count(track_id) 
from albums a  join tracks t  on t.album_id = a.album_id 
WHERE release_date BETWEEN 2019 AND 2021
group by album_name, a.release_date;

-- средняя продолжительность треков по каждому альбому;
select album_name, avg(duration)
from albums a  join tracks t  on t.album_id = a.album_id
group by a.album_name; 

-- все исполнители, которые не выпустили альбомы в 2020 году;
select album_name, singer_name, release_date 
from albums a join list_albums la on a.album_id = la.album_id 
join singers s  on la.singer_id = s.singer_id
where release_date != 2020;

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select distinct collection_name 
from collection c join collection_tracks ct on c.collection_id = ct.collection_id
join tracks t on ct.track_id = t.track_id 
join albums a on a.album_id = t.album_id 
join list_albums la on a.album_id = la.album_id
join singers s on la.singer_id = s.singer_id
where singer_name like 'BTS';

-- название альбомов, в которых присутствуют исполнители более 1 жанра;
select album_name, singer_name, count (genre_name)
from list_genres lg join genre g on  lg.genre_id = g.genre_id
join singers s on s.singer_id = lg.singer_id
join list_albums la on s.singer_id = la.singer_id 
join albums a on la.album_id = a.album_id  
group by a.album_name, s.singer_name
having count(genre_name) > 1; 

-- наименование треков, которые не входят в сборники;
select track_name, collection_name 
from tracks t full join collection_tracks ct on t.track_id = ct.track_id 
full join collection c on ct.collection_id = c.collection_id 
where collection_name is null;

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
select track_name, singer_name 
from tracks t join albums a on t.album_id = a.album_id 
join list_albums la on a.album_id = la.album_id 
join singers s on la.singer_id = s.singer_id 
WHERE duration = (SELECT min(duration) FROM tracks);


-- название альбомов, содержащих наименьшее количество треков.
select album_name, count(track_name)
from albums a join tracks t on a.album_id = t.album_id 
group by a.album_name
having count(track_name) = (
	select min(count) from (
		select album_name, count(track_name) from albums a join tracks t on a.album_id = t.album_id 
		group by a.album_name) as foo);
