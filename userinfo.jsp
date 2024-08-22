<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.URL" %>
<%@ page import="javax.xml.soap.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Informasi Pengguna</title>
    <style>
        .result-box {
            border: 1px solid #000;
            padding: 10px;
            margin: 10px 0;
            width: 400px;
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <h2>Informasi Pengguna</h2>
    <div class="result-box">
        <% 
            // Mengambil parameter dari request
            String userID = request.getParameter("userID");

            // URL WSDL untuk layanan SOAP
            String wsdlUrl = "http://example.com/userinfo?WSDL"; // Ganti dengan URL WSDL yang sesuai

            try {
                // Membuat koneksi SOAP
                SOAPConnectionFactory soapConnFactory = SOAPConnectionFactory.newInstance();
                SOAPConnection soapConnection = soapConnFactory.createConnection();

                // Membuat request SOAP
                SOAPMessage requestMessage = createSOAPRequest(userID);
                SOAPMessage responseMessage = soapConnection.call(requestMessage, wsdlUrl);

                // Mendapatkan hasil dari SOAP Response
                SOAPBody responseBody = responseMessage.getSOAPBody();
                String responseXML = responseBody.getTextContent();

                // Menampilkan hasil
                out.println("<p>UserID: " + userID + "</p>");
                out.println("<p><strong>Informasi Pengguna:</strong></p>");
                out.println("<pre>" + responseXML + "</pre>");

                soapConnection.close();
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }

            // Membuat request SOAP untuk GetUserInfo
                private SOAPMessage createSOAPRequest(String userID) throws Exception {
                SOAPMessage message = MessageFactory.newInstance().createMessage();
                SOAPPart soapPart = message.getSOAPPart();

                // SOAP Envelope
                SOAPEnvelope envelope = soapPart.getEnvelope();
                envelope.addNamespaceDeclaration("soap", "http://tempuri.org/");

                // SOAP Body
                SOAPBody soapBody = envelope.getBody();
                SOAPBodyElement soapBodyElem = soapBody.addChildElement("GetUserInfo", "soap");
                SOAPBodyElement soapBodyElem1 = soapBodyElem.addChildElement("userID", "soap");
                soapBodyElem1.addTextNode(userID);

                MimeHeaders headers = message.getMimeHeaders();
                headers.addHeader("SOAPAction", "http://tempuri.org/GetUserInfo");

                message.saveChanges();

                return message;
            }
        %>
    </div>
</body>
</html>
