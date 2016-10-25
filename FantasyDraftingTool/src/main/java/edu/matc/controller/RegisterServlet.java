package edu.matc.controller;

import java.io.*;
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

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        String firstName = request.getParameter("createUserAccountFirstName");
        String lastName = request.getParameter("createUserAccountLastName");
        String email = request.getParameter("createUserAccountEmail");
        String passwordOne = request.getParameter("createUserAccountPasswordOne");
        String passwordTwo = request.getParameter("createUserAccountPasswordTwo");

        UserDao userDao = new UserDao();

        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setPassword(passwordOne);

        userDao.addUser(user);

        String url = "/registration_success.jsp";

        response.sendRedirect(url);

    }
}
