package web.commands;

import business.entities.ItemList;
import business.exceptions.UserException;
import business.services.ItemlistFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalculatePriceCommand extends CommandProtectedPage{
    ItemlistFacade itemListFacade;

    public CalculatePriceCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.itemListFacade = new ItemlistFacade(database);
    }

    @Override
    public String execute (HttpServletRequest request, HttpServletResponse response) throws UserException {
        int order_id;
        try {
            order_id = Integer.parseInt(request.getParameter("order id"));
        }
        catch (NumberFormatException e){
            request.setAttribute("ERROR", "Det skal være heltal du skal skrive");
            return "insertpage";
        }
        request.setAttribute("order_id",order_id);
        itemListFacade.calculatePrice(order_id);
        return pageToShow;
    }
}
