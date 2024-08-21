<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Input Nama dan Negara</title>
</head>
<body>
    <h2>Masukkan Nama dan Negara</h2>
    <form action="displayhasil.jsp" method="post">
        <label for="name">Nama:</label>
        <input type="text" id="name" name="name" required>
        <br>
        <label for="country">Negara:</label>
        <select id="country" name="country" required>
            <option value="Jepang">Jepang</option>
            <option value="Amerika">Amerika</option>
            <option value="Australia">Australia</option>
            <option value="Indonesia">Indonesia</option>
        </select>
        <br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>