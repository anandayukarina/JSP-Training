<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Angka Ganjil dari 0-100</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }
        table {
            border-collapse: collapse;
            width: 80%;
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th colspan="10">Angka Ganjil dari 0 - 100</th>
            </tr>
        </thead>
        <tbody>
            <%
                int number = 1; // Mulai dari angka ganjil pertama
                int rows = 5;   // Jumlah baris
                int cols = 10;  // Jumlah kolom
                
                for (int r = 0; r < rows; r++) {
                    out.println("<tr>");
                    for (int c = 0; c < cols; c++) {
                        out.print("<td>" + number + "</td>");
                        number += 2; // Pindah ke angka ganjil berikutnya
                    }
                    out.println("</tr>");
                }
            %>
        </tbody>
    </table>
</body>
</html>
