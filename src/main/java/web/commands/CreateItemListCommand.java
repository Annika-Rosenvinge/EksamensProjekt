package web.commands;

import business.entities.Order;
import business.exceptions.UserException;
import business.services.ItemlistFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateItemListCommand extends CommandProtectedPage {
    ItemlistFacade itemlistFacade;

    public CreateItemListCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.itemlistFacade = new ItemlistFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        request.getContextPath();
        int order_id;

        try{
            order_id = Integer.parseInt(request.getParameter("Ordre id" +
                    "et"));
        }

        catch (NumberFormatException e){
            request.setAttribute("ERROR", "Ordren findes ikke eller du skal indtaste et tal");
            return "insertpage";
        }

        itemlistFacade.createItemList(order_id);

        return pageToShow;
    }
}
