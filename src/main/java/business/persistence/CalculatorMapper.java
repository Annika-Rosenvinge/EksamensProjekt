package business.persistence;

import business.exceptions.UserException;
import java.sql.*;

//IKKE FÆRDIG

public class CalculatorMapper {

    private Database database;

    public CalculatorMapper (Database database){
        this.database = database;
    }
    public void calculatePrice () throws UserException {

        try (Connection connection = database.connect()){
            String sql = "";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            }

            catch (SQLException sqlException){
                throw new UserException(sqlException.getMessage());
            }

        }
        catch (SQLException sqlException){
            throw new UserException(sqlException.getMessage());
        }
    }
}
