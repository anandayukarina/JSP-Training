<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Menghitung Interval Usia</title>
</head>
<body>
    <h1>Menghitung Interval Usia</h1>
    <%
        // Usia Budi
        int usiaBudi = 10;

        // Rentang usia Ani
        int usiaMinAni = 12; // Minimal usia Ani lebih dari usia Andi
        int usiaMaxAni = 19; // Maksimal usia Ani kurang dari usia Indah

        // Menampilkan informasi
        out.println("<p>Usia Budi: " + usiaBudi + " tahun</p>");
        out.println("<p>Rentang usia Ani: " + usiaMinAni + " hingga " + usiaMaxAni + " tahun</p>");
        out.println("<p>Interval usia Ani dengan Budi:</p>");
        out.println("<ul>");
        for (int usiaAni = usiaMinAni; usiaAni <= usiaMaxAni; usiaAni++) {
            int selisihUsia = usiaAni - usiaBudi;
            out.println("<li>Jika usia Ani adalah " + usiaAni + " tahun, selisih usia Ani dengan Budi adalah " + selisihUsia + " tahun</li>");
        }
        out.println("</ul>");
    %>
</body>
</html>
