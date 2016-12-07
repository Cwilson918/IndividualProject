package edu.matc.persistence;

import edu.matc.entity.Player;
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
 * Created by craigwilson on 11/23/16.
 */
public class PlayerDaoTest {

    private Logger log = Logger.getLogger(this.getClass());
    PlayerDao playerDao;

    @Before
    public void setup() {
        playerDao = new PlayerDao();
    }

    @Test
    public void getAllPlayersTest() throws Exception {
        List<Player> playerList;

        playerList = playerDao.getAll();

        assertEquals(3154, playerList.size());
    }

    @Test
    public void searchPlayersTest() throws Exception {
        List<Player> foundPlayers;

        foundPlayers = playerDao.searchPlayers("Bro");

        assertEquals(70,foundPlayers.size());
    }
}
