package business.persistence;

import business.entities.Order;
import business.exceptions.UserException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class ItemlistMapperTest {
    Database database;
    ItemlistMapper itemlistMapper = new ItemlistMapper(database);

    @BeforeEach
    void setUp() {

    }

    @Test
    void calculatePrice() throws UserException {
        Order order = new Order(10,10,10,"done");
        int order_id = order.getId();
        double price=itemlistMapper.calculatePrice(order_id);
        assertEquals(10,price);

    }

}