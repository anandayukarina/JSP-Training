<%@ page import="org.json.JSONObject" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <title>Form Input JSON</title>
</head>
<body>
    <form method="post">
        <label for="names">Nama (pisahkan dengan koma, maks 3 nama):</label><br>
        <input type="text" id="names" name="names" /><br><br>
        
        <label for="age">Usia:</label><br>
        <input type="number" id="age" name="age" /><br><br>
        
        <label for="cities">Kota (pisahkan dengan koma, maks 3 kota):</label><br>
        <input type="text" id="cities" name="cities" /><br><br>
        
        <label for="country">Negara:</label><br>
        <input type="text" id="country" name="country" /><br><br>
        
        <input type="submit" value="Kirim" />
    </form>

    <%
        // Jika form disubmit, proses data
        String namesParam = request.getParameter("names");
        String ageParam = request.getParameter("age");
        String citiesParam = request.getParameter("cities");
        String countryParam = request.getParameter("country");

        if (namesParam != null && ageParam != null && citiesParam != null && countryParam != null) {
            // Validasi dan proses nama
            String[] namesArray = namesParam.split(",");
            List<String> namesList = new ArrayList<>();
            for (int i = 0; i < Math.min(namesArray.length, 3); i++) {
                namesList.add(namesArray[i].trim());
            }

            // Validasi dan proses kota
            String[] citiesArray = citiesParam.split(",");
            List<String> citiesList = new ArrayList<>();
            for (int i = 0; i < Math.min(citiesArray.length, 3); i++) {
                citiesList.add(citiesArray[i].trim());
            }

            // Buat objek JSON
            JSONObject json = new JSONObject();
            json.put("nama", namesList);
            json.put("usia", ageParam);
            json.put("kota", citiesList);
            json.put("negara", countryParam);
            
            //

            // Tampilkan JSON
            out.println("<h2>Data dari JSON</h2>");
            out.println("<p>" + json.toString(4) + "</p>");
        }
    %>
</body>
</html>
