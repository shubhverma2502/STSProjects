package com.shubh.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.shubh.Model.Employee;
@Repository
public interface EmployeeRepo extends JpaRepository<Employee,Integer>
{

}
