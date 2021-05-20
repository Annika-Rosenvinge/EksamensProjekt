package business.persistence;

import business.entities.Order;
import business.entities.User;
import business.exceptions.UserException;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderMapper {
    private Database database;
    User user;

    public OrderMapper(Database database){
        this.database = database;
    }

    public void createOrder(Order order) throws UserException {
        try (Connection connection = database.connect()){
            String sql = "INSERT INTO `order` (lenght, width, user_id, status) VALUES (?,?,?,?)";
            try (PreparedStatement preparedStatement
                         = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)){

                preparedStatement.setInt(1,order.getLength());
                preparedStatement.setInt(2,order.getWidth());
                preparedStatement.setInt(3,order.getUserId());
                preparedStatement.setString(4,order.getStatus());
                preparedStatement.executeUpdate();
                ResultSet ids = preparedStatement.getGeneratedKeys();
                ids.next();
                int id = ids.getInt(1);
                order.setId(id);
            }
            catch (SQLException sqlException){
                throw new UserException(sqlException.getMessage());
            }
        }
        catch (SQLException ex){
            throw new UserException(ex.getMessage());
        }
    }

    public void seeOrderCustomer(Order order) throws UserException{
        int user_id = user.getId();
        //userid skal kun med da det er en kunde og de ikke skal kunne se alle ordre
        String email = user.getEmail();
        try (Connection connection = database.connect()){
            String sql = "SELECT * FROM order WHERE user_id = ? AND email = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)){
                preparedStatement.setInt(1,user_id);
                preparedStatement.setString(2,email);
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

    public List<Order> seeOrderEmployee() throws UserException {
        List<Order> AllOrders = new ArrayList<>();
        // TO DO Loop igennem Restultatet fra databasen
    }

    /*
    * Order order = new Order(780, 600, 1,"done");
        Order order2 = new Order(600, 600, 2,"done");
        order.setId(10);
        order2.setId(11);
        AllOrders.add(order);
        AllOrders.add(order2);

        return AllOrders;
    * */



    /*public void seeOrderEmployee() throws UserException{
        try(Connection connection = database.connect()){
            String sql = "SELECT * FROM order";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)){
                preparedStatement.executeUpdate();
            }
        }
        catch (SQLException sqlException){
            throw new UserException(sqlException.getMessage());
        }
    }*/


}
