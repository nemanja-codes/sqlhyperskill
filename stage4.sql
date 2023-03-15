count_games_ca = "SELECT count(*)
                  FROM video_games as games
                  JOIN game_developers ON games.game_developer = game_developers.name
                  WHERE game_developers.state = 'California';"

address = "SELECT address, city, state, country
            FROM game_developers
            JOIN video_games  ON game_developers.name = video_games.game_developer
            WHERE game_developers.state = (SELECT state 
				                                   FROM game_developers
				                                   GROUP BY state
                                           ORDER BY COUNT(state) DESC)
            ORDER BY release_date DESC
            LIMIT 1;"
