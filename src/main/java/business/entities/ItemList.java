package business.entities;

public class ItemList {
    private int id; // just used to demo retrieval of autogen keys in UserMapper
    private int material_id;
    private int length; // Should be hashed and secured
    private int quantity;
    private String description;
    private Double price;
    private int order_id;

    public ItemList (int id, int material_id, int length, int quantity,
                    String description, Double price, int order_id){
        this.id = id;
        this.material_id = material_id;
        this.length = length;
        this.quantity = quantity;
        this.description = description;
        this.price = price;
        this.order_id = order_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMaterial_id() {
        return material_id;
    }

    public void setMaterial_id(int material_id) {
        this.material_id = material_id;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }
}
