-- SQLite

CREATE TABLE Question (
Question_ID VARCHAR(4) NOT NULL PRIMARY KEY UNIQUE,
Date_update VARCHAR NOT NULL,
CS_email VARCHAR(100),
    FOREIGN KEY (CS_email)
    REFERENCES Counselor (CS_email)
);