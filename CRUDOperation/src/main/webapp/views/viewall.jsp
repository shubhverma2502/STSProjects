<!doctype html>
<html lang="en" xmlns:th="http://www.thymeLeaf.com">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Employee Management System</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>

<body>
	<!--navbar-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Employee Management System</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item active"><a class="nav-link"
						aria-current="page" href="/">Add Employee</a></li>
					<li class="nav-item active"><a class="nav-link" href="/getAll">View
							All Details</a></li>

				</ul>
			</div>
		</div>
	</nav>

	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body bgcolor="white">
	<h1>Employee Details</h1>
	<div class="Container p-3">
		<table class="table table-striped">
			<thead class="bg-secondary text-white">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Password</th>
					<th scope="col">E-mail</th>
					<th scope="col">MobileNo</th>
					<th scope="col">Address</th>
					<th scope="col">Update</th>
					<th scope="col">Delete</th>

				</tr>
			</thead>
			<c:forEach var="emp" items="${emps}">
				<tr>
					<td>${emp.id}</td>
					<td>${emp.name}</td>
					<td>${emp.email}</td>
					<td>${emp.password}</td>
					<td>${emp.mobileno}</td>
					<td>${emp.address}</td>
					<td><a href="/update/${emp.id}">Update</a></td>
					<td><a href="/delete/${emp.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>


	<br />


</body>