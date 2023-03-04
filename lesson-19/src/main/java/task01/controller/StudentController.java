package task01.controller;

import java.io.FileNotFoundException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import task01.domain.Student;
import task01.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	StudentService service;

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute Student student, HttpServletRequest req) throws FileNotFoundException {
		service.save(student);
		
		return "cabinet";
	}

}