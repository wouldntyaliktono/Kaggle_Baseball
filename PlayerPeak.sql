Select 
	pl.*,
    p.pos,
    b.yearID,
	b.g,
    b.ab,
    b.h,
    b.r,
    b.bb,
    b.doubles,
    b.triple,
    b.hr,
    b.rbi,
    b.sb,
    b.so,
    b.hbp,
    b.g_idp

FROM
	(Select 
    f.player_id,
    f.yearID, 
    f.stint,
    f.pos
    
    from fielding f
	inner join 
		(Select player_id, yearID, stint, max(g) g
		FROM fielding
		group by player_id, yearID, stint) b
	on 
		b.player_id = f.player_id and 
		b.yearID = f.yearID and 
		b.stint = f.stint and 
		b.g = f.g

	where 
		f.yearID>=1900) p

INNER JOIN
	batting as b 
	ON
		p.player_id = b.player_id and
		p.yearID = b.yearID and
		p.stint = b.stint
INNER JOIN
	player as pl
    ON
		p.player_id = pl.player_id

INNER JOIN 
	(SELECT
		player_id
	 FROM all_star
     GROUP BY player_id) AS astar
	ON
		p.player_id = astar.player_id


	
