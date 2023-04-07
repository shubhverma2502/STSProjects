<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<form:form action="/product" method="post">
					<div class="card mt-5 ">
						<div class="card-header bg-warning text-white text-center">
							<h2>Product Form</h2>
						</div>
						<div class="card-body bg-light text-blue">
							<div class="form-group">
								<label class="font-weight-regular">
									ProductName </label> <input type="text" name="productName"
									placeholder="Enter Product Name" class="form-control" id="name"
									autocomplete="off" />
							</div>
							<div class="form-group">
								<label class="font-weight-regular"> Price </label> <input
									type="text" name="price" placeholder="Enter Price"
									class="form-control" id="name" autocomplete="off" />
							</div>
							<div class="form-group">
								<label class="font-weight-regular"> MFG Date
								</label> <input type="date" name="MFG" placeholder="Enter MFG DAte"
									class="form-control" id="name" autocomplete="off" />
							</div>
						</div>
						<div class="card-footer text-center bg-warning text-white">
							<input type="submit" class="btn btn-outline-light" value="Submit">
						</div>
					</div>
				</form:form>
			</div>
		</div>


	</div>


</body>
</html>