package web.commands;

import business.exceptions.UserException;
import business.persistence.Database;

import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class Command
{
    //Return a token string from the execute method to make a client side redirect,
    // instead of a server side (forward) redirect
    public final static String REDIRECT_INDICATOR = "#*redirect*#_###_";
    public final static String WAS_NOT_FOUND_COMMAND ="404_NOT_FOUND";

    private static HashMap<String, Command> commands;
    public static Database database;

    private static void initCommands(Database database) {
        commands = new HashMap<>();
        commands.put("index", new CommandUnprotectedPage("index"));
        commands.put("loginpage", new CommandUnprotectedPage("loginpage"));
        commands.put("logincommand", new LoginCommand(""));
        commands.put("logoutcommand", new LogoutCommand(""));
        commands.put("registerpage", new CommandUnprotectedPage("registerpage"));
        commands.put("registercommand", new RegisterCommand(""));
        commands.put("customerpage", new CommandProtectedPage("customerpage", "customer"));
        commands.put("employeepage", new CommandProtectedPage("employeepage", "employee"));
        //for at opdatere materialer
        commands.put("materialupdate", new CommandProtectedPage("materialupdate", "employee"));
        commands.put("materialupdateconfirmed", new MaterialUpdateCommand("materialupdateconfirmed", "employee"));
        //for at tilføjematerialer til databasen
        commands.put("materialinsert",new CommandProtectedPage("materialinsert", "employee"));
        commands.put("materialconfirmed", new MaterialInsertCommand("materialinsertconfirmed", "employee"));
        //order/forespørgsel
        commands.put("createorder", new CommandProtectedPage("createorder","customer"));
        commands.put("createorderconfirmed", new CreateOrderCommand("createorderconfirmed", "customer"));
        //opdater bruger informationer
        commands.put("customerinformation", new CommandProtectedPage("customerinformation", "customer"));
        commands.put("customerinformationconfirmed", new UserUpdateCommand("customerinformationconfirmed", "customer"));
        //see order customer and employee
        commands.put("seeordercustomer", new SeeOrderCustomerCommand("seeordercustomer", "customer"));
        commands.put("seeorderemployee", new SeeOrderEmployeeCommand("seeorderemployee", "employee"));
        //update status on order + confirmed
        commands.put("updatestatusonorder", new CommandProtectedPage("updatestatusonorder","employee"));
        commands.put("updatestatusonorderconfirmed", new UpdateStatusCommand("updatestatusonorderconfirmed", "employee"));
        //Item list
        commands.put("addtoitemlist", new CommandProtectedPage("addtoitemlist", "employee"));
        commands.put("addtoitemlistconfirmed", new AddToItemlistCommand("createitemlistconfirmed", "employee"));
        commands.put("createitemlist", new CommandProtectedPage("createitemlist", "employee"));
        commands.put("createitemlistconfirmed", new CreateItemListCommand("createitemlistconfirmed", "employee"));
        //pris beregner for medarbejder
        commands.put("calculatetotalprice", new CommandProtectedPage("calculatetotalprice", "employee"));
        commands.put("calculatepriceconfirmed", new CalculatePriceCommand("calulatepriceconfirmed", "employee"));
        //prisberegner for kunde
        commands.put("calculatepricecustomer", new CustomerPriceCommand("calculatepricecustomer", "customer"));
    }
//createitemlistfororder
    public static Command fromPath(
            HttpServletRequest request,
            Database db)
    {
        String action = request.getPathInfo().replaceAll("^/+", "");
        System.out.println("--> " + action);

        if (commands == null)
        {
            database = db;
            initCommands(database);
        }

        return commands.getOrDefault(action, new CommandUnknown());   // unknowncommand is default
    }

    public abstract String execute(
            HttpServletRequest request,
            HttpServletResponse response)
            throws UserException;

}
