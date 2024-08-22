<%-- 
    Document   : temperature1
    Created on : Aug 22, 2024, 9:38:04 AM
    Author     : HP
--%>

<%@page import="javax.xml.soap.*, java.io.ByteArrayOutputStream" %>
<html>
    <head>
        <title>SOAP Response</title>
    </head>
    <body>
        <h1>SOAP Response</h1>
        
    <%
        try {
            // Membuat koneksi SOAP
            SOAPConnectionFactory soapConnectionFactory = SOAPConnectionFactory.newInstance();
            SOAPConnection soapConnection = soapConnectionFactory.createConnection();

            // URL layanan web
            String URL = "https://www.w3schools.com/xml/tempconvert.asmx";

            // Membuat pesan SOAP
            MessageFactory messageFactory = MessageFactory.newInstance();
            SOAPMessage soapMessage = messageFactory.createMessage();
            SOAPPart soapPart = soapMessage.getSOAPPart();  

            // Mengatur SOAP envelope
            SOAPEnvelope envelope = soapPart.getEnvelope();
            envelope.addNamespaceDeclaration("tem", "https://www.w3schools.com/xml/");
        
             // Membuat SOAP body
            SOAPBody soapBody = envelope.getBody();
            SOAPElement soapBodyElem = soapBody.addChildElement("CelsiusToFahrenheit", "tem");
            SOAPElement soapBodyElem1 = soapBodyElem.addChildElement("Celsius", "tem");
            soapBodyElem1.addTextNode("100");

            soapMessage.saveChanges();

            // Mengirim permintaan SOAP dan menerima respons
            SOAPMessage soapResponse = soapConnection.call(soapMessage, url);

            // Menangkap respons SOAP ke dalam ByteArrayOutputStream
            ByteArrayOutputStream responseOutputStream = new ByteArrayOutputStream();
            soapResponse.writeTo(responseOutputStream);
            String soapResponseString = new String(responseOutputStream.toByteArray());

            // Menampilkan respons SOAP
            out.println("<pre>" + soapResponseString + "</pre>");

            soapConnection.close();
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    %>
</body>
</html>
        
    </body>
</html>
