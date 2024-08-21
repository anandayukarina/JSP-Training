<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
    <h2>Login Form</h2>
    <form action="saveUser.jsp" method="post">
        Name: <input type="text" name="name" required><br>
        ID: <input type="number" name="id" required><br>
        Age: <input type="number" name="age" required><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>