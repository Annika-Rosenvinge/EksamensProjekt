package business.services;

import business.entities.ItemList;
import business.exceptions.UserException;
import business.persistence.Database;
import business.persistence.ItemlistMapper;

public class ItemlistFacade {
    ItemlistMapper itemMapper;

    public ItemlistFacade(Database database){itemMapper = new ItemlistMapper(database);}

    public ItemList createItemList(int id, int material_id, int length, int quantity, String description, Double price, int order_id)throws UserException {
        ItemList itemList = new ItemList(id, material_id, length, quantity, description, price, order_id);
        itemMapper.createItemList(itemList);
        return itemList;
    }

}
