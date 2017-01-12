package ru.easyfood.dao;

import org.springframework.stereotype.Repository;
import ru.easyfood.model.Order;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by Дмитрий on 12.01.2017.
 */
@Repository
public class OrderDaoImpl implements OrderDao {
    @PersistenceContext
    private EntityManager em;

    @Override
    public void save(Order order) {
        em.persist(order);
    }

    @Override
    public Order getId(int id) {
        return em.find(Order.class, new Long(id));
    }

    @Override
    public void delete(int id) {
        Order order = em.find(Order.class, new Long(id));
        em.remove(order);
    }

    @Override
    public List<Order> getAll() {
        return null;
    }
}
