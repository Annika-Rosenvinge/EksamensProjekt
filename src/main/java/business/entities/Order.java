package business.entities;

public class Orderlist {
    private int id; // just used to demo retrieval of autogen keys in UserMapper
    private int material_id;
    private int length; // Should be hashed and secured
    private int quantity;
    private String description;
    private Double price;
    private int order_id;

    public ItemList(int id, int material_id, int length, int quantity,
                    String description, Double price, int order_id){
        this.id = id;
        this.material_id = material_id;
        this.length = length;
        this.quantity = quantity;
        this.description = description;
        this.price = price;
        this.order_id = order_id;
    }
}