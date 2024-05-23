<%-- 
    Document   : remove_fruit
    Created on : May 23, 2024, 2:19:18 PM
    Author     : Thapelo Mkhwanazi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Fruit Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>
            Please enter the name of the fruit you want to remove below:
        </p>
         <form action="RemoveFruitServlet.do" method="get">
             <table>
                 <tr>
                     <td>Name:</td>
                     <td><input type="text" name="name" required=""/></td>
                 </tr>
                
                  <tr>
                     <td></td>
                     <td><input type="submit" value="REMOVE"/></td>
                 </tr>
             </table>
         </form>
    </body>
</html>
