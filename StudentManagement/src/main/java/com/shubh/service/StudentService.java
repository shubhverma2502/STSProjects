package com.shubh.service;

import java.util.List;

import com.shubh.Entity.Student;
import com.shubh.dto.StudentRequest;

public interface StudentService 
{
	public Student saveStudent(StudentRequest student);
	public List<Student> getAllStudent();
	public Student getById(Integer sid);
}
