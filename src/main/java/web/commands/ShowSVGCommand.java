package web.commands;
import business.entities.Order;
import business.exceptions.UserException;
import business.services.SVG;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowSVGCommand extends CommandProtectedPage {
    Order order = new Order();

    public ShowSVGCommand(String pageToShow, String role) {
        super(pageToShow,role);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        SVG svg = new SVG(0,0,"0 0 800 600",100,100);
        svg.addRect(0,0, order.getLength(),order.getWidth());
        request.setAttribute("svgdrawing", svg.toString());
        return pageToShow;
    }
}
