video_games_tb = "CREATE TABLE video_games (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    game_genre TEXT NOT NULL,
    game_developer TEXT NOT NULL,
    release_date DATE NOT NULL
);"

game_developers_tb = "CREATE TABLE game_developers (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT,
    state TEXT,
    city TEXT,
    country TEXT NOT NULL
);"

platforms_tb = "CREATE TABLE platforms (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    company_id INTEGER,
    company TEXT,
    release_date DATE NOT NULL,
    original_price FLOAT NOT NULL
);"

platforms_games_tb = "CREATE TABLE platforms_games (
    game_id INTEGER NOT NULL,
    platform_id INTEGER NOT NULL,
    platform_name TEXT NOT NULL,
    PRIMARY KEY (game_id, platform_id),
    FOREIGN KEY (game_id) REFERENCES video_games(id) ON DELETE CASCADE,
    FOREIGN KEY (platform_id) REFERENCES platforms(id) ON DELETE CASCADE
);"

characters_tb = "CREATE TABLE characters (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    birthday DATE,
    gender REAL NOT NULL,
    info TEXT NOT NULL
);"

games_characters_tb = "CREATE TABLE games_characters (
    character_id INTEGER NOT NULL,
    character_name TEXT NOT NULL,
    game_id INTEGER NOT NULL,
    PRIMARY KEY (character_id, game_id),
    FOREIGN KEY (character_id) REFERENCES characters(id) ON DELETE CASCADE,
    FOREIGN KEY (game_id) REFERENCES video_games(id) ON DELETE CASCADE
);"
