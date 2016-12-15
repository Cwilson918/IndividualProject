package edu.matc.persistence;

import java.util.*;

import org.apache.log4j.Logger;
import edu.matc.entity.Player;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.Query;

/**
 * Created by craigwilson on 11/23/16.
 */
public class PlayerDao extends GenericDao {

    private Logger log = Logger.getLogger(this.getClass());

    public PlayerDao() {
        super(Player.class);
    }

    public ArrayList<Player> searchPlayers(String playerName) {

        Session session = getSession();


        session.beginTransaction();

        Query query = session.createQuery("from Player as p where p.fullName like :playerName");
        query.setString("playerName", "%" + playerName + "%");
        List<Player> foundPlayers = query.list();

        session.getTransaction().commit();

        log.debug("Number of players found: " + foundPlayers.size());

        session.close();

        return (ArrayList<Player>) foundPlayers;

    }

}
