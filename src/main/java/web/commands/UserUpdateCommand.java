package web.commands;

import business.entities.User;
import business.exceptions.UserException;
import business.persistence.Database;
import business.services.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserUpdateCommand extends CommandProtectedPage {

    UserFacade userFacade;


    public UserUpdateCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.userFacade = new UserFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        //User user = new User(request.getContextPath(),request.getContextPath(),request.getContextPath(),request.getContextPath());
        String adress;
        int zipcode;
        String city;
        int phone;

        try{
            adress = request.getParameter("adresse");
            zipcode = Integer.parseInt(request.getParameter("postnummer"));
            city = request.getParameter("by");
            phone = Integer.parseInt(request.getParameter("telefonnummer"));
        }
        catch (NumberFormatException exception){
            request.setAttribute("ERROR", "Du må kun indtaste heltal i postnummer og telefonnummer");
            return "insertpage";
        }
        request.setAttribute("adress", adress);
        request.setAttribute("zipcode", zipcode);
        request.setAttribute("city",city);
        request.setAttribute("phone", phone);

        userFacade.updateUser(adress, zipcode,city,phone);
        return pageToShow;
    }
}
