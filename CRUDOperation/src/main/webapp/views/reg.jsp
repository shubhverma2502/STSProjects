+<!doctype html>
<html lang="en" xmlns:th="http://www.thymeLeaf.com">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Employee Management System</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body>
    <!--navbar-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Employee Management System</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="/">Add Employee</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="/getAll">View All Details</a>
          </li>
        
        </ul>
      </div>
    </div>
 </nav>

    <div class="firstdiv">
            <h2 align="center">New Employee Register Here</h2>
        </div>
    <form action="/empsave" method = "post">
                    <table align="center" cellpadding="10">
                    <tr>
                        <td>ID:</td>
                        <td><input type="text" name="id" placeholder="Enter your last name">
                        </td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="name" placeholder="Enter your first name">
                        </td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" placeholder="Enter your password">
                        </td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td> <input type="email" name="email" placeholder="Enter your email address">
                        </td>
                    </tr>
                    <tr>
                        <td>Mobile No:</td>
                        <td><input type="number" name="mobileno" placeholder="Enter your mobile number">
                        </td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td> <input type="text" name="address" placeholder="Enter your Address">
                        </td>
                    </tr>
                   <tr> 
                        <td align="center" colspan="2">
                        <input type="submit" value="Submit">
                        <input type="submit" value="reset">
                        </td>
                  </tr>
    </table>
    </form>
    
</body>
</html>