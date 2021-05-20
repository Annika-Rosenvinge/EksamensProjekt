package business.persistence;

import business.entities.ItemList;
import business.entities.Material;
import business.entities.Order;
import business.exceptions.UserException;
import java.sql.*;
import java.util.ArrayList;

//IKKE FÆRDIG

public class ItemlistMapper {
 //= new ArrayList<Double>

    private Database database;
    Material material;
    //Order order;
    ItemList itemList;

    public ItemlistMapper(Database database){
        this.database = database;
    }


    public void createItemList (ItemList itemList) throws UserException {

        try (Connection connection = database.connect()){
            String sql = "INSERT INTO item_list (material_id,length,quantity,description, price) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
                ResultSet ids = preparedStatement.getGeneratedKeys();
                ids.next();
                int id = ids.getInt(1);
                itemList.setId(id);

                preparedStatement.setInt(1,material.getId());
                preparedStatement.setInt(2,itemList.getLength());
                preparedStatement.setInt(3,itemList.getQuantity());
                preparedStatement.setString(4,itemList.getDescription());
                preparedStatement.setDouble(5,itemList.getPrice());
                preparedStatement.executeUpdate();
            }
            catch (SQLException sqlException){
                throw new UserException(sqlException.getMessage());
            }
        }
        catch (SQLException sqlException){
            throw new UserException(sqlException.getMessage());
        }
    }

    //dette er den nye måde at lave en itemlist på, det kommer til at være med if statements og
    //der kommer til at være kommentare undervejs.
    public void createItemList2(Order order) throws UserException{
        try(Connection connection = database.connect()){
            int lenght = order.getLength();
            int width = order.getWidth();
            int orderId = order.getId();
            String sql = "SELECT lenght, width FROM 'order' WHERE order_id = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)){
                preparedStatement.setInt(1,orderId);
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()){
                    lenght = resultSet.getInt("lenght");
                    width = resultSet.getInt("width");
                }

                //her kommer der if statements der sætter forskellige ting ind i sql hvis,
                //de er over en bestemt bredte og længde.
                if (lenght == 480){
                    int material_id;
                    int quantity;
                    String description;
                    int price;
                    //understærnsbrædder indsættes i itemlist
                    String sqllenght1 = "INSERT INTO itemlist (material_id, lenght, quantity, description, price) " +
                            "values (?,?,?,?,?)";
                    try (PreparedStatement pslenght1 = connection.prepareStatement(sqllenght1,Statement.RETURN_GENERATED_KEYS)) {
                        pslenght1.setInt(1,1);
                        pslenght1.setInt(2,540);
                        pslenght1.setInt(3,4);
                        pslenght1.setString(4,"Understernsbrædder til sidderne");
                        pslenght1.setDouble(5,4*material.getPrice());
                        ResultSet ids = preparedStatement.getGeneratedKeys();
                        ids.next();
                        int id = ids.getInt(1);
                        itemList.setId(id);

                        pslenght1.executeUpdate();

                    }
                    //overstærnsbrædder indsættes
                    try (PreparedStatement pslenght2 = connection.prepareStatement(sqllenght1,Statement.RETURN_GENERATED_KEYS)) {
                        pslenght2.setInt(1,2);
                        pslenght2.setInt(2,540);
                        pslenght2.setInt(3,4);
                        pslenght2.setString(4,"Oversternsbrædder til sidderne");
                        pslenght2.setDouble(5,4*material.getPrice());
                        ResultSet ids = preparedStatement.getGeneratedKeys();
                        ids.next();
                        int id = ids.getInt(1);
                        itemList.setId(id);
                        pslenght2.executeUpdate();
                    }
                    //Stolperne indsættes
                    try (PreparedStatement pslenght3 = connection.prepareStatement(sqllenght1,Statement.RETURN_GENERATED_KEYS)) {
                        pslenght3.setInt(1,4);
                        pslenght3.setInt(2,300);
                        pslenght3.setInt(3,9);
                        pslenght3.setString(4,"Stolper nedgraves 90 centimeter i jorden");
                        pslenght3.setDouble(5,15*material.getPrice());
                        ResultSet ids = preparedStatement.getGeneratedKeys();
                        ids.next();
                        int id = ids.getInt(1);
                        itemList.setId(id);
                        pslenght3.executeUpdate();
                    }
                    //tagpladerne indsættes
                    try (PreparedStatement pslenght4 = connection.prepareStatement(sqllenght1,Statement.RETURN_GENERATED_KEYS)) {
                        pslenght4.setInt(1,5);
                        pslenght4.setInt(2,480);
                        pslenght4.setInt(3,6);
                        pslenght4.setString(4,"Tagplader");
                        pslenght4.setDouble(5,6*material.getPrice());
                        ResultSet ids = preparedStatement.getGeneratedKeys();
                        ids.next();
                        int id = ids.getInt(1);
                        itemList.setId(id);
                        pslenght4.executeUpdate();
                    }
                }

                

                if (width == 300){
                    String sqllenght1 = "INSERT INTO itemlist (material_id, lenght, quantity, description, price) " +
                            "values (?,?,?,?,?)";
                    //understærnsbrædder til for og bagende
                    try (PreparedStatement pslenght1 = connection.prepareStatement(sqllenght1,Statement.RETURN_GENERATED_KEYS)) {
                        pslenght1.setInt(1,1);
                        pslenght1.setInt(2,360);
                        pslenght1.setInt(3,2);
                        pslenght1.setString(4,"Understernsbrædder til for- og bagende");
                        pslenght1.setDouble(5,2*material.getPrice());
                        ResultSet ids = preparedStatement.getGeneratedKeys();
                        ids.next();
                        int id = ids.getInt(1);
                        itemList.setId(id);
                        pslenght1.executeUpdate();
                    }

                    try (PreparedStatement pslenght2 = connection.prepareStatement(sqllenght1,Statement.RETURN_GENERATED_KEYS)) {
                        pslenght2.setInt(1,1);
                        pslenght2.setInt(2,360);
                        pslenght2.setInt(3,4);
                        pslenght2.setString(4,"Overstærnsbrædder til for- og bagende");
                        pslenght2.setDouble(5,4*material.getPrice());
                        ResultSet ids = preparedStatement.getGeneratedKeys();
                        ids.next();
                        int id = ids.getInt(1);
                        itemList.setId(id);
                        pslenght2.executeUpdate();

                    }
                    try (PreparedStatement pslenght1 = connection.prepareStatement(sqllenght1,Statement.RETURN_GENERATED_KEYS)) {
                        pslenght1.setInt(1,1);
                        pslenght1.setInt(2,600);
                        pslenght1.setInt(3,1);
                        pslenght1.setString(4,"Remme i siderne, sadles ned i stolperne, skal deles først");
                        pslenght1.setDouble(5,1*material.getPrice());
                        ResultSet ids = preparedStatement.getGeneratedKeys();
                        ids.next();
                        int id = ids.getInt(1);
                        itemList.setId(id);
                        pslenght1.executeUpdate();

                    }
                }


            }
            catch (SQLException sqlException){
                throw new UserException(sqlException.getMessage());
            }


        }
        catch (SQLException sqlException){
            throw new UserException(sqlException.getMessage());
        }
    }

    public Double calculatePrice(int orderId) throws UserException{
        ArrayList<Double> orderprice = new ArrayList<>();
        Double price = 0.1;
        try (Connection connection = database.connect()){
            String sql = "SELECT price FROM item_list WHERE order_id = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)){
                preparedStatement.setInt(1, orderId);
                preparedStatement.executeUpdate();
                ResultSet resultSet = preparedStatement.executeQuery(sql);
                while (resultSet.next()){
                    orderprice.add(resultSet.getDouble("price"));
                }
                for (Double op : orderprice) {
                    price = price + op;
                }
                return price;
            }
            catch (SQLException sqlException){
                throw new UserException(sqlException.getMessage());
            }
        }

        catch (SQLException sqlException){
            throw new UserException(sqlException.getMessage());
        }
        //System.out.println(totalprice);

    }

 /*   public void customerPrice(int order_id) throws UserException {
        ArrayList<Double> orderprice = new ArrayList<>();
        Double price = 0.1;
        try (Connection connection = database.connect()){
            String sql = "SELECT price FROM item_list WHERE order_id = ?";
            try(PreparedStatement preparedStatement = connection.prepareStatement(sql)){
                preparedStatement.setInt(1, order_id);
                preparedStatement.executeUpdate();
                ResultSet resultSet = preparedStatement.executeQuery(sql);
                while (resultSet.next()){
                    orderprice.add(resultSet.getDouble("price"));
                }
                for (Double op : orderprice) {
                    price = price + op;
                }
            }


        } catch (SQLException sqlException) {
            throw new UserException(sqlException.getMessage());
        }

    }*/


}
