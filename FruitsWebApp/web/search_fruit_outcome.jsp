<%-- 
    Document   : search_fruit_outcome
    Created on : May 23, 2024, 1:09:34 PM
    Author     : Thapelo Mkhwanazi
--%>

<%@page import="java.util.Base64"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Fruit Outcome Page</title>
    </head>
    <body>
        <h1>Search Fruit Outcome!</h1>
        <h2>Fruit Details</h2>
        <%
            String name = (String)request.getAttribute("name");
            Double price = (Double)request.getAttribute("price");
            byte[] imageData = (byte[]) request.getAttribute("imageData");
            
            String base64Image = Base64.getEncoder().encodeToString(imageData);
        %>
        
        <table>
            <tr>
                <td>Name:</td>
                <td><b><%=name%></b></td>
            </tr>
            <tr>
                <td>Price:R</td>
                <td><b><%=price%></b></td>
            </tr>
            <tr>
                <td>Image:</td>
                <td><img src="data:image/jpeg;base64,<%= base64Image %>" alt="Fruit Image"/></td>
            </tr>
        </table>
            
        <p>
            Please click <a href="menu.jsp">here</a> to go to the menu page and<br> <a href="index.html">here</a> to go to the main page
        </p>
    </body>
</html>
