/*DELETE FROM actors_watchables WHERE created_at IN (Select MAX(created_at) from actors_watchables GROUP BY watchable_id, actor_id HAVING count(watchable_id)>1);*/

SELECT * FROM actors WHERE id IN(SELECT DISTINCT actor_id FROM actors_watchables);

SELECT * FROM actors 
INNER JOIN actors_watchables
ON actors.id=actors_watchables.actor_id
INNER JOIN watchables
ON watchables.id = actors_watchables.watchable_id
WHERE watchable_id = 525;

SELECT * from watchables where id in (select watchable_id from torrents order by created_at desc limit 5) order by name;

Select count(id),gender from actors Group by gender;

select * from series where id = any (select serie_id from episodes where season_nr > 4);