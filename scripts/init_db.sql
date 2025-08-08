-- Create the database user
CREATE USER d1user WITH PASSWORD 'd1password';

-- Create the database
CREATE DATABASE d1football OWNER d1user;

-- Grant privileges
GRANT ALL PRIVILEGES ON DATABASE d1football TO d1user;
