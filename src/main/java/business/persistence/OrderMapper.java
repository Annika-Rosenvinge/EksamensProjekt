package business.persistence;

import business.entities.Order;
import business.entities.User;
import business.exceptions.UserException;

import java.sql.*;

public class OrderMapper {
    private Database database;
    User user;

    public OrderMapper(Database database){
        this.database = database;
    }

    public void createOrder(Order order) throws UserException {
        try (Connection connection = database.connect()){
            String sql = "INSERT INTO order (order_id, length, width, user_id, status) VALUES (?,?,?,?,?)";
            try (PreparedStatement preparedStatement
                         = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)){
                ResultSet ids = preparedStatement.getGeneratedKeys();
                ids.next();
                int id = ids.getInt(1);
                order.setId(id);
                preparedStatement.setInt(1,id);
                preparedStatement.setInt(2,order.getLength());
                preparedStatement.setInt(3,order.getWidth());
                preparedStatement.setInt(3,user.getId());
                preparedStatement.setString(4,order.getStatus());
                preparedStatement.executeUpdate();

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

    public void seeOrderEmployee() throws UserException{
        try(Connection connection = database.connect()){
            String sql = "SELECT * FROM order";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)){
                preparedStatement.executeUpdate();
            }
        }
        catch (SQLException sqlException){
            throw new UserException(sqlException.getMessage());
        }
    }
}
