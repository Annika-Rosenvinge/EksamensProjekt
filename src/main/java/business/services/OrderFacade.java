package business.services;

import business.entities.Order;
import business.entities.User;
import business.exceptions.UserException;
import business.persistence.Database;
import business.persistence.OrderMapper;

import java.util.List;

public class OrderFacade {
    OrderMapper orderMapper;
    User user;

    public OrderFacade(Database database){
        orderMapper = new OrderMapper(database);
    }

    public void createOrder(int length, int width, String status) throws UserException {
        int userId = user.getId();
        Order order = new Order(length, width, userId, status);
        orderMapper.createOrder(order);
    }

    public Order seeOrderCustomer (int length, int width, int userId, String status, String email) throws UserException {
        Order order = new Order(length, width, userId, status);
        orderMapper.seeOrderCustomer(order);
        return order;
    }

    public List<Order> seeOrderEmployee() throws UserException {
        return orderMapper.seeOrderEmployee();
    }

    /*public void seeOrderEmployee() throws UserException {
        orderMapper.seeOrderEmployee();
    }*/

}
