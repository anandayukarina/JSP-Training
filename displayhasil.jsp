<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Batasan Kunjungan</title>
</head>
<body>
    <h2>Batasan Kunjungan</h2>

    <%
        // Mendapatkan nama dan negara dari request
        String name = request.getParameter("name");
        String country = request.getParameter("country");

        // Menetapkan batasan kunjungan
        String limitMessage;

        if (name.equals("Andi")) {
            switch (country) {
                case "Jepang":
                    limitMessage = "Andi ke Jepang maksimal 5 kali.";
                    break;
                case "Amerika":
                    limitMessage = "Andi ke Amerika maksimal 3 kali.";
                    break;
                case "Australia":
                    limitMessage = "Andi ke Australia maksimal 2 kali.";
                    break;
                case "Indonesia":
                    limitMessage = "Andi ke Indonesia maksimal 1 kali.";
                    break;
                default:
                    limitMessage = "Negara tidak valid.";
            }
        } else if (name.equals("Budi")) {
            switch (country) {
                case "Jepang":
                    limitMessage = "Budi ke Jepang maksimal 1 kali.";
                    break;
                case "Amerika":
                    limitMessage = "Budi ke Amerika maksimal 5 kali.";
                    break;
                case "Australia":
                    limitMessage = "Budi ke Australia maksimal 4 kali.";
                    break;
                case "Indonesia":
                    limitMessage = "Budi ke Indonesia maksimal 1 kali.";
                    break;
                default:
                    limitMessage = "Negara tidak valid.";
            }
        } else if (name.equals("Ahmad")) {
            switch (country) {
                case "Jepang":
                    limitMessage = "Ahmad ke Jepang maksimal 2 kali.";
                    break;
                case "Amerika":
                    limitMessage = "Ahmad ke Amerika maksimal 4 kali.";
                    break;
                case "Australia":
                    limitMessage = "Ahmad ke Australia maksimal 3 kali.";
                    break;
                case "Indonesia":
                    limitMessage = "Ahmad ke Indonesia maksimal 2 kali.";
                    break;
                default:
                    limitMessage = "Negara tidak valid.";
            }
        } else {
            limitMessage = "Nama tidak valid.";
        }
    %>

    <p><strong>Informasi Batasan:</strong> <%= limitMessage %></p>
    <a href="inputkunjungan.jsp">Kembali</a>
</body>
</html>