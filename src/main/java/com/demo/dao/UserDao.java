package com.demo.dao;

import com.demo.entity.UserEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;
import java.time.LocalDate;
public class UserDao {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence");
    EntityManager em = emf.createEntityManager();

    public int insertUser(UserEntity user) {

        try {
            LocalDate myObj = LocalDate.now();
            user.setCreateDate(myObj);
            user.setIs_active(1);
            em = emf.createEntityManager();
            em.getTransaction().begin();
            em.persist(user);
            em.getTransaction().commit();
            em.close();
            return 1;
        } catch (Exception e) {
            return 0;
        }
    }

    public void updateUser(int id) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        UserEntity user = em.find(UserEntity.class, id);
        if (user != null) {
            user.setName("User update");
            user.setPhone("09876543");
            em.getTransaction().commit();
        }
        em.close();
    }

    public void deleteUser(int id) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        UserEntity user = em.find(UserEntity.class, id);
        if (user != null) {
            em.remove(user);
            em.getTransaction().commit();
        }
        em.close();
    }

    public List<UserEntity> getAll() {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        List<UserEntity> list = em.createQuery("select u from UserEntity u where  u.is_active = 1", UserEntity.class).getResultList();
        em.getTransaction().commit();
        em.close();
        return list;
    }

}
