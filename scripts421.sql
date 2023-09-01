--Возраст студента не может быть меньше 16 лет.
ALTER TABLE student ADD CONSTRAINT age_check CHECK (age > 16);
--Имена студентов должны быть уникальными и не равны нулю.
ALTER TABLE student ADD CONSTRAINT Student_Name UNIQUE (name);
ALTER TABLE student ADD CONSTRAINT Student_Name_Not_Null CHECK (name IS NOT NULL);
--Пара “значение названия” - “цвет факультета” должна быть уникальной.
ALTER TABLE faculty ADD CONSTRAINT Faculty_Name_Color UNIQUE (name, color);
--При создании студента без возраста ему автоматически должно присваиваться 20 лет.
ALTER TABLE student ALTER COLUMN age SET DEFAULT 20;