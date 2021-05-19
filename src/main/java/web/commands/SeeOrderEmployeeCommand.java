package web.commands;

import business.entities.Order;
import business.exceptions.UserException;
import business.services.OrderFacade;
import business.services.StatusFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class SeeOrderEmployeeCommand extends CommandProtectedPage {
    OrderFacade orderFacade;
    StatusFacade statusFacade;

    public SeeOrderEmployeeCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.orderFacade = new OrderFacade(database);
    }
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        /* request.getContextPath();
        User user = new User(request.getContentType(),request.getContentType(),request.getContentType(),request.getContentType());
        Order order = new Order(request.getContentLength(), request.getContentLength(), request.getContentLength(), request.getContentType());
        int userId = user.getId();
        String email;
        try{
            email = request.getParameter("email");

        }
        catch (NumberFormatException numberFormatException){
            request.setAttribute("ERROR", "DU HAR SKREVET NOGET FORKERT");
            return "insertpage";
        }
        request.setAttribute("email", email);
*/
        List<Order> allorders = orderFacade.seeOrderEmployee();
        request.setAttribute("orders", allorders);
        return pageToShow;
    }
}
