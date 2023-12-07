exo 1 :
select * from games;


exo 2:

SELECT DISTINCT * FROM games;

exo 3 :

SELECT g_name , g_mode ,g_published_at ,g_pegi 
FROM games 
order by g_name ASC;

exo 4 :

SELECT g_name , g_mode ,g_published_at ,g_pegi
FROM games
order by g_published_at DESC
limit 10;


exo 5 :

SELECT g_name , g_mode ,g_published_at ,g_pegi
FROM games
where g_mode = "Solo" or g_mode = "Multijoueur";

exo 6:

SELECT g_name  ,g_published_at 
FROM games
where g_published_at BETWEEN  '2015-01-01 00:00:00' and '2020-01-01 00:00:00';

exo 7:

SELECT g_name , g_mode
FROM games
where g_mode = "Solo";

exo 8 :

SELECT * from games 
where g_name like '%witcher%';

exo 9:
SELECT * from games 
where g_name not like '%Halo%';

exo 10:

SELECT * 
FROM games 
WHERE g_published_at = '2012-01-01 00:00:00' 
   OR g_published_at = '2016-01-01 00:00:00' 
   OR g_published_at = '2020-01-01 00:00:00';
   
exo 11:

SELECT *
FROM games
NATURAL JOIN studios;

exo 12:

SELECT g.g_name as "nom de jeu",s.s_name as "studio", s.s_nationality as "nationalité"
FROM games g
JOIN studios s on s.s_id = g.g_id;

exo 13 :

SELECT g_name "nom de jeu", g_mode as "mode", p_name as "console", g_pegi as "pegi"
from games 
join platforms on p_id = s_id 
WHERE p_name not like "%pc%"
order by g_pegi ASC;

exo 14 :

SELECT g_name "nom de jeu", p_name as "console"
from games 
join platforms on p_id = s_id 
order by g_name ASC;

exo 15 :

SELECT g_name "nom de jeu", p_name as "console"
from games 
join platforms on p_id = s_id 
order by g_name ASC;

exo 16 :

SELECT count(DISTINCT g_name) "nnbre de jeux uniques"
from games;

exo 17:

SELECT count(g_name) as "nbre de jeux", s_name as "studio"
FROM games
NATURAL JOIN studios
group by s_name;

exo 18 :

SELECT count(g_name) "nbre de jeux",s_name as "studio"  ,p_name as "console"
from games 
NATURAL JOIN studios
join platforms on p_id = s_id
group by s_name;

exo 19 :

SELECT g_name AS "nom du jeu", COUNT(p_name) AS "nombre de plateformes"
FROM games g
JOIN games_platforms gp ON g.g_id = gp.g_id
natural join  platforms 
group by g_name
HAVING COUNT(p_name) >= 4;
