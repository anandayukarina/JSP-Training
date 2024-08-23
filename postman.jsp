<%-- 
    Document   : postman
    Created on : Aug 23, 2024, 1:47:40 PM
    Author     : HP
--%>

<%@page contentType="application/json" pageEncoding="UTF-8"%>
<%@ page import="org.json.JSONObject" %>

<% 
    // Membuat objek JSON menggunakan org.JSON
    JSONObject jsonObj = new JSONObject();
    
    // Menambahkan data ke dalam JSON
    jsonObj.put("name", "Ananda Yukarina");
    jsonObj.put("age", 30);
    jsonObj.put("city", "Jakarta");
    
    // Mengembalikan JSON sebagai response
    out.print(jsonObj.toString());
%>