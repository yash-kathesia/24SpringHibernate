<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New User Here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body class="container-fluid">
	<h2>New User</h2>

	<form action="saveuser" method="post">
		<div class="form-group mb-3">
		<label for="firstName" class="form-label">First Name : </label>
		<input type="text" class="form-control" name="firstName" id="firstName" />
		</div>
		
		<div class="form-group">
		<label for="lastName" class="form-label">Last Name : </label>
		<input type="text" name="lastName" id="lastName" class="form-control" />
		</div>

		<div class="form-group">
		<label for="email" class="form-label">Email ID : </label>
		<input type="email" name="email" id="email" class="form-control" />
		</div>
		
		<div class="form-group">
		<label for="password" class="form-label">Password : </label>
		<input type="password" name="password" id="password"  class="form-control"/>
		</div>
		
		<div class="form-group">
		<input type="submit" name="submitBtn" id="submitBtn" class="btn btn-success" value="Save User" />
		</div>
	</form>
</body>
</html>