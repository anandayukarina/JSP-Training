<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Input UserID</title>
</head>
<body>
    <h2>Masukkan UserID</h2>
    <form action="userinfo.jsp" method="post">
        <label for="userID">UserID:</label>
        <input type="text" id="userID" name="userID" required><br><br>
        <input type="submit" value="Dapatkan Info Pengguna">
    </form>
</body>
</html>
