delete_rows = "DELETE FROM games_characters
                WHERE character_id IS NULL;"

alter_table_platforms = "UPDATE platforms
                            SET release_date = DATE(release_date);"

alter_table_characters = "UPDATE characters
                            SET birthday = DATE(birthday);"
