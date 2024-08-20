<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit your Restaurant Details</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid"></div>
<div class="row"></div>
			<div class="col-md-3"></div>
			<div class="col-md-6">
	<h2>Edit your Restaurant Here</h2>

	<form action="updateRestaurant" method="post">
	
		<div class="form-group">
		<input type="hidden" class="form-control" name="restaurantId" id="restaurantId" value="${restaurant.restaurantId}" />
		</div>
	
		<div class="form-group">
		<label for="name" class="form-label">Restaurant Name : </label>
		<input type="text" class="form-control" name="name" id="name" value="${restaurant.name}" />
		</div>
		
		<div class="form-group">
		<label for="address" class="form-label">Address : </label>
		<input type="text" name="address" id="address" class="form-control" value="${restaurant.address}" />
		</div>

		<div class="form-group">
		<label for="category" class="form-label">Category : </label>
		<input type="text" name="category" id="category" class="form-control" value="${restaurant.category}" />
		</div>
		
		<input type="submit" name="submitBtn" id="submitBtn" class="btn btn-success" value="Save Details" />
	
	</form>
	
</div>

</body>
</html>