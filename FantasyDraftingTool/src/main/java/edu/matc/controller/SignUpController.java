package edu.matc.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import org.apache.log4j.*;

/**
 * Created by craigwilson on 12/14/16.
 */
@WebServlet (
        name = "signUP",
        urlPatterns = {"/signUp"}
)
public class SignUpController extends HttpServlet {
    private final Logger log = Logger.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        log.info("In DraftBoardController doGet method");

        /** Set title */
        request.setAttribute("pageTitle", "Sign Up");

        RequestDispatcher dispatcher = request.getRequestDispatcher("signUp.jsp");
        dispatcher.forward(request, response);
    }


}