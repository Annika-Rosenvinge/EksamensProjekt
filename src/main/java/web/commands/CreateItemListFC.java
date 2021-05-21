package web.commands;

import business.exceptions.UserException;
import business.services.ItemlistFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateItemListFC extends CommandProtectedPage{
    ItemlistFacade itemListFacade;

    public CreateItemListFC(String pageToShow, String role) {
        super(pageToShow, role);
        this.itemListFacade = new ItemlistFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        //TO DO: Hent ordre, længde, bredde og id fra request objektet.
        //TO DO: Ud fra itemlist facade og material facade beregnes hvor mange materialer der skal bruges.
        //TO DO: Brug itemlist facaden til at genere itemlists til denne ordre.
        return super.execute(request, response);
    }
}
