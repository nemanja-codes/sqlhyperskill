search_nathan = "SELECT * FROM characters WHERE name = 'Nathan Drake';"

how_many_people = "SELECT count(*) FROM characters WHERE info LIKE '%Nathan Drake%';"

find_location = "SELECT address, state, city, country
                  FROM game_developers
                  WHERE name = (SELECT game_developer
				                        FROM video_games
				                        WHERE id = (SELECT game_id
							                              FROM games_characters
							                              WHERE character_name = 'Nathan Drake'));"
