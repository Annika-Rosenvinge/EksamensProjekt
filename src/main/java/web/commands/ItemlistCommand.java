package web.commands;

import business.entities.ItemList;
import business.entities.User;
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
        ItemList itemList;

        User user = new User(request.getContentType(),request.getContentType(), request.getContentType(),request.getContentType());



        return pageToShow;
    }



}
