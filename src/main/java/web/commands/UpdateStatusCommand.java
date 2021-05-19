package web.commands;

import business.entities.Order;
import business.exceptions.UserException;
import business.persistence.Database;
import business.services.StatusFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateStatusCommand extends CommandProtectedPage {

    StatusFacade statusFacade;


    public UpdateStatusCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.statusFacade=new StatusFacade(database);

    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        request.getContextPath();
        String orderStatus;
        Order order = new Order(request.getContentLength(), request.getContentLength(), request.getContentLength(), request.getContentType());
        int orderId;// = order.getId();

        try{
            orderStatus = request.getParameter("Status på ordre");
            orderId = Integer.parseInt(request.getParameter("orderID"));
        }
        catch (NumberFormatException exception){
            request.setAttribute("ERROR", "DU HAR SKREVET NOGET FORKERT");
            return "insertpage";
        }
        request.setAttribute("orderId", orderId);
        request.setAttribute("orderStatus", orderStatus);


        statusFacade.updateStatus(orderStatus,orderId);
        return pageToShow;
    }
}
