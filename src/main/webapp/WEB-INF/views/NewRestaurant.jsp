<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Restaurant</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<style>
    .error-message {
        color: red;
        font-weight: bold;
        font-size: 14px;
        margin-top: 5px;
        display: block;
    }
</style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <h2>Register your Restaurant Here</h2>
            <form action="saveRestaurant" method="post"> 
                <div class="form-group">
                    <label for="name" class="form-label">Restaurant Name : </label>
                    <input type="text" class="form-control" name="name" id="name" value="${result.getFieldValue('name')}" />
                    <span class="error-message">${result.getFieldError("name").getDefaultMessage()}</span> 
                </div>
                
                <div class="form-group">
                    <label for="address" class="form-label">Address : </label>
                    <input type="text" name="address" id="address" class="form-control" value="${result.getFieldValue('address')}" />
                    <span class="error-message">${result.getFieldError("address").getDefaultMessage()}</span>
                </div>

                <div class="form-group">
                    <label for="category" class="form-label">Category : </label>
                    <input type="text" name="category" id="category" class="form-control" value="${result.getFieldValue('category')}" />
                    <span class="error-message">${result.getFieldError("category").getDefaultMessage()}</span>
                </div>
                
                <input type="submit" name="submitBtn" id="submitBtn" class="btn btn-success" value="Add Your Restaurant" />
            </form>
        </div>
    </div>
</div>
</body>
</html>
