package business.services;

import business.entities.Order;
import business.exceptions.UserException;
import business.persistence.Database;
import business.persistence.OrderMapper;

public class OrderFacade {
    OrderMapper orderMapper;

    public OrderFacade(Database database){
        orderMapper = new OrderMapper(database);
    }
    public Order createOrder(int id, int length, int width, int userId, String status) throws UserException {
        Order order = new Order(id, length, width, userId, status);
        orderMapper.createOrder(order);
        return order;
    }
}
