package edu.matc.entity;

import javax.persistence.Entity;

import com.sun.javafx.beans.IDProperty;
import org.hibernate.annotations.CollectionId;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by craigwilson on 9/21/16.
 */

@Entity
@Table(name = "player")
public class Player {

    @Id
    @GeneratedValue(generator="increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    @Column(name = "id")
    private int playerId;

    @Column(name = "firstName")
    private String firstName;

    @Column(name = "lastName")
    private String lastName;

    @Column(name = "nflTeamId")
    private int nflTeamId;

    @Column(name = "position")
    private String position;

    @Column(name = "playingNumber")
    private int playingNumber;


    public int getPlayerId() {
        return playerId;
    }


    public void setPlayerId(int playerId) {
        this.playerId = playerId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getNflTeamId() {
        return nflTeamId;
    }

    public void setNflTeamId(int nflTeamId) {
        this.nflTeamId = nflTeamId;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public int getPlayingNumber() {
        return playingNumber;
    }

    public void setPlayingNumber(int playingNumber) {
        this.playingNumber = playingNumber;
    }





}
