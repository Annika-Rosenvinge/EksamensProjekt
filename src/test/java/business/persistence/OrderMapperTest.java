package business.persistence;

import business.entities.Order;
import business.exceptions.UserException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class OrderMapperTest {
    OrderMapper orderMapper;

    private String USER = "root";
    private String PASSWORD = "xohy2367?";
    private String URL = "jdbc:mysql://127.0.0.1:3306/fogcarport?serverTimezone=CET";

    @BeforeEach
    void setUp() throws ClassNotFoundException {
        Database database = new Database(USER, PASSWORD, URL);
        orderMapper = new OrderMapper(database);
    }

    @Test
    void createOrder() throws UserException {
        Order order = new Order(600,600,2,"created");
        orderMapper.createOrder(order);
    }

    @Test
    void seeOrderEmployee() {
    }
}