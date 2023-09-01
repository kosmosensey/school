package ru.hogwarts.school.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import ru.hogwarts.school.model.Student;

import java.util.*;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {

    List<Student> findAllByAge(int age);

    List<Student> findAllByAgeBetween(int min, int max);

    @Query(value = "SELECT COUNT(*) FROM student", nativeQuery = true)
    Long countAllStudents();

    @Query(value = "SELECT AVG(age) FROM student", nativeQuery = true)
    Long getStudentsAverageAge();

    @Query(value = "SELECT * FROM student ORDER BY student.id DESC limit 5", nativeQuery = true)
    List<Student> findLastFiveStudents();
}
