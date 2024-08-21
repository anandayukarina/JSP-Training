<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Batasan Kunjungan</title>
</head>
<body>
    <h2>Periksa Batasan Kunjungan</h2>
    <form action="visit.jsp" method="post">
        Nama:
        <select name="name">
            <option value="Andi">Andi</option>
            <option value="Budi">Budi</option>
            <option value="Ahmad">Ahmad</option>
        </select>
        <br>
        Negara:
        <select name="country">
            <option value="Jepang">Jepang</option>
            <option value="Amerika">Amerika</option>
            <option value="Australia">Australia</option>
            <option value="Indonesia">Indonesia</option>
        </select>
        <br>
        <input type="submit" value="Periksa">
    </form>

    <% 
        String name = request.getParameter("name");
        String country = request.getParameter("country");

        // Data batasan kunjungan
        java.util.Map<String, java.util.Map<String, Integer>> visitLimits = new java.util.HashMap<>();
        java.util.Map<String, Integer> andiLimits = new java.util.HashMap<>();
        andiLimits.put("Jepang", 5);
        andiLimits.put("Amerika", 3);
        andiLimits.put("Australia", 2);
        andiLimits.put("Indonesia", 1);

        java.util.Map<String, Integer> budiLimits = new java.util.HashMap<>();
        budiLimits.put("Jepang", 1);
        budiLimits.put("Amerika", 5);
        budiLimits.put("Australia", 4);
        budiLimits.put("Indonesia", 1);

        java.util.Map<String, Integer> ahmadLimits = new java.util.HashMap<>();
        ahmadLimits.put("Jepang", 2);
        ahmadLimits.put("Amerika", 4);
        ahmadLimits.put("Australia", 3);
        ahmadLimits.put("Indonesia", 2);

        visitLimits.put("Andi", andiLimits);
        visitLimits.put("Budi", budiLimits);
        visitLimits.put("Ahmad", ahmadLimits);

        if (name != null && country != null) {
            Integer limit = visitLimits.get(name).get(country);
            if (limit != null) {
                out.println("<p>Batas kunjungan " + name + " ke " + country + " adalah maksimal " + limit + " kali.</p>");
            } else {
                out.println("<p>Negara yang dipilih tidak valid.</p>");
            }
        }
    %>
</body>
</html>
