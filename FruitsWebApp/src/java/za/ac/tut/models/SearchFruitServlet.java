
package za.ac.tut.models;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.FruitFacadeLocal;
import za.ac.tut.entities.Fruit;

/**
 *
 * @author Thapelo Mkhwanazi
 */
public class SearchFruitServlet extends HttpServlet 
{
    @EJB
    private FruitFacadeLocal local;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String name = request.getParameter("name");
        List<Fruit> fruits = local.findAll();
        String page = "fruit_not_found.jsp";
        
        for(int i = 0; i < fruits.size(); i++) 
        {
            if(fruits.get(i).getName().equals(name))
            {
                Double price = fruits.get(i).getPrice();
                byte[] imageData = fruits.get(i).getImage();
                
                 request.setAttribute("name", name);
                 request.setAttribute("price", price);
                 request.setAttribute("imageData", imageData); 
                 
                 page = "search_fruit_outcome.jsp";
            }
        }
        
        request.setAttribute("name", name);
     
        RequestDispatcher disp = request.getRequestDispatcher(page);
        disp.forward(request, response);
       
    }

 
}
