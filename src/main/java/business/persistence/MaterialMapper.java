package business.persistence;

import business.entities.Material;
import business.exceptions.UserException;
import java.sql.*;

public class MaterialMapper {

    private Database database;

    public MaterialMapper (Database database){
        this.database = database;
    }
    /*
    Her bliver der lavet 2 methods der henholdsvis kan opdatere prisen på et materiale og
    indsætte prisen på et nyt materiale.
    Det bliver nu sendt over i hver sin commandKlasse
     */

    public void insertMaterial (Material material) throws UserException {
        try (Connection connection = database.connect()){

            String sql = "INSERT INTO material VALUES (?, ?, ?, ?)";

            try (PreparedStatement preparedStatement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)){
                preparedStatement.setString(1,material.getName());
                preparedStatement.setInt(2,material.getPartsPrUnit());
                preparedStatement.setString(3, material.getUnit());
                preparedStatement.setDouble(4, material.getPrice());
                preparedStatement.executeUpdate();
                ResultSet ids = preparedStatement.getGeneratedKeys();
                ids.next();
                int id = ids.getInt(1);
                material.setId(id);
            }
            catch (SQLException sqlException) {
                throw new UserException(sqlException.getMessage());
            }
        }
        catch (SQLException sqlException){
            throw new UserException(sqlException.getMessage());
        }

    }

    public void updateMaterialPrice (String name, Double price) throws UserException{

        try (Connection connection = database.connect()){
            String sql = "UPDATE material SET price = ? WHERE name = ?";

            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)){
                preparedStatement.setDouble(1,price);
                preparedStatement.setString(2,name);
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
}
