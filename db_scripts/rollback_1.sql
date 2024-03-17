ALTER TABLE musician DROP FOREIGN KEY musician_ibfk_1;
ALTER TABLE musician DROP COLUMN bandName;
ALTER TABLE musician DROP COLUMN role;
ALTER TABLE musician RENAME COLUMN musicianName TO singerName;
ALTER TABLE musician RENAME TO singer;

DROP TABLE band;
