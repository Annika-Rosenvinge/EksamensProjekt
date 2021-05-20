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

    public void calculatePrice(int orderId) throws UserException{
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
