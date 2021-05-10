package web.commands;

import business.entities.Material;
import business.exceptions.UserException;
import business.persistence.Database;
import business.services.MaterialFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MaterialUpdateCommand extends CommandProtectedPage {
    MaterialFacade materialFacade;
    Database database;

    public MaterialUpdateCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.materialFacade = new MaterialFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        String name;
        double price;

        try{
            name = request.getParameter("navnet på materialet");
            price = Double.parseDouble(request.getParameter("pris på produktet"));

        } catch (NumberFormatException e) {
            request.setAttribute("error", "du har skrevet et forkert navn eller tal");
            return "insertpage";
        }
        request.setAttribute("navnet på materialet", name);
        request.setAttribute("pris på produktet", price);

        materialFacade.updateMaterialPrice(name,price);
        return pageToShow;
    }

}
