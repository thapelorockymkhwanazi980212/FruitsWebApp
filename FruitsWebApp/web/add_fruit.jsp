<%-- 
    Document   : add_fruit
    Created on : May 23, 2024, 7:21:19 AM
    Author     : Thapelo Mkhwanazi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Fruit Page</title>
    </head>
    <body>
        <h1>Add Fruit!</h1>
         <p>Please add the details of the fruits below:</p>
         
         <form action="AddFruitServlet.do" method="post" enctype="multipart/form-data">
             <table>
                 <tr>
                     <td>Name:</td>
                     <td><input type="text" name="name" required=""/></td>
                 </tr>
                 <tr>
                     <td>Price:R</td>
                     <td><input type="text" name="price" required="" /></td>
                 </tr>
                 <tr>
                     <td>Image</td>
                     <td><input type="file" name="image" accept="image/*"/></td>
                 </tr>
                  <tr>
                     <td></td>
                     <td><input type="submit" value="ADD IMAGE"/></td>
                 </tr>
             </table>
         </form>
    </body>
</html>
