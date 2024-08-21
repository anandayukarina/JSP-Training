<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Save User</title>
</head>
<body>
    <%
        // Database connection parameters
        String url = "jdbc:mysql://10.214.42.51:8889/mysql";
        String user = "root";
        String password = "root";
        
        Connection conn = null;
        PreparedStatement pstmt = null;
        String message = "";

        try {
            // Load and register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Open a connection
            conn = DriverManager.getConnection(url, user, password);

            // Retrieve form data
            String name = request.getParameter("name");
            int id = Integer.parseInt(request.getParameter("id"));
            int age = Integer.parseInt(request.getParameter("age"));

            // Prepare SQL insert statement
            String sql = "INSERT INTO Karyawan (id, name, age) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            pstmt.setString(2, name);
            pstmt.setInt(3, age);

            // Execute the insertion
            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                message = "Data telah tersimpan dalam database.";
            } else {
                message = "Gagal menyimpan data.";
            }
        } catch (Exception e) {
            e.printStackTrace();
            message = "Terjadi kesalahan: " + e.getMessage();
        } finally {
            // Clean-up environment
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    %>
    <h2><%= message %></h2>
    <a href="login1.jsp">Kembali ke Form</a>
</body>
</html>
