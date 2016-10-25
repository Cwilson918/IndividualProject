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

    LeagueDao dao;

    @Before
    public void setup() {
        dao = new LeagueDao();
    }

    @Test
    public void getAllLeagues() {
        List<League> leagues = new ArrayList<League>();
        leagues = dao.getAllLeagues();
        assertEquals(1, leagues.size());
    }
    /**
    @Test
    public void getLeague() {
        League league = dao.getLeague(1);
        assertEquals("Test League", league.getLeagueName());
        assertEquals(10, league.getUserId());

    }

    @Test
    public void addLeague() {
        League league = new League();
        league.setLeagueName("Testing");
        league.setNumberOfTeams(12);
        league.setSizeOfRoster(15);
        league.setUserId(11);

        int id = dao.addLeague(league);

        dao.deleteLeague(id);


    }

    @Test
    public void updateLeague() {
        League leagueToUpdate = dao.getLeague(1);

        String leagueStartingName = leagueToUpdate.getLeagueName();

        leagueToUpdate.setLeagueName("This is a test");
        dao.updateLeague(leagueToUpdate);

        assertEquals("This is a test" , leagueToUpdate.getLeagueName());
        assertEquals(15, leagueToUpdate.getSizeOfRoster());

        leagueToUpdate.setLeagueName(leagueStartingName);

        dao.updateLeague(leagueToUpdate);

        assertNotEquals("This is a test", leagueToUpdate.getLeagueName());

    }
    */
}
