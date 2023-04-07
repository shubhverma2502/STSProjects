package com.shubh.dto;

import com.shubh.Entity.Student;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class StudentRequest 
{
	private Student student;
}
