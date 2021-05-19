package web.commands;

import business.services.OrderFacade;
import business.persistence.Database;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SeeOrderEmployeeCommand extends CommandProtectedPage{
    OrderFacade orderFacade;

    public SeeOrderEmployeeCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.orderFacade = new OrderFacade(database);
    }

    @Override
    public String execute (HttpServletRequest request, HttpServletResponse response){

    }


}
