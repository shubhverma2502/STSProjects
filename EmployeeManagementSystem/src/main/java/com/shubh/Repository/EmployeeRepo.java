package com.shubh.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.shubh.Entity.Employee;
@Repository
public interface EmployeeRepo extends JpaRepository<Employee,Integer>
{

}
