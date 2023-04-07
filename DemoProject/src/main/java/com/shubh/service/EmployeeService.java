package com.shubh.service;

import java.util.List;

import com.shubh.Model.Employee;

public interface EmployeeService {

	public Employee saveEmp(Employee emp);
	public Employee getEmp(Integer id);
	//public List<Employee>getAllEmployee();
	
	public String deleteEmp(Integer id);
	public String findAll();
	public Employee updateEmp(Employee emp,Integer id);

}