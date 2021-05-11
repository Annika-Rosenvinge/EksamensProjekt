package business.persistence;

import business.entities.ItemList;
import business.entities.Material;
import business.exceptions.UserException;
import java.sql.*;

//IKKE FÆRDIG

public class ItemlistMapper {

    private Database database;
    Material material;

    public ItemlistMapper(Database database){
        this.database = database;
    }


    public void createItemList (ItemList itemList) throws UserException {

        try (Connection connection = database.connect()){
            String sql = "INSERT INTO item_list (material_id,length,quantity,description, price) VALUES (?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
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
}
