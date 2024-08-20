<%@page import="com.entity.RestaurantEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>List Restaurant</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f2f5;
            font-family: 'Arial', sans-serif;
        }
        .container {
            margin-top: 50px;
            background: white;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        h2 {
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }
        table {
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
        }
        thead {
            background: linear-gradient(45deg, #007bff, #00c6ff);
            color: white;
        }
        thead th {
            padding: 15px;
            font-size: 1.1rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        tbody tr:hover {
            background-color: #f8f9fa;
        }
        tbody td {
            padding: 15px;
            font-size: 1rem;
            color: #555;
        }
        .btn-danger {
            background: linear-gradient(45deg, #ff4b2b, #ff416c);
            border: none;
            border-radius: 50px;
            padding: 5px 15px;
            transition: background 0.3s ease;
        }
        .btn-danger:hover {
            background: linear-gradient(45deg, #ff416c, #ff4b2b);
        }
    </style>
</head>
<body>

    <div class="container">
        <h2 class="text-center">List of Restaurants</h2>

        <%
        List<RestaurantEntity> list = (List<RestaurantEntity>) request.getAttribute("restaurant");
        %>

        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Restaurant ID</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                for (RestaurantEntity r : list) {
                    out.print("<tr>");
                    out.print("<td>" + r.getRestaurantId() + "</td>");
                    out.print("<td>" + r.getName() + "</td>");
                    out.print("<td>" + r.getCategory() + "</td>");
                    out.print("<td><a href='deleteById?restaurantId=" + r.getRestaurantId() + "' class='btn btn-danger btn-sm'>Delete</a></td>");
                    out.print("</tr>");
                }
                %>
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
