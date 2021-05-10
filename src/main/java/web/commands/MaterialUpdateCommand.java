package web.commands;

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

    public String execute(HttpServletRequest request, HttpServletResponse response){
        String name;
        int partsPrUnit;
        String unit;
        double price;

        try{
            name = 
        }
    }

}
