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
        int material_id = material.getId();

        ItemList itemList;





        return pageToShow;
    }



}
