package ru.easyfood.dao;

import org.springframework.stereotype.Repository;
import ru.easyfood.model.Role;
import ru.easyfood.model.User;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by Дмитрий on 12.01.2017.
 */
@Repository
public class UserDaoImpl implements UserDao {
    @PersistenceContext
    private EntityManager em;

    @Override
    public User findByUsername(String username) {
        return null;
    }

    @Override
    public void save(User user) {
        em.persist(user);
    }

    @Override
    public User getId(int id) {
        return null;
    }

    @Override
    public void delete(int id) {

    }

    @Override
    public List<User> getAll() {
        return em.createQuery("from user", User.class).getResultList();
    }
}
