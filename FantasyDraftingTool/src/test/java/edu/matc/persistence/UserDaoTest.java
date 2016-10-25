package edu.matc.persistence;

import edu.matc.entity.User;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.HibernateException;
import org.junit.Before;
import org.junit.Test;


import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

/**
 * Created by craigwilson on 10/19/16.
 */
public class UserDaoTest {

    UserDao dao;

    @Before
    public void setup() {
        dao = new UserDao();
    }

    @Test
    public void getUser() throws Exception {
        User user = dao.getUser(10);
        assertEquals("Test First Name", user.getFirstName());
        assertEquals("Test Last Name", user.getLastName());
    }

    @Test
    public void addUser() throws Exception {
        User user = new User();
        user.setFirstName("TestFirstName");
        user.setLastName("TestLastName");
        user.setEmail("TestEmail");
        user.setPassword("TestPassword");

        int id = dao.addUser(user);

        dao.deleteUser(id);

    }

    @Test
    public void updateUser() throws Exception {

        User userToUpdate = dao.getUser(10);

        String startingLastName = userToUpdate.getLastName();

        userToUpdate.setLastName("Test");
        dao.updateUser(userToUpdate);

        assertEquals("Test", userToUpdate.getLastName());
        assertEquals("Test First Name", userToUpdate.getFirstName());

        userToUpdate.setLastName(startingLastName);
        dao.updateUser(userToUpdate);

        assertNotEquals("Test", userToUpdate.getLastName());




    }
}
