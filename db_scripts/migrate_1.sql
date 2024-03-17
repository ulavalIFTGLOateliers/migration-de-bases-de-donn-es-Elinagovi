ALTER TABLE singer RENAME TO musician;

CREATE TABLE band ( bandName varchar(50), creation YEAR, genre varchar(50), PRIMARY KEY (bandName));
INSERT INTO band (bandName, creation, genre) VALUES ('Crazy Duo', 2015, 'rock');
INSERT INTO band (bandName, creation, genre) VALUES ('Luna', 2009, 'classical');
INSERT INTO band (bandName, creation, genre) VALUES ('Mysterio', 2019, 'pop');

ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
ALTER TABLE musician ADD COLUMN role varchar(50);
ALTER TABLE musician ADD COLUMN bandName varchar(50);
ALTER TABLE musician ADD FOREIGN KEY (bandName) REFERENCES band(bandName);
UPDATE musician SET role = 'vocals', bandName = 'Crazy Duo' WHERE musicianName = 'Alina';
UPDATE musician SET role = 'guitar', bandName = 'Mysterio' WHERE musicianName = 'Mysterio';
UPDATE musician SET role = 'percussion', bandName = 'Crazy Duo' WHERE musicianName = 'Rainbow';
UPDATE musician SET role = 'piano', bandName = 'Luna' WHERE musicianName = 'Luna';
