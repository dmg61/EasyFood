package ru.easyfood.dao;


import ru.easyfood.model.Order;

import java.util.List;

/**
 * Created by Дмитрий on 12.01.2017.
 */
public interface OrderDao {
    public void save(Order order);
    public Order getId(int id);
    public void delete(int id);
    public List<Order> getAll();
}
