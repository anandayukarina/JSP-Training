<%@page contentType="application/json" pageEncoding="UTF-8"%>
<%@ page import="org.json.JSONObject" %>

    <%
        // Mendapatkan parameter ID produk dari URL query string
        String idBarang = request.getParameter("idBarang");

        // Data produk statis berdasarkan ID produk
        String namaBarang = "";
        double hargaBarang = 0.0;
        String deskripsiBarang = "";

        // Data produk statis yang ada
        if ("123".equals(idBarang)) {
            namaBarang = "Beng Beng";
            hargaBarang = 2.000;
            deskripsiBarang = "Beng Beng dimakan dingin lebih enak!";
        } else if ("456".equals(idBarang)) {
            namaBarang = "Nutrisari Botol";
            hargaBarang = 12.000;
            deskripsiBarang = "Jeruk kok minum jeruk?";
        } else {
            namaBarang = "Produk tidak ditemukan";
            hargaBarang = 0.0;
            deskripsiBarang = "Deskripsi tidak tersedia.";
        }

        // Memeriksa header User-Agent untuk memastikan akses dari Postman
        String userAgent = request.getHeader("User-Agent");
        boolean isPostman = userAgent != null && userAgent.contains("Postman");

        if (isPostman) {
            // Buat objek JSON
            JSONObject json = new JSONObject();
            json.put("id", idBarang);
            json.put("nama", namaBarang);
            json.put("harga", hargaBarang);
            json.put("deskripsi", deskripsiBarang);

            // Tampilkan JSON
            response.setContentType("application/json");
            out.println(json.toString(4));
        } else {
            // Jika bukan dari Postman, tampilkan pesan HTML
            response.setContentType("text/html");
            out.println("<h1>Akses Ditolak</h1>");
            out.println("<p>Halaman ini hanya dapat diakses melalui Postman.</p>");
        }
    %>