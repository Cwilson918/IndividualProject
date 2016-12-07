package edu.matc.persistence;

import edu.matc.entity.League;
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

import static org.junit.Assert.*;
/**
 * Created by craigwilson on 10/19/16.
 */
public class LeagueDaoTest {

    private Logger log = Logger.getLogger(this.getClass());
    LeagueDao leagueDao;

    @Before
    public void setup() {
        leagueDao = new LeagueDao();
    }

    @Test
    public void getAllLeaguesTest() throws Exception {
        List<League> leagueList;

        leagueList = leagueDao.getAll();

        assertEquals(1, leagueList.size());
    }

}
