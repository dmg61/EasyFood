package ru.easyfood.dao;

import ru.easyfood.model.User;

import java.util.List;

public interface UserDao {
    User findByUsername(String username);
    public void save(User user);
    public User getId(int id);
    public void delete(int id);
    public List<User> getAll();
}
