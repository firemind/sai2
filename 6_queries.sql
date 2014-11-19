/*
	Names: Michael Gerber, Ariana Arcos Blanco
*/
SELECT * FROM actors WHERE id IN(SELECT DISTINCT actor_id FROM actors_watchables);

SELECT * FROM actors 
INNER JOIN actors_watchables
ON actors.id=actors_watchables.actor_id
INNER JOIN watchables
ON watchables.id = actors_watchables.watchable_id
WHERE watchable_id = 2;

SELECT * from watchables where id in (select watchable_id from torrents order by created_at desc limit 5) order by name;

Select count(id),gender from actors Group by gender;

/*Serien werden ausgelesen, die mehr als 4 seasons haben*/
select * from series where id = any (select serie_id from episodes where season_nr > 4);

with late_episodes As(
select * from episodes where season_nr > 4
)
select * from series where id = any (SELECT serie_id From late_episodes);

Select name,popularity,gender,avg(popularity) over (partition by gender) from actors;

select distinct actorname from actors_in_watchables_view;

update popularity_view set popularity=99 where id=1;