package ru.easyfood.dao;

import org.springframework.stereotype.Repository;
import ru.easyfood.model.Food;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by Дмитрий on 12.01.2017.
 */
@Repository
public class FoodDaoImpl implements  FoodDao {
    @PersistenceContext
    private EntityManager em;

    @Override
    public void save(Food food) {
        em.persist(food);
    }

    @Override
    public Food getId(int id) {
        return em.find(Food.class, new Long(id));
    }

    @Override
    public void delete(int id) {
        Food food = em.find(Food.class, new Long(id));
        em.remove(food);
    }

    @Override
    public List<Food> getAll() {
        return em.createQuery("from food", Food.class).getResultList();
    }
}
