/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.models;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import za.ac.tut.bl.FruitFacadeLocal;
import za.ac.tut.entities.Fruit;

/**
 *
 * @author Thapelo Mkhwanazi
 */
@MultipartConfig //this is to the Servlet that you will handle the file uploads
public class AddFruitServlet extends HttpServlet 
{
    @EJB
    private FruitFacadeLocal local;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        //retrive all from the parameters
        String name = request.getParameter("name");
        Double price = Double.valueOf(request.getParameter("price"));
        Part imagePart = request.getPart("image");  //the image is not a parameter but a part
        
        //convert the image retrived to a byte array
        byte[] imageByte = getImageBytes(imagePart);
        
        //create and set the fruit
        Fruit fruit = createFruit(name, price, imageByte);
        local.create(fruit);
        
        request.setAttribute("name", name);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_fruit_outcome.jsp");
        disp.forward(request, response);
    }

    private byte[] getImageBytes(Part imagePart) 
    {
       if(imagePart == null)
       {
           return null;
       }
       
        ByteArrayOutputStream baos = new ByteArrayOutputStream(); //create like a container/big tank hontsha metsi
        byte[] buffer = new byte[1024];  // bottle yao tsentsha mtsi soo, ready to recieve water
        int bytesRead; //ho bala so hore o kentsha ha kae
        
        try 
        {
            InputStream imageInputStream = imagePart.getInputStream(); //ready to drink/fill up
            while((bytesRead = imageInputStream.read(buffer)) != -1)  
                /*
                     imagePart.getInputStream() >> gives you access to read the data in the image(hore o bule bottle ya metsi)
                    (bytesRead = imageInputStream.read(buffer) >> 
                    
                */
            {
                baos.write(buffer, 0,bytesRead);
            }
        } 
        catch (IOException ex) 
        {
            Logger.getLogger(AddFruitServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return baos.toByteArray();
    }

    private Fruit createFruit(String name, Double price, byte[] imageByte) 
    {
       Fruit fruit = new Fruit();
       fruit.setName(name);
       fruit.setPrice(price);
       fruit.setImage(imageByte);
       
       return fruit;
    }

   
}
