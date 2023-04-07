package com.shubh.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shubh.Entity.Student;
import com.shubh.dto.StudentRequest;
import com.shubh.service.StudentService;

@RestController
public class StudentController {
	@Autowired
	private StudentService studService;

	@RequestMapping("/show")
	public String show() {
		return "StudentForm";
	}

	@PostMapping("/save")
	public Student saveStudent(@ModelAttribute StudentRequest student,Model m) {
		m.addAttribute(student);
		Student s1 = studService.saveStudent(student);
		return s1;
	}

	@GetMapping("/getAll")
	public List<Student> getAllStudent() {
		List<Student> s2 = studService.getAllStudent();
		return s2;
	}
	
	@GetMapping("/get/{sid}")
	public Student getStudent(@PathVariable Integer sid) {
		Student s3 = studService.getById(sid);
		return s3;
	}
}
