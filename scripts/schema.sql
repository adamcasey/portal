-- Teams table
CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  name VARCHAR(128) NOT NULL,
  mascot VARCHAR(64),
  conference VARCHAR(64),
  location VARCHAR(128)
);

-- Positions table
CREATE TABLE positions (
  id SERIAL PRIMARY KEY,
  name VARCHAR(64) NOT NULL
);

-- Players table
CREATE TABLE players (
  id SERIAL PRIMARY KEY,
  name VARCHAR(128) NOT NULL,
  currentteamid INTEGER REFERENCES teams(id),
  positionid INTEGER REFERENCES positions(id),
  stats JSONB,
  nilinfo JSONB,
  imageurl VARCHAR(256)
);

-- Player previous schools (many-to-many)
CREATE TABLE player_previous_schools (
  playerid INTEGER REFERENCES players(id) ON DELETE CASCADE,
  teamid INTEGER REFERENCES teams(id) ON DELETE CASCADE
);
