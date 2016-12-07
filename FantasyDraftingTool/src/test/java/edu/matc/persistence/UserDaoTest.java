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

    private Logger log = Logger.getLogger(this.getClass());
    UserDao userDao;

    @Before
    public void setup() {
        userDao = new UserDao();
    }

    @Test
    public void createUserTest() {
        User testUser = new User();

        testUser.setUsername("testUser");
        testUser.setPassword("testPw");
        testUser.setFirstName("Test");
        testUser.setLastName("Testing");
        testUser.setEmail("test@testing.com");

        userDao.create(testUser);


    }


}
