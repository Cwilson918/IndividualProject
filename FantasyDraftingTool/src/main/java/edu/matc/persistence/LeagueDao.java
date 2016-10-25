package edu.matc.persistence;

import edu.matc.entity.League;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.HibernateException;


import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.util.*;

/**
 * Created by craigwilson on 9/28/16.
 */
public class LeagueDao {

    private final Logger log = Logger.getLogger(this.getClass());

    /**
     * Return a list of all leagues.
     *
     * @return All leagues
     */
    public List<League> getAllLeagues() {
        List<League> leagues = new ArrayList<League>();
        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        leagues = session.createCriteria(League.class).list();
        return leagues;
    }

    /** Return a single league given its id.
     *
     * @param id the leagues id
     * @return league
     */
    public League getLeague(int id) {
        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        League league = (League) session.get(League.class, id);
        return league;
    }

    /** Add a league
     *
     * @param league
     */
    public int addLeague(League league) {
        int id = 0;

        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            session.save(league);
            id = league.getLeagueId();
            transaction.commit();
        } catch (Exception exception) {
            if(transaction != null) {
                transaction.rollback();
            }
            exception.printStackTrace();
            log.error(exception);
        } finally {
            session.close();
        }

        return id;

    }


    /** Update a league
     *
     * @param league
     */
    public void updateLeague(League league) {

        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            session.update(league);
            transaction.commit();
        } catch (Exception exception) {
            if (transaction != null) {
                transaction.rollback();
            }
            exception.printStackTrace();
            log.error(exception);
        } finally {
            session.close();
        }


    }

    /** Delete a league
     *
     * @param id
     */
    public void deleteLeague(int id) {

        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            League leagueToDelete = (League) session.get(League.class, id);
            session.delete(leagueToDelete);
            transaction.commit();
        } catch (Exception exception) {
            if (transaction != null) {
                transaction.rollback();
            }
            exception.printStackTrace();
            log.error(exception);
        } finally {
            session.close();
        }
    }

}
