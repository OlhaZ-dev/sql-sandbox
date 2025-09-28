CREATE TABLE friends (
    id INTEGER,
    name TEXT,
    birthday DATE
);
INSERT INTO friends (id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-05-30');

SELECT *
FROM friends;

INSERT INTO friends (id, name, birthday)
VALUES (2, 'Joe', '1946-11-21'),
(3, 'Nico', '1988-01-02');

UPDATE friends
SET name = 'Storm'
WHERE id = 1;

ALTER TABLE friends ADD COLUMN email;

UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'joe@example.com'
WHERE id = 2;

UPDATE friends
SET email = 'nico@example.com'
WHERE id = 3;

DELETE FROM friends
WHERE id = 1;

SELECT *
FROM friends;
