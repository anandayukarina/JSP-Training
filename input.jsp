<%-- 
    Document   : input
    Created on : Aug 21, 2024, 10:06:36 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Input Nama Pengguna</title>
    </head>
    <body>
        <h2>Silahkan Masukkan Nama Anda:</h2>
        <form action="simpanData.jsp" method="post">
            Id: <input type="text" name="id" required><br><br>
            Nama: <input type="text" name="nama" required><br><br>
            Alamat: <input type="text" name="alamat" required><br><br>
            Pekerjaan: <input type="text" name="pekerjaan" required><br><br>
            <input type="submit" value="Simpan">
            <form>
    </body>
</html>