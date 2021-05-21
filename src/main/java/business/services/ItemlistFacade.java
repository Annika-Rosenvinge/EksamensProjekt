package business.services;

import business.entities.ItemList;
import business.exceptions.UserException;
import business.persistence.Database;
import business.persistence.ItemlistMapper;

public class ItemlistFacade {
    ItemlistMapper itemMapper;

    public ItemlistFacade(Database database){itemMapper = new ItemlistMapper(database);}

    public void createItemList (int orderId) throws UserException {
        itemMapper.createItemList(orderId);
    }

    public ItemList addToItemList(int material_id, int length, int quantity, String description, Double price, int order_id)throws UserException {
        ItemList itemList = new ItemList( material_id, length, quantity, description, price, order_id);
        itemMapper.AddToItemList(itemList);
        return itemList;
    }

    public void calculatePrice (int order_id) throws UserException {
        itemMapper.calculatePrice(order_id);
    }

    public void customerPrice(int order_id) throws UserException {
        itemMapper.calculatePrice(order_id);
    }

    public int seeItemList(int order_id) throws UserException {
        itemMapper.seeItemList(order_id);
        return order_id;
    }
}
