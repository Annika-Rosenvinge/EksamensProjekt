package business.persistence;

import business.exceptions.UserException;
import business.entities.User;

import java.sql.*;

public class UserMapper
{
    private Database database;
    User user;

    public UserMapper(Database database)
    {
        this.database = database;
    }

    public void createUser(User user) throws UserException
    {
        try (Connection connection = database.connect())
        {
            String sql = "INSERT INTO users (email, password, role, name) VALUES (?, ?, ?, ?)";

            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS))
            {
                ps.setString(1, user.getEmail());
                ps.setString(2, user.getPassword());
                ps.setString(3, user.getRole());
                ps.setString(4, user.getName());
                ps.executeUpdate();
                ResultSet ids = ps.getGeneratedKeys();
                ids.next();
                int id = ids.getInt(1);
                user.setId(id);
            }
            catch (SQLException ex)
            {
                throw new UserException(ex.getMessage());
            }
        }
        catch (SQLException ex)
        {
            throw new UserException(ex.getMessage());
        }
    }

    public User login(String email, String password) throws UserException
    {
        try (Connection connection = database.connect())
        {
            String sql = "SELECT id, role, name FROM users WHERE email=? AND password=?";

            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ps.setString(1, email);
                ps.setString(2, password);
                ResultSet rs = ps.executeQuery();
                if (rs.next())
                {
                    String role = rs.getString("role");
                    String name = rs.getString("name");
                    int id = rs.getInt("id");
                    User user = new User(email, password, role, name);
                    user.setId(id);
                    return user;
                } else
                {
                    throw new UserException("Could not validate user");
                }
            }
            catch (SQLException ex)
            {
                throw new UserException(ex.getMessage());
            }
        }
        catch (SQLException ex)
        {
            throw new UserException("Connection to database could not be established");
        }
    }

    public void updateUser ( String adress, int zipcode, String city, int phone) throws UserException{
        try (Connection connection = database.connect()){
            adress = "adress";
            zipcode = 0;
            city = "city";
            phone = 0;
            int userId= user.getId();
            String sql = "UPDATE user SET adress = ?, zipcode = ?, city = ?, phone = ? WHERE user_id = ?";
            try (PreparedStatement preparedStatement =connection.prepareStatement(sql)){
                preparedStatement.setString(1,adress);
                preparedStatement.setInt(2,zipcode);
                preparedStatement.setString(3,city);
                preparedStatement.setInt(4,phone);
                preparedStatement.setInt(5,userId);
                preparedStatement.executeUpdate();

            }
        }
        catch (SQLException sqlException){
            throw new UserException(sqlException.getMessage());
        }
    }


}
