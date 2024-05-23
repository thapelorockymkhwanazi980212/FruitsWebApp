
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
public class GetListServlet extends HttpServlet 
{
    @EJB
    private FruitFacadeLocal local;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {

        List<Fruit> fruits = local.findAll();
        int count = local.count();
        
        request.setAttribute("fruits", fruits);
        request.setAttribute("count", count);
     
        RequestDispatcher disp = request.getRequestDispatcher("get_list_outcome.jsp");
        disp.forward(request, response);
       
    }

 
}
