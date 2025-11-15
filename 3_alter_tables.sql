CREATE TABLE cathedrals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(1024) NOT NULL,
    chief VARCHAR(512) NOT NULL
);

ALTER TABLE groups ADD COLUMN cathedral_id INTEGER;

INSERT INTO cathedrals (name, chief) VALUES
('Кафедра информационных технологий', 'Васильева Наталья Васильевна'),
('Математическая экономика и прикладная информатика', 'Матвеева Нюргуяна Николаевна');

SELECT * FROM cathedrals;

UPDATE groups SET cathedral_id = 1 WHERE short_name IN ('Б-ИВТ-25-1', 'Б-ИВТ-25-2', 'Б-ФИИТ-25');
UPDATE groups SET cathedral_id = 2 WHERE short_name = 'Б-ПИ-25-1';

SELECT g.*, c.name as cathedral_name
FROM groups g
JOIN cathedrals c ON g.cathedral_id = c.id
WHERE c.name = 'Кафедра информационных технологий';