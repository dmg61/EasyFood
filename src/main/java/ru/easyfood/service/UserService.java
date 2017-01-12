package ru.easyfood.service;


import ru.easyfood.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
