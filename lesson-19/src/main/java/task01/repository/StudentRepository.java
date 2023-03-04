package task01.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import task01.domain.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {

}