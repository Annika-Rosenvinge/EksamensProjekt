package web.commands;

import business.entities.Order;
import business.entities.User;
import business.exceptions.UserException;
import business.persistence.Database;
import business.services.OrderFacade;

import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateOrderCommand extends CommandProtectedPage{
    OrderFacade orderFacade;
    Database database;

    public CreateOrderCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.orderFacade = new OrderFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException{
        request.getContextPath();
        Order order;
        User user = new User(request.getContentType(), request.getContentType(),request.getContentType(),request.getContentType());
        int length;
        int width;
        int userId = user.getId();
        String status;


        try{
            length = Integer.parseInt(request.getParameter("Vælg hvad længden skal være på din carport"));
            width = Integer.parseInt(request.getParameter("Vælg hvor bred din carport skal være"));
        }
        catch (NumberFormatException exception){
            request.setAttribute("ERROR","Du skal indtaste heltal");
            return "insertpage";
        }
        request.setAttribute("Længde", length);
        request.setAttribute("Bredde", width);

        orderFacade.createOrder(length,width,userId,status);
        return pageToShow;
    }
}
