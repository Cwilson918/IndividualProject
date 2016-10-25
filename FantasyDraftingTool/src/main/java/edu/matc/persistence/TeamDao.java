package edu.matc.persistence;

import edu.matc.entity.League;
import edu.matc.entity.Team;
import edu.matc.entity.User;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.HibernateException;


import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.util.ArrayList;
import java.util.List;
/**
 * Created by craigwilson on 9/28/16.
 */
public class TeamDao {

    private final Logger log = Logger.getLogger(this.getClass());

    private List<Team> getAllTeams() {
        List<Team> teams = new ArrayList<Team>();
        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        teams = session.createCriteria(Team.class).list();
        return teams;
    }

    private Team getTeam(int id) {
        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        Team team = (Team) session.get(Team.class, id);
        return team;
    }

    public void addTeam(Team team) {

        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            session.save(team);
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

    }


    public void updateTeam(Team team) {

        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            session.update(team);
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


    public void deleteTeam(int id) {

        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            Team teamToDelete = (Team) session.get(League.class, id);
            session.delete(teamToDelete);
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
