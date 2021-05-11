package business.persistence;

import business.entities.Status;
import business.exceptions.UserException;

import java.sql.*;

public class StatusMapper {

    private Database database;

    public StatusMapper (Database database){
        this.database = database;
    }

    public void newStatus(Status status) throws UserException {
        try (Connection connection = database.connect()){
            String sql ="INSERT INTO status VALUES (?)";

            try(PreparedStatement preparedStatement = connection.prepareStatement(sql)){
                preparedStatement.setString(1,status.getStatus());
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

    public void updateStatus(String status, int orderID) throws UserException{
        try (Connection connection = database.connect()){
            String sql = "UPDATE item_list SET status = ? WHERE order_id = ?";

            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)){
                preparedStatement.setString(1, status);
                preparedStatement.setInt(2,orderID);
                preparedStatement.executeUpdate();
            }
        }
        catch (SQLException sqlException){
            throw new UserException(sqlException.getMessage());
        }
    }
}
