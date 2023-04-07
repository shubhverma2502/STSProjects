<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Form</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
.testcss {
	display: flex;
	width: 100%;
	flex-direction: row;
	justify-content: flex-start;
	gap: 10px;
}
</style>
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
	<div class="container mt-4">
		<div class="row">

			<div class="col-md-12 offset-md">
				<form:form action="/page" method="post">
					<div class="card">
						<div class="card-header bg-info text-white text-center">
							<h2>Employee Registration form</h2>
						</div>
						<div class="card-body bg-light text-blue">
							<div class="form-group">
								<label for="name" class="font-weight-regular"> Name </label> <input
									type="text" name="name" placeholder="Enter Your Name"
									class="form-control" id="name" autocomplete="off" />
							</div>
							<div class="form-group">
								<label class="font-weight-regular"> Email </label> <input
									type="email" name="email" placeholder="Enter Your Email"
									class="form-control" id="emails" autocomplete="off" />
							</div>
							<div class="form-group">
								<label class="font-weight-regular"> Password </label> <input
									type="password" name="password"
									placeholder="Enter Your Password" class="form-control"
									id="pass" autocomplete="off" />
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label class="font-weight-regular"> Home Number </label> <input
										type="number" name="home_no"
										placeholder="Enter Your Home Number" class="form-control"
										id="mobileNumber1" autocomplete="off" />
								</div>
								<div class="form-group col-md-6">
									<label class="font-weight-regular"> Mobile Number </label> <input
										type="number" name="mobile_no"
										placeholder="Enter Your mobile Number" class="form-control"
										id="mobileNumber2" autocomplete="off" />
								</div>
							</div>
							<div class="form-group testcss">
								<label class="font-weight-regular"> Gender </label>
								<div class="form-check">
									<input type="radio" class="form-check-input" id="radio1"
										name="gender" value="male">Male <label
										class="form-check-label" for="radio1"></label>
								</div>
								<div class="form-check">
									<input type="radio" class="form-check-input" id="radio1"
										name="gender" value="female">Female <label
										class="form-check-label" for="radio1"></label>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label class="font-weight-regular"> Birth Date </label> <input
										type="date" name="birthdate"
										placeholder="Enter Your Birth date" class="form-control"
										id="date" autocomplete="off">
								</div>
								<div class="form-group col-md-6">
									<label class="font-weight-regular"> Marital Status </label> <select
										class="custom-select" name="marital_status"
										id="inputGroupSelect02">
										<option selected>--Select--</option>
										<option value="Married">Married</option>
										<option value="Unmarried">Unmarried</option>
										<option value="Divorced">Divorced</option>
									</select>
								</div>

							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label class="font-weight-regular"> City </label> <select
										class="custom-select" id="inputGroupSelect02" name="city">
										<option selected>--Select--</option>
										<option value="Mumbai">Mumbai</option>
										<option value="Pune">Pune</option>
										<option value="Nagpur">Nagpur</option>
										<option value="Hyderabad">Hyderabad</option>
										<option value="Banglore">Banglore</option>
										<option value="Jaipur">Jaipur</option>
										<option value="Lucknow">Lucknow</option>
										<option value="Surat">Surat</option>
										<option value="kolkata">kolkata</option>
									</select>
								</div>
								<div class="form-group col-md-6">
									<label class="font-weight-regular"> States </label> <select
										class="custom-select" id="inputGroupSelect02" name="state">
										<option selected>--Select--</option>
										<option value="Maharashtra">Maharashtra</option>
										<option value="Telangana">Telangana</option>
										<option value="Andhra pradesh">Andhra pradesh</option>
										<option value="Uttar Pradesh">Uttar Pradesh</option>
										<option value="Rajasthan">Rajasthan</option>
										<option value="Karnataka">Karnataka</option>
										<option value="Gujarat">Gujarat</option>
										<option value="West Bengal">West Bengal</option>
									</select>
								</div>

							</div>


							<div class="form-group testcss">
								<label class="font-weight-regular"> Highest
									Qualification: </label>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="SSC"
										id="flexCheckDefault" name="Qualification"> <label
										class="form-check-label" for="flexCheckDefault"> SSC </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="HSC"
										id="flexCheckChecked" name="Qualification"> <label
										class="form-check-label" for="flexCheckChecked"> HSC </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox"
										value="Graduation" id="flexCheckChecked" name="Qualification">
									<label class="form-check-label" for="flexCheckChecked">
										Graduation </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox"
										value="Post
										Graduation" id="flexCheckChecked"
										name="Qualification"> <label class="form-check-label"
										for="flexCheckChecked"> Post Graduation </label>
								</div>
							</div>
							<div class="form-group ">
								<label class="font-weight-regular"> Write Something
									about yourself </label>
								<div class="form-outline">
									<textarea class="form-control" id="textAreaExample1" rows="5"
										placeholder="Message"></textarea>
									<label class="form-label" for="textAreaExample"></label>
								</div>
							</div>
							<div class="card-footer text-center bg-info text-white">
								<input type="submit" class="btn btn-outline-light"
									value="Submit">
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>

	</div>
</body>
</html>