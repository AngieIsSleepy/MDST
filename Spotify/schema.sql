PRAGMA foreign_keys = ON;


CREATE TABLE users(
  fullname VARCHAR(40) NOT NULL,
  groupNumber INTEGER NOT NULL,
  PRIMARY KEY(fullname)
);

CREATE TABLE history(
  listenid INTEGER PRIMARY KEY AUTOINCREMENT,
  trackName VARCHAR(40) NOT NULL,
  listener VARCHAR(40) NOT NULL,
  FOREIGN KEY (listener) REFERENCES users(fullname)
);

CREATE TABLE songDetails(
  trackName VARCHAR(40) NOT NULL,
  artistName VARCHAR(40) NOT NULL,
  genre VARCHAR(40)
);




