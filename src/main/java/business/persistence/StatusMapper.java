package business.persistence;

import business.entities.Status;
import business.exceptions.UserException;

import java.sql.Connection;
import java.sql.SQLException;

public class StatusMapper {

    private Database database;

    public StatusMapper (Database database){
        this.database = database;
    }

    public void newStatus(Status status) throws UserException {
        try (Connection connection = database.connect()){

        }
        catch (SQLException sqlException){
            throw new UserException(sqlException)
        }
    }
}
