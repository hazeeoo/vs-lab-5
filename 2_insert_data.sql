INSERT INTO institutes (name) VALUES ('Институт математики и информатики');

INSERT INTO groups (name, short_name, year, institute_id) VALUES
('Информатика и вычислительная техника', 'Б-ИВТ-25-1', 2025, 1),
('Информатика и вычислительная техника', 'Б-ИВТ-25-2', 2025, 1),
('Фундаментальная информатика и информационные технологии', 'Б-ФИИТ-25', 2025, 1),
('Прикладная информатика', 'Б-ПИ-25-1', 2025, 1);

INSERT INTO students (surname, name, father_name, group_id) VALUES
('Иванов', 'Никита', 'Анатольевич', 1),
('Орбу', 'Артем',  NULL, 1),
('Леденев', 'Никита', 'Дубинович', 1);

SELECT * FROM institutes;

SELECT * FROM groups;

SELECT * FROM students;