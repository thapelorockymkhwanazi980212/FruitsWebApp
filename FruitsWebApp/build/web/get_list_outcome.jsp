<%-- 
    Document   : get_list_outcome
    Created on : May 23, 2024, 1:50:53 PM
    Author     : Thapelo Mkhwanazi
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Fruit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get List Page</title>
    </head>
    <body>
        <h1>Get List!</h1>
        <%
            List<Fruit> fruits = (List)request.getAttribute("fruits");
            int count = (Integer)request.getAttribute("count");
         %> 
        <p>
            There are <b><%=count%></b> fruits in our store...
        </p>
         
         <%
            for (int i = 0; i < fruits.size(); i++) 
            {   

                String name  = fruits.get(i).getName();
                Double price  = fruits.get(i).getPrice();
                byte[] imageData  = fruits.get(i).getImage();
                
                //convert image to bite code
                String image = Base64.getEncoder().encodeToString(imageData);
                
        %>       
        <table>
            <tr>
                <td>Name:</td>
                <td><b><%=name%></b></td>
            </tr>
             <tr>
                <td>Price: R</td>
                <td><b><%=price%></b></td>
            </tr>
            <tr>
                <td>Image</td>
                <td><b> <img src="data:image/jpeg;base64, <%=image%>" alt="Fruit_Image"</b></td>
            </tr>
        </table>
            <p>======================================================</p>
            
        <%   
            }
        %>
        
        <p>
            Please click <a href="menu.jsp">here</a> to go to the menu page and<br> <a href="index.html">here</a> to go to the main page
        </p>
    </body>
</html>
