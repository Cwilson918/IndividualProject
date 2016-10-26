package edu.matc.entity;

import javax.persistence.Entity;

import com.sun.javafx.beans.IDProperty;
import org.hibernate.annotations.CollectionId;
import org.hibernate.annotations.GenericGenerator;

import java.util.*;
import javax.persistence.*;
/**
 * Created by craigwilson on 9/28/16.
 */
@Entity
@Table(name = "league")
public class League {

    @Id
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    @Column(name = "id")
    private int leagueId;

    @Column(name = "leagueName")
    private String leagueName;

    @Column(name = "numberOfTeams")
    private int numberOfTeams;

    @Column(name = "sizeOfRoster")
    private int sizeOfRoster;

    @Column(name = "userId")
    private int userId;

    @Column(name = "dateCreated")
    private Date dateCreated;

    public int getLeagueId() {
        return leagueId;
    }

    public void setLeagueId(int leagueId) {
        this.leagueId = leagueId;
    }

    public String getLeagueName() {
        return leagueName;
    }

    public void setLeagueName(String leagueName) {
        this.leagueName = leagueName;
    }

    public int getNumberOfTeams() {
        return numberOfTeams;
    }

    public void setNumberOfTeams(int numberOfTeams) {
        this.numberOfTeams = numberOfTeams;
    }

    public int getSizeOfRoster() {
        return sizeOfRoster;
    }

    public void setSizeOfRoster(int sizeOfRoster) {
        this.sizeOfRoster = sizeOfRoster;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }





}
