<%@ page import="org.json.JSONObject" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <title>JSON Output with Static Data</title>
</head>
<body>
    <h1>JSON Output</h1>

    <%
        // Data statis
        String namaParam = "ST, Ananda, Yukarina, Riri"; // Contoh nama lebih dari 3
        int[] usiaParam = {30, 28}; // Usia contoh lebih dari 1
        String kotaParam = "Bandar Lampung, Jakarta Selatan, Malang, Jogja, Tangerang"; // Contoh kota lebih dari 3
        String negaraParam = "Indonesia"; // Negara

        // Ambil hanya satu usia (misalnya usia pertama)
        int selectedUsia = usiaParam[1];
        
        // Validasi dan proses nama
        String[] namaArray = namaParam.split(",");
        List<String> namaList = new ArrayList<>();
        for (int i = 0; i < namaArray.length; i++) {
            if (i < 3) {
                namaList.add(namaArray[i].trim());
            } else {
                break; // Hanya ambil maksimal 3 nama
            }
        }
        
        // Validasi dan proses kota
        String[] kotaArray = kotaParam.split(",");
        List<String> kotaList = new ArrayList<>();
        for (int i = 0; i < kotaArray.length; i++) {
            if (i < 3) {
                kotaList.add(kotaArray[i].trim());
            } else {
                break; // Hanya ambil maksimal 3 kota
            }
        }

        // Buat objek JSON
        JSONObject json = new JSONObject();
        json.put("nama", namaList);
        json.put("usia", selectedUsia);
        json.put("kota", kotaList);
        json.put("negara", negaraParam);

        // Tampilkan JSON
        out.println("<pre>" + json.toString(4) + "</pre>");
    %>
</body>
</html>
