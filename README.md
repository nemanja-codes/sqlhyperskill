# sqlhyperskill
SQL-hyperskill

====STAGE 1====

Analyze the tables, identify the elective columns to become primary keys, and find the relationships between different tables. Then, make the necessary statements to create tables with columns and data types to receive the data and primary and foreign keys on the appropriate columns.

Tip: The "platforms_games" and "games_characters" tables represent a specific type of relationship between two other tables called "many-to-many." This structure aims to avoid database redundancies and ensure data integrity. In this challenge, we will use the two foreign keys to compose a composite primary key.

====STAGE 2====

1. Delete rows from games_characters, where column game_id doesn't have a related character_id;
2. In the columns with the date content, set it to YYYY-MM-DD format.

====STAGE 3====

1. Search for Nathan Drake in the tables to find out more about him;
2. Sum up the total characters directly connected to Nathan Drake, use the "info" column in the "characters" table for that search;
3. Find where (street, state, city, country) the creators of the developer's favorite game are located.

====STAGE 4====

1. Count how many games in the database were made in California;
2. Discover the state with more games released on the database and, in this state, find the full address (street, city, state, country) of the lastest developer company to release a game.
