-- Insert sample teams
INSERT INTO teams (name) VALUES ('Alabama'), ('Georgia'), ('Ohio State'), ('USC'), ('LSU'), ('Texas');

-- Insert sample positions
INSERT INTO positions (name) VALUES ('Quarterback'), ('Running Back'), ('Wide Receiver'), ('Linebacker'), ('Cornerback');

-- Insert sample players
INSERT INTO players (name, imageUrl, currentTeamId, positionId, nilInfo, stats) VALUES
  ('Caleb Williams', 'https://example.com/caleb.jpg', (SELECT id FROM teams WHERE name='USC'), (SELECT id FROM positions WHERE name='Quarterback'), '{"value": "$2.6M", "sources": ["On3", "ESPN"]}', '{"TD": 42, "Yards": 4537}'),
  ('Quinn Ewers', 'https://example.com/quinn.jpg', (SELECT id FROM teams WHERE name='Texas'), (SELECT id FROM positions WHERE name='Quarterback'), '{"value": "$1.2M", "sources": ["On3"]}', '{"TD": 21, "Yards": 3350}'),
  ('Harold Perkins', 'https://example.com/perkins.jpg', (SELECT id FROM teams WHERE name='LSU'), (SELECT id FROM positions WHERE name='Linebacker'), '{"value": "$1.0M", "sources": ["On3"]}', '{"Sacks": 8, "Tackles": 72}');

-- Insert previous schools
INSERT INTO player_previous_schools (playerId, teamId)
  VALUES
    ((SELECT id FROM players WHERE name='Caleb Williams'), (SELECT id FROM teams WHERE name='Oklahoma')),
    ((SELECT id FROM players WHERE name='Quinn Ewers'), (SELECT id FROM teams WHERE name='Ohio State'));
