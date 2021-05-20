package web.commands;

import business.entities.Order;
import business.entities.User;
import business.exceptions.UserException;
import business.services.ItemlistFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CustomerPriceCommand extends CommandProtectedPage{
    ItemlistFacade itemlistFacade;

    public CustomerPriceCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.itemlistFacade = new ItemlistFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        request.getContextPath();
        User user = new User(request.getContentType(), request.getContentType(), request.getContentType(), request.getContentType());
        Order order = new Order(request.getContentLength(), request.getContentLength(), user.getId(), request.getContentType());
        int order_id = order.getId();
        request.setAttribute("order_id", order_id );
        itemlistFacade.calculatePrice(order_id);
        return pageToShow;
    }
}
