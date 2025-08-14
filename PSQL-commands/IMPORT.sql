-- Must be done on PSQL Tool
-- Make sure to change the path to your CSV files
-- for example, if your CSV files are in C:\Users\andyc\Documents\Personal\projects\CMPSC431W-CLI\csv_files
-- then you would use 'C:\Users\andyc\Documents\Personal\projects\CMPSC431W-CLI\csv_files\competitions.csv'
-- and so on for other CSV files
\copy competitions from 'path\to\csv\competitions.csv' DELIMITER ',' csv header;
\copy clubs from 'path\to\csv\clubs.csv' DELIMITER ',' csv header;
\copy players from 'path\to\csv\players.csv' DELIMITER ',' csv header;
\copy games from 'path\to\csv\games22-08.csv' DELIMITER ',' csv header;
\copy game_lineups from 'path\to\csv\game_lineups22-08.csv' DELIMITER ',' csv header;
\copy game_events from 'path\to\csv\game_events22-08.csv' DELIMITER ',' csv header;
\copy club_games from 'path\to\csv\club_games22-08.csv' DELIMITER ',' csv header;
\copy appearances from 'path\to\csv\appearances22-08.csv' DELIMITER ',' csv header;
