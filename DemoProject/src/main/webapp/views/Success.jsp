<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
<h1>Registered Successfully</h1>
<hr>
<div class="text-center">
<h1>Welcome ${Emp.name}</h1>
<h2>Your Email Address is: ${Emp.email}</h2>
<h2>Your Password is: ${Emp.password}</h2>
<h2>Your Home number is: ${Emp.home_no}</h2>
<h2>Your Mobile number is: ${Emp.mobile_no}</h2>
<h2>Your Gender is: ${Emp.gender}</h2>
<h2>Your BirthDate is: ${Emp.birthdate}</h2>
<h2>Your Marital Status is: ${Emp.marital_status}</h2>
<h2>Your city is: ${Emp.city}</h2>
<h2>Your state is: ${Emp.state}</h2>
<h2>Your Highest Qualification is: ${Emp.qualification}</h2>
</div>

</body>
</html>