package com.shubh.ServiceImp;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shubh.Entity.Employee;
import com.shubh.Repository.EmployeeRepo;
import com.shubh.Service.EmployeeService;

@Service
public class EmployeeServiceImp implements EmployeeService
{
	@Autowired
	private EmployeeRepo empRepo;
	
	@Override
	public Employee saveEmp(Employee emp)
	{
		Employee e1 = empRepo.save(emp);
		return e1;
	}
	
	@Override
	public Employee getEmp(Integer empid)
	{
		Employee e2 = empRepo.findById(empid).get();
		return e2;
	}
	
	@Override
	public void deleteEmp(Integer empid)
	{
		empRepo.deleteById(empid); 
	}
	
	@Override
	public Employee updateEmp(Employee emp,Integer empid)
	{
		Optional<Employee>optional = empRepo.findById(empid);
		Employee ee = optional.get();
		ee.setEmpid(empid);
		ee.setEmpname(emp.getEmpname());
		ee.setPassword(emp.getPassword());
		ee.setEmail(emp.getEmail());
		ee.setGender(emp.getGender());
		ee.setAddress(emp.getAddress());
		ee.setSalary(emp.getSalary());
		ee.setCompany_name(emp.getCompany_name());
		ee.setDesignation(emp.getDesignation());
		ee.setState(emp.getState());
		return empRepo.save(ee);
	}
	
	@Override
	public List<Employee>getAllEmployee()
	{
		List<Employee>empList = empRepo.findAll();	
		return empList;
	}
	
	
	
	
	
}
