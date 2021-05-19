package business.services;

import business.entities.User;
import business.persistence.Database;
import business.persistence.UserMapper;
import business.exceptions.UserException;

public class UserFacade
{
    UserMapper userMapper;

    public UserFacade(Database database)
    {
        userMapper = new UserMapper(database);
    }

    public User login(String email, String password) throws UserException
    {
        return userMapper.login(email, password);
    }

    public User createUser(String email, String password, String name) throws UserException
    {
        User user = new User(email, password, "customer", name);
        userMapper.createUser(user);
        return user;
    }
     public void updateUser(String adress, int zipcode, String city, int phone) throws UserException {
        userMapper.updateUser(adress, zipcode, city, phone);
     }

}
