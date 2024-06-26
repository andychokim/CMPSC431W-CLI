--must be done on PSQL
\copy competitions from 'path\to\csv\competitions.csv' DELIMITER ',' csv header;
\copy clubs from 'path\to\csv\clubs.csv' DELIMITER ',' csv header;
\copy players from 'path\to\csv\players.csv' DELIMITER ',' csv header;
\copy games from 'path\to\csv\games22-08.csv' DELIMITER ',' csv header;
\copy game_lineups from 'path\to\csv\game_lineups22-08.csv' DELIMITER ',' csv header;
\copy game_events from 'path\to\csv\game_events22-08.csv' DELIMITER ',' csv header;
\copy club_games from 'path\to\csv\club_games22-08.csv' DELIMITER ',' csv header;
\copy appearances from 'path\to\csv\appearances22-08.csv' DELIMITER ',' csv header;

--regular SQL statement
insert into played (player_id, game_id)
select p.player_id, g.game_id 
from players p, games g
where g.home_club_id = p.current_club_id or g.away_club_id = p.current_club_id;