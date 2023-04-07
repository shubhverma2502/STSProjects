
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeLeaf.com">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body style="background-color: aquamarine;">
    <nav class="navbar navbar-expand-lg navbar-light bg-info">
        <div class="container-fluid">
          <a class="navbar-brand" href="/">Edvenswa Tech</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item active">
                <a class="nav-link" aria-current="page" href="/reg">Registration</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="/getAll">Employee Details</a>
              </li>
            
            </ul>
          </div>
        </div>
     </nav>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h1 class="text-center">Employee Details</h1>
	<div class="Container p-3">
		<table class="table table-striped">
			<thead class="bg-secondary text-white">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">E-mail</th>
					<th scope="col">Password</th>
					<th scope="col">Home Number</th>
					<th scope="col">MobileNo</th>
					<th scope="col">Gender</th>
					<th scope="col">Date of Birth</th>
					<th scope="col">Marital Status</th>
					<th scope="col">City</th>
					<th scope="col">State</th>
					<th scope="col">Qualification</th>
					<th scope="col">Update</th>
					<th scope="col">Delete</th>

				</tr>
			</thead>
			<c:forEach var="Emp" items="${emps}">
				<tr>
					<td>${Emp.id}</td>
					<td>${Emp.name}</td>
					<td>${Emp.email}</td>
					<td>${Emp.password}</td>
					<td>${Emp.home_no}</td>
					<td>${Emp.mobie_no}</td>
					<td>${Emp.gender}</td>
					<td>${Emp.birthdate}</td>
					<td>${Emp.marital_status}</td>
					<td>${Emp.city}</td>
					<td>${Emp.state}</td>
					<td>${Emp.Qualification}</td>
					<td><a href="/update/${Emp.id}">Update</a></td>
					<td><a href="/delete/${Emp.id}">Delete</a></td>


				</tr>
			</c:forEach>
		</table>
		<br />
	</div>


</body>
</html>