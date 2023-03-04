package task01.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import task01.domain.Student;
import task01.repository.StudentRepository;

@Service
public class StudentService {

	@Autowired
	private StudentRepository repo;

	public Student save(Student student) {
		return repo.save(student);
	}

	public Student findStudent(int id) {
		return repo.getReferenceById(id);
	}

}