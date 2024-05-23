<%-- 
    Document   : fruit_not_found
    Created on : May 23, 2024, 1:26:57 PM
    Author     : Thapelo Mkhwanazi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fruit Not Found Page</title>
    </head>
    <body>
        <h1>Fruit Not Found!</h1>
        <%
            String name = (String)request.getAttribute("name");
        %>
        <p>
            <b><%=name%></b> was not found in our database<br>
            Please click <a href="menu.jsp">here</a> to go to the menu page and<br> <a href="index.html">here</a> to go to the main page
        </p>
    </body>
</html>
