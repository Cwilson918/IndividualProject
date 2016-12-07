package edu.matc.controller;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import edu.matc.entity.User;
import edu.matc.persistence.UserDao;

/**
 * Created by craigwilson on 10/19/16.
 */
@WebServlet(name = "userRegisterAction", urlPatterns = { "/userRegisterAction" })
public class RegisterServlet extends HttpServlet {

    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/draftingtool";
    static final String USER = "root";
    static final String PASS = "student";

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        String firstName = request.getParameter("createUserAccountFirstName");
        String lastName = request.getParameter("createUserAccountLastName");
        String email = request.getParameter("createUserAccountEmail");
        String username = request.getParameter("createUserUsername");
        String passwordOne = request.getParameter("createUserAccountFirstPassword");
        String passwordTwo = request.getParameter("createUserAccountSecondPassword");

        UserDao userDao = new UserDao();

        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setUsername(username);
        user.setPassword(passwordOne);

        userDao.create(user);

        Connection connection;

        PreparedStatement preparedStatementUserRoles;
        PreparedStatement preparedStatementUser;

        try {
            Class.forName(JDBC_DRIVER);
            connection = DriverManager.getConnection(DB_URL, USER, PASS);

            String sqlUserRoles = "INSERT INTO user_roles (user_name, role_name) VALUES (?, ?)";
            String sqlUser = "INSERT INTO users (user_name, user_pass) VALUES (?, ?)";

            preparedStatementUserRoles = connection.prepareStatement(sqlUserRoles);
            preparedStatementUser = connection.prepareStatement(sqlUser);

            preparedStatementUserRoles.setString(1, username);
            preparedStatementUserRoles.setString(2, "registered-user");

            preparedStatementUser.setString(1, username);
            preparedStatementUser.setString(2, passwordOne);

            preparedStatementUserRoles.executeUpdate();
            preparedStatementUser.executeUpdate();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String url = "/registration_success.jsp";

        response.sendRedirect(url);

    }
}
