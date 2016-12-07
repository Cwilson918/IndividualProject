package edu.matc.persistence;

import edu.matc.entity.User;

/**
 * Created by craigwilson on 9/28/16.
 */
public class UserDao extends GenericDao {

    public UserDao() {
        super(User.class);
    }

}
