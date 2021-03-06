DROP TABLE IF EXISTS groups;
CREATE TABLE groups (
  id INTEGER PRIMARY KEY NOT NULL,
  name TEXT NOT NULL
);

DROP TABLE IF EXISTS players;
CREATE TABLE players(
  pseudo   VARCHAR(50) PRIMARY KEY NOT NULL,
  group_id INTEGER DEFAULT NULL,
  fullname VARCHAR(50) NOT NULL,
  gender   CHAR(1) NOT NULL,
  birthday DATE NOT NULL,
  points   INTEGER NOT NULL,
  address_street VARCHAR(255) NOT NULL,
  address_postalCode VARCHAR(255) NOT NULL,
  address_city VARCHAR(255) NOT NULL,
  address_country VARCHAR(255) NOT NULL,
  CONSTRAINT FK_264E43A6FE54D947 FOREIGN KEY (group_id) REFERENCES groups (id)
);

CREATE INDEX IDX_264E43A6FE54D947 ON players (group_id);
