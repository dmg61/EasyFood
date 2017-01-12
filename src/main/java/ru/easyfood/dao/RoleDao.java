package ru.easyfood.dao;

import ru.easyfood.model.Role;

import java.util.List;

public interface RoleDao {
    public Role getId(int id);
    public void delete(int id);
    public List<Role> getAll();
}
