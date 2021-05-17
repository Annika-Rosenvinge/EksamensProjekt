package web.commands;

import business.entities.ItemList;
import business.entities.Material;
import business.exceptions.UserException;
import business.persistence.Database;
import business.services.ItemlistFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ItemlistCommand extends CommandProtectedPage {
    ItemlistFacade itemlistFacade;
    Database database;



    public ItemlistCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.itemlistFacade= new ItemlistFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException{
        request.getContextPath();
        Material material = new Material(request.getContentType(), request.getContentLength(), request.getContentType(), request.getContentLength());
        int order_id;
        int material_id;
        //ItemList itemList;
        int length;
        int quantity;
        String description;
        double price;

        try{
            order_id = Integer.parseInt(request.getParameter(""));
            material_id = Integer.parseInt(request.getParameter(""));
            length = Integer.parseInt(request.getParameter("Skriv længden på carporten"));
            quantity = Integer.parseInt(request.getParameter("Skriv antallet af brædder"));
            description = request.getParameter("");
            price = Double.parseDouble(request.getParameter("Indtast prisen"));

        } catch (NumberFormatException e) {
            request.setAttribute("ERROR","Du skal indtaste heltal");
            return "insertpage";
        }
        request.setAttribute("length", length);
        request.setAttribute("quantity", quantity);
        request.setAttribute("description", description);
        request.setAttribute("price", price);
        request.setAttribute("material_id",material_id);


        itemlistFacade.createItemList(request.getContentLength(), material_id,length,quantity, description, price, order_id);
        return pageToShow;
    }



}
