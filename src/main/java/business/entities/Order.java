package business.entities;

//DO NOT CHANGE

public class Order {

    //Default constructor
    public Order() {
    }

    private int id; // just used to demo retrieval of autogen keys in UserMapper
    private int length;
    private int width;
    private int userId;
    private String status;

    public void setId(int id) {
        this.id = id;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Order(int length, int width, int userId, String status){
        this.length = length;
        this.width = width;
        this.userId = userId;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getUser_id() {
        return userId;
    }

    public void setUser_id(int user_id) {
        this.userId = user_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}