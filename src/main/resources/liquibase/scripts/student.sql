-- liquibase formatted sql

-- changeset admin:2
CREATE INDEX student_name_inx ON student(name);

-- changeset admin:3
CREATE INDEX faculty_name_and_color_idx ON faculty(name,color);