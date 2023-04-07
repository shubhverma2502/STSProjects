package com.shubh.Service;

import java.util.List;

import com.shubh.Entity.Employee;

public interface EmployeeService 
{
     public Employee saveEmp(Employee emp);
     public Employee getEmp(Integer empid);
     public void deleteEmp(Integer empid);
     public Employee updateEmp(Employee emp,Integer empid);
     public List<Employee>getAllEmployee();
}
