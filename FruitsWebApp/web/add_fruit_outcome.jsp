<%-- 
    Document   : add_fruit_outcome
    Created on : May 23, 2024, 11:10:11 AM
    Author     : Thapelo Mkhwanazi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Outcome Page</title>
    </head>
    <body>
        <h1>Add Outcome</h1>
        <%
          String name=(String)request.getAttribute("name");
        
        %>
        <p><b><%=name%></b> was added to the database</p>
        <p>
            Please click <a href="menu.jsp">here</a> to go to the menu page and<br> <a href="index.html">here</a> to go to the main page
        </p>
        
    </body>
</html>