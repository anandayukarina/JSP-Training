<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Next Page</title>
</head>
<body>
    <h1>Welcome!</h1>
    <p>Nama: <%= request.getParameter("name") %></p>
    <p>ID: <%= request.getParameter("id") %></p>
    <p>Alamat: <%= request.getParameter("address") %></p>
    <a href="Login.jsp">Back to Login</a>
    
     <!-- Form untuk delete -->
        <form action="deletemessage.jsp" method="post">
            <div class="form-group">
                <button type="submit" class="delete-button">Delete</button>
</body>
</html>