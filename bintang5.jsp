<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Asterisk in 5x5 Format</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: center;
        }
    </style>
</head>
<body>
    <h2>Asterisk 5x5 Format</h2>
    <table>
        <%
            for (int row = 0; row < 5; row++) {
                out.println("<tr>");
                for (int col = 0; col < 5; col++) {
                    out.println("<td>*</td>");
                }
                out.println("</tr>");
            }
        %>
    </table>
</body>
</html>