<%-- 
    Document   : search_fruit
    Created on : May 23, 2024, 12:33:18 PM
    Author     : Thapelo Mkhwanazi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Fruit Page</title>
    </head>
    <body>
        <h1>Search Fruit!</h1>
        <p>
            Please Enter the name of the fruit you want to search below:
        </p>
        <form action="SearchFruitServlet.do" method="get">
             <table>
                 <tr>
                     <td>Name:</td>
                     <td><input type="text" name="name" required=""/></td>
                 </tr>
                
                  <tr>
                     <td></td>
                     <td><input type="submit" value="SEARCH"/></td>
                 </tr>
             </table>
         </form>
    </body>
</html>
