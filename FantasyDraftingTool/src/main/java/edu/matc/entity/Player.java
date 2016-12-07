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
@Table(name = "players")
public class Player {

    public Player(int id, double active, double jerseyNumber, String lastName, String firstName,
                  String fullName, String team, String position, String height, String weight,
                  String dateOfBirth, String college) {
        this.playerId = id;
        this.active = active;
        this.jerseyNumber = jerseyNumber;
        this.lastName = lastName;
        this.firstName = firstName;
        this.fullName = fullName;
        this.team = team;
        this.position = position;
        this.height = height;
        this.weight = weight;
        this.dateOfBirth = dateOfBirth;
        this.college = college;
    }

    public Player() {

    }

    @Id
    @GeneratedValue(generator="increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    @Column(name = "id")
    private int playerId;

    @Column(name = "active")
    private double active;

    @Column(name = "jerseyNumber")
    private double jerseyNumber;

    @Column(name = "lastName")
    private String lastName;

    @Column(name = "firstName")
    private String firstName;

    @Column(name = "fullName")
    private String fullName;

    @Column(name = "team")
    private String team;

    @Column(name = "position")
    private String position;

    @Column(name = "height")
    private String height;

    @Column(name = "weight")
    private String weight;

    @Column(name = "dateOfBirth")
    private String dateOfBirth;

    @Column(name = "college")
    private String college;

    /**
     * Gets players id
     *
     * @return player id
     */
    public int getPlayerId() {
        return playerId;
    }

    /**
     * Sets players id
     *
     * @param playerId player id
     */
    public void setPlayerId(int playerId) {
        this.playerId = playerId;
    }


    /**
     * Gets player activity
     *
     * @return player activity
     */
    public double getActive() {
        return active;
    }

    /**
     * Sets player activity
     *
     * @param active  player activity
     */
    public void setActive(double active) {
        this.active = active;
    }

    /**
     * Gets player first name
     *
     * @return player first name
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * Sets player first name
     *
     * @param firstName player first name
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * Gets player last name
     *
     * @return player last name
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * Sets player last name
     *
     * @param lastName player last name
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * Gets player full name
     *
     * @return player full name
     */
    public String getFullName() {
        return fullName;
    }

    /**
     * Sets player full name
     *
     * @param fullName player full name
     */
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    /**
     * Gets player team
     *
     * @return player team
     */
    public String getTeam() {
        return team;
    }

    /**
     * Sets player team
     *
     * @param team player team
     */
    public void setTeam(String team) {
        this.team = team;
    }

    /**
     * Gets player position
     *
     * @return player position
     */
    public String getPosition() {
        return position;
    }

    /**
     * Sets player position
     *
     * @param position player position
     */
    public void setPosition(String position) {
        this.position = position;
    }

    /**
     * Gets player height
     *
     * @return player height
     */
    public String getHeight() {
        return height;
    }

    /**
     * Sets player height
     *
     * @param height player height
     */
    public void setHeight(String height) {
        this.height = height;
    }

    /**
     * Gets player weight
     *
     * @return player weight
     */
    public String getWeight() {
        return weight;
    }

    /**
     * Sets player weight
     *
     * @param weight player weight
     */
    public void setWeight(String weight) {
        this.weight = weight;
    }

    /**
     * Gets player date of birth
     *
     * @return player date of birth
     */
    public String getDateOfBirth() {
        return dateOfBirth;
    }

    /**
     * Sets player date of birth
     *
     * @param dateOfBirth player date of birth
     */
    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    /**
     * Gets player college
     *
     * @return player college
     */
    public String getCollege() {
        return college;
    }

    /**
     * Sets player college
     *
     * @param college player college
     */
    public void setCollege(String college) {
        this.college = college;
    }






}
