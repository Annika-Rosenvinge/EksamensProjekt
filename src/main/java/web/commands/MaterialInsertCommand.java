package web.commands;

import business.exceptions.UserException;
import business.persistence.Database;
import business.services.MaterialFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MaterialInsertCommand extends CommandProtectedPage {

    MaterialFacade materialFacade;
    Database database;

    public MaterialInsertCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.materialFacade = new MaterialFacade(database);
    }

    /*
    execute method gør så man kan indsætte nye materialer, ved setAttributes, læses værdierne
    over i instertMaterial og derfra bliver der tilføjet nye materialer
    */

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException{
        String name;
        int partsPrUnit;
        String unit;
        double price;

        try{
            name = request.getParameter("navn på materiale");
            partsPrUnit = request.getIntHeader("Hvor mange er der i en pakke/boks");
            unit = request.getParameter("STK/RULLE/PAKKE/SÆT");
            price = Double.parseDouble(request.getParameter("Hvad er styk prisen"));
        }
        catch (NumberFormatException ex){
            request.setAttribute("ERROR", "Du skal indtaste tal, ikke bogstaver");
            return "insertpage";

        }
        request.setAttribute("navn",name);
        request.setAttribute("Parts Pr Unit",partsPrUnit);
        request.setAttribute("unit",unit);
        request.setAttribute("pris",price);

        materialFacade.insertMaterial(name, partsPrUnit,unit,price);
        return pageToShow;
    }

}
