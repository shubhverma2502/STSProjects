package com.shubh.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Emp_Table")
public class Employee 
{
	@Id
	private Integer empid;
	private String empname;
	private String password;
	private String email;
	private String gender;
	private String address;
	private Double salary;
	private String company_name;
	private String designation;
	private String state;
	public Employee() {
		
	}
	public Employee(Integer empid, String empname, String password, String email, String gender, String address,
			Double salary, String company_name, String designation, String state) {
		super();
		this.empid = empid;
		this.empname = empname;
		this.password = password;
		this.email = email;
		this.gender = gender;
		this.address = address;
		this.salary = salary;
		this.company_name = company_name;
		this.designation = designation;
		this.state = state;
	}
	public Integer getEmpid() {
		return empid;
	}
	public void setEmpid(Integer empid) {
		this.empid = empid;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Double getSalary() {
		return salary;
	}
	public void setSalary(Double salary) {
		this.salary = salary;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Employee [empid=" + empid + ", empname=" + empname + ", password=" + password + ", email=" + email
				+ ", gender=" + gender + ", address=" + address + ", salary=" + salary + ", company_name="
				+ company_name + ", designation=" + designation + ", state=" + state + "]";
	}
	
	
}
