package com.shubh.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.shubh.Entity.Employee;
import com.shubh.Service.EmployeeService;

@RestController
public class EmployeeController 
{
	@Autowired
	private EmployeeService empService;
	
	@PostMapping("/save")
	public String save(@RequestBody Employee emp)
	{
		Employee ee = empService.saveEmp(emp);
		String message = null;
		if(ee != null) 
		{
			message = "Employee saved Successfully in Database";
		}
		else
		{
			message = "Employee not saved in Database";
		}
		return message;
	}
	
	@GetMapping("/get/{empid}")
	public Employee getOne(@PathVariable Integer empid)
	{
		Employee e2 = empService.getEmp(empid);
		return e2;
	}
	@DeleteMapping("/delete/{empid}")
	public void deleteEmp(@PathVariable Integer empid)
	{
		empService.deleteEmp(empid);
	}
	@PutMapping("/update/{empid}")
	public Employee updateEmp(@RequestBody Employee emp,@PathVariable Integer empid)
	{
		return empService.updateEmp(emp, empid);
	}
	@GetMapping("/getAll")
	public List<Employee>getAll()
	{
		List<Employee> emp = empService.getAllEmployee();
		return emp;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
