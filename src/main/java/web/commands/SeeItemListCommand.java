package web.commands;

import business.exceptions.UserException;
import business.services.ItemlistFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

public class SeeItemListCommand extends CommandProtectedPage{

    ItemlistFacade itemlistFacade;

    public SeeItemListCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.itemlistFacade = new ItemlistFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        int order_id;

        try{
            order_id = Integer.parseInt(request.getParameter("order_id"));
        }
        catch (NumberFormatException e){
            request.setAttribute("ERROR", "Indtast heltal");
            return "insertpage";
        }
        itemlistFacade.seeItemList(order_id);
        return pageToShow;
    }
}
