package web.commands;

import business.entities.User;
import business.exceptions.UserException;
import business.persistence.Database;
import business.services.OrderFacade;
import business.services.StatusFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateOrderCommand extends CommandProtectedPage{
    OrderFacade orderFacade;
    StatusFacade statusFacade;
    User user;

    public CreateOrderCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.orderFacade = new OrderFacade(database);
    }


    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException{
        String orderStatus = "ny ordre";
        int length;
        int width;

        try{
            length = Integer.parseInt(request.getParameter("Vælg hvad længden skal være på din carport"));
            width = Integer.parseInt(request.getParameter("Vælg hvor bred din carport skal være"));
        }
        catch (NumberFormatException exception){
            request.setAttribute("ERROR","Du skal indtaste heltal");
            return "insertpage";
        }
        request.setAttribute("lenght", length);
        request.setAttribute("width", width);

        statusFacade.newStatus(orderStatus);
        orderFacade.createOrder(length,width,orderStatus);
        return pageToShow;
    }

}
