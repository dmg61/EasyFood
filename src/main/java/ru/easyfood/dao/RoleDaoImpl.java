package ru.easyfood.dao;

import org.springframework.stereotype.Repository;
import ru.easyfood.model.Role;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by Дмитрий on 12.01.2017.
 */
@Repository
public class RoleDaoImpl implements RoleDao {
    @PersistenceContext
    private EntityManager em;

    @Override
    public Role getId(int id) {
        return em.find(Role.class, new Long(id));
    }

    @Override
    public void delete(int id) {
        Role role = em.find(Role.class, new Long(id));
        em.remove(role);
    }

    @Override
    public List<Role> getAll() {
        return em.createQuery("from role", Role.class).getResultList();
    }
}
