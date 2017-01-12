package ru.easyfood.dao;

import ru.easyfood.model.Food;

import java.util.List;

/**
 * Created by Дмитрий on 12.01.2017.
 */
public interface FoodDao {
    public void save(Food food);
    public Food getId(int id);
    public void delete(int id);
    public List<Food> getAll();
}
